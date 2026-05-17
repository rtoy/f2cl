;;; -*- Mode: Lisp -*-
;;;
;;; Package for the f2cl regression tests of MINPACK.  Kept in its
;;; own file (rather than appended to packages/minpack/package.lisp)
;;; so the test plumbing is self-contained: the existing :MINPACK
;;; package definition is untouched.

(defpackage #:minpack-tests
  (:use #:cl))
