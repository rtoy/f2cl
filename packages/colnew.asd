;;; -*- Mode: lisp; Package: CL-USER -*-

;; Need f2cl to be loaded before we can even read this file.
(load-system :f2cl)

(in-package :f2cl-asdf)

;; Defsystem for colnew.
(defsystem "colnew"
  :description "F2CL conversion of COLNEW: Solution of boundary-value problems for ODEs"
  :class f2cl-system
  :f2cl-options (:package "COLNEW" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :components
  ((:module package
	    :pathname "colnew"
	    :components
	    ((:cl-source-file "package")))
   (:module "colnew"
	    :depends-on ("package")
	    :components
	    (
	     ;; Linpack routines needed by colnew
	     (:file "dgesl"
		    :depends-on ("daxpy" "ddot"))
	     (:file "dgefa"
		    :depends-on ("idamax" "dscal" "daxpy"))
	     ;; BLAS routines needed by above
	     (:file "daxpy")
	     (:file "ddot")
	     (:file "dscal")
	     (:file "idamax")
	     ;; Simple compatibility to define all of the needed
	     ;; common blocks in one place.
	     (:file "compat"
		    :f2cl-options (:declare-common t :common-as-array t))
	     ;; COLNEW itself, broken down into one subroutine per
	     ;; file.
	     (:file "colnew"
		    :depends-on ("compat" "consts" "newmsh" "contrl"))
	     (:file "contrl"
		    :depends-on ("compat" "lsyslv" "skale" "errchk" "newmsh"))
	     (:file "skale"
		    :depends-on ("compat"))
	     (:file "newmsh"
		    :depends-on ("compat" "approx" "horder"))
	     (:file "consts"
		    :depends-on ("compat" "vmonde" "rkbas"))
	     (:file "errchk")
	     (:file "lsyslv"
		    :depends-on ("compat" "vwblok" "gblock" "gderiv" "fcblok"
					  "sbblok" "dmzsol"))
	     (:file "gderiv")
	     (:file "vwblok"
		    :depends-on ("compat" "dgesl" "dgefa"))
	     (:file "gblock"
		    :depends-on ("compat" "dgesl"))
	     (:file "appsln")
	     (:file "approx"
		    :depends-on ("compat" "rkbas"))
	     (:file "rkbas"
		    :depends-on ("compat"))
	     (:file "vmonde"
		    :depends-on ("compat"))
	     (:file "horder")
	     (:file "dmzsol"
		    :depends-on ("factrb" "shiftb"))
	     (:file "fcblok"
		    :depends-on ("factrb" "shiftb"))
	     (:file "factrb")
	     (:file "shiftb")
	     (:file "sbblok"
		    :depends-on ("subfor" "subbak"))
	     (:file "subfor")
	     (:file "subbak"))))
  :in-order-to ((test-op (test-op "colnew-test-1" "colnew-test-2" "colnew-test-3"))))


;; Test problem 1 from TOMS 569.
;;
;; Run (*main*).  Appears to work since the error tolerance is satisfied.
(defsystem "colnew-test-1"
  :class f2cl-system
  :f2cl-options (:package "COLNEW" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("colnew")
  :pathname "colnew/"
  :components
  ((:module problem-1
	    :components
	    ((:file "prob1"
		    :depends-on ("fsub" "dfsub" "gsub" "dgsub" "exact"))
	     (:file "fsub")
	     (:file "gsub")
	     (:file "dfsub")
	     (:file "dgsub")
	     (:file "exact"))))
  :perform (test-op (o c) (symbol-call :colnew :prob1)))


;; Test problem 2 from TOMS 569.  Appears to work.
(defsystem "colnew-test-2"
  :class f2cl-system
  :f2cl-options (:package "COLNEW" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("colnew")
  :pathname "colnew/"
  :components
  ((:module problem-2
	    :components
	    ((:file "prob2"
		    :f2cl-options (:declare-common t :common-as-array t)
		    :depends-on ("fsub" "dfsub" "gsub" "dgsub" "solutn"))
	     (:file "fsub")
	     (:file "gsub")
	     (:file "dfsub")
	     (:file "dgsub")
	     (:file "solutn"))))
  :perform (test-op (o c) (symbol-call :colnew :prob2)))


;; Test problem 3 from TOMS 569.
(defsystem "colnew-test-3"
  :class f2cl-system
  :f2cl-options (:package "COLNEW" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("colnew")
  :pathname "colnew/"
  :components
  ((:module problem-3
	    :components
	    ((:file "prob3" :f2cl-options (:declare-common t :common-as-array t)
		    :depends-on ("fsub" "dfsub" "gsub" "dgsub" "solutn"))
	     (:file "fsub")
	     (:file "gsub")
	     (:file "dfsub")
	     (:file "dgsub")
	     (:file "solutn"))))
  :perform (test-op (o c) (symbol-call :colnew :PROB3)))
