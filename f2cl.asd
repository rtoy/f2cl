;;; -*- Mode: lisp -*-
;; f2cl asd file

(defpackage #:f2cl-asd
  (:use :cl :asdf))

(in-package #:f2cl-asd)

(defclass f2cl-cl-source-file (asdf:cl-source-file)
  ())

(defmethod source-file-type ((f f2cl-cl-source-file) (m module))
  "l")

(defsystem f2cl
  :description "F2CL:  Fortran to Lisp converter"
  :components
  ((:module src
	    :default-component-class f2cl-cl-source-file
	    :serial t
	    :components
	    ((:file "f2cl0")
	     (:file "f2cl1")
	     (:file "f2cl2")
	     (:file "f2cl3")
	     (:file "f2cl4")
	     (:file "f2cl5")
	     (:file "f2cl6")
	     (:file "f2cl7")
	     #+cmu(:file "f2cl8")
	     (:file "macros"
		    :depends-on ("f2cl0"))))))

