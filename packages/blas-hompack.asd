;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:load-system :f2cl))

(defpackage blas-hompack-system
  (:use #:cl #:asdf))

(in-package #:blas-hompack-system)


(defclass blas-hompack-fortran-file (cl-source-file)
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

(defmethod perform ((op compile-op) (c blas-hompack-fortran-file))
  (fortran-compile op c :package "BLAS"))

(defmethod perform ((op load-op) (c blas-hompack-fortran-file))
  (load (first (input-files op c))))

(defsystem blas-hompack
  :depends-on ("blas-package")
  :components
  ( ;; These are the ones needed for HOMPACK
   (:module "blas"
	    :default-component-class blas-hompack-fortran-file
	    :components
	    ((:file "daxpy")
	     (:file "dcopy")
	     (:file "ddot")
	     (:file "dnrm2")
	     (:file "dscal")
	     (:file "idamax")))))