;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "toms715"
  :description "F2CL conversion of TOMS 715:  Numerical Evaluation of Special Functions"
  :class f2cl-system
  :f2cl-options (:package "TOMS715" :array-slicing t :array-type :array :keep-lisp-file t)
  :pathname "toms/715/"
  :components
  ((:cl-source-file "package")
   (:file "machar" :depends-on ("package"))
   (:module "715"
            :pathname ""
	    :depends-on ("machar")
	    :components
	    ((:file "anorm")
	     (:file "besei0" :depends-on ("calci0"))
	     (:file "besei1" :depends-on ("calci1"))
	     (:file "besek0" :depends-on ("calck0"))
	     (:file "besek1" :depends-on ("calck1"))
	     (:file "besi0" :depends-on ("calci0"))
	     (:file "besi1" :depends-on ("calci1"))
	     (:file "besj0" :depends-on ("caljy0"))
	     (:file "besj1" :depends-on ("caljy1"))
	     (:file "besk0" :depends-on ("calck0"))
	     (:file "besk1" :depends-on ("calck1"))
	     (:file "besy0" :depends-on ("caljy0"))
	     (:file "besy1" :depends-on ("caljy1"))
	     (:file "calcei")
	     (:file "calci0")
	     (:file "calci1")
	     (:file "calck0")
	     (:file "calck1")
	     (:file "calerf")
	     (:file "caljy0")
	     (:file "caljy1")
	     (:file "daw")
	     (:file "derf")
	     (:file "derfc")
	     (:file "derfcx")
	     (:file "dgamma")
	     (:file "dlgama")
	     (:file "dsubn")
	     (:file "ei")
	     (:file "eone")
	     (:file "expei")
	     (:file "psi")
	     (:file "ren")
	     (:file "ribesl")
	     (:file "rjbesl")
	     (:file "rkbesl")
	     (:file "rybesl"))))
  :in-order-to ((test-op (test-op "toms715/tests"))))

(defsystem "toms715/tests"
  :class f2cl-system
  :f2cl-options (:package "TOMS715" :array-slicing t :array-type :array :keep-lisp-file t)
  :depends-on ("toms715")
  :pathname "toms/715"
  :components
  ((:file "algtst")
   (:file "anrtst")
   (:file "dawtst")
   (:file "eitest")
   (:file "erftst")
   (:file "gamtst")
   (:file "i0test")
   (:file "i1test")
   (:file "j0test")
   (:file "j1test")
   (:file "k0test")
   (:file "k1test")
   (:file "psitst")
   (:file "ritest")
   (:file "rjtest")
   (:file "rktest")
   (:file "rytest")
   (:file "y0test")
   (:file "y1test"))
  :perform (test-op (o c)
  (dolist (test '(algtst
		  anrtst
		  dawtst
		  eitest
		  erftst
		  gamtst
		  i0test
		  i1test
		  j0test
		  j1test
		  k0test
		  k1test
		  psitst
		  ritest
		  rjtest
		  rktest
		  rytest
		  y0test
		  y1test))
    (let ((f2cl-lib::*stop-signals-error-p* nil))
      ;; What do we really want here?  Some tests are expected to
      ;; signal errors and we do.  But we don't want asdf to stop the
      ;; tests.  So we just ignore all errors and expect the user to
      ;; look through the results to see if they make sense.
      (ignore-errors (symbol-call :toms715 test))))))
