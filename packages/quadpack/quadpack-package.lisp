;;; -*- Mode: lisp -*-
;;;
;;; Package definitions for QUADPACK and QUADPACK-TESTS.
;;;
;;; Factored out of quadpack.asd so that both the ASDF and
;;; mk-defsystem build systems can ensure the packages exist before
;;; the Fortran-translated lisp and the test files compile.  Both
;;; quadpack.asd and quadpack.system reference this file as the first
;;; component of their respective `quadpack' systems.

(in-package :cl-user)

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

(defpackage #:quadpack-tests
  (:use #:cl))
