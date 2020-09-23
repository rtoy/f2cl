;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "toms698"
  :description "F2CL conversion of TOMS 698: dcuhre - adaptive multidimensional integration"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :simple-array)
  :pathname "toms/698/"
  :components
  ((:cl-source-file "package")
   (:module "698"
    :pathname ""
    :depends-on ("package")
    :components
    (
     (:file "d07hre"
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array))
     (:file "d09hre"
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array))
     (:file "d113re"
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array))
     (:file "d132re"
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array))
     (:file "dadhre"
      :depends-on ("dinhre" "drlhre" "dtrhre")
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array))
     (:file "dchhre")
     (:file "dcuhre")
     (:file "dfshre"
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array))
     (:file "dinhre"
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array))
     (:file "drlhre"
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array))
     (:file "dtest1")
     (:file "dtest2")
     (:file "dtrhre"
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array)))))
  :in-order-to ((test-op (test-op "toms698/tests"))))

(defsystem "toms698/tests"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :simple-array)
  :pathname "toms/"
  :depends-on ("toms698")
  :components
  ((:module "tests"
    :pathname "698"
    :components
    ((:file "dtest1" :depends-on ("dtest1f"))
     (:file "dtest1f"
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array))
     (:file "dtest2f"
      :f2cl-options (:package "TOMS698" :keep-lisp-file t :array-type :array))
     (:file "dtest2" :depends-on ("dtest2f")))))
  :perform (test-op (o c)
	     (format t "~&*** DTEST1 test~%")
	     (symbol-call :toms698 :dtest1)
	     (format t "~&*** DTEST1 test~%")
	     (symbol-call :toms698 :dtest2)))
