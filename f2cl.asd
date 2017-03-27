;;; -*- Mode: lisp -*-
;; f2cl asd file

(defclass cl-source-file.l (cl-source-file)
  ((type :initform "l"))
  (:documentation "Component class for a Common Lisp source file using type \"l\""))

(defsystem f2cl
  :description "F2CL:  Fortran to Lisp converter"
  :components
  ((:module "src"
	    :default-component-class cl-source-file.l
	    :serial t
	    :components
	    ((:file "f2cl-asdf")
             (:file "f2cl0")
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

