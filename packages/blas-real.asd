;;; -*- Mode: lisp -*-

(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "blas-real"
  :description "BLAS routines for real double-float matrices"
  :class f2cl-system
  :f2cl-options (:package "BLAS" :array-slicing t :relaxed-array-decls t :array-type :array)
  :depends-on ("blas-hompack")
  :components
  ((:module "blas"
    :components
    ( ;; Here are the rest of the BLAS routines
     (:file "dasum")
     (:file "dcabs1")
     (:file "dgbmv"
      :depends-on ("lsame" "xerbla"))
     (:file "dgemm"
      :depends-on ("lsame" "xerbla"))
     (:file "dgemv"
      :depends-on ("lsame" "xerbla"))
     (:file "dger"
      :depends-on ("xerbla"))
     (:file "drot")
     (:file "drotg")
     (:file "dsbmv"
      :depends-on ("lsame" "xerbla"))
     (:file "dspmv"
      :depends-on ("lsame" "xerbla"))
     (:file "dspr"
      :depends-on ("lsame" "xerbla"))
     (:file "dspr2"
      :depends-on ("lsame" "xerbla"))
     (:file "dswap")
     (:file "dsymm"
      :depends-on ("lsame" "xerbla"))
     (:file "dsymv"
      :depends-on ("lsame" "xerbla"))
     (:file "dsyr"
      :depends-on ("lsame" "xerbla"))
     (:file "dsyr2"
      :depends-on ("lsame" "xerbla"))
     (:file "dsyr2k"
      :depends-on ("lsame" "xerbla"))
     (:file "dsyrk"
      :depends-on ("lsame" "xerbla"))
     (:file "dtbmv"
      :depends-on ("lsame" "xerbla"))
     (:file "dtbsv"
      :depends-on ("lsame" "xerbla"))
     (:file "dtpmv"
      :depends-on ("lsame" "xerbla"))
     (:file "dtpsv"
      :depends-on ("lsame" "xerbla"))
     (:file "dtrmm"
      :depends-on ("lsame" "xerbla"))
     (:file "dtrmv"
      :depends-on ("lsame" "xerbla"))
     (:file "dtrsm"
      :depends-on ("lsame" "xerbla"))
     (:file "dtrsv"
      :depends-on ("lsame" "xerbla"))
     (:file "dzasum"
      :depends-on ("dcabs1"))
     (:file "dznrm2")
     (:file "icamax")
     (:file "isamax")
     (:file "izamax"
      :depends-on ("dcabs1"))
     (:file "lsame")
     (:file "xerbla")))))
