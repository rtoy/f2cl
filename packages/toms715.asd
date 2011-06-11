;;; -*- Mode: lisp -*-
;;;
;;; $Id$
;;;

;; Need f2cl to be loaded before we can even read this file.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:load-system :f2cl))

(defpackage toms715-system
  (:use #:cl #:asdf))

(in-package #:toms715-system)

;; Defsystem for d1mach and i1mach
(defsystem mach-par
    :components
    ((:file "d1mach")
     (:file "i1mach")))


(defclass toms715-fortran-file (cl-source-file)
  ()
  (:default-initargs :type "f"))

(defun fortran-compile (op c &key (array-slicing t) (array-type :array) package)
  (let ((file (component-pathname c)))
    (f2cl:f2cl-compile file
		       :output-file (first (output-files op c))
		       :array-slicing array-slicing
		       :array-type array-type
		       :package package)))

(defmethod perform ((op compile-op) (c toms715-fortran-file))
  (fortran-compile op c :package "TOMS715"))

(defmethod perform ((op load-op) (c toms715-fortran-file))
  (load (first (input-files op c))))

(defsystem machar
  :components
  ((:file "machar")))

(defsystem toms715
  :depends-on ("machar")
  :pathname "toms/"
  :components
  ((:module package
	    :pathname "715/"
	    :components
	    ((:file "package")))
   (:module "715"
	    :depends-on ("package")
	    :default-component-class toms715-fortran-file
	    :components
	    (
	     (:file "anorm")
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
	     (:file "rybesl")
	     ))))

(defmethod perform ((op test-op) (c (eql (find-system :toms715))))
    (oos 'test-op "toms715-tests"))

(defsystem toms715-tests
  :depends-on ("toms715")
  :pathname "toms/"
  :components
  ((:module "715"
	    :default-component-class toms715-fortran-file
	    :components
	    (
	     (:file "algtst")
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
	     (:file "y1test")
	     ))))


(defmethod perform ((op test-op) (c (eql (find-system "toms715-tests"))))
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
      (ignore-errors (funcall (find-symbol test "TOMS715"))))))
