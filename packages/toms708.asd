;;; -*- Mode: lisp -*-
;;;
;;;

;; Need f2cl to be loaded before we can even read this file.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:load-system :f2cl))


(defpackage toms708-system
  (:use #:cl #:asdf))

(in-package #:toms708-system)

(defclass toms708-fortran-file (cl-source-file)
  ()
  (:default-initargs :type "f"))

(defun fortran-compile (op c &key (array-slicing t) (array-type :array) package)
  (let ((file (component-pathname c)))
    (f2cl:f2cl-compile file
		       :keep-lisp-file t
		       :output-file (first (output-files op c))
		       :array-slicing array-slicing
		       :array-type array-type
		       :package package)))

(defmethod perform ((op compile-op) (c toms708-fortran-file))
  (fortran-compile op c :package "TOMS708"))

(defmethod perform ((op load-op) (c toms708-fortran-file))
  (load (first (input-files op c))))

(defsystem toms708
  :description "F2CL conversion of TOMS 708:  Incomplete Beta Ratio"
  :pathname "toms"
  :components
  ((:module package
    :pathname "708/"
    :components
    ((:file "package")))
   (:module "708"
    :depends-on ("package")
    :default-component-class toms708-fortran-file
    :components
    ((:file "algdiv"
	    :depends-on ("alnrel"))
     (:file "alnrel")
     (:file "apser"
	    :depends-on ("psi"))
     (:file "basym"
	    :depends-on ("rlog1" "erfc1" "bcorr"))
     (:file "bcorr")
     (:file "betaln"
	    :depends-on ("gamln" "gsumln"))
     (:file "bfrac"
	    :depends-on ("brcomp"))
     (:file "bgrat"
	    :depends-on ("gam1" "grat1"))
     (:file "bpser"
	    :depends-on ("gam1" "gamln1"))
     (:file "bratio"
	    :depends-on ("dpmpar" "fpser" "bup"))
     (:file "brcmp1"
	    :depends-on ("esum" "gam1" "gamln1" "rlog1"))
     (:file "brcomp"
	    :depends-on ("gam1" "gamln1" "rlog1"))
     (:file "bup"
	    :depends-on ("exparg" "brcmp1"))
     (:file "erf")
     (:file "erfc1"
	    :depends-on ("ipmpar" "exparg"))
     (:file "esum")
     (:file "exparg")
     (:file "fpser"
	    :depends-on ("exparg"))
     (:file "gam1")
     (:file "gamln"
	    :depends-on ("gamln1"))
     (:file "gamln1")
     (:file "grat1"
	    :depends-on ("rexp" "erf"))
     (:file "gsumln")
     (:file "ipmpar")
     ;;(:file "main")
     (:file "psi"
	    :depends-on ("dpmpar" "ipmpar"))
     (:file "rexp")
     (:file "rlog1")
     ;;(:file "spmpar")
     (:file "dpmpar"
	    :depends-on ("ipmpar"))))))



(defmethod perform ((op test-op) (c (eql (find-system "toms708"))))
  (oos 'test-op "toms708-tests"))

(defsystem toms708-tests
  :pathname "toms/"
  :depends-on ("toms708")
  :components
  ((:module "tests"
    :pathname "708/"
    :default-component-class toms708-fortran-file
    :components
    ((:file "test")))))

(defmethod perform ((op test-op) (c (eql (find-system "toms708-tests"))))
  (funcall (find-symbol "BTST" (find-package "TOMS708"))))

    

