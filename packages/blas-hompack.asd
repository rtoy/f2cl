;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "blas-hompack"
  :class f2cl-system
  :f2cl-options (:package "BLAS" :array-slicing t :array-type :array :relaxed-array-decls nil)
  :depends-on ("blas-package")
  :pathname "blas"
  ;; These are the ones needed for HOMPACK
  :components
  ((:file "daxpy")
   (:file "dcopy")
   (:file "ddot")
   (:file "dnrm2")
   (:file "dscal")
   (:file "idamax")))
