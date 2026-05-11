;;;; fortran-format-parser.lisp
;;;;
;;;; Conditions, edit-descriptor structs, lexer, and parser for
;;;; Fortran format strings. Produces lists of descriptor objects
;;;; that the I/O engines (in fortran-format-io.lisp) walk.
;;;;
;;;; The architecture mirrors py-fortranformat's three-stage
;;;; pipeline: lex-format -> parse-tokens -> list of edit-descriptor
;;;; instances. PARSE-FORMAT is the convenience entry point and
;;;; returns (values main-eds reversion-eds).

(in-package #:fortran-format)

;;; ---------------------------------------------------------------
;;; Conditions
;;; ---------------------------------------------------------------

(define-condition invalid-format (simple-error) ()
  (:documentation "Signalled for malformed Fortran format strings."))

(defun invalid-format (fmt &rest args)
  (error 'invalid-format :format-control fmt :format-arguments args))

;;; ---------------------------------------------------------------
;;; Edit-descriptor objects
;;; ---------------------------------------------------------------
;;;
;;; py-fortranformat uses a class per descriptor. In CL, defstruct
;;; with :include gives the same effect more compactly, plus free
;;; type predicates and reader/writer accessors.

(defstruct edit-descriptor
  (name nil :type (or null symbol))
  (repeat nil :type (or null (integer 1 *)))     ; outer multiplicity
  (outputs-value-p nil :type boolean)            ; consumes/produces a value
  (control-p nil :type boolean))                 ; modifies state only

;; Width-bearing descriptors (I, F, E, A, L, ...) share these slots.
(defstruct (width-ed (:include edit-descriptor))
  (width nil :type (or null (integer 0 *))))

(defstruct (integer-ed (:include width-ed))      ; I[w[.m]], also B/O/Z
  (min-digits nil :type (or null (integer 0 *)))
  (base 10 :type (integer 2 36)))

(defstruct (real-fixed-ed (:include width-ed))   ; F[w.d], D[w.d]
  (decimal-places nil :type (or null (integer 0 *))))

(defstruct (real-exp-ed (:include width-ed))     ; E/EN/ES/G [w.d[Ee]]
  (decimal-places nil :type (or null (integer 0 *)))
  (exponent nil :type (or null (integer 0 *))))

(defstruct (logical-ed (:include width-ed)))     ; L

(defstruct (alpha-ed (:include width-ed)))       ; A (width optional)

(defstruct (skip-ed (:include edit-descriptor))  ; X, T, TL, TR
  (num-chars 0 :type integer))

(defstruct (scale-ed (:include edit-descriptor)) ; kP
  (scale 0 :type integer))

(defstruct (newline-ed (:include edit-descriptor))) ; /
(defstruct (colon-ed   (:include edit-descriptor))) ; :
(defstruct (flag-ed    (:include edit-descriptor))  ; BN BZ SP SS S
  (flag nil :type (or null symbol)))

(defstruct (quoted-ed (:include edit-descriptor))   ; 'foo' or "foo" or nHfoo
  (text "" :type string))

;;; Category table, mirroring ED1..ED10 from the Python:
;;;   ED1  one-letter, no arg:        BN BZ SP SS S
;;;   ED2  nX  (num-chars before):    X
;;;   ED3  Xn  (num-chars after):     T TR TL L
;;;   ED4  X or Xn:                   A
;;;   ED5  Xn.m only:                 D F
;;;   ED6  Xn or Xn.m:                B I O Z
;;;   ED7  Xn.m or Xn.mEe:            E EN ES G
;;;   ED8  kX (signed int before):    P
;;;   ED9  X only (special comma):    :
;;;   ED10 X only (special comma):    /
;;; Descriptors are identified by keywords throughout: :i :f :en :p :/ :|:|
;;; etc.  Keywords are interned in the KEYWORD package, are self-evaluating,
;;; compare under EQ, and don't collide with T/NIL/OTHERWISE in CASE.

(defparameter *ed-category*
  '((:ed1  . (:bn :bz :sp :ss :s))
    (:ed2  . (:x))
    (:ed3  . (:t :tr :tl :l))
    (:ed4  . (:a))
    (:ed5  . (:d :f))
    (:ed6  . (:b :i :o :z))
    (:ed7  . (:e :en :es :g))
    (:ed8  . (:p))
    (:ed9  . (:|:|))
    (:ed10 . (:/))))

(defparameter *repeatable-eds*
  '(:l :a :d :f :b :i :o :z :e :en :es :g :/))

(defun ed-category (kw)
  (loop for (cat . kws) in *ed-category*
        when (member kw kws :test #'eq)
        return cat))

(defun make-ed-for (name)
  "Build a fresh edit-descriptor struct for the given descriptor keyword."
  (ecase name
    (:i  (make-integer-ed    :name :i  :outputs-value-p t :base 10))
    (:b  (make-integer-ed    :name :b  :outputs-value-p t :base 2))
    (:o  (make-integer-ed    :name :o  :outputs-value-p t :base 8))
    (:z  (make-integer-ed    :name :z  :outputs-value-p t :base 16))
    (:f  (make-real-fixed-ed :name :f  :outputs-value-p t))
    (:d  (make-real-fixed-ed :name :d  :outputs-value-p t))
    (:e  (make-real-exp-ed   :name :e  :outputs-value-p t))
    (:en (make-real-exp-ed   :name :en :outputs-value-p t))
    (:es (make-real-exp-ed   :name :es :outputs-value-p t))
    (:g  (make-real-exp-ed   :name :g  :outputs-value-p t))
    (:l  (make-logical-ed    :name :l  :outputs-value-p t))
    (:a  (make-alpha-ed      :name :a  :outputs-value-p t))
    (:x  (make-skip-ed       :name :x  :control-p t))
    (:t  (make-skip-ed       :name :t  :control-p t))
    (:tl (make-skip-ed       :name :tl :control-p t))
    (:tr (make-skip-ed       :name :tr :control-p t))
    (:p  (make-scale-ed      :name :p  :control-p t))
    (:/  (make-newline-ed    :name :/))
    (:|:| (make-colon-ed     :name :|:|))
    ((:bn :bz :sp :ss :s)
     (make-flag-ed :name name :flag name :control-p t))))

;;; ---------------------------------------------------------------
;;; Lexer
;;; ---------------------------------------------------------------
;;;
;;; Mirrors py-fortranformat/_lexer.py.  Token = (type . value).
;;;
;;; Token types:
;;;   :left-paren :right-paren :comma :dot
;;;   :uint   integer 0
;;;   :nzuint integer > 0
;;;   :int    signed (with explicit sign)
;;;   :quoted string
;;;   :ed1..:ed10  with value = descriptor symbol

(defparameter *double-eds*
  '(("EN" . :en) ("ES" . :es) ("TR" . :tr) ("TL" . :tl)
    ("BN" . :bn) ("BZ" . :bz) ("SP" . :sp) ("SS" . :ss)))

(defparameter *single-eds*
  '((#\A . :a) (#\B . :b) (#\D . :d) (#\E . :e) (#\F . :f) (#\G . :g)
    (#\I . :i) (#\L . :l) (#\O . :o) (#\P . :p) (#\S . :s) (#\T . :t)
    (#\X . :x) (#\Z . :z) (#\: . :|:|) (#\/ . :/)))

(defun whitespace-char-p (c)
  (member c '(#\Space #\Tab #\Newline)))

(defun digit-char-p* (c) (and c (digit-char-p c)))

(defun lex-format (string)
  (let ((tokens '())
        (i 0)
        (n (length string)))
    (labels ((peek (k)
               (and (< (+ i k) n) (char string (+ i k))))
             (push-tok (type &optional value)
               (push (cons type value) tokens)))
      (loop while (< i n) do
        (let ((c (char string i)))
          (cond
            ;; Skip whitespace
            ((whitespace-char-p c) (incf i))

            ;; Quoted string with ' or "
            ((or (char= c #\') (char= c #\"))
             (let ((delim c) (buf (make-string-output-stream)))
               (incf i)
               (loop
                 (unless (< i n)
                   (invalid-format "Unterminated quoted string"))
                 (let ((d (char string i)))
                   (cond
                     ((and (char= d delim) (eql (peek 1) delim))
                      (write-char delim buf) (incf i 2))
                     ((char= d delim) (incf i) (return))
                     (t (write-char d buf) (incf i)))))
               (push-tok :quoted (get-output-stream-string buf))))

            ;; Signed or unsigned integer
            ((or (digit-char-p c) (char= c #\+) (char= c #\-))
             (let ((signed (or (char= c #\+) (char= c #\-)))
                   (start i))
               (when signed
                 (unless (digit-char-p* (peek 1))
                   (invalid-format "Orphaned sign at position ~D" i))
                 (incf i))
               (loop while (and (< i n) (digit-char-p (char string i))) do (incf i))
               (let ((val (parse-integer string :start start :end i)))
                 (cond
                   (signed                (push-tok :int   val))
                   ((zerop val)           (push-tok :uint  val))
                   (t                     (push-tok :nzuint val))))))

            ((char= c #\,) (push-tok :comma) (incf i))
            ((char= c #\.) (push-tok :dot)   (incf i))
            ((char= c #\() (push-tok :left-paren)  (incf i))
            ((char= c #\)) (push-tok :right-paren) (incf i))

            ;; H descriptor: previous token must be uint/nzuint; that
            ;; many characters become a quoted token.
            ((or (char= c #\H) (char= c #\h))
             (let ((prev (car tokens)))
               (unless (and prev (member (car prev) '(:uint :nzuint)))
                 (invalid-format "H descriptor needs a count, at position ~D" i))
               (let ((k (cdr prev)))
                 (pop tokens)
                 (incf i)             ; skip H
                 (when (> (+ i k) n)
                   (invalid-format "H descriptor runs past end of format"))
                 (push-tok :quoted (subseq string i (+ i k)))
                 (incf i k))))

            ;; Two-letter descriptors take priority over single-letter
            ((let* ((c2 (peek 1))
                    (two (and c2 (string-upcase (coerce (list c c2) 'string))))
                    (pair (and two (assoc two *double-eds* :test #'string=))))
               (when pair
                 (let* ((sym (cdr pair))
                        (cat (ed-category sym)))
                   (push-tok cat sym)
                   (incf i 2)
                   t))))

            ;; Single-letter descriptors (case-insensitive)
            ((let ((pair (assoc (char-upcase c) *single-eds*)))
               (when pair
                 (let* ((sym (cdr pair))
                        (cat (ed-category sym)))
                   (push-tok cat sym)
                   (incf i)
                   t))))

            (t (invalid-format "Unexpected character '~C' at position ~D" c i))))))
    (nreverse tokens)))

;;; ---------------------------------------------------------------
;;; Parser
;;; ---------------------------------------------------------------
;;;
;;; Mirrors py-fortranformat/_parser.py. Strategy:
;;;   1. Strip a single outer paren pair.
;;;   2. Extract the reversion subsequence (the rightmost top-level
;;;      paren group with everything after it, or the whole format
;;;      if there is no inner group).
;;;   3. Expand inner parens by literal repetition on each.
;;;   4. Split on commas, then on : , / , and kP.
;;;   5. For each token-set, classify by ED-category and build the
;;;      descriptor object.
;;;
;;; PARSE-FORMAT returns (values main-eds reversion-eds). The
;;; reversion list is used by the I/O driver when the main format
;;; runs out and there are still values to transfer (Fortran 95
;;; 12.2.2 / FORTRAN 77 12.8.2).

(defun parse-tokens (tokens)
  "Return (values main-eds reversion-eds)."
  (let* ((inner (strip-outer-parens tokens))
         (rev   (extract-reversion-tokens inner)))
    (values (parse-token-stream inner)
            (parse-token-stream rev))))

(defun parse-token-stream (tokens)
  (let* ((toks (expand-parens tokens))
         (sets (split-on :comma toks))
         (sets (split-around :ed9 sets))
         (sets (split-around :ed10 sets))
         (sets (split-before :ed8 sets)))
    (loop for ts in sets
          for ed = (parse-set ts)
          when ed collect ed)))

(defun strip-outer-parens (tokens)
  (if (and tokens
           (eq (car (first tokens)) :left-paren)
           (eq (car (car (last tokens))) :right-paren))
      (subseq tokens 1 (1- (length tokens)))
      tokens))

(defun extract-reversion-tokens (tokens)
  "Given the inside of the outer parens, return the tokens that
form the reversion format. Walks backwards from the last token,
collecting until it has balanced one paren level. If there are no
parens, returns the whole list (the entire format reverts to
itself). A leading repeat count attached to the group is preserved.

This matches py-fortranformat's _get_reversion_tokens: it takes
from the matched '(' to the end of the list, so a paren group
followed by more tokens contributes both the group's contents and
the trailing tokens to reversion."
  (let ((collected '())
        (nesting nil))
    (loop for tk in (reverse tokens) do
      ;; End condition: nesting just closed; absorb a preceding
      ;; repeat count if present, then stop.
      (when (and nesting (< nesting 1))
        (when (member (car tk) '(:uint :nzuint))
          (push tk collected))
        (return))
      (case (car tk)
        (:right-paren (setf nesting (if nesting (1+ nesting) 1)))
        (:left-paren  (cond ((null nesting)
                             (invalid-format "Unbalanced parens in format"))
                            (t (decf nesting)))))
      (push tk collected))
    collected))

(defun expand-parens (tokens)
  "Walk tokens, recursively expanding (...) groups, repeating
when preceded by an unsigned integer."
  (let ((out '())
        (rest tokens))
    (loop while rest do
      (let ((tk (pop rest)))
        (cond
          ((eq (car tk) :left-paren)
           ;; collect to matching close
           (let ((depth 1) (inner '()))
             (loop while (and rest (plusp depth)) do
               (let ((t2 (pop rest)))
                 (case (car t2)
                   (:left-paren  (incf depth))
                   (:right-paren (decf depth)))
                 (when (plusp depth) (push t2 inner))))
             (when (plusp depth)
               (invalid-format "Unbalanced parens"))
             (let ((expanded (expand-parens (nreverse inner)))
                   (prev (car out)))
               (cond
                 ((and prev (member (car prev) '(:uint :nzuint)))
                  (let ((k (cdr prev)))
                    (pop out)
                    (dotimes (_ k)
                      (dolist (e expanded) (push e out))
                      (push (cons :comma nil) out))))
                 (t (dolist (e expanded) (push e out)))))))
          (t (push tk out)))))
    (nreverse out)))

(defun split-on (sep tokens)
  (let ((groups '()) (cur '()))
    (dolist (tk tokens)
      (if (eq (car tk) sep)
          (progn (push (nreverse cur) groups) (setf cur '()))
          (push tk cur)))
    (push (nreverse cur) groups)
    (nreverse (remove-if #'null groups))))

(defun split-around (sep token-sets)
  "If a token of type SEP appears in a token-set, break it into
[before] [sep alone] [after]. Used for : and / which can stand by
themselves regardless of commas."
  (let ((result '()))
    (dolist (ts token-sets)
      (cond
        ((not (find sep ts :key #'car))
         (push ts result))
        (t
         (let ((buf '()))
           (dolist (tk ts)
             (cond
               ((eq (car tk) sep)
                (when buf (push (nreverse buf) result) (setf buf '()))
                (push (list tk) result))
               (t (push tk buf))))
           (when buf (push (nreverse buf) result))))))
    (nreverse result)))

(defun split-before (sep token-sets)
  "kP: signed/unsigned int followed by P. Split such that the
(int, P) pair is its own set and the rest continues."
  (let ((result '()))
    (dolist (ts token-sets)
      (cond
        ((and (>= (length ts) 2)
              (member (car (first ts)) '(:int :uint :nzuint))
              (eq (car (second ts)) sep))
         (push (subseq ts 0 2) result)
         (let ((tail (subseq ts 2)))
           (when tail (push tail result))))
        (t (push ts result))))
    (nreverse result)))

(defun parse-set (tokens)
  "Identify which ED category appears in TOKENS, peel off any
leading repeat count, and build the descriptor object."
  (let* ((ed-token (find-if (lambda (tk)
                              (member (car tk)
                                      '(:ed1 :ed2 :ed3 :ed4 :ed5
                                        :ed6 :ed7 :ed8 :ed9 :ed10
                                        :quoted)))
                            tokens))
         (cat   (and ed-token (car ed-token)))
         (sym   (and ed-token (cdr ed-token))))
    (unless ed-token (return-from parse-set nil))

    ;; Strip a leading repeat count if this descriptor is repeatable
    (let ((repeat nil))
      (when (and (member sym *repeatable-eds*)
                 (member (car (first tokens)) '(:uint :nzuint)))
        (setf repeat (cdr (first tokens)))
        (pop tokens))
      (let ((ed (case cat
                  (:quoted (let ((q (make-quoted-ed :name :quoted
                                                    :text (cdr ed-token))))
                             q))
                  (:ed1  (parse-ed1 tokens))
                  (:ed2  (parse-ed2 tokens))
                  (:ed3  (parse-ed3 tokens))
                  (:ed4  (parse-ed4 tokens))
                  (:ed5  (parse-ed5 tokens))
                  (:ed6  (parse-ed6 tokens))
                  (:ed7  (parse-ed7 tokens))
                  (:ed8  (parse-ed8 tokens))
                  (:ed9  (make-ed-for :|:|))
                  (:ed10 (make-ed-for :/)))))
        (when (and repeat (typep ed 'edit-descriptor))
          (setf (edit-descriptor-repeat ed) repeat))
        ed))))

(defun type-shape (tokens)
  "Return a list of token-types, useful for pattern matching."
  (mapcar #'car tokens))

(defun parse-ed1 (tokens)
  ;; expect: (:ed1 sym)
  (unless (equal (type-shape tokens) '(:ed1))
    (invalid-format "Bad ED1 sequence: ~S" tokens))
  (make-ed-for (cdr (first tokens))))

(defun parse-ed2 (tokens)
  ;; expect: (:nzuint k) (:ed2 X)
  (unless (equal (type-shape tokens) '(:nzuint :ed2))
    (invalid-format "Bad ED2 sequence: ~S" tokens))
  (let ((ed (make-ed-for (cdr (second tokens)))))
    (setf (skip-ed-num-chars ed) (cdr (first tokens)))
    ed))

(defun parse-ed3 (tokens)
  ;; expect: (:ed3 X) (:nzuint k)
  (unless (equal (type-shape tokens) '(:ed3 :nzuint))
    (invalid-format "Bad ED3 sequence: ~S" tokens))
  (let ((ed (make-ed-for (cdr (first tokens))))
        (k  (cdr (second tokens))))
    (if (typep ed 'logical-ed)
        (setf (width-ed-width ed) k)
        (setf (skip-ed-num-chars ed) k))
    ed))

(defun parse-ed4 (tokens)
  ;; A or An
  (let ((shape (type-shape tokens)))
    (cond
      ((equal shape '(:ed4))
       (make-ed-for (cdr (first tokens))))
      ((equal shape '(:ed4 :nzuint))
       (let ((ed (make-ed-for (cdr (first tokens)))))
         (setf (width-ed-width ed) (cdr (second tokens)))
         ed))
      (t (invalid-format "Bad ED4 sequence: ~S" tokens)))))

(defun parse-ed5 (tokens)
  ;; Xn.m
  (unless (equal (type-shape tokens) '(:ed5 :nzuint :dot :uint))
    (unless (equal (type-shape tokens) '(:ed5 :nzuint :dot :nzuint))
      (invalid-format "Bad ED5 sequence: ~S" tokens)))
  (let ((ed (make-ed-for (cdr (first tokens)))))
    (setf (width-ed-width ed) (cdr (second tokens))
          (real-fixed-ed-decimal-places ed) (cdr (fourth tokens)))
    ed))

(defun parse-ed6 (tokens)
  ;; Xn or Xn.m
  (let ((shape (type-shape tokens)))
    (cond
      ((equal shape '(:ed6 :nzuint))
       (let ((ed (make-ed-for (cdr (first tokens)))))
         (setf (width-ed-width ed) (cdr (second tokens)))
         ed))
      ((or (equal shape '(:ed6 :nzuint :dot :uint))
           (equal shape '(:ed6 :nzuint :dot :nzuint)))
       (let ((ed (make-ed-for (cdr (first tokens)))))
         (setf (width-ed-width ed) (cdr (second tokens))
               (integer-ed-min-digits ed) (cdr (fourth tokens)))
         ed))
      (t (invalid-format "Bad ED6 sequence: ~S" tokens)))))

(defun parse-ed7 (tokens)
  ;; Xn.m or Xn.mEe
  (let ((shape (type-shape tokens)))
    (cond
      ((or (equal shape '(:ed7 :nzuint :dot :uint))
           (equal shape '(:ed7 :nzuint :dot :nzuint)))
       (let ((ed (make-ed-for (cdr (first tokens)))))
         (setf (width-ed-width ed) (cdr (second tokens))
               (real-exp-ed-decimal-places ed) (cdr (fourth tokens)))
         ed))
      ((and (= (length tokens) 6)
            (eq (car (fifth tokens)) :ed7)
            (member (car (sixth tokens)) '(:uint :nzuint :int)))
       (let ((ed (make-ed-for (cdr (first tokens)))))
         (setf (width-ed-width ed) (cdr (second tokens))
               (real-exp-ed-decimal-places ed) (cdr (fourth tokens))
               (real-exp-ed-exponent ed) (cdr (sixth tokens)))
         ed))
      (t (invalid-format "Bad ED7 sequence: ~S" tokens)))))

(defun parse-ed8 (tokens)
  ;; kP -- k is :int / :uint / :nzuint, then :ed8 P
  (unless (and (= (length tokens) 2)
               (member (car (first tokens)) '(:int :uint :nzuint))
               (eq (car (second tokens)) :ed8))
    (invalid-format "Bad ED8 sequence: ~S" tokens))
  (let ((ed (make-ed-for :p)))
    (setf (scale-ed-scale ed) (cdr (first tokens)))
    ed))

;;; ---------------------------------------------------------------
;;; Convenience: full format-string parse
;;; ---------------------------------------------------------------

(defun parse-format (format-string)
  (parse-tokens (lex-format format-string)))

