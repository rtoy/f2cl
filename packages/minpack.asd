;;; -*- Mode: lisp -*-
;;;
;;;
;;; $Id$
;;;

;; Need f2cl to be loaded before we can even read this file.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:load-system :f2cl))

(defpackage minpack-system
  (:use #:cl #:asdf))

(in-package #:minpack-system)


(defclass minpack-fortran-file (cl-source-file)
  ()
  (:default-initargs :type "f"))

(defun fortran-compile (op c &key (array-slicing t) (array-type :array) package declare-common)
  (let ((file (component-pathname c)))
    (f2cl:f2cl-compile file
		       :output-file (first (output-files op c))
		       :array-slicing array-slicing
		       :array-type array-type
		       :package package
		       :relaxed-array-decls nil
		       :declare-common declare-common
		       )))

(defmethod perform ((op compile-op) (c minpack-fortran-file))
  (fortran-compile op c :package "MINPACK"))

(defmethod perform ((op load-op) (c minpack-fortran-file))
  (load (first (input-files op c))))



(defsystem minpack
  :components
  ((:module "package"
	    :pathname "minpack"
	    :components
	    ((:file "package"
		    :type "lisp")))
   (:module "minpack"
	    :pathname "minpack"
	    :depends-on ("package")
	    :default-component-class minpack-fortran-file
	    :components
	    (
	     (:file "dpmpar")
	     (:file "enorm")
	     (:file "fdjac1" :depends-on ("dpmpar"))
	     (:file "fdjac2" :depends-on ("dpmpar"))
	     (:file "qrsolv")
	     (:file "lmpar" :depends-on ("dpmpar" "enorm" "qrsolv"))
	     (:file "qrfac" :depends-on ("dpmpar" "enorm"))
	     (:file "lmdif" :depends-on ("dpmpar" "enorm" "fdjac2" "lmpar" "qrfac"))
	     (:file "lmdif1" :depends-on ("lmdif"))
	     (:file "lmder" :depends-on ("dpmpar" "enorm" "lmpar" "qrfac"))
	     (:file "lmder1" :depends-on ("lmder"))
	     (:file "dogleg" :depends-on ("dpmpar" "enorm"))
	     (:file "qform")
	     (:file "r1mpyq")
	     (:file "r1updt" :depends-on ("dpmpar"))
	     (:file "hybrd" :depends-on ("dogleg" "dpmpar" "enorm" "fdjac1"
						  "qform" "qrfac" "r1mpyq" "r1updt"))
	     (:file "hybrd1" :depends-on ("hybrd"))
	     (:file "hybrj" :depends-on ("dogleg" "dpmpar" "enorm" "qform" "qrfac"
						  "r1mpyq" "r1updt"))
	     (:file "hybrj1" :depends-on ("hybrj"))
	     ))))

(defmethod perform ((op test-op) (c (eql (find-system "minpack"))))
    (oos 'test-op "minpack-tests-lmdif"))

(defpackage minpack-tests
  (:use #:cl))

(setf (logical-pathname-translations "minpack")
      (list (list "**;*.*.*"
		  (merge-pathnames (make-pathname :host (pathname-host *load-pathname*)
						  :directory '(:relative "minpack" :wild-inferiors)
						  :name :wild :type :wild)
				   *load-pathname*))))


(defsystem minpack-tests-lmdif
  :pathname "minpack/"
  :depends-on ("minpack")
  :components
  ((:module "main"
	    :pathname ""
	    :components
	    ((:file "run-minpack-tests")))
   (:module "tests"
	    :pathname ""
	    :default-component-class minpack-fortran-file
	    :components
	    ((:file "tst-lmdif"
		    :perform (compile-op :around (op c)
					 (fortran-compile op c :declare-common t
							  :package "MINPACK")))
	     (:file "tst-lmder"
		    :perform (compile-op :around (op c)
					 (fortran-compile op c :declare-common t
							  :package "MINPACK")))))))

;; (minpack::run-minpack-tests) will run the tst-lmdif and tst-lmder
;; tests.  (When the STOP statement is reached, select the continue
;; restart to continue.)  Compare the output in tlmdif.txt to
;; lmdif-ref.txt and tlmder.txt to lmder-ref.txt.
(defmethod perform ((op test-op) (c (eql (find-system "minpack-tests-lmdif"))))
  (funcall (intern "RUN-MINPACK-TESTS" (find-package '#:minpack))))


;; This test defines things that are incompatible with tst-lmdif and
;; tst-lmder.  Hence, you can't run this test with others.

(defsystem minpack-tests-hybrd
  :pathname "minpack/"
  :depends-on ("minpack")
  :components
  ((:module "main"
	    :pathname ""
	    :components
	    ((:file "run-minpack-tests")))
   (:module "tests"
	    :pathname ""
	    :default-component-class minpack-fortran-file
	    :components
	    ((:file "tst-hybrd"
		    :perform (compile-op :around (op c)
					 (fortran-compile op c :declare-common t
							  :package "MINPACK")))))))

(defmethod perform ((op test-op) (c (eql (find-system "minpack-tests-hybrd"))))
  (funcall (intern "RUN-MINPACK-TEST-HYBRD" (find-package '#:minpack))))
