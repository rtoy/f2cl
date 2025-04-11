;;; -*- Mode: lisp -*-
;; f2cl asd file

(defsystem "f2cl"
  :description "F2CL:  Fortran to Lisp converter"
  :defsystem-depends-on ("f2cl-asdf")
  :components
  ((:module "src"
	    :serial t
	    :components
	    ((:file "f2cl-package")
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
