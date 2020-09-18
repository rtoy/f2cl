;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

;;; The files marked out with #+bad-array-type calls functions with
;;; REAL array arguments and the called function was expecting REAL*8
;;; arguments, or vice versa.  This isn't supported by f2cl.

;;; See https://www2.cisl.ucar.edu/resources/legacy/fft5/documentation
;;; for documentation of this package.
(defsystem fftpack5-double
  :description "F2CL conversion of FFTPACK5."
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FFTPACK5" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t :relaxed-array-decls t :promote-to-double t)
  :components
  ((:module "package"
    :pathname "fftpack5"
    :components
    ((:cl-source-file "fftpack5-double")))
   (:module "fftpack5"
    :depends-on ("package")
    :components
    ((:file "c1f2kb")
     (:file "c1f2kf")
     (:file "c1f3kb")
     (:file "c1f3kf")
     (:file "c1f4kb")
     (:file "c1f4kf")
     (:file "c1f5kb")
     (:file "c1f5kf")
     (:file "c1fgkb")
     (:file "c1fgkf")
     (:file "c1fm1b"
      :f2cl-options (:copy-array-parameter t))
     (:file "c1fm1f"
      :f2cl-options (:copy-array-parameter t))
     (:file "cfft1b"
      :depends-on ("xerfft"))
     (:file "cfft1f"
      :depends-on ("xerfft" "mcfti1"))
     (:file "cfft1i")
     (:file "cfft2b"
      :depends-on ("xerfft" "cfftmb"))
     (:file "cfft2f"
      :depends-on ("xerfft" "cfftmf"))
     (:file "cfft2i"
      :depends-on ("xerfft" "cfftmi"))
     (:file "cfftmb"
      :depends-on ("xerfft" "xercon" "cmfm1b"))
     (:file "cfftmf"
      :depends-on ("xerfft" "xercon" "cmfm1f"))
     (:file "cfftmi"
      :depends-on ("xerfft" "mcfti1"))
     (:file "cmf2kb")
     (:file "cmf2kf")
     (:file "cmf3kb")
     (:file "cmf3kf")
     (:file "cmf4kb")
     (:file "cmf4kf")
     (:file "cmf5kb")
     (:file "cmf5kf")
     (:file "cmfgkb")
     (:file "cmfgkf")
     (:file "cmfm1b"
      :f2cl-options (:copy-array-parameter t)
      :depends-on ("cmf2kb" "cmf3kb" "cmf4kb" "cmf5kb" "cmfgkb"))
     (:file "cmfm1f"
      :f2cl-options (:copy-array-parameter t)
      :depends-on ("cmf2kf" "cmf3kf" "cmf4kf" "cmf5kf" "cmfgkf"))
     (:file "cosq1b"
      :depends-on ("xerfft" "cosqb1"))
     (:file "cosq1f"
      :depends-on ("xerfft" "cosqf1"))
     (:file "cosq1i"
      :depends-on ("xerfft" "rfft1i"))
     (:file "cosqb1"
      :depends-on ("rfft1b" "xerfft"))
     (:file "cosqf1"
      :depends-on ("rfft1f" "xerfft"))
     (:file "cosqmb"
      :depends-on ("xerfft" "xercon" "mcsqb1"))
     (:file "cosqmf"
      :depends-on ("xerfft" "xercon" "mcsqf1"))
     (:file "cosqmi"
      :depends-on ("xerfft" "rfftmi"))
     (:file "cost1b"
      :depends-on ("xerfft" "costb1"))
     (:file "cost1f"
      :depends-on ("xerfft" "costf1"))
     (:file "cost1i"
      :depends-on ("xerfft" "rfft1i"))
     (:file "costb1"
      :depends-on ("rfft1f"))
     (:file "costf1"
      :depends-on ("rfft1f" "xerfft"))
     #+bad-array-type
     (:file "costmb"
      :depends-on ("xerfft" "xercon" "mcstb1"))
     #+bad-array-type
     (:file "costmf"
      :depends-on ("xerfft" "xercon" "mcstf1"))
     (:file "costmi"
      :depends-on ("xerfft" "rfftmi"))
     (:file "factor")
     (:file "mcfti1"
      :depends-on ("tables" "factor"))
     (:file "mcsqb1"
      :depends-on ("rfftmb" "xerfft"))
     (:file "mcsqf1"
      :depends-on ("rfftmf" "xerfft"))
     #+bad-array-type
     (:file "mcstb1"
      :depends-on ("rfftmf" "xerfft"))
     #+bad-array-type
     (:file "mcstf1"
      :depends-on ("rfftmf" "xerfft"))
     (:file "mradb2")
     (:file "mradb3")
     (:file "mradb4")
     (:file "mradb5")
     (:file "mradbg")
     (:file "mradf2")
     (:file "mradf3")
     (:file "mradf4")
     (:file "mradf5")
     (:file "mradfg")
     (:file "mrftb1"
      :depends-on ("mradb4" "mradb2" "mradb3" "mradb5" "mradbg"))
     (:file "mrftf1"
      :depends-on ("mradf4" "mradf2" "mradf3" "mradf5" "mradfg"))
     (:file "mrfti1")
     (:file "msntb1"
      :depends-on ("rfftmf" "xerfft"))
     (:file "msntf1")
     (:file "r1f2kb")
     (:file "r1f2kf")
     (:file "r1f3kb")
     (:file "r1f3kf")
     (:file "r1f4kb")
     (:file "r1f4kf")
     (:file "r1f5kb")
     (:file "r1f5kf")
     (:file "r1fgkb")
     (:file "r1fgkf")
     (:file "rfft1b"
      :depends-on ("xerfft" "rfftb1"))
     (:file "rfft1f"
      :depends-on ("xerfft" "rfftf1"))
     (:file "rfft1i"
      :depends-on ("xerfft" "rffti1"))
     (:file "rfft2b"
      :f2cl-options (:copy-array-parameter t)
      :depends-on ("xerfft" "rfftmb"))
     (:file "rfft2f"
      :f2cl-options (:copy-array-parameter t)
      :depends-on ("xerfft" "rfftmf"))
     (:file "rfft2i"
      :depends-on ("xerfft" "rfftmi"))
     (:file "rfftb1"
      :depends-on ("r1f4kb" "r1f2kb" "r1f3kb" "r1fgkb" "r1f5kb"))
     (:file "rfftf1"
      :depends-on ("r1f4kf" "r1f2kf" "r1f3kf" "r1fgkf" "r1f5kf"))
     (:file "rffti1")
     (:file "rfftmb"
      :depends-on ("xerfft" "xercon" "mrftb1"))
     (:file "rfftmf"
      :depends-on ("xerfft" "xercon" "mrftf1"))
     (:file "rfftmi"
      :depends-on ("xerfft" "mrfti1"))
     (:file "sinq1b"
      :depends-on ("xerfft"))
     (:file "sinq1f"
      :depends-on ("xerfft"))
     (:file "sinq1i"
      :depends-on ("xerfft"))
     (:file "sinqmb"
      :depends-on ("xerfft"))
     (:file "sinqmf"
      :depends-on ("xerfft" "xercon"))
     (:file "sinqmi"
      :depends-on ("xerfft"))
     (:file "sint1b"
      :depends-on ("xerfft" "sintb1"))
     (:file "sint1f"
      :depends-on ("xerfft" "sintf1"))
     (:file "sint1i"
      :depends-on ("xerfft"))
     (:file "sintb1"
      :depends-on ("xerfft"))
     (:file "sintf1"
      :depends-on ("xerfft"))
     #+bad-array-type
     (:file "sintmb"
      :depends-on ("xerfft" "xercon"))
     #+bad-array-type
     (:file "sintmf"
      :depends-on ("xerfft" "xercon"))
     (:file "sintmi"
      :depends-on ("xerfft"))
     (:file "tables")
     (:file "xercon")
     (:file "xerfft")
     ))))