;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "toms419"
  :description "F2CL conversion of TOMS 419: Zeroes of a complex polynomial"
  :class f2cl-system
  :f2cl-options (:package "TOMS419" :array-slicing t :array-type :array :keep-lisp-file t :relaxed-array-decls t)
  :pathname "toms/419/"
  :components
  ((:cl-source-file "package")
   (:file "cpoly"
          :depends-on ("mcon" "cmod" "scale" "cdivid" "cauchy" "noshft" "fxshft"))
   (:file "noshft"
          :depends-on ("cmod" "cdivid"))
   (:file "fxshft"
          :depends-on ("polyev" "calct" "cmod" "vrshft"))
   (:file "vrshft"
          :depends-on ("polyev" "cmod" "errev" "calct" "nexth"))
   (:file "calct"
          :depends-on ("polyev" "cmod" "cdivid"))
   (:file "nexth"
          :f2cl-options (:declare-common t))
   (:file "polyev")
   (:file "errev"
          :depends-on ("cmod"))
   (:file "cauchy")
   (:file "scale")
   (:file "cdivid"
          :depends-on ("mcon"))
   (:file "cmod")
   (:file "mcon"))
  :in-order-to ((test-op (test-op "toms419/test"))))

(defsystem "toms419/test"
  :class f2cl-system
  :f2cl-options (:package "TOMS419" :array-slicing t :array-type :array :keep-lisp-file t :relaxed-array-decls t)
  :pathname "toms/419/"
  :depends-on ("toms419")
  :components
  ((:file "prtc")
   (:file "prtz")
   (:file "cpolydr"))
  :perform (test-op (o c) (symbol-call :toms419 :cpolydr)))
