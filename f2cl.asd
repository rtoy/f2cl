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
    ((:file "fortran-format-tests"))))
  :perform (test-op (op c)
             (declare (ignore op c))
             (uiop:symbol-call '#:regression-test '#:do-tests)
             (let ((pending  (uiop:symbol-call '#:regression-test
                                               '#:pending-tests))
                   (expected (symbol-value
                              (uiop:find-symbol* '#:*expected-failures*
                                                 '#:regression-test))))
               (let ((unexpected (set-difference pending expected))
                     (surprises  (set-difference expected pending)))
                 (when (or unexpected surprises)
                   (error "f2cl/fortran-format/tests: ~
                           ~@[~D unexpected failures: ~S~]~
                           ~@[~D unexpected successes: ~S~]"
                          (and unexpected (length unexpected)) unexpected
                          (and surprises  (length surprises))  surprises))))))

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
