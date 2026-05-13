;;;; fortran-format-corpus.lisp
;;;;
;;;; Data-driven test runner against the py-fortranformat test
;;;; corpus.  The corpus lives in src/format/corpus/<vendor-and-
;;;; version>/<descriptor>-ed-output.test (and similar for input),
;;;; each file containing groups of three lines:
;;;;
;;;;   FORMAT:(I3)
;;;;   INPUT:42
;;;;   expected-output
;;;;
;;;; A few cases have multiple values separated by commas in the
;;;; INPUT line.  Float values use Fortran exponent letters E or D.
;;;; Strings are single-quoted with doubled-quote escape.
;;;;
;;;; Origin: github.com/brendanarnold/py-fortranformat (MIT license,
;;;; see ../corpus/LICENSE).  Files in corpus/ are unmodified copies
;;;; of upstream `.test' files so they can be re-synced on demand.
;;;;
;;;; The runner returns a RESULT struct rather than asserting per
;;;; case, since corpora can be huge and we want a summary plus a
;;;; small bounded sample of mismatches.

(in-package #:fortran-format)

(defstruct corpus-result
  (filename nil :type (or null string))
  (total 0    :type fixnum)
  (passed 0   :type fixnum)
  (failed 0   :type fixnum)
  (errored 0  :type fixnum)
  ;; A bounded list of mismatch records for human inspection.
  (samples nil :type list))

(defstruct corpus-mismatch
  format input expected got)

(defparameter *corpus-sample-limit* 5
  "How many mismatch examples to retain per file.")

;;; --- Parsing Fortran value literals ---------------------------
;;;
;;; The corpus's INPUT line is a comma-separated list of Fortran
;;; literals.  We recognise integers (with optional sign), reals
;;; with either E or D exponent letters, logical .TRUE./.FALSE.,
;;; and single-quoted strings with doubled-quote escapes.
;;; Whitespace between values is ignored.

(defun %skip-ws (s i)
  (loop while (and (< i (length s)) (member (char s i) '(#\Space #\Tab)))
        do (incf i))
  i)

(defun %read-fortran-string (s i)
  "S[i] is the opening single-quote.  Return (values string new-i)."
  (let ((out (make-array 16 :element-type 'character
                            :adjustable t :fill-pointer 0)))
    (incf i)                            ; skip opening quote
    (loop while (< i (length s)) do
      (let ((c (char s i)))
        (cond
          ((char= c #\')
           (cond
             ;; Doubled quote -> literal quote in the string
             ((and (< (1+ i) (length s)) (char= (char s (1+ i)) #\'))
              (vector-push-extend #\' out)
              (incf i 2))
             ;; Closing quote
             (t (return (values (copy-seq out) (1+ i))))))
          (t
           (vector-push-extend c out)
           (incf i))))
          finally (error "Unterminated string literal in INPUT: ~S" s))))

(defun %read-fortran-number (s i)
  "Read an integer or real starting at S[i].  Returns (values
value new-i).  Reals carry an E or D exponent."
  (let ((start i)
        (has-dot nil)
        (has-exp nil))
    ;; optional sign
    (when (and (< i (length s)) (member (char s i) '(#\+ #\-)))
      (incf i))
    ;; integer part
    (loop while (and (< i (length s)) (digit-char-p (char s i)))
          do (incf i))
    ;; optional decimal part
    (when (and (< i (length s)) (char= (char s i) #\.))
      (setf has-dot t)
      (incf i)
      (loop while (and (< i (length s)) (digit-char-p (char s i)))
            do (incf i)))
    ;; optional exponent (E or D, case-insensitive)
    (when (and (< i (length s))
               (member (char s i) '(#\E #\D #\e #\d)))
      (setf has-exp t)
      (incf i)
      (when (and (< i (length s)) (member (char s i) '(#\+ #\-)))
        (incf i))
      (loop while (and (< i (length s)) (digit-char-p (char s i)))
            do (incf i)))
    (let ((text (subseq s start i)))
      (cond
        ((or has-dot has-exp)
         ;; Replace D/d with E/e for the CL reader, then read as double.
         (let ((normed (substitute #\E #\D
                        (substitute #\e #\d text))))
           (let ((*read-default-float-format* 'double-float))
             (values (read-from-string normed) i))))
        (t
         (values (parse-integer text) i))))))

(defun %starts-with-p (prefix string &key (test #'char=))
  "Return T iff STRING begins with PREFIX, using TEST to compare
characters.  Plain-CL substitute for alexandria:starts-with-subseq."
  (and (>= (length string) (length prefix))
       (loop for i below (length prefix)
             always (funcall test (char prefix i) (char string i)))))

(defun %read-fortran-logical (s i)
  "Read .TRUE. or .FALSE. starting at S[i].  Case-insensitive."
  (let ((rest (subseq s i)))
    (cond
      ((%starts-with-p ".TRUE."  rest :test #'char-equal) (values t   (+ i 6)))
      ((%starts-with-p ".T."     rest :test #'char-equal) (values t   (+ i 3)))
      ((%starts-with-p ".FALSE." rest :test #'char-equal) (values nil (+ i 7)))
      ((%starts-with-p ".F."     rest :test #'char-equal) (values nil (+ i 3)))
      (t (error "Bad logical literal at position ~D of ~S" i s)))))

(defun parse-fortran-values (s)
  "Parse the body of an INPUT: line into a list of CL values."
  (let ((out '())
        (i 0)
        (n (length s)))
    (loop while (< i n) do
      (setf i (%skip-ws s i))
      (when (>= i n) (return))
      (let ((c (char s i)))
        (multiple-value-bind (val new-i)
            (cond
              ((char= c #\')             (%read-fortran-string s i))
              ((char= c #\.)             (%read-fortran-logical s i))
              ((or (digit-char-p c)
                   (member c '(#\+ #\-))) (%read-fortran-number s i))
              (t (error "Unexpected character ~S at position ~D of ~S"
                        c i s)))
          (push val out)
          (setf i new-i)))
      (setf i (%skip-ws s i))
      (when (and (< i n) (char= (char s i) #\,))
        (incf i)))
    (nreverse out)))

;;; --- File parsing ----------------------------------------------

(defun parse-corpus-file (path)
  "Return a list of (format-string values expected-output) lists,
one per case in the .test file at PATH.

Each case is FORMAT: line, INPUT: line, then one or more output
lines.  The output runs from the line after INPUT: up to (but not
including) the next FORMAT: line, or EOF.  Multiple output lines
are joined with #\\Newline, so a blank line is preserved as an
empty record separator -- this is what corpora for the / edit
descriptor (record terminator) require."
  (with-open-file (in path :direction :input)
    (let ((cases '())
          (fmt nil)
          (vals nil)
          (out-lines nil)
          (state :want-fmt))
      (labels ((commit ()
                 (when (eql state :collecting-output)
                   (push (list fmt vals
                               (format nil "~{~A~^~%~}"
                                       (nreverse out-lines)))
                         cases)
                   (setf fmt nil vals nil out-lines nil
                         state :want-fmt))))
        (loop for line = (read-line in nil nil) while line do
          (cond
            ((%starts-with-p "FORMAT:" line)
             (commit)
             (setf fmt (subseq line 7)
                   state :want-input))
            ((%starts-with-p "INPUT:" line)
             (unless (eql state :want-input)
               (error "Unexpected INPUT: in ~A while state=~A" path state))
             (setf vals (parse-fortran-values (subseq line 6))
                   state :collecting-output))
            ((eql state :collecting-output)
             (push line out-lines))
            ((zerop (length line))
             ;; Stray blank line outside any case (e.g. between groups,
             ;; or at EOF).  Tolerated.
             )
            (t
             (error "Unexpected line in ~A while state=~A: ~S"
                    path state line))))
        (commit))
      (nreverse cases))))

;;; --- Runner -----------------------------------------------------

(defparameter *corpus-known-divergences* '()
  "List of (format-regex . reason) pairs.  Currently unused; reserved
for the next iteration once we see which patterns produce
implementation-defined rounding mismatches.")

(defun run-corpus-file (path &key (sample-limit *corpus-sample-limit*))
  "Drive write-format against every case in PATH and return a
CORPUS-RESULT.  Each case that errors (rather than just producing
the wrong string) is counted separately."
  (let ((cases (parse-corpus-file path))
        (result (make-corpus-result
                 :filename (namestring path))))
    (dolist (case cases result)
      (destructuring-bind (fmt vals expected) case
        (incf (corpus-result-total result))
        (handler-case
            (let ((got (apply #'write-format fmt vals)))
              (cond
                ((string= got expected)
                 (incf (corpus-result-passed result)))
                (t
                 (incf (corpus-result-failed result))
                 (when (< (length (corpus-result-samples result))
                          sample-limit)
                   (push (make-corpus-mismatch :format fmt :input vals
                                               :expected expected :got got)
                         (corpus-result-samples result))))))
          (error (c)
            (declare (ignore c))
            (incf (corpus-result-errored result))))))))

(defun print-corpus-result (r &optional (stream *standard-output*))
  (format stream "~&~A: ~D/~D passed, ~D failed, ~D errored~%"
          (corpus-result-filename r)
          (corpus-result-passed r)
          (corpus-result-total r)
          (corpus-result-failed r)
          (corpus-result-errored r))
  (when (corpus-result-samples r)
    (format stream "  Sample mismatches:~%")
    (dolist (m (reverse (corpus-result-samples r)))
      (format stream "    format=~S vals=~S~%      expected=~S~%      got=     ~S~%"
              (corpus-mismatch-format m)
              (corpus-mismatch-input m)
              (corpus-mismatch-expected m)
              (corpus-mismatch-got m)))))

;;; --- Generator -------------------------------------------------
;;;
;;; The generator turns a vendored .test file into a sibling
;;; .tests.lisp file containing one rt:deftest per case.  The
;;; generated file is checked into the repository alongside the
;;; original .test file and loaded by the test ASDF system.
;;;
;;; To regenerate after a corpus re-sync:
;;;
;;;   (fortran-format::regenerate-corpus-tests
;;;     "/path/to/src/format/corpus/gfortran-4.4.1/i-ed-output.test")
;;;
;;; or, to do every file in a directory:
;;;
;;;   (fortran-format::regenerate-all-corpus-files
;;;     "/path/to/src/format/corpus/gfortran-4.4.1/")

(defun %test-name-stem (test-file)
  "Derive a symbol-name stem from a corpus filename like
'i-ed-output.test' -> 'I-ED-OUTPUT'.  Always uppercased."
  (let ((name (pathname-name test-file)))
    (string-upcase name)))

(defun %test-symbol-name (stem index)
  "Build a deftest symbol name like FMT.CORPUS.I-ED-OUTPUT.0042.
INDEX is 1-based and zero-padded to 4 digits."
  (format nil "FMT.CORPUS.~A.~4,'0D" stem index))

(defun regenerate-corpus-tests (test-file
                                &key (output-file nil) (verbose t))
  "Read the corpus file at TEST-FILE and write a sibling
.tests.lisp file containing one rt:deftest per case.  Test names
are FMT.CORPUS.<stem>.<NNNN> where stem comes from the input
filename and NNNN is the 1-based sequence number, zero-padded.

OUTPUT-FILE defaults to TEST-FILE with .tests.lisp appended (so
'i-ed-output.test' -> 'i-ed-output.tests.lisp').  Returns the
output pathname."
  (let* ((path  (pathname test-file))
         (cases (parse-corpus-file path))
         (out   (or output-file
                    (merge-pathnames
                     (make-pathname :name (concatenate 'string
                                                      (pathname-name path)
                                                      ".tests")
                                    :type "lisp")
                     path)))
         (stem  (%test-name-stem path)))
    (with-open-file (s out :direction :output
                           :if-exists :supersede
                           :if-does-not-exist :create)
      (format s ";;;; ~A~%" (file-namestring out))
      (format s ";;;;~%")
      (format s ";;;; AUTO-GENERATED from ~A.~%" (file-namestring path))
      (format s ";;;; Do not edit by hand.  Regenerate with~%")
      (format s ";;;;~%")
      (format s ";;;;   (fortran-format::regenerate-corpus-tests~%")
      (format s ";;;;     #P\"...~A\")~%"
              (file-namestring path))
      (format s ";;;;~%")
      (format s ";;;; ~D cases.~%" (length cases))
      (format s "~%(in-package #:fortran-format)~%~%")
      (loop for (fmt vals expected) in cases
            for n from 1
            for name = (%test-symbol-name stem n)
            do
               (format s "(rt:deftest ~A~%    (write-format ~S"
                       name fmt)
               (dolist (v vals)
                 (format s " ~S" v))
               (format s ")~%  ~S)~%~%" expected)))
    (when verbose
      (format t "~&Wrote ~D deftests to ~A~%" (length cases) out))
    out))

(defun establish-baseline-expected-failures (test-file
                                              &key (output-file nil)
                                                   (verbose t))
  "Run every deftest generated from TEST-FILE, capture the names
that fail, and write a sibling .expected-failures.lisp containing
PUSHNEW forms for each failing name.  Use this once to baseline
the suite; thereafter the expected-failures file is human-edited
(remove a name when its bug is fixed).

Assumes the deftests have already been loaded into RT's
*entries-table*; if not, load the corresponding .tests.lisp first.

OUTPUT-FILE defaults to TEST-FILE with .expected-failures.lisp
appended.  Returns the output pathname."
  (let* ((path (pathname test-file))
         (out  (or output-file
                   (merge-pathnames
                    (make-pathname :name (concatenate 'string
                                                     (pathname-name path)
                                                     ".expected-failures")
                                   :type "lisp")
                    path)))
         (stem (%test-name-stem path))
         (prefix (concatenate 'string "FMT.CORPUS." stem "."))
         (rt-pkg (find-package :regression-test))
         (do-tests-fn  (find-symbol "DO-TESTS"      rt-pkg))
         (pending-fn   (find-symbol "PENDING-TESTS" rt-pkg)))
    ;; Run everything, capture pending.
    (funcall do-tests-fn)
    (let ((all-pending (funcall pending-fn))
          (mine '()))
      ;; Filter to just the tests from this corpus file.
      (dolist (sym all-pending)
        (when (and (eq (symbol-package sym) (find-package :fortran-format))
                   (let ((n (symbol-name sym)))
                     (and (>= (length n) (length prefix))
                          (string= prefix n :end2 (length prefix)))))
          (push sym mine)))
      (setf mine (sort mine #'string<))
      (with-open-file (s out :direction :output
                             :if-exists :supersede
                             :if-does-not-exist :create)
        (format s ";;;; ~A~%" (file-namestring out))
        (format s ";;;;~%")
        (format s ";;;; Known failures for the deftests generated from~%")
        (format s ";;;; ~A.~%" (file-namestring path))
        (format s ";;;;~%")
        (format s ";;;; Initially auto-generated by~%")
        (format s ";;;;   (fortran-format::establish-baseline-expected-failures ...)~%")
        (format s ";;;; but maintained by hand thereafter: remove a name when its~%")
        (format s ";;;; bug is fixed.  Implementation-specific failures should be~%")
        (format s ";;;; wrapped in #+<impl> / #-<impl>.~%")
        (format s ";;;;~%")
        (format s ";;;; ~D failures at baseline.~%" (length mine))
        (format s "~%(in-package #:fortran-format)~%~%")
        (dolist (sym mine)
          (format s "(pushnew '~A rt:*expected-failures*)~%"
                  (symbol-name sym))))
      (when verbose
        (format t "~&Wrote ~D expected failures to ~A~%"
                (length mine) out))
      out)))

(defun regenerate-all-corpus-files (corpus-directory &key (verbose t))
  "Regenerate .tests.lisp files for every .test file under
CORPUS-DIRECTORY.  Does NOT regenerate .expected-failures.lisp --
those are baselined once and then maintained by hand."
  (let ((dir (pathname corpus-directory)))
    (dolist (test-file (directory (merge-pathnames "*.test" dir)))
      (regenerate-corpus-tests test-file :verbose verbose))))


;;; --- Input corpora ---------------------------------------------
;;;
;;; The input corpus files (vendored from py-fortranformat under
;;; corpus/gfortran-4.4.1/input/) have the same three-line per-case
;;; shape as the output corpora -- FORMAT: line, INPUT: line, then
;;; the expected result -- but the meaning of INPUT and the result
;;; differ.  Here INPUT is the raw record text to feed READ-FORMAT,
;;; and the third line is either:
;;;
;;;   - "ERR"  --- READ-FORMAT must signal an error on this input,
;;;     or
;;;   - the Fortran-printed value gfortran wrote back as a sanity
;;;     check on what it parsed.  For integers/logicals the third
;;;     line has the integer in a wide right-justified field; for
;;;     reals it has gfortran's 0.dddE+nnn high-precision form.
;;;     The Lisp reader can read both directly (logical 0/1 -> we
;;;     translate to NIL/T after).

(defun %parse-expected-input-value (line ed-kind)
  "Parse the expected-result line from an input corpus.  ED-KIND is
the descriptor letter (a keyword: :I, :F, :L, :B, :O, :Z, :E, :EN,
:ES, :G, :D) so we know whether to translate 0/1 to NIL/T (for L).

Returns one of:
  (:value <lisp-value>) on success,
  :err                   if the line is 'ERR'."
  (let ((trim (string-trim '(#\Space #\Tab) line)))
    (cond
      ((string= trim "ERR") :err)
      (t
       (let ((val (let ((*read-default-float-format* 'double-float))
                    (with-standard-io-syntax
                      (let ((*read-default-float-format* 'double-float))
                        (read-from-string trim))))))
         (list :value
               (case ed-kind
                 (:l (if (zerop val) nil t))
                 (t val))))))))

(defun %ed-kind-from-stem (stem)
  "Given a corpus stem like 'L-ED-INPUT-1' or 'F-ED-INPUT-1',
return a keyword naming the value-descriptor family: :L, :F, :I,
etc."
  (intern (subseq stem 0 (position #\- stem)) :keyword))

(defun parse-input-corpus-file (path)
  "Return a list of (format-string input-string expected) lists.
EXPECTED is either :ERR or (:VALUE <lisp-value>)."
  (let* ((path (pathname path))
         (stem (%test-name-stem path))
         (kind (%ed-kind-from-stem stem)))
    (with-open-file (in path :direction :input)
      (let ((cases '())
            (fmt nil)
            (input nil)
            (state :want-fmt))
        (loop for line = (read-line in nil nil) while line do
          (cond
            ((zerop (length line)))
            ((%starts-with-p "FORMAT:" line)
             (setf fmt (subseq line 7) state :want-input))
            ((%starts-with-p "INPUT:" line)
             (setf input (subseq line 6) state :want-expected))
            ((eql state :want-expected)
             (push (list fmt input (%parse-expected-input-value line kind))
                   cases)
             (setf state :want-fmt))
            (t
             (error "Unexpected line in ~A while state=~A: ~S"
                    path state line))))
        (nreverse cases)))))

(defun regenerate-input-corpus-tests (test-file
                                      &key (output-file nil) (verbose t))
  "Generate rt:deftest forms from an INPUT corpus file.  Each
deftest calls READ-FORMAT and checks the result, or expects an
error to be signaled.

Test names are FMT.CORPUS.<stem>.<NNNN>, where stem is the
upcased filename like 'L-ED-INPUT-1'."
  (let* ((path  (pathname test-file))
         (cases (parse-input-corpus-file path))
         (out   (or output-file
                    (merge-pathnames
                     (make-pathname :name (concatenate 'string
                                                       (pathname-name path)
                                                       ".tests")
                                    :type "lisp")
                     path)))
         (stem  (%test-name-stem path)))
    (with-open-file (s out :direction :output
                           :if-exists :supersede
                           :if-does-not-exist :create)
      (format s ";;;; ~A~%;;;;~%" (file-namestring out))
      (format s ";;;; AUTO-GENERATED from ~A.~%" (file-namestring path))
      (format s ";;;; Do not edit by hand.  Regenerate with~%;;;;~%")
      (format s ";;;;   (fortran-format::regenerate-input-corpus-tests~%")
      (format s ";;;;     #P\"...~A\")~%;;;;~%"
              (file-namestring path))
      (format s ";;;; ~D cases.~%~%" (length cases))
      (format s "(in-package #:fortran-format)~%~%")
      (loop for (fmt input expected) in cases
            for n from 1
            for name = (%test-symbol-name stem n)
            do
               (ecase (if (eq expected :err) :err (first expected))
                 (:err
                  ;; deftest form: signal-anything counts as the
                  ;; expected value :ERR.
                  (format s "(rt:deftest ~A~%~
                            ~4@T(handler-case (progn (read-format ~S ~S) :NO-ERR)~%~
                            ~6@T(error () :ERR))~%~
                            ~2@T:ERR)~%~%"
                          name fmt input))
                 (:value
                  (format s "(rt:deftest ~A~%~
                            ~4@T(read-format ~S ~S)~%~
                            ~2@T~S)~%~%"
                          name fmt input (list (second expected)))))))
    (when verbose
      (format t "~&Wrote ~D input deftests to ~A~%" (length cases) out))
    out))

