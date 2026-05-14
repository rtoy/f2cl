;;; -*- Mode: lisp -*-
;; f2cl asd file

;; Make packages/quadpack.asd findable so the f2cl/tests dependency
;; on "quadpack/tests" resolves.
(eval-when (:load-toplevel :execute)
  (let ((pkgs (make-pathname
               :directory (append (pathname-directory *load-pathname*)
                                  '("packages"))
               :name nil :type nil :version nil
               :defaults *load-pathname*)))
    (pushnew pkgs asdf:*central-registry* :test #'equal)))

;;; Force our copy of RT to win over any other "rt" ASDF system
;;; (notably the older one shipped with Quicklisp's ansi-test, which
;;; lacks *expected-failures* and would silently mishandle our test
;;; suite).
(eval-when (:load-toplevel :execute)
  (asdf:load-asd
   (make-pathname :directory (append (pathname-directory *load-pathname*)
                                     '("regression"))
                  :name "rt" :type "asd"
                  :defaults *load-pathname*)))

;;; Shared helper for the RT-based :perform methods below.  Runs
;;; do-tests, prints a one-line summary (total / passed / failed,
;;; with a breakdown into expected vs. unexpected outcomes), and
;;; signals an error if there are unexpected failures or surprising
;;; successes.  Mirrors %run-rt-tests in f2cl.system.
(defun %f2cl-asd-run-rt-tests (label)
  (let* ((rt-pkg     (find-package :regression-test))
         (do-tests   (find-symbol "DO-TESTS"           rt-pkg))
         (pending-fn (find-symbol "PENDING-TESTS"      rt-pkg))
         (expected-v (find-symbol "*EXPECTED-FAILURES*" rt-pkg))
         (entries-v  (find-symbol "*ENTRIES-TABLE*"    rt-pkg)))
    (funcall do-tests)
    (let* ((total      (hash-table-count (symbol-value entries-v)))
           (pending    (funcall pending-fn))
           (expected   (symbol-value expected-v))
           (failed     (length pending))
           (passed     (- total failed))
           (unexpected (set-difference pending expected))
           (surprises  (set-difference expected pending)))
      (when unexpected
        (format t "~&~A: unexpected failures:~%" label)
        (dolist (sym unexpected)
          (format t "  ~A~%" sym)))
      (when surprises
        (format t "~&~A: unexpected successes:~%" label)
        (dolist (sym surprises)
          (format t "  ~A~%" sym)))
      (format t "~&~A: ~D test~:P, ~D passed, ~D failed~%~
                 ~2T~D expected failure~:P~%~
                 ~2T~D unexpected failure~:P~%~
                 ~2T~D unexpected ~:[successes~;success~]~%"
              label total passed failed
              (length expected)
              (length unexpected)
              (length surprises) (= (length surprises) 1))
      (when (or unexpected surprises)
        (error "~A: ~D unexpected failure~:P, ~D unexpected ~:[successes~;success~]"
               label (length unexpected) (length surprises)
               (= (length surprises) 1))))))

(defsystem "f2cl/fortran-format"
  :defsystem-depends-on ("rt")
  :in-order-to ((test-op (test-op "f2cl/fortran-format/tests")))
  :components
  ((:module "src/format"
    :components
    ((:file "package")
     (:file "fortran-format-parser"
      :depends-on ("package"))
     (:file "fortran-format-io"
      :depends-on ("package" "fortran-format-parser"))))))

(defsystem "f2cl/fortran-format/tests"
  :depends-on ("rt" "f2cl/fortran-format")
  :components
  ((:module "src/format"
    :components
    ((:file "fortran-format-corpus")
     ;; Each corpus directory contributes a pair of files per
     ;; .test source: an auto-generated .tests.lisp of deftests,
     ;; and a hand-maintained .expected-failures.lisp.  The tests
     ;; depend on the corpus runner (for write-format and friends);
     ;; expected-failures depend on the corresponding tests file
     ;; so the deftest entries exist before pushnew runs.
     (:module "corpus/gfortran-4.4.1"
      :depends-on ("fortran-format-corpus")
      :components
      ((:file "i-ed-output.tests")
       (:file "i-ed-output.expected-failures"
        :depends-on ("i-ed-output.tests"))
       (:file "f-ed-output.tests")
       (:file "f-ed-output.expected-failures"
        :depends-on ("f-ed-output.tests"))
       (:file "e-ed-output.tests")
       (:file "e-ed-output.expected-failures"
        :depends-on ("e-ed-output.tests"))
       (:file "a-ed-output.tests")
       (:file "a-ed-output.expected-failures"
        :depends-on ("a-ed-output.tests"))
       (:file "g-ed-output.tests")
       (:file "g-ed-output.expected-failures"
        :depends-on ("g-ed-output.tests"))
       (:file "d-ed-output.tests")
       (:file "d-ed-output.expected-failures"
        :depends-on ("d-ed-output.tests"))
       (:file "es-ed-output.tests")
       (:file "es-ed-output.expected-failures"
        :depends-on ("es-ed-output.tests"))
       (:file "en-ed-output.tests")
       (:file "en-ed-output.expected-failures"
        :depends-on ("en-ed-output.tests"))
       (:file "l-ed-output.tests")
       (:file "l-ed-output.expected-failures"
        :depends-on ("l-ed-output.tests"))
       (:file "b-ed-output.tests")
       (:file "b-ed-output.expected-failures"
        :depends-on ("b-ed-output.tests"))
       (:file "o-ed-output.tests")
       (:file "o-ed-output.expected-failures"
        :depends-on ("o-ed-output.tests"))
       (:file "z-ed-output.tests")
       (:file "z-ed-output.expected-failures"
        :depends-on ("z-ed-output.tests"))
       (:file "sp-a-ed-output.tests")
       (:file "sp-a-ed-output.expected-failures"
        :depends-on ("sp-a-ed-output.tests"))
       (:file "sp-b-ed-output.tests")
       (:file "sp-b-ed-output.expected-failures"
        :depends-on ("sp-b-ed-output.tests"))
       (:file "sp-d-ed-output.tests")
       (:file "sp-d-ed-output.expected-failures"
        :depends-on ("sp-d-ed-output.tests"))
       (:file "sp-e-ed-output.tests")
       (:file "sp-e-ed-output.expected-failures"
        :depends-on ("sp-e-ed-output.tests"))
       (:file "sp-en-ed-output.tests")
       (:file "sp-en-ed-output.expected-failures"
        :depends-on ("sp-en-ed-output.tests"))
       (:file "sp-es-ed-output.tests")
       (:file "sp-es-ed-output.expected-failures"
        :depends-on ("sp-es-ed-output.tests"))
       (:file "sp-f-ed-output.tests")
       (:file "sp-f-ed-output.expected-failures"
        :depends-on ("sp-f-ed-output.tests"))
       (:file "sp-g-ed-output.tests")
       (:file "sp-g-ed-output.expected-failures"
        :depends-on ("sp-g-ed-output.tests"))
       (:file "sp-i-ed-output.tests")
       (:file "sp-i-ed-output.expected-failures"
        :depends-on ("sp-i-ed-output.tests"))
       (:file "sp-l-ed-output.tests")
       (:file "sp-l-ed-output.expected-failures"
        :depends-on ("sp-l-ed-output.tests"))
       (:file "sp-o-ed-output.tests")
       (:file "sp-o-ed-output.expected-failures"
        :depends-on ("sp-o-ed-output.tests"))
       (:file "sp-z-ed-output.tests")
       (:file "sp-z-ed-output.expected-failures"
        :depends-on ("sp-z-ed-output.tests"))
       (:file "colon-a-ed-output.tests")
       (:file "colon-a-ed-output.expected-failures"
        :depends-on ("colon-a-ed-output.tests"))
       (:file "colon-b-ed-output.tests")
       (:file "colon-b-ed-output.expected-failures"
        :depends-on ("colon-b-ed-output.tests"))
       (:file "colon-d-ed-output.tests")
       (:file "colon-d-ed-output.expected-failures"
        :depends-on ("colon-d-ed-output.tests"))
       (:file "colon-e-ed-output.tests")
       (:file "colon-e-ed-output.expected-failures"
        :depends-on ("colon-e-ed-output.tests"))
       (:file "colon-en-ed-output.tests")
       (:file "colon-en-ed-output.expected-failures"
        :depends-on ("colon-en-ed-output.tests"))
       (:file "colon-es-ed-output.tests")
       (:file "colon-es-ed-output.expected-failures"
        :depends-on ("colon-es-ed-output.tests"))
       (:file "colon-f-ed-output.tests")
       (:file "colon-f-ed-output.expected-failures"
        :depends-on ("colon-f-ed-output.tests"))
       (:file "colon-g-ed-output.tests")
       (:file "colon-g-ed-output.expected-failures"
        :depends-on ("colon-g-ed-output.tests"))
       (:file "colon-i-ed-output.tests")
       (:file "colon-i-ed-output.expected-failures"
        :depends-on ("colon-i-ed-output.tests"))
       (:file "colon-l-ed-output.tests")
       (:file "colon-l-ed-output.expected-failures"
        :depends-on ("colon-l-ed-output.tests"))
       (:file "colon-o-ed-output.tests")
       (:file "colon-o-ed-output.expected-failures"
        :depends-on ("colon-o-ed-output.tests"))
       (:file "colon-z-ed-output.tests")
       (:file "colon-z-ed-output.expected-failures"
        :depends-on ("colon-z-ed-output.tests"))
       (:file "x-a-ed-output.tests")
       (:file "x-a-ed-output.expected-failures"
        :depends-on ("x-a-ed-output.tests"))
       (:file "x-d-ed-output.tests")
       (:file "x-d-ed-output.expected-failures"
        :depends-on ("x-d-ed-output.tests"))
       (:file "x-l-ed-output.tests")
       (:file "x-l-ed-output.expected-failures"
        :depends-on ("x-l-ed-output.tests"))
       (:file "t-a-ed-output.tests")
       (:file "t-a-ed-output.expected-failures"
        :depends-on ("t-a-ed-output.tests"))
       (:file "t-d-ed-output.tests")
       (:file "t-d-ed-output.expected-failures"
        :depends-on ("t-d-ed-output.tests"))
       (:file "t-l-ed-output.tests")
       (:file "t-l-ed-output.expected-failures"
        :depends-on ("t-l-ed-output.tests"))
       (:file "slash-a-ed-output.tests")
       (:file "slash-a-ed-output.expected-failures"
        :depends-on ("slash-a-ed-output.tests"))
       (:file "slash-b-ed-output.tests")
       (:file "slash-b-ed-output.expected-failures"
        :depends-on ("slash-b-ed-output.tests"))
       (:file "slash-d-ed-output.tests")
       (:file "slash-d-ed-output.expected-failures"
        :depends-on ("slash-d-ed-output.tests"))
       (:file "slash-e-ed-output.tests")
       (:file "slash-e-ed-output.expected-failures"
        :depends-on ("slash-e-ed-output.tests"))
       (:file "slash-en-ed-output.tests")
       (:file "slash-en-ed-output.expected-failures"
        :depends-on ("slash-en-ed-output.tests"))
       (:file "slash-es-ed-output.tests")
       (:file "slash-es-ed-output.expected-failures"
        :depends-on ("slash-es-ed-output.tests"))
       (:file "slash-f-ed-output.tests")
       (:file "slash-f-ed-output.expected-failures"
        :depends-on ("slash-f-ed-output.tests"))
       (:file "slash-g-ed-output.tests")
       (:file "slash-g-ed-output.expected-failures"
        :depends-on ("slash-g-ed-output.tests"))
       (:file "slash-i-ed-output.tests")
       (:file "slash-i-ed-output.expected-failures"
        :depends-on ("slash-i-ed-output.tests"))
       (:file "slash-l-ed-output.tests")
       (:file "slash-l-ed-output.expected-failures"
        :depends-on ("slash-l-ed-output.tests"))
       (:file "slash-o-ed-output.tests")
       (:file "slash-o-ed-output.expected-failures"
        :depends-on ("slash-o-ed-output.tests"))
       (:file "slash-z-ed-output.tests")
       (:file "slash-z-ed-output.expected-failures"
        :depends-on ("slash-z-ed-output.tests"))))
     (:module "corpus/gfortran-4.4.1/input"
      :depends-on ("fortran-format-corpus")
      :components
      ((:file "l-ed-input-1.tests")
       (:file "l-ed-input-1.expected-failures"
        :depends-on ("l-ed-input-1.tests"))
       (:file "f-ed-input-1.tests")
       (:file "f-ed-input-1.expected-failures"
        :depends-on ("f-ed-input-1.tests"))
       (:file "d-ed-input-1.tests")
       (:file "d-ed-input-1.expected-failures"
        :depends-on ("d-ed-input-1.tests"))
       (:file "i-ed-input-1.tests")
       (:file "i-ed-input-1.expected-failures"
        :depends-on ("i-ed-input-1.tests"))
       (:file "i-ed-input-2.tests")
       (:file "i-ed-input-2.expected-failures"
        :depends-on ("i-ed-input-2.tests"))))
     (:file "fortran-format-tests"
      :depends-on ("fortran-format-corpus")))))
  :perform (test-op (op c)
             (declare (ignore op c))
             (funcall (find-symbol "%F2CL-ASD-RUN-RT-TESTS" :asdf-user)
                      "f2cl/fortran-format/tests")))

(defsystem "f2cl"
  :description "F2CL:  Fortran to Lisp converter"
  :defsystem-depends-on ("f2cl-asdf")
  :depends-on ("f2cl/fortran-format")
  :in-order-to ((test-op (test-op "f2cl/tests")))
  :components
  ((:module "src"
	    :serial t
	    :components
	    ((:file "f2cl-package")
             (:file "f2cl-lib-package")
	     (:file "f2cl1")
	     (:file "f2cl2")
	     (:file "f2cl4")
	     (:file "f2cl5")
	     (:file "f2cl6")
	     (:file "f2cl7")
	     #+cmu(:file "f2cl8")
	     (:file "f2cl-lib"
		    :depends-on ("f2cl-package"))))))

;;; Regression suite.  Run with (asdf:test-system "f2cl").
;;;
;;; Depends on:
;;;   "rt"            -- vendored ansi-test RT, in regression/rt.asd
;;;   "f2cl"          -- the translator itself
;;;   "quadpack/tests"-- f2cl-translated quadpack with its own RT tests,
;;;                      in packages/quadpack.asd
;;;
;;; Loading f2cl/tests therefore registers BOTH our regression/
;;; deftests and quadpack/tests' deftests in RT's table.  The single
;;; do-tests call in our :perform method runs everything in one pass.

(defsystem "f2cl/tests"
  :description "Regression tests for F2CL and f2cl-translated quadpack"
  :depends-on ("rt" "f2cl" "quadpack/tests")
  :components
  ((:module "regression"
            :serial t
            :components
            ((:file "helpers")
             (:file "tests")
             (:file "test-fortran-format")
             (:file "test-fortran-format-read"))))
  :perform (test-op (op c)
             (declare (ignore op c))
             (funcall (find-symbol "%F2CL-ASD-RUN-RT-TESTS" :asdf-user)
                      "f2cl/tests")))
