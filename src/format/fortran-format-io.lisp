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

(defvar *scale-factor* 0
  "Current kP scale factor in effect.  Bound fresh at each
WRITE-FORMAT call.  Affects F (rescales the value by 10^k), E and
D (shuffles digits between mantissa and exponent), and G (when G
falls back to E mode).  Has no effect on ES, EN, I, or BOZ output.")

(defvar *column* 1
  "Current 1-based output column in the record being assembled.
Bound fresh at each WRITE-FORMAT call.  Updated by EMIT-OUT and
EMIT-NEWLINE; consulted by the T-family of skip descriptors so
they can know how far forward to space.")

(defvar *colon-stop* nil
  "Set by the colon edit descriptor when it fires while the value
list is empty.  The WRITE-FORMAT driver loop checks this flag and
exits both the main and reversion passes.  Bound fresh at each
WRITE-FORMAT call.")

(defparameter *boz-word-bits*
  (if (>= most-positive-fixnum (expt 2 32)) 64 32)
  "Bit width used to interpret negative integers in B, O, and Z
output as their unsigned two's-complement bit pattern.  Defaults
to the host word size derived from MOST-POSITIVE-FIXNUM, matching
the platform's default Fortran integer kind: 64 on 64-bit hosts,
32 on 32-bit hosts.  Rebind to compare against output captured on
a different platform (e.g. set to 32 to match a corpus generated
by a 32-bit gfortran).")

(defun emit-out (stream string-or-char)
  "Write STRING-OR-CHAR to STREAM and advance *COLUMN* accordingly.
The only legal way to write to the output stream from inside the
emit-ed methods; using WRITE-CHAR or WRITE-STRING directly would
leave *COLUMN* stale and break T/TR positioning."
  (cond
    ((characterp string-or-char)
     (write-char string-or-char stream)
     (incf *column*))
    (t
     (write-string string-or-char stream)
     (incf *column* (length string-or-char)))))

(defun emit-newline (stream)
  "Emit a record separator and reset *COLUMN* to 1."
  (terpri stream)
  (setf *column* 1))

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
  (emit-out stream (quoted-ed-text ed))
  values)

(defmethod emit-ed ((ed skip-ed) stream values)
  (let ((n (skip-ed-num-chars ed)))
    (case (edit-descriptor-name ed)
      (:x  (emit-out stream (make-string n :initial-element #\Space)))
      (:tr (emit-out stream (make-string n :initial-element #\Space)))
      (:t
       ;; T n is absolute (1-based).  We support only forward T --
       ;; jumping backwards would require a positionable record
       ;; buffer rather than a one-pass stream.  Backward T is
       ;; vanishingly rare in numerical Fortran (grep across the
       ;; f2cl packages found zero uses) so we signal cleanly rather
       ;; than implement a buffer.
       (cond
         ((< n *column*)
          (invalid-format
           "Backward T (T~D from column ~D) is not supported"
           n *column*))
         (t
          (emit-out stream (make-string (- n *column*)
                                        :initial-element #\Space)))))
      (:tl
       (invalid-format
        "TL descriptor not supported (would require a positionable buffer)"))))
  values)

(defmethod emit-ed ((ed integer-ed) stream values)
  (let* ((v (car values))
         (w (width-ed-width ed))
         (m (integer-ed-min-digits ed))
         (base (integer-ed-base ed))
         ;; B/O/Z (non-decimal) interpret the value's bit pattern
         ;; as unsigned.  *BOZ-WORD-BITS* selects the truncation
         ;; width (32 or 64); on a 64-bit host it defaults to 64
         ;; and -1 prints as 0xFFFFFFFFFFFFFFFF, on a 32-bit host
         ;; it defaults to 32 and -1 prints as 0xFFFFFFFF.  Decimal
         ;; I keeps the signed form.
         (v (if (= base 10)
                v
                (ldb (byte *boz-word-bits* 0) v))))
    (cond
      ;; F77 10.6.1.1: if min-digits is explicitly 0 and the value
      ;; is 0, the field is all blanks; no digit is produced.
      ((and m (zerop m) (zerop v))
       (emit-out stream (make-string w :initial-element #\Space)))
      (t
       (let* ((digits (let ((d (format nil "~vR" base (abs v))))
                        ;; ~vR formats in BASE; upper-cased for hex.
                        (if (= base 16) (string-upcase d) d)))
              (sign (cond
                      ((minusp v) "-")
                      ;; SP only forces '+' on signed decimal output.
                      ;; BOZ outputs are unsigned bit-pattern
                      ;; representations and never carry a sign.
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
              (emit-out stream (make-string w :initial-element #\*)))
             (t
              (emit-out stream (make-string pad :initial-element #\Space))
              (emit-out stream body))))))))
  (cdr values))

(defmethod emit-ed ((ed logical-ed) stream values)
  ;; Fortran L format writes (w-1) spaces followed by 'T' or 'F'.
  (let* ((v (car values))
         (w (width-ed-width ed))
         (ch (if v #\T #\F)))
    (cond
      ((or (null w) (zerop w))
       (emit-out stream ch))
      (t
       (emit-out stream (make-string (1- w) :initial-element #\Space))
       (emit-out stream ch))))
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

(defmethod emit-ed ((ed scale-ed) stream values)
  ;; kP sets the scale factor for subsequent F/E/D/G output. No
  ;; characters emitted, no value consumed.
  (declare (ignore stream))
  (setf *scale-factor* (scale-ed-scale ed))
  values)

(defmethod emit-ed ((ed colon-ed) stream values)
  ;; Conditional terminator: if the value list is already empty,
  ;; stop format processing (both the current pass and any reversion
  ;; cycle that would otherwise follow).  If values remain, no-op.
  (declare (ignore stream))
  (when (null values)
    (setf *colon-stop* t))
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

(defun %floor-log10 (mag)
  "Return (floor (log mag 10)) -- i.e. the integer N such that
10^N <= mag < 10^(N+1).  MAG must be a positive double-float.

(log mag 10d0) is a floating-point computation and may have
round-off error.  Use it as a starting guess and correct in
either direction with exact-integer comparisons against
(expt 10 N)."
  (let* ((n (floor (log mag 10d0)))
         (n (loop while (>= mag (expt 10 (1+ n)))
                  do (incf n)
                  finally (return n)))
         (n (loop while (< mag (expt 10 n))
                  do (decf n)
                  finally (return n))))
    n))

(defun format-f (val width decimal-places scale incl-plus)
  "Fortran F format: fixed-point with no exponent.
With a kP scale factor in effect, the externally-shown value is
val * 10^k -- the decimal point shifts right by k positions (or
left, for negative k).

Unlike py-fortranformat, which composes the F output digit by
digit from a high-precision ~e intermediate, we let CL's ~F build
the magnitude string and then trim a leading \"0.\" if it doesn't
fit the field width."
  (let* ((v (coerce val 'double-float))
         ;; kP on F: rescale the value.
         ;;
         ;; We use integer (EXPT 10 SCALE) rather than (EXPT 10d0 SCALE).
         ;; For non-negative SCALE both produce an exact result, but for
         ;; negative SCALE (EXPT 10d0 -k) yields e.g. 0.01d0 which is
         ;; *not* exact in IEEE-754, so we would incur two rounding
         ;; errors (one in EXPT, one in the multiply). With integer 10
         ;; the EXPT stays exact (as a rational for negative powers),
         ;; and CL coerces to double in the multiply -- one rounding.
         ;;
         ;; TODO: even this can lose precision when V * 10^k crosses a
         ;; binary representation boundary. The principled fix is to
         ;; shift the displayed digits rather than rescale the value;
         ;; that requires the bit-exact NORMALIZE-FLOAT path we
         ;; removed earlier in development.
         (scaled (if (zerop scale)
                     v
                     (* v (expt 10 scale))))
         (mag (abs scaled))
         (sign (%sign-prefix scaled incl-plus))
         (body-mag (format nil "~,vF" decimal-places mag))
         (body (concatenate 'string sign body-mag)))
    ;; gfortran applies a leading-zero-suppression rule when the
    ;; natural form does not fit the field width and |v| < 1, so
    ;; the magnitude starts with "0.": drop that leading "0",
    ;; yielding ".dddd" (or "-.dddd").  Try the shorter form only
    ;; if it actually fits; otherwise fall through to "*"s.
    (when (and (> (length body) width)
               (>= (length body-mag) 2)
               (char= (char body-mag 0) #\0)
               (char= (char body-mag 1) #\.))
      (let ((shorter (concatenate 'string sign (subseq body-mag 1))))
        (when (<= (length shorter) width)
          (setf body shorter))))
    ;; Fw.0 special case: when d=0 and the value rounds to 0,
    ;; gfortran emits "0" rather than just "." (which is what the
    ;; leading-zero-suppression step above would produce for a
    ;; positive sub-unit value with no sign).  "0" carries
    ;; information; "." does not.  Also handle the case where
    ;; even the suppressed form does not fit: collapse to "0".
    (when (and (zerop decimal-places)
               (zerop (round mag))
               (or (string= body ".")
                   (> (length body) width)))
      (setf body "0"))
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
         ;; Some implementations (CMUCL, CLISP) pad ~,0E with a
         ;; trailing zero even when zero digits were requested, so
         ;; we may get more digits than we asked for.  Truncate to
         ;; exactly NDIGITS so downstream code (mantissa length,
         ;; suppression decisions) is implementation-independent.
         (digits-raw (if (> (length digits-raw) ndigits)
                         (subseq digits-raw 0 ndigits)
                         digits-raw))
         (fortran-exp (1+ cl-exp))
         (fortran-mantissa (concatenate 'string "0." digits-raw)))
    (values fortran-mantissa fortran-exp)))

(defun format-e (val width decimal-places exp-digits scale incl-plus
                 &key (expchar #\E))
  "Fortran E format. Without a scale (k=0), output is 0.DDDDE+NN.
With k > 0, the mantissa has k digits before the decimal and d-k+1
after, and the exponent is reduced by k. With k < 0, the mantissa
has |k| leading zeros after the decimal and d-|k| significant
digits, and the exponent is increased by |k|."
  (let* ((v (coerce val 'double-float))
         (sign (%sign-prefix v incl-plus))
         (zerop (zerop v))
         (k scale))
    (cond
      (zerop
       (let* ((mantissa
                (cond
                  ((zerop k)
                   (concatenate 'string "0."
                                (make-string decimal-places
                                             :initial-element #\0)))
                  ((plusp k)
                   (concatenate 'string
                                (make-string k :initial-element #\0)
                                "."
                                (make-string (1+ (- decimal-places k))
                                             :initial-element #\0)))
                  (t  ; k < 0
                   (concatenate 'string "0."
                                (make-string decimal-places
                                             :initial-element #\0)))))
              (body (concatenate 'string
                                 sign mantissa
                                 (%emit-exp-suffix 0 exp-digits :char expchar))))
         (%pad-or-asterisks body width)))
      (t
       ;; Ask CL for enough sig digits. For k>=1 we need d+1; for k<=0
       ;; we need d (the unshown low-order positions are zeros).
       (let* ((ndigits (cond ((plusp k) (1+ decimal-places))
                             (t decimal-places))))
         (multiple-value-bind (raw-mantissa exp)
             (%cl-mantissa-and-exp v ndigits)
           ;; raw-mantissa is "0.DDDD" with NDIGITS digits after the dot.
           (let* ((sig (subseq raw-mantissa 2))   ; strip "0."
                  (mantissa
                    (cond
                      ((zerop k)
                       raw-mantissa)               ; "0.DDDD"
                      ((plusp k)
                       ;; k digits before, (d-k+1) after.
                       (concatenate 'string
                                    (subseq sig 0 k)
                                    "."
                                    (subseq sig k (+ k (1+ (- decimal-places k))))))
                      (t   ; k < 0
                       ;; "0." + |k| zeros + (d-|k|) sig digits.
                       (let ((nz (- k)))
                         (concatenate 'string "0."
                                      (make-string nz :initial-element #\0)
                                      (subseq sig 0
                                              (max 0 (- decimal-places nz))))))))
                  (shown-exp (- exp k))
                  ;; If exp-digits was explicitly given (E w.d Ee form),
                  ;; the exponent must fit in e digits.  If it doesn't,
                  ;; the result is "*"s regardless of mantissa width.
                  (exp-overflow-p
                    (and exp-digits
                         (> (length (format nil "~A" (abs shown-exp)))
                            exp-digits)))
                  (body (concatenate 'string
                                     sign
                                     mantissa
                                     (%emit-exp-suffix shown-exp exp-digits
                                                       :char expchar))))
             (when exp-overflow-p
               (return-from format-e (make-string width :initial-element #\*)))
             ;; gfortran leading-zero suppression for E: when the
             ;; natural form "[-]0.dddd E+nn" overflows the field
             ;; width and the mantissa starts with "0.", drop that
             ;; "0" to yield "[-].dddd E+nn".  Same rule as in
             ;; format-f.  Only applicable when k=0 (the only mode
             ;; whose mantissa has the "0.DDDD" shape; ES/EN are
             ;; D.DDDD, k>0 puts digits before the dot, k<0 keeps
             ;; the "0." but the value of suppression there is
             ;; debatable -- we leave kP<0 alone for now).
             (when (and (zerop k)
                        (> (length body) width)
                        (>= (length mantissa) 2)
                        (char= (char mantissa 0) #\0)
                        (char= (char mantissa 1) #\.))
               (let ((shorter (concatenate 'string
                                           sign
                                           (subseq mantissa 1)
                                           (%emit-exp-suffix shown-exp exp-digits
                                                             :char expchar))))
                 (when (<= (length shorter) width)
                   (setf body shorter))))
             (%pad-or-asterisks body width))))))))

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
              ;; When exp-digits was explicitly given (ESw.dEe form),
              ;; the exponent must fit in e digits.  If it doesn't,
              ;; emit "*"s -- mirrors the same check in format-e.
              (exp-overflow-p
                (and exp-digits
                     (> (length (format nil "~A" (abs cl-exp)))
                        exp-digits)))
              (body (concatenate 'string
                                 sign mantissa
                                 (%emit-exp-suffix cl-exp exp-digits))))
         (when exp-overflow-p
           (return-from format-es (make-string width :initial-element #\*)))
         (%pad-or-asterisks body width))))))

(defun format-en (val width decimal-places exp-digits incl-plus)
  "Fortran EN format: 1-3 digits before the decimal, exponent a
multiple of 3."
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
              (raw-exp (%floor-log10 mag))
              ;; Engineering exponent is the largest multiple of 3 not
              ;; exceeding RAW-EXP.
              (eng-exp (* 3 (floor raw-exp 3)))
              (shifted (/ mag (expt 10d0 eng-exp)))
              ;; SHIFTED is now in [1, 1000); render with the right
              ;; number of digits after its decimal point.
              (body-mag (format nil "~,vF" decimal-places shifted))
              ;; Ee overflow check, same as format-e and format-es.
              (exp-overflow-p
                (and exp-digits
                     (> (length (format nil "~A" (abs eng-exp)))
                        exp-digits)))
              (body (concatenate 'string
                                 sign body-mag
                                 (%emit-exp-suffix eng-exp exp-digits))))
         (when exp-overflow-p
           (return-from format-en (make-string width :initial-element #\*)))
         (%pad-or-asterisks body width))))))

(defun format-g (val width decimal-places exp-digits scale incl-plus)
  "Fortran G format: pick F or E based on magnitude.

The rule: if 0.1 <= |v| < 10^d, use F; otherwise E. When F is used,
nb trailing spaces are appended to keep the visible field the same
width as the E equivalent. nb = 4 for Gw.d, e+2 for Gw.dEe.

When (w - nb) is too small to hold the F output, gfortran emits
the F output anyway -- extending the field past w -- rather than
asterisking.  Only G's F mode does this; E mode preserves the
standard asterisk-on-overflow semantics via format-e.

The kP scale factor passes through to the E branch when G falls
back to scientific form; the F branch ignores it per gfortran's
behavior."
  (let* ((v (coerce val 'double-float))
         (mag (abs v))
         (nb (if exp-digits (+ exp-digits 2) 4))
         (effective-w (- width nb))
         (trailing (make-string nb :initial-element #\Space)))
    (labels ((natural-f (decimals)
               ;; Get the natural F form (no padding) with possible
               ;; leading-zero suppression applied.
               (let* ((wide (format-f v 64 decimals 0 incl-plus))
                      (trimmed (string-left-trim " " wide)))
                 ;; Apply leading-zero suppression: "0.dddd" -> ".dddd",
                 ;; "[-+]0.dddd" -> "[-+].dddd".  format-f only
                 ;; suppresses when its width is tight, which it isn't
                 ;; here.
                 (cond
                   ((and (>= (length trimmed) 2)
                         (char= (char trimmed 0) #\0)
                         (char= (char trimmed 1) #\.))
                    (subseq trimmed 1))
                   ((and (>= (length trimmed) 3)
                         (or (char= (char trimmed 0) #\-)
                             (char= (char trimmed 0) #\+))
                         (char= (char trimmed 1) #\0)
                         (char= (char trimmed 2) #\.))
                    (concatenate 'string (string (char trimmed 0))
                                 (subseq trimmed 2)))
                   (t trimmed))))
             (emit-f (decimals)
               ;; Render val as F with DECIMALS.  format-f handles
               ;; padding and overflow-to-asterisks normally; we
               ;; only intercept when effective-w <= 0, which would
               ;; crash format-f -- in that case gfortran emits the
               ;; natural F form anyway (extending past w).
               (if (>= effective-w 1)
                   (concatenate 'string
                                (format-f v effective-w decimals 0 incl-plus)
                                trailing)
                   (concatenate 'string (natural-f decimals) trailing))))
      (cond
        ((zerop v)
         (emit-f (max 0 (1- decimal-places))))
        ((or (< mag 0.1d0) (>= mag (expt 10d0 decimal-places)))
         (format-e v width decimal-places exp-digits scale incl-plus))
        (t
         ;; F-equivalent: pick decimal places based on magnitude bucket.
         ;; mag in [10^(k-1), 10^k) for k in 1..d -> d-k decimals.
         (let* ((k (1+ (%floor-log10 mag)))
                (effective-d (max 0 (- decimal-places k))))
           (emit-f effective-d)))))))


(defmethod emit-ed ((ed real-fixed-ed) stream values)
  ;; F emits fixed-point.  D shares F's parse shape (Dw.d, no Ee
  ;; tail), but per the Fortran standard it emits the same E-form
  ;; layout as E with `D' as the exponent character.  gfortran and
  ;; py-fortranformat both follow this rule.
  (let ((v (car values))
        (w (width-ed-width ed))
        (d (real-fixed-ed-decimal-places ed))
        (name (edit-descriptor-name ed)))
    (emit-out stream
              (ecase name
                (:f (format-f v w d *scale-factor* *include-plus*))
                (:d (format-e v w d nil *scale-factor* *include-plus*
                              :expchar #\D)))))
  (cdr values))

(defmethod emit-ed ((ed real-exp-ed) stream values)
  (let* ((v (car values))
         (w (width-ed-width ed))
         (d (real-exp-ed-decimal-places ed))
         (e (real-exp-ed-exponent ed))
         (name (edit-descriptor-name ed))
         (plus *include-plus*)
         (k *scale-factor*)
         (out
           (case name
             ;; E/G honor kP; ES and EN are already normalized and
             ;; ignore it per the Fortran standard.  D is dispatched
             ;; via real-fixed-ed (its parse shape matches F).
             (:e  (format-e  v w d e k plus))
             (:es (format-es v w d e plus))
             (:en (format-en v w d e plus))
             (:g  (format-g  v w d e k plus))
             (otherwise
              (warn "Unknown real-exp descriptor ~A" name)
              (make-string w :initial-element #\?)))))
    (emit-out stream out))
  (cdr values))

(defmethod emit-ed ((ed alpha-ed) stream values)
  (let* ((s (string (car values)))
         (w (or (width-ed-width ed) (length s))))
    (cond
      ((>= (length s) w)
       (emit-out stream (subseq s 0 w)))
      (t
       (emit-out stream (make-string (- w (length s)) :initial-element #\Space))
       (emit-out stream s))))
  (cdr values))

(defmethod emit-ed ((ed newline-ed) stream values)
  ;; Slash terminates the current record and starts a new one.
  ;; *COLUMN* resets to 1.
  (emit-newline stream)
  values)

(defmethod emit-ed ((ed edit-descriptor) stream values)
  (declare (ignore stream))
  (warn "emit-ed not implemented for ~A; skipping" (edit-descriptor-name ed))
  values)

(defun write-format (format-string &rest values)
  "Format VALUES according to FORMAT-STRING and return the result.
If the format runs out before the values do, control reverts to
the reversion descriptors with a newline inserted between cycles
(Fortran 95 12.2.2).  A `:' descriptor encountered with no
remaining values stops format processing immediately."
  (multiple-value-bind (main-eds rev-eds) (parse-format format-string)
    (let* ((main (expand-repeats main-eds))
           (rev  (expand-repeats rev-eds))
           (out  (make-string-output-stream))
           (vs   values)
           ;; Bind sign-control, scale, column, and colon-stop state
           ;; fresh so per-call state cannot leak into the next call.
           (*include-plus* nil)
           (*scale-factor* 0)
           (*column* 1)
           (*colon-stop* nil))
      ;; Main pass
      (dolist (ed main)
        (when *colon-stop* (return))
        ;; F95 12.2.2: if a value-producing descriptor is reached
        ;; with no remaining values, format processing stops as if
        ;; a colon descriptor were present (implicit-colon rule).
        (when (and (null vs)
                   (edit-descriptor-outputs-value-p ed))
          (return))
        (setf vs (emit-ed ed out vs)))
      ;; Reversion: keep cycling rev-eds while values remain.
      (when (and vs (not *colon-stop*))
        (let ((rev-has-value-ed (some #'edit-descriptor-outputs-value-p rev)))
          (unless rev-has-value-ed
            (invalid-format
             "Format exhausted with ~D values remaining and no value-producing reversion descriptors" (length vs)))
          (loop while (and vs (not *colon-stop*)) do
            (emit-newline out)
            (dolist (ed rev)
              (when *colon-stop* (return))
              (when (null vs) (return))
              (setf vs (emit-ed ed out vs))))))
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
    ;; Trailing E, E+, E- with no exponent digits: that's a
    ;; truncated exponent (likely because the field width cut off
    ;; the exponent digits).  gfortran rejects this; we return NIL
    ;; so the caller signals an error.
    (when (and (find #\E s)
               (let ((epos (position #\E s)))
                 (or (= epos (1- (length s)))
                     (and (= epos (- (length s) 2))
                          (member (char s (1+ epos)) '(#\+ #\-))))))
      (return-from parse-real-payload nil))
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
               ((null raw)
                (invalid-format "~S is not a valid real number" sub))
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


