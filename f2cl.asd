;;; -*- Mode: lisp -*-
;; f2cl asd file

(defsystem "f2cl"
  :description "F2CL:  Fortran to Lisp converter"
  :defsystem-depends-on ("f2cl-asdf")
  :in-order-to ((test-op (test-op "f2cl/tests")))
  :components
  ((:module "src"
	    :serial t
	    :components
	    ((:file "f2cl-package")
             (:file "f2cl-lib-package")
	     (:file "f2cl1")
	     (:file "f2cl2")
	     (:file "f2cl3")
	     (:file "f2cl4")
	     (:file "f2cl5")
	     (:file "f2cl6")
	     (:file "f2cl7")
	     #+cmu(:file "f2cl8")
	     (:file "f2cl-lib"
		    :depends-on ("f2cl-package"))))))

;;; Regression suite.  Run with (asdf:test-system "f2cl").
;;;
;;; Loads the vendored RT regression tester (rt-package.lsp /
;;; rt.lsp), the helpers, and the tests; then test-op invokes
;;; rt:do-tests and signals if anything failed unexpectedly.

(defsystem "f2cl/tests"
  :description "Regression tests for F2CL, built on RT (ansi-test)"
  :depends-on ("f2cl")
  :components
  ((:module "val/regression"
            :serial t
            :components
            ((:file "rt-package" :type "lsp")
             (:file "rt"         :type "lsp")
             (:file "helpers")
             (:file "tests"))))
  :perform (test-op (op c)
             (declare (ignore op c))
             (uiop:symbol-call '#:regression-test '#:do-tests)
             (let ((pending (uiop:symbol-call '#:regression-test
                                              '#:pending-tests))
                   (expected (symbol-value
                              (uiop:find-symbol* '#:*expected-failures*
                                                 '#:regression-test))))
               (let ((unexpected (set-difference pending expected))
                     (surprises  (set-difference expected pending)))
                 (when (or unexpected surprises)
                   (error "f2cl/tests: ~@[~D unexpected failures: ~S~]~
                                       ~@[~D unexpected successes: ~S~]"
                          (and unexpected (length unexpected)) unexpected
                          (and surprises  (length surprises))  surprises))))))
