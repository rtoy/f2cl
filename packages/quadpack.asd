;;; -*- Mode: lisp -*-
;;;
;;; This is a simple defsystem for converting QUADPACK Fortran
;;; routines to Lisp and compiling the result.
;;;
;;; $Id$

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

;; Package for the quadpack routines.
(defpackage :quadpack
  (:use :cl)
  (:export
   ;; Support
   #:dqwgtf
   #:dqcheb
   #:dqk15w
   #:dqwgts
   #:dqwgtc
   #:dgtsl
   #:xerror

   ;; Core integration routines
   #:dqk15
   #:dqk31
   #:dqk41
   #:dqk51
   #:dqk61
   #:dqk21
   #:dqk15i
   #:dqelg
   #:dqpsrt
   #:dqc25s
   #:dqmomo
   #:dqc25c
   #:dqc25f
   ;; Basic integrators
   #:dqage
   #:dqagie
   #:dqagpe
   #:dqagse
   #:dqawfe
   #:dqawoe
   #:dqawse
   #:dqawce
   ;; Simplified interface routines
   #:dqng
   #:dqag
   #:dqags
   #:dqagi
   #:dqagp
   #:dqawf
   #:dqawo
   #:dqaws
   #:dqawc))

;; Defsystem for d1mach and i1mach
(defsystem "quadpack/mach-par"
  :components
  ((:file "d1mach")
   (:file "i1mach")))

;; Defsystem for quadpack.  This converts the Fortran code to Lisp and
;; then compiles the result.
(defsystem "quadpack"
  :description "F2CL conversion of QUADPACK: Adaptive numerical integration"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "QUADPACK" :array-slicing t :array-type :array :keep-lisp-file t)
  :depends-on ("quadpack/mach-par")
  :pathname "quadpack/"
  :components
  ((:module "Fortran"
	    :components
	    (;; Support
	     (:file "dqwgtf")
	     (:file "dqcheb")
	     (:file "dqk15w")
	     (:file "dqwgts")
	     (:file "dqwgtc")
	     (:file "dgtsl")
	     (:file "xerror"
		    :depends-on ("xerrwv" "j4save" "xerprt" "xersav"
					  "xerctl" "xgetua" "xersav"))

	     ;; Support routines for xerror
	     (:file "xerrwv"
		    :depends-on ("xerabt"))
	     (:file "xersav")
	     (:file "xgetua"
		    :depends-on ("j4save"))
	     (:file "fdump")
	     (:file "j4save")
	     (:file "xerabt")
	     (:file "xerprt")
	     (:file "xerctl")

	     ;; Core integration routines
	     (:file "dqk15")
	     (:file "dqk31")
	     (:file "dqk41")
	     (:file "dqk51")
	     (:file "dqk61")
	     (:file "dqk21")
	     (:file "dqk15i")
	     (:file "dqelg")
	     (:file "dqpsrt")
	     (:file "dqc25s"
		    :depends-on ("dqcheb" "dqk15w"))
	     (:file "dqmomo")
	     (:file "dqc25c"
		    :depends-on ("dqcheb"
				 "dqk15w"))
	     (:file "dqc25f"
		    :depends-on ("dgtsl"
				 "dqcheb"
				 "dqk15w"
				 "dqwgtf"))
	     ;; Basic integrators
	     (:file "dqage"
		    :depends-on ("dqk15"
				 "dqk31"
				 "dqk41"
				 "dqk51"
				 "dqk61"
				 "dqk21"
				 "dqpsrt"))
	     (:file "dqagie"
		    :depends-on ("dqelg"
				 "dqk15i"
				 "dqpsrt"))
	     (:file "dqagp"
		    :depends-on ("dqagpe"))
	     (:file "dqagpe"
		    :depends-on ("dqelg"
				 "dqpsrt"
				 "dqk21"
				 ))
	     (:file "dqagse"
		    :depends-on ("dqk21"
				 "dqelg"
				 "dqpsrt"))
	     (:file "dqawfe"
		    :depends-on ("dqagie"
				 "dqawoe"
				 "dqelg")
                    :f2cl-options (:array-slicing nil :array-type :array))
	     (:file "dqawoe"
		    :depends-on ("dqc25f"
				 "dqpsrt"
				 "dqelg"))
	     (:file "dqawse"
		    :depends-on ("dqc25s"
				 "dqmomo"
				 "dqpsrt"))
	     (:file "dqawce"
		    :depends-on ("dqc25c"
				 "dqpsrt"))
	     ;; Simplified interface routines
	     (:file "dqng"
		    :depends-on ("xerror"))
	     (:file "dqag"
		    :depends-on ("dqage"
				 "xerror"))
	     (:file "dqags"
		    :depends-on ("dqagse"
				 "xerror"))
	     (:file "dqagi"
		    :depends-on ("dqagie"
				 "xerror"))
	     (:file "dqawf"
		    :depends-on ("dqawfe"
				 "xerror"))
	     (:file "dqawo"
		    :depends-on ("dqawoe"
				 "xerror"))
	     (:file "dqaws"
		    :depends-on ("dqawse"
				 "xerror"))
	     (:file "dqawc"
		    :depends-on ("dqawce"
				 "xerror")))))
  :in-order-to ((test-op (test-op "quadpack/tests"))))

(defpackage quadpack-tests
  (:use :cl))

(defsystem "quadpack/tests"
  :depends-on ("quadpack" "rt")
  :components
  ((:module quadpack
	    :components
	    ((:file "test-1")
	     (:file "test-2")
	     ;;(:file "test-3")
	     (:file "test-4-qng")
	     (:file "test-4-qags"))))
  :perform (test-op (o c)
             (or (symbol-call :rt :do-tests)
                 (error "TEST-OP failed for quadpack/tests"))))
