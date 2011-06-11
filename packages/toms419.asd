;;; -*- Mode: lisp -*-
;;;

(defpackage toms419-system
  (:use #:cl #:asdf))

(in-package #:toms419-system)


(defclass toms419-fortran-file (cl-source-file)
  ()
  (:default-initargs :type "f"))

(defun fortran-compile (op c &key (array-slicing t) (array-type :array) package declare-common)
  (let ((file (component-pathname c)))
    (f2cl:f2cl-compile file
		       :output-file (first (output-files op c))
		       :array-slicing array-slicing
		       :array-type array-type
		       :package "TOMS419"
		       :relaxed-array-decls t
		       :declare-common declare-common
		       )))

(defmethod perform ((op compile-op) (c toms419-fortran-file))
  (fortran-compile op c))

(defmethod perform ((op load-op) (c toms419-fortran-file))
  (load (first (input-files op c))))

(defsystem toms419
  :pathname "toms/"
  :components
  ((:module "package"
	    :pathname "419"
	    :components
	    ((:file "package")))
   (:module "419"
	    :default-component-class toms419-fortran-file
	    :components
	    (
	     (:file "cpoly"
		    :depends-on ("mcon" "cmod" "scale" "cdivid" "cauchy" "noshft" "fxshft"))
	     (:file "noshft"
		    :depends-on ("cmod" "cdivid"))
	     (:file "fxshft"
		    :depends-on ("polyev" "calct" "cmod" "vrshft"))
	     (:file "vrshft"
		    :depends-on ("polyev" "cmod" "errev" "calct" "nexth"))
	     (:file "calct"
		    :depends-on ("polyev" "cmod" "cdivid"))
	     (:file "nexth"
		    :perform (compile-op :around (op c)
					 (fortran-compile op c :declare-common t)))
	     (:file "polyev")
	     (:file "errev"
		    :depends-on ("cmod"))
	     (:file "cauchy")
	     (:file "scale")
	     (:file "cdivid"
		    :depends-on ("mcon"))
	     (:file "cmod")
	     (:file "mcon")
	     ))))

(defmethod perform ((op test-op) (c (eql (find-system "toms419"))))
  (oos 'test-op "toms419-test"))

(defsystem toms419-test
  :pathname "toms/"
  :depends-on ("toms419")
  :components
  ((:module "419"
	    :default-component-class toms419-fortran-file
	    :components
	    (
	     (:file "prtc")
	     (:file "prtz")
	     (:file "cpolydr")
	     ))))

(defmethod perform ((op test-op) (c (eql (find-system "toms419-test"))))
  (funcall (find-symbol "CPOLYDR" (find-package "TOMS419"))))

