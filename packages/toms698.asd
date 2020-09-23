;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "toms698"
  :description "F2CL conversion of TOMS 698: dcuhre - adaptive multidimensional integration"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "TOMS698" :keep-lisp-file t)
  :pathname "toms/698/"
  :components
  ((:cl-source-file "package")
   (:module "698"
    :pathname ""
    :depends-on ("package")
    :components
    (
     (:file "d07hre")
     (:file "d09hre")
     (:file "d113re")
     (:file "d132re")
     (:file "dadhre" :depends-on ("dinhre" "drlhre" "dtrhre"))
     (:file "dchhre")
     (:file "dcuhre")
     (:file "dfshre")
     (:file "dinhre")
     (:file "drlhre")
     (:file "dtest1")
     (:file "dtest2")
     (:file "dtrhre"))))
  :in-order-to ((test-op (test-op "toms698/tests"))))

(defsystem "toms698/tests"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "TOMS698")
  :pathname "toms/"
  :depends-on ("toms698")
  :components
  ((:module "tests"
    :pathname "698"
    :components
    ((:file "dtest1")
     (:file "dtest2"))))
  :perform (test-op (o c)
	     (format t "~&*** DTEST1 test~%")
	     (symbol-call :toms698 :dtest1)
	     (format t "~&*** DTEST1 test~%")
	     (symbol-call :toms698 :dtest2)))

		    