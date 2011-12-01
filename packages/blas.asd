;;; -*- Mode: lisp -*-

(defpackage blas-system
  (:use #:cl #:asdf))

(in-package #:blas-system)

(defclass blas-fortran-file (cl-source-file)
  ()
  (:default-initargs :type "f"))

;; 
(defun fortran-compile (op c &key
			       (array-slicing t)
			       (array-type :array)
			       (relaxed-array-decls t)
			       (package "BLAS"))
  (let ((file (component-pathname c)))
    (f2cl:f2cl-compile file
		       :output-file (first (output-files op c))
		       :array-slicing array-slicing
		       :array-type array-type
		       :package package
		       :relaxed-array-decls relaxed-array-decls
		       )))

(defmethod perform ((op compile-op) (c blas-fortran-file))
  (fortran-compile op c))

(defmethod perform ((op load-op) (c blas-fortran-file))
  (load (first (input-files op c))))

(defsystem blas-package
  :description "Package definition for BLAS"
  :components
  ((:module "blas"
    :components
    ((:file "blas-package")))))

(defsystem blas-hompack
  :description "BLAS routines needed by HOMPACK"
  :depends-on ("blas-package")
  :components
  ((:module "blas-hompack"
    :pathname "blas/"
    :default-component-class blas-fortran-file
    :components
    (
     ;; These are the ones needed for HOMPACK
     (:file "daxpy")
     (:file "dcopy")
     (:file "ddot")
     (:file "dnrm2")
     (:file "dscal")
     (:file "idamax")))))

(defsystem blas-real
  :description "BLAS routines for real double-float matrices"
  :depends-on ("blas-hompack")
  :components
  ((:module "blas"
    :default-component-class blas-fortran-file
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
   
(defsystem blas-complex
  :description "BLAS routines for complex double-float  matrices"
  :depends-on ("blas-real")
  :components
  ((:module "blas"
    :pathname "blas/"
    :default-component-class blas-fortran-file
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

(defsystem blas
  :description "BLAS (Basic Linear Algebra Subprograms) for double-float matrices."
  :pathname "blas/"
  :depends-on ("blas-package" "blas-real" "blas-complex"))

