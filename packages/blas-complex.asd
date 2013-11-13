;;; -*- Mode: lisp -*-

(require :f2cl)

(defpackage blas-complex-system
  (:use #:cl #:asdf))

(in-package #:blas-complex-system)

(defclass blas-complex-fortran-file (cl-source-file)
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

(defmethod perform ((op compile-op) (c blas-complex-fortran-file))
  (fortran-compile op c :package "BLAS"))

(defmethod perform ((op load-op) (c blas-complex-fortran-file))
  (load (first (input-files op c))))

(defsystem blas-complex
  :description "BLAS routines for complex double-float  matrices"
  :depends-on ("blas-real")
  :components
  ((:module "blas"
    :pathname "blas/"
    :default-component-class blas-complex-fortran-file
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
