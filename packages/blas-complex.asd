;;; -*- Mode: lisp -*-

(load-system :f2cl)

(in-package :f2cl-asdf)

(defsystem "blas-complex"
  :description "BLAS routines for complex double-float  matrices"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "BLAS" :array-slicing t :array-type :array :relaxed-array-decls t)
  :depends-on ("blas-real")
  :components
  ((:module "blas"
    :pathname "blas/"
    :components
    ((:file "zaxpy")
     (:file "zcopy")
     (:file "zdotc")
     (:file "zdotu")
     (:file "zdscal")
     (:file "zgbmv")
     (:file "zgemm")
     (:file "zgemv")
     (:file "zgerc")
     (:file "zgeru")
     (:file "zhbmv")
     (:file "zhemm")
     (:file "zhemv")
     (:file "zher")
     (:file "zher2")
     (:file "zher2k")
     (:file "zherk")
     (:file "zhpmv")
     (:file "zhpr")
     (:file "zhpr2")
     (:file "zrotg")
     (:file "zscal")
     (:file "zswap")
     (:file "zsymm")
     (:file "zsyr2k")
     (:file "zsyrk")
     (:file "ztbmv")
     (:file "ztbsv")
     (:file "ztpmv")
     (:file "ztpsv")
     (:file "ztrmm")
     (:file "ztrmv")
     (:file "ztrsm")
     (:file "ztrsv")))))
