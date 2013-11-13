;;; -*- Mode: lisp -*-

(require :f2cl)

(defpackage blas-real-system
  (:use #:cl #:asdf))

(in-package #:blas-real-system)

(defclass blas-real-fortran-file (cl-source-file)
  ()
  (:default-initargs :type "f"))

(defun fortran-compile (op c &key (array-slicing t) (array-type :array) package declare-common)
  (let ((file (component-pathname c)))
    (f2cl:f2cl-compile file
		       :output-file (first (output-files op c))
		       :array-slicing array-slicing
		       :array-type array-type
		       :package package
		       :relaxed-array-decls t
		       :declare-common declare-common
		       )))

(defmethod perform ((op compile-op) (c blas-real-fortran-file))
  (fortran-compile op c :package "BLAS"))

(defmethod perform ((op load-op) (c blas-real-fortran-file))
  (load (first (input-files op c))))

(defsystem blas-real
  :description "BLAS routines for real double-float matrices"
  :depends-on ("blas-hompack")
  :components
  ((:module "blas"
    :default-component-class blas-real-fortran-file
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
