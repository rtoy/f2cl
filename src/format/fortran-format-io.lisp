;;;; fortran-format-io.lisp
;;;;
;;;; Output and input engines for Fortran format strings.
;;;;
;;;; Both engines share the same architecture: walk a list of
;;;; expanded edit-descriptors, dispatching on descriptor class via
;;;; a generic function (EMIT-ED on output, READ-ED on input). State
;;;; is carried through a plist (cursor position, scale factor,
;;;; blanks-as-zeros flag, etc.).
;;;;
;;;; The top-level entry points are WRITE-FORMAT and READ-FORMAT.
;;;; Both honour reversion-of-format-control per Fortran 95 12.2.2.
;;;;
;;;; Floating-point formatting (F, E, ES, EN, G, D) is implemented
;;;; via CL's built-in ~F and ~E directives, which gets the common
;;;; cases right but differs from gfortran on exact-half rounding
;;;; and a couple of decade-boundary corners -- see the comment
;;;; block above FORMAT-F for details.

(in-package #:fortran-format)

;;; ---------------------------------------------------------------
;;; Output engine
;;; ---------------------------------------------------------------
;;;
;;; Drives a list of expanded edit-descriptors to format VALUES into
;;; a string.  Reversion-of-format-control is honoured per Fortran 95
;;; 12.2.2 (when the format runs out with values still to print, the
;;; reversion descriptors run again on a new record).
;;;
;;; Sign-control descriptors (SP/SS/S) set a dynamic flag,
;;; *INCLUDE-PLUS*, which the per-type emit-ed methods consult.  P
;;; and T/TL/TR are not yet implemented on output.

(defvar *include-plus* nil
  "When non-nil, force a leading '+' on non-negative numeric output.
Set by SP, cleared by SS or S.  Bound fresh at each WRITE-FORMAT
call so the flag does not leak across format statements.")

(defun expand-repeats (eds)
  "Replace (repeat N) descriptors with N copies of themselves."
  (let ((out '()))
    (dolist (ed eds)
      (let ((r (or (and (typep ed 'edit-descriptor)
                        (edit-descriptor-repeat ed))
                   1)))
        (dotimes (_ r) (push ed out))))
    (nreverse out)))

(defgeneric emit-ed (ed stream values-cursor)
  (:documentation "Emit one descriptor's output to STREAM, returning
the new values-cursor (a cons of remaining values)."))

(defmethod emit-ed ((ed quoted-ed) stream values)
  (write-string (quoted-ed-text ed) stream)
  values)

(defmethod emit-ed ((ed skip-ed) stream values)
  (case (edit-descriptor-name ed)
    (:x (dotimes (_ (skip-ed-num-chars ed))
          (write-char #\Space stream)))
    ;; T/TL/TR: would need a positionable buffer instead of a stream.
    ;; Out of scope for the output sketch.
    (otherwise (warn "T/TL/TR emission not implemented in sketch")))
  values)

(defmethod emit-ed ((ed integer-ed) stream values)
  (let* ((v (car values))
         (w (width-ed-width ed))
         (m (integer-ed-min-digits ed))
         (base (integer-ed-base ed))
         ;; ~vR formats in BASE; upper-cased for hex by convention.
         (digits (let ((d (format nil "~vR" base (abs v))))
                   (if (= base 16) (string-upcase d) d)))
         (sign (cond
                 ((minusp v) "-")
                 ;; SP only forces '+' on signed decimal output.
                 ;; BOZ outputs are unsigned bit-pattern representations
                 ;; and never carry a sign in Fortran.
                 ((and *include-plus* (= base 10)) "+")
                 (t ""))))
    (when m
      ;; Pad to m digits with leading zeros, still in BASE.
      (let ((d (format nil "~v,v,'0R" base m (abs v))))
        (setf digits (if (= base 16) (string-upcase d) d))))
    (let* ((body (concatenate 'string sign digits))
           (pad  (max 0 (- w (length body)))))
      (cond
        ((> (length body) w)
         (dotimes (_ w) (write-char #\* stream)))
        (t
         (dotimes (_ pad) (write-char #\Space stream))
         (write-string body stream)))))
  (cdr values))

(defmethod emit-ed ((ed logical-ed) stream values)
  ;; Fortran L format writes (w-1) spaces followed by 'T' or 'F'.
  (let* ((v (car values))
         (w (width-ed-width ed))
         (ch (if v #\T #\F)))
    (cond
      ((or (null w) (zerop w))
       (write-char ch stream))
      (t
       (dotimes (_ (1- w)) (write-char #\Space stream))
       (write-char ch stream))))
  (cdr values))

(defmethod emit-ed ((ed flag-ed) stream values)
  ;; SP/SS/S only flip the sign-control flag; they consume no value
  ;; and emit no characters.
  (declare (ignore stream))
  (case (flag-ed-flag ed)
    (:sp (setf *include-plus* t))
    ((:ss :s) (setf *include-plus* nil))
    ;; BN/BZ are input-only; ignore on output.
    ((:bn :bz)))
  values)

;;; ---------------------------------------------------------------
;;; Floating-point output (simplified)
;;; ---------------------------------------------------------------
;;;
;;; We previously had a from-scratch implementation that used exact
;;; rational arithmetic to extract the bit-accurate decimal digits
;;; of a double, then carved them by hand for each format variant.
;;; It matched gfortran byte-for-byte on 120/120 stress cases. For
;;; now we use CL's built-in ~F and ~E directives instead, which are
;;; simpler and cover the common cases.
;;;
;;; KNOWN DIFFERENCES FROM GFORTRAN:
;;;
;;; 1. Rounding mode. CL uses round-half-away-from-zero; Fortran
;;;    and IEEE-754 use round-half-to-even (banker's). Visible on
;;;    exact halves: 0.5 / F6.0 -> "    1." here vs "    0." in
;;;    gfortran.
;;;
;;; 2. G-format decade boundary. When a value rounds up across a
;;;    power-of-10 boundary (9.9999 / G14.4 -> 10.000 vs 10.00),
;;;    we don't recompute the F/E split. To fix this we'd need to
;;;    consult the rounded magnitude rather than the original.
;;;
;;; 3. E-format non-normalization. CL's ~,vE may produce 10.00d+2
;;;    instead of 1.000d+3 in rare cases (see %CL-MANTISSA-AND-EXP),
;;;    causing the exponent to be one off.
;;;
;;; On the 120-case gfortran stress test the simplified version
;;; matches 117/120. The bit-exact version is preserved in the git
;;; history if and when we want to restore it.
;;;
;;; All five format-* helpers below take the same argument list as
;;; the previous bit-exact versions, so the emit-ed methods don't
;;; need to change.

(defun %pad-or-asterisks (body width)
  (cond
    ((> (length body) width)
     (make-string width :initial-element #\*))
    (t
     (concatenate 'string
                  (make-string (- width (length body)) :initial-element #\Space)
                  body))))

(defun %sign-prefix (val incl-plus)
  "Return the prefix string for VAL's sign, honoring SP/SS state.
Negative zero shows as '-' even though MINUSP returns NIL for it."
  (cond
    ((minusp (float-sign (coerce val 'double-float))) "-")
    (incl-plus "+")
    (t "")))

(defun format-f (val width decimal-places scale incl-plus)
  "Fortran F format: fixed-point with no exponent. The SCALE
factor (kP) does not change F output per the Fortran standard;
it only affects how E-family formats place digits."
  (declare (ignore scale))
  (let* ((v (coerce val 'double-float))
         (mag (abs v))
         (sign (%sign-prefix v incl-plus))
         ;; CL's ~,vF gives e.g. "3.14" for (format nil "~,2F" 3.14159).
         (body-mag (format nil "~,vF" decimal-places mag))
         (body (concatenate 'string sign body-mag)))
    (%pad-or-asterisks body width)))

(defun %emit-exp-suffix (exp exp-digits &key (char #\E))
  "Render the exponent like 'E+02' or '+103' (drop the letter if the
exponent needs 3 digits and EXP-DIGITS wasn't specified)."
  (let* ((requested-width
           (or exp-digits
               (cond ((or (> exp 99) (< exp -99)) 3)
                     (t 2))))
         (use-char-p
           (or exp-digits
               (and (<= exp 99) (>= exp -99)))))
    (cond
      (use-char-p
       (format nil "~C~A~v,'0D" char (if (minusp exp) "-" "+")
               requested-width (abs exp)))
      (t
       ;; Drop the letter, keep the sign and 3 digits (Fortran's way
       ;; of squeezing in a too-wide exponent when Ee wasn't given).
       (format nil "~A~v,'0D" (if (minusp exp) "-" "+")
               requested-width (abs exp))))))

(defun %cl-mantissa-and-exp (val ndigits)
  "Use CL's ~E to get the mantissa and exponent of VAL, returning
(values mantissa-string exponent) where MANTISSA is '0.DDDD' with
exactly NDIGITS digits after the decimal point. CL gives us
'D.DDDD' with NDIGITS-1 digits after the point, so we ask for
NDIGITS-1 and shift.

KNOWN LIMITATION: CL's ~E directive does not always normalize the
result after rounding. For example, ~,2E of 999.5 produces
'10.00d+2' rather than '1.00d+3'. We don't detect or correct this
here. Values near the boundary of a decade with ties may produce
output one decade off from gfortran."
  (let* ((v (coerce val 'double-float))
         (mag (abs v))
         (cl-str (format nil "~,vE" (1- ndigits) mag))
         (cl-str (string-trim " " cl-str))
         (e-pos (or (position #\e cl-str :test #'char-equal)
                    (position #\d cl-str :test #'char-equal)))
         (mantissa (subseq cl-str 0 e-pos))
         (cl-exp (parse-integer (subseq cl-str (1+ e-pos))))
         (dot-pos (position #\. mantissa))
         (digits-raw (concatenate 'string
                                  (subseq mantissa 0 dot-pos)
                                  (subseq mantissa (1+ dot-pos))))
         (fortran-exp (1+ cl-exp))
         (fortran-mantissa (concatenate 'string "0." digits-raw)))
    (values fortran-mantissa fortran-exp)))

(defun format-e (val width decimal-places exp-digits scale incl-plus
                 &key (expchar #\E))
  "Fortran E format: 0.DDDDE+NN by default. SCALE is the kP factor;
for now we only handle SCALE=0 (the default)."
  (declare (ignore scale))
  (let* ((v (coerce val 'double-float))
         (sign (%sign-prefix v incl-plus))
         (zerop (zerop v))
         (mantissa-digits decimal-places))
    (cond
      (zerop
       (let ((body (concatenate 'string
                                sign
                                "0."
                                (make-string decimal-places :initial-element #\0)
                                (%emit-exp-suffix 0 exp-digits :char expchar))))
         (%pad-or-asterisks body width)))
      (t
       (multiple-value-bind (mantissa exp)
           (%cl-mantissa-and-exp v mantissa-digits)
         (let ((body (concatenate 'string
                                  sign
                                  mantissa
                                  (%emit-exp-suffix exp exp-digits :char expchar))))
           (%pad-or-asterisks body width)))))))

(defun format-es (val width decimal-places exp-digits incl-plus)
  "Fortran ES format: D.DDDDE+NN with one significant digit before
the decimal."
  (let* ((v (coerce val 'double-float))
         (sign (%sign-prefix v incl-plus)))
    (cond
      ((zerop v)
       (let ((body (concatenate 'string
                                sign
                                "0."
                                (make-string decimal-places :initial-element #\0)
                                (%emit-exp-suffix 0 exp-digits))))
         (%pad-or-asterisks body width)))
      (t
       ;; CL's ~,vE gives D.DDDD with NDIGITS digits after the decimal.
       (let* ((mag (abs v))
              (cl-str (format nil "~,vE" decimal-places mag))
              (cl-str (string-trim " " cl-str))
              (e-pos (or (position #\e cl-str :test #'char-equal)
                         (position #\d cl-str :test #'char-equal)))
              (mantissa (subseq cl-str 0 e-pos))
              (cl-exp (parse-integer (subseq cl-str (1+ e-pos))))
              (body (concatenate 'string
                                 sign mantissa
                                 (%emit-exp-suffix cl-exp exp-digits))))
         (%pad-or-asterisks body width))))))

(defun format-en (val width decimal-places exp-digits incl-plus)
  "Fortran EN format: 1-3 digits before the decimal, exponent a
multiple of 3. Approximate: rounding the value first, then
realigning, is not always correct at boundaries."
  (let* ((v (coerce val 'double-float))
         (sign (%sign-prefix v incl-plus)))
    (cond
      ((zerop v)
       (let ((body (concatenate 'string
                                sign
                                "0."
                                (make-string decimal-places :initial-element #\0)
                                (%emit-exp-suffix 0 exp-digits))))
         (%pad-or-asterisks body width)))
      (t
       (let* ((mag (abs v))
              ;; Compute the floor-of-log10 to find the unrestricted exp
              (log10 (log mag 10d0))
              (raw-exp (floor log10))
              ;; Engineering exponent is the largest multiple of 3 not
              ;; exceeding RAW-EXP.
              (eng-exp (* 3 (floor raw-exp 3)))
              (shifted (/ mag (expt 10d0 eng-exp)))
              ;; SHIFTED is now in [1, 1000); render with the right
              ;; number of digits after its decimal point.
              (body-mag (format nil "~,vF" decimal-places shifted))
              (body (concatenate 'string
                                 sign body-mag
                                 (%emit-exp-suffix eng-exp exp-digits))))
         (%pad-or-asterisks body width))))))

(defun format-g (val width decimal-places exp-digits incl-plus)
  "Fortran G format: pick F or E based on magnitude.

The rule: if 0.1 <= |v| < 10^d, use F; otherwise E. When F is used,
nb trailing spaces are appended to keep the visible field the same
width as the E equivalent. nb = 4 for Gw.d, e+2 for Gw.dEe.

Approximate: the boundary cases (values that round across the
F/E boundary) are not handled."
  (let* ((v (coerce val 'double-float))
         (mag (abs v))
         (nb (if exp-digits (+ exp-digits 2) 4)))
    (cond
      ((zerop v)
       (let* ((effective-w (- width nb))
              (s (format-f v effective-w (max 0 (1- decimal-places)) 0 incl-plus)))
         (concatenate 'string s (make-string nb :initial-element #\Space))))
      ((or (< mag 0.1d0) (>= mag (expt 10d0 decimal-places)))
       (format-e v width decimal-places exp-digits 0 incl-plus))
      (t
       ;; F-equivalent: pick decimal places based on magnitude bucket.
       ;; mag in [10^(k-1), 10^k) for k in 1..d -> d-k decimals.
       (let* ((k (1+ (floor (log mag 10d0))))
              (effective-d (max 0 (- decimal-places k)))
              (effective-w (- width nb))
              (s (format-f v effective-w effective-d 0 incl-plus)))
         (concatenate 'string s (make-string nb :initial-element #\Space)))))))


(defmethod emit-ed ((ed real-fixed-ed) stream values)
  ;; F and D both use the F-style layout. D is supposed to take the
  ;; same form as E historically but most programs just use it as F;
  ;; the descriptor object distinguishes them by name if needed.
  (let ((v (car values))
        (w (width-ed-width ed))
        (d (real-fixed-ed-decimal-places ed)))
    (write-string (format-f v w d 0 *include-plus*) stream))
  (cdr values))

(defmethod emit-ed ((ed real-exp-ed) stream values)
  (let* ((v (car values))
         (w (width-ed-width ed))
         (d (real-exp-ed-decimal-places ed))
         (e (real-exp-ed-exponent ed))
         (name (edit-descriptor-name ed))
         (plus *include-plus*)
         (out
           (case name
             (:e  (format-e  v w d e 0 plus))
             (:d  (format-e  v w d e 0 plus :expchar #\D))
             (:es (format-es v w d e plus))
             (:en (format-en v w d e plus))
             (:g  (format-g  v w d e plus))
             (otherwise
              (warn "Unknown real-exp descriptor ~A" name)
              (make-string w :initial-element #\?)))))
    (write-string out stream))
  (cdr values))

(defmethod emit-ed ((ed alpha-ed) stream values)
  (let* ((s (string (car values)))
         (w (or (width-ed-width ed) (length s))))
    (cond
      ((>= (length s) w)
       (write-string s stream :end w))
      (t
       (dotimes (_ (- w (length s))) (write-char #\Space stream))
       (write-string s stream))))
  (cdr values))

(defmethod emit-ed ((ed edit-descriptor) stream values)
  (declare (ignore stream))
  (warn "emit-ed not implemented for ~A; skipping" (edit-descriptor-name ed))
  values)

(defun write-format (format-string &rest values)
  "Format VALUES according to FORMAT-STRING and return the result.
If the format runs out before the values do, control reverts to
the reversion descriptors with a newline inserted between cycles
(Fortran 95 12.2.2)."
  (multiple-value-bind (main-eds rev-eds) (parse-format format-string)
    (let* ((main (expand-repeats main-eds))
           (rev  (expand-repeats rev-eds))
           (out  (make-string-output-stream))
           (vs   values)
           ;; Bind sign-control state fresh so SP/SS/S in one call
           ;; cannot leak into another.
           (*include-plus* nil))
      ;; Main pass
      (dolist (ed main)
        (setf vs (emit-ed ed out vs)))
      ;; Reversion: keep cycling rev-eds while values remain.
      ;; If rev has no value-producing eds, signal -- otherwise we'd
      ;; loop forever.
      (when vs
        (let ((rev-has-value-ed (some #'edit-descriptor-outputs-value-p rev)))
          (unless rev-has-value-ed
            (invalid-format
             "Format exhausted with ~D values remaining and no value-producing reversion descriptors" (length vs)))
          (loop while vs do
            (terpri out)
            (dolist (ed rev)
              (when vs
                (setf vs (emit-ed ed out vs)))))))
      (get-output-stream-string out))))

;;; ---------------------------------------------------------------
;;; Input engine
;;; ---------------------------------------------------------------
;;;
;;; Symmetric to the output engine: walk a list of expanded
;;; descriptors with a cursor over the input record, calling READ-ED
;;; on each. READ-ED returns (VALUES new-state collected-value), or
;;; new-state alone for control descriptors.
;;;
;;; The state plist carries:
;;;   :position           -- index into the record
;;;   :scale              -- current P-scale (default 0)
;;;   :blanks-as-zeros    -- BN/BZ flag (default NIL)
;;;   :record             -- current record string
;;;
;;; Reversion-on-exhausted-format and multi-record handling (the /
;;; descriptor) work but only as far as the single string passed in;
;;; for true multi-record reads you'd pass a list of records and
;;; advance through them on each Slash.

(defparameter *input-forbidden* '(quoted-ed))

(defun make-input-state (record)
  (list :position 0
        :scale 0
        :blanks-as-zeros nil
        :record record))

(defmacro with-state ((&rest slots) state &body body)
  "Bind named state slots as locals: (with-state (position record) s ...)"
  (let ((s (gensym)))
    `(let* ((,s ,state)
            ,@(loop for slot in slots
                    collect `(,slot (getf ,s ,(intern (symbol-name slot)
                                                     :keyword)))))
       ,@body)))

(defun state-set (state &rest plist)
  "Functional update: return a new plist with the given keys replaced."
  (let ((copy (copy-list state)))
    (loop for (k v) on plist by #'cddr do
      (setf (getf copy k) v))
    copy))

(defun take-substr (state width)
  "Pull WIDTH characters off the record starting at :position.
Returns (values substr new-state). If the record is exhausted,
returns whatever is left (possibly empty)."
  (with-state (position record) state
    (let* ((end (min (+ position width) (length record)))
           (sub (subseq record position end)))
      (values sub (state-set state :position end)))))

(defun interpret-blanks (str blanks-as-zeros-p)
  "BN strips spaces; BZ converts them to zeros."
  (cond
    ((zerop (length str)) str)
    (blanks-as-zeros-p
     (substitute #\0 #\Space str))
    (t
     (remove #\Space str))))

(defgeneric read-ed (ed state)
  (:documentation "Read one descriptor's worth from STATE.
Returns (values new-state value-or-no-value-marker).
For descriptors that produce a value, the second value is the
parsed value; for control descriptors, it is :no-value."))

(defmethod read-ed ((ed quoted-ed) state)
  (declare (ignore state))
  (invalid-format "Quoted strings are not allowed on input"))

(defmethod read-ed ((ed skip-ed) state)
  ;; X is +n; TR is +n; TL is -n; T is absolute (1-based -> 0-based).
  (with-state (position record) state
    (declare (ignorable record))
    (let* ((kw (edit-descriptor-name ed))
           (k  (skip-ed-num-chars ed))
           (new-pos
             (case kw
               (:x  (min (+ position k) (length (getf state :record))))
               (:tr (min (+ position k) (length (getf state :record))))
               (:tl (max (- position k) 0))
               (:t  (max 0 (min (1- k) (length (getf state :record)))))
               (otherwise position))))
      (values (state-set state :position new-pos) :no-value))))

(defmethod read-ed ((ed scale-ed) state)
  (values (state-set state :scale (scale-ed-scale ed)) :no-value))

(defmethod read-ed ((ed flag-ed) state)
  (case (flag-ed-flag ed)
    (:bn (values (state-set state :blanks-as-zeros nil) :no-value))
    (:bz (values (state-set state :blanks-as-zeros t)   :no-value))
    ;; SP/SS/S only affect output sign handling -- no-op on input.
    (otherwise (values state :no-value))))

(defmethod read-ed ((ed colon-ed) state)
  ;; Colon stops format processing if there are no more values
  ;; requested. We signal this via :colon-stop and let the driver
  ;; decide.
  (values state :colon-stop))

(defmethod read-ed ((ed newline-ed) state)
  ;; Slash: end of record. With a single-record input this just
  ;; jumps to end-of-record. The driver could advance to a next
  ;; record if multi-record support is wired in.
  (with-state (record) state
    (values (state-set state :position (length record)) :no-value)))

(defmethod read-ed ((ed integer-ed) state)
  (let ((width (width-ed-width ed)))
    (multiple-value-bind (sub st) (take-substr state width)
      (let* ((bz   (getf st :blanks-as-zeros))
             (clean (interpret-blanks sub bz))
             (base  (integer-ed-base ed))
             (val   (cond
                      ((zerop (length clean)) 0)
                      (t (handler-case
                             (parse-integer clean :radix base)
                           (error ()
                             (invalid-format
                              "~S is not a valid base-~D integer" sub base)))))))
        (values st val)))))

(defmethod read-ed ((ed logical-ed) state)
  (multiple-value-bind (sub st) (take-substr state (width-ed-width ed))
    (let* ((stripped (string-left-trim '(#\Space #\Tab #\.) sub))
           (val
             (cond
               ((zerop (length stripped))
                (invalid-format "~S is not a valid logical" sub))
               ((char-equal (char stripped 0) #\T) t)
               ((char-equal (char stripped 0) #\F) nil)
               (t (invalid-format "~S is not a valid logical" sub)))))
      (values st val))))

(defmethod read-ed ((ed alpha-ed) state)
  ;; A without width consumes the rest of the record.
  (with-state (position record) state
    (let* ((w (or (width-ed-width ed) (- (length record) position))))
      (multiple-value-bind (sub st) (take-substr state w)
        (let* ((pad-needed (max 0 (- w (length sub))))
               (val (if (plusp pad-needed)
                        (concatenate 'string sub
                                     (make-string pad-needed :initial-element #\Space))
                        sub)))
          (values st val))))))

(defmethod read-ed ((ed real-fixed-ed) state)
  (read-real ed state))

(defmethod read-ed ((ed real-exp-ed) state)
  ;; E/EN/ES/G all read the same way; differences are output-side.
  (read-real ed state))

(defun parse-real-payload (str)
  "Convert a Fortran-style numeric string into something CL's
read-from-string will accept. Returns the cleaned string or NIL
if it cannot be salvaged."
  (let ((s (string-upcase str)))
    ;; D-exponent -> E
    (setf s (substitute #\E #\D s))
    ;; If no exponent letter but there's an embedded +/- after the
    ;; first char, treat that as an implicit Ee+ee form. E.g.
    ;; "3.14-2" -> "3.14E-2".
    (when (and (not (find #\E s))
               (> (length s) 1))
      (let ((sign-pos (position-if (lambda (c) (or (char= c #\+) (char= c #\-)))
                                   s :start 1)))
        (when sign-pos
          (setf s (concatenate 'string
                               (subseq s 0 sign-pos)
                               "E"
                               (subseq s sign-pos))))))
    ;; Bare "." or "-" -> "0"
    (when (or (string= s ".") (string= s "-") (string= s "+"))
      (setf s "0"))
    ;; Trailing E, E+, E- -> drop the exponent stub
    (when (and (find #\E s)
               (let ((epos (position #\E s)))
                 (or (= epos (1- (length s)))
                     (and (= epos (- (length s) 2))
                          (member (char s (1+ epos)) '(#\+ #\-))))))
      (setf s (subseq s 0 (position #\E s))))
    ;; Force a decimal point if none present, so CL parses as float
    (unless (find #\. s)
      (let ((e (position #\E s)))
        (setf s (if e
                    (concatenate 'string (subseq s 0 e) "." (subseq s e))
                    (concatenate 'string s ".")))))
    s))

(defun read-real (ed state)
  (multiple-value-bind (sub st) (take-substr state (width-ed-width ed))
    (let* ((bz    (getf st :blanks-as-zeros))
           (clean (interpret-blanks sub bz))
           (raw   (parse-real-payload clean))
           (val
             (cond
               ((zerop (length clean)) 0.0d0)
               (t (handler-case
                      (with-standard-io-syntax
                        (let ((*read-default-float-format* 'double-float))
                          (read-from-string raw)))
                    (error ()
                      (invalid-format "~S is not a valid real number" sub))))))
           (val (coerce val 'double-float))
           ;; If no decimal in the original payload, insert virtual
           ;; one by scaling -- this matches the Fortran rule that
           ;; "12345" read with F8.3 means 12.345.
           (val (if (and (real-fixed-ed-p ed)
                         (not (find #\. clean))
                         (real-fixed-ed-decimal-places ed))
                    (/ val (expt 10d0 (real-fixed-ed-decimal-places ed)))
                    val))
           ;; If no explicit exponent and a P-scale is in effect,
           ;; apply it: external = internal * 10^scale, so on input
           ;; we divide.
           (val (if (and (not (find #\E (string-upcase clean)))
                         (not (zerop (getf st :scale))))
                    (/ val (expt 10d0 (getf st :scale)))
                    val)))
      (values st val))))

(defun split-records (record)
  "Normalize the input into a list of record strings. Accepts a
string (possibly with embedded newlines) or a list of strings."
  (cond
    ((listp record) record)
    ((find #\Newline record)
     (let ((lines '()) (start 0) (n (length record)))
       (dotimes (i n)
         (when (char= (char record i) #\Newline)
           (push (subseq record start i) lines)
           (setf start (1+ i))))
       (when (< start n) (push (subseq record start n) lines))
       (nreverse lines)))
    (t (list record))))

(defun read-format (format-string record &key num-vals)
  "Parse RECORD according to FORMAT-STRING; return a list of values.

RECORD is a string (with optional embedded newlines separating
records) or a list of record strings. The / descriptor advances to
the next record.

NUM-VALS, if supplied, asks for that many values; reversion will
fire if the main format runs out before NUM-VALS are read.
Reversion requires more records than the main format consumed, so
the input must supply them."
  (multiple-value-bind (main-eds rev-eds) (parse-format format-string)
    (let* ((main    (expand-repeats main-eds))
           (rev     (expand-repeats rev-eds))
           (records (split-records record))
           (cur-rec (or (pop records) ""))
           (state   (make-input-state cur-rec))
           (vals    '())
           (target  (or num-vals
                        (count-if #'edit-descriptor-outputs-value-p main))))
      (labels
          ((advance-record ()
             (let ((next (pop records)))
               (cond
                 (next
                  (setf state (state-set (make-input-state next)
                                         :scale (getf state :scale)
                                         :blanks-as-zeros
                                         (getf state :blanks-as-zeros))))
                 (t (setf state nil)))))
           (run-ed (ed)
             (multiple-value-bind (new-state v) (read-ed ed state)
               (cond
                 ((eq v :colon-stop)
                  (when (>= (length vals) target) (return-from read-format
                                                    (nreverse vals)))
                  (setf state new-state))
                 ((typep ed 'newline-ed)
                  (advance-record))
                 (t
                  (setf state new-state)
                  (unless (eq v :no-value)
                    (push v vals)))))))
        ;; Main pass
        (dolist (ed main)
          (when (null state) (return))
          (when (>= (length vals) target) (return))
          (run-ed ed))
        ;; Reversion
        (when (and (< (length vals) target) state)
          (let ((rev-has-value-ed
                  (some #'edit-descriptor-outputs-value-p rev)))
            (unless rev-has-value-ed
              (invalid-format
               "Reversion format has no value-producing descriptors but ~D values still needed"
               (- target (length vals))))
            (loop while (< (length vals) target) do
              (advance-record)
              (when (null state) (return))
              (dolist (ed rev)
                (when (null state) (return))
                (when (>= (length vals) target) (return))
                (run-ed ed)))))
        (nreverse vals)))))


