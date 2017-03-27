;;; -*- Mode: lisp -*-

(defsystem "blas"
  :description "BLAS (Basic Linear Algebra Subprograms) for double-float matrices."
  :pathname "blas/"
  :depends-on ("blas-package" "blas-real" "blas-complex"))

