;;; -*- Mode: lisp -*-

(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "odepack"
  :description "F2CL conversion of ODEPACK: Initial value solver for ODEs"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :pathname "odepack/"
  :components
  ((:cl-source-file "package")
   (:module "fortran"
	    :components
	    ((:file "adjlr"
		    :depends-on ("nroc" "nsfc" "nnfc" "nnsc"))
	     (:file "cdrv"
		    :depends-on ("nntc"))
	     (:file "cntnzu")
	     (:file "daigbt"
		    :depends-on ("ddecbt" "dsolbt"))
	     (:file "dainvg"
		    :depends-on ("dgefa" "dgesl" "dgbfa" "dgbsl"))
	     (:file "dainvgs")
	     (:file "datp"
		    :depends-on ("dvnorm" "dcopy"))
	     (:file "datv"
		    :depends-on ("dcopy" "dnrm2" "dcopy"))
	     (:file "daxpy")
	     (:file "dbnorm")
	     (:file "dcfode")
	     (:file "dcopy")
	     (:file "ddecbt"
		    :depends-on ("dgefa" "dgesl" "ddot"))
	     (:file "ddot")
	     (:file "dewset")
	     (:file "dfnorm")
	     (:file "dgbfa"
		    :depends-on ("idamax" "dscal" "daxpy"))
	     (:file "dgbsl"
		    :depends-on ("daxpy"))
	     (:file "dgefa"
		    :depends-on ("idamax" "dscal" "daxpy"))
	     (:file "dgesl"
		    :depends-on ("daxpy" "ddot"))
	     (:file "dhefa"
		    :depends-on ("idamax"))
	     (:file "dhels")
	     (:file "dheqr")
	     (:file "dhesl")
	     (:file "dintdy"
		    :depends-on ("xerrwd"))
	     (:file "diprep"
		    :depends-on ("dprep")
		    :f2cl-options (:common-as-array t :declare-common t))
	     ;; This routine takes a slice of a double precision array and
	     ;; passes it to dprepi as a integer array. That won't work in
	     ;; Lisp!
	     (:file "diprepi"
		    :depends-on ("dprepi"))
	     (:file "dlhin"
		    :depends-on ("dvnorm"))
	     (:file "dlsoda"
		    :depends-on ("xerrwd" "dmnorm" "dstoda")
		    :f2cl-options (:common-as-array t :declare-common t))
	     (:file "dlsodar"
		    :depends-on ("drchek"))
	     (:file "dlsode"
		    :depends-on ("dstode"))
	     (:file "dlsodes"
		    :depends-on ("dstode" "dewset"))
	     (:file "dlsodi"
		    :depends-on ("dstodi" "dainvg"))
	     (:file "dlsodis"
		    :depends-on ("dstodi" "dainvgs"))
	     (:file "dlsodkr"
		    :depends-on ("drchek" "dstoka")
		    :f2cl-options (:common-as-array t :declare-common t))
	     (:file "dlsodpk"
		    :depends-on ("dstodpk"))
	     (:file "dlsoibt"
		    :depends-on ("dstodi"))
	     (:file "dmnorm")
	     (:file "dnrm2")
	     (:file "dorthog")
	     (:file "dpcg")
	     (:file "dpcgs")
	     (:file "dpjibt")
	     (:file "dpkset")
	     (:file "dprep"
		    :depends-on ("jgroup" "odrv"))
	     (:file "dprepi"
		    :depends-on ("jgroup" "odrv"))
	     (:file "dprepj"
	      :depends-on ("dgbfa"))
	     (:file "dprepji")
	     (:file "dprja")
	     (:file "dprjis")
	     (:file "dprjs")
	     (:file "drchek"
		    :depends-on ("droots"))
	     (:file "droots")
	     (:file "dscal")
	     (:file "dsetpk")
	     (:file "dslsbt")
	     (:file "dsolbt"
		    :depends-on ("dgesl" "ddot"))
	     (:file "dsolpk"
		    :depends-on ("dspiom" "dspigmr" "dusol"))
	     (:file "dsolss")
	     (:file "dsolsy")
	     (:file "dspigmr")
	     (:file "dspiom")
	     (:file "dsrcar")
	     (:file "dsrckr")
	     (:file "dsrcma")
	     (:file "dsrcms")
	     (:file "dsrcom")
	     (:file "dsrcpk")
	     (:file "dstoda"
		    :depends-on ("dmnorm"))
	     (:file "dstode")
	     (:file "dstodi")
	     (:file "dstodpk"
		    :depends-on ("dpkset" "dsolpk"))
	     (:file "dstoka"
		    :depends-on ("dsetpk" "dsolpk"))
	     (:file "dumach"
		    :depends-on ("dumsum"))
	     (:file "dumsum")
	     (:file "dusol")
	     (:file "dvnorm")
	     (:file "idamax")
	     (:file "iumach")
	     (:file "ixsav")
	     (:file "jgroup")
	     (:file "md"
		    :depends-on ("mdi" "mdm" "mdp" "mdu"))
	     (:file "mdi")
	     (:file "mdm")
	     (:file "mdp")
	     (:file "mdu")
	     (:file "nnfc")
	     (:file "nnsc")
	     (:file "nntc")
	     (:file "nroc")
	     (:file "nsfc")
	     (:file "odrv"
		    :depends-on ("sro" "md"))
	     (:file "sro")
	     (:file "xerrwd"
		    :depends-on ("ixsav"))
	     (:file "xsetf")
	     (:file "xsetun"))))
  :in-order-to ((test-op (test-op "odepack/lsode-demo"))))

(defsystem "odepack/package"
  :pathname "odepack/"
  :components
  ((:module "package"
    :pathname ""
    :components
    ((:file "package")))))

(defsystem "odepack/blas-util"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :pathname "odepack/fortran/"
  :depends-on ("odepack/package")
  :components
  ((:module "blas"
    :pathname ""
    :components
    ((:file "dgesl"
      :depends-on ("daxpy"
		   "ddot"))
     (:file "dgbsl"
      :depends-on ("daxpy"))
     (:file "dgefa"
      :depends-on ("idamax"
		   "dscal"
		   "daxpy"))
     (:file "dgbfa"
      :depends-on ("idamax"
		   "dscal"
		   "daxpy"))
     (:file "idamax")
     (:file "dscal")
     (:file "daxpy")
     (:file "ddot")
     (:file "dcopy")))
   (:module "util"
    :pathname ""
    :components
    ((:file "xerrwd"
      :depends-on ("ixsav"))
     (:file "ixsav"
      :depends-on ("iumach"))
     (:file "iumach")
     (:file "dumach"
      :depends-on ("dumsum"))
     (:file "dumsum")))))

(defsystem "odepack/lsode"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :pathname "odepack/fortran/"
  :depends-on ("odepack/blas-util")
  :components
  ((:module "lsode"
    :pathname ""
    :components
    ((:file "dlsode"
      :f2cl-options (:common-as-array t :declare-common t)
      :depends-on ("dewset" "dintdy" "dstode" "dvnorm"))
     (:file "dsolsy")
     (:file "dewset")
     (:file "dvnorm")
     (:file "dintdy")
     (:file "dstode"
      :depends-on ("dcfode" "dvnorm"))
     (:file "dcfode")
     (:file "dprepj")))))

(defsystem "odepack/lsoda"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :pathname "odepack/fortran"
  :depends-on ("odepack/blas-util")
  :components
  ((:module "lsoda"
    :pathname ""
    :components
    ((:file "dlsoda"
      :depends-on ("dstoda"
		   "dewset"
		   "dmnorm"
		   "dintdy"
		   "dsolsy")
      :f2cl-options (:common-as-array t :declare-common t))
     (:file "dsolsy")
     (:file "dstoda"
      :depends-on ("dcfode"
		   "dmnorm"
		   "dprja"))
     (:file "dprja"
      :depends-on ("dfnorm"
		   "dbnorm"))
     (:file "dfnorm")
     (:file "dbnorm")
     (:file "dcfode")
     (:file "dintdy")
     (:file "dmnorm")
     (:file "dewset")))))

(defsystem "odepack/lsodar"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :pathname "odepack/fortran"
  :depends-on ("odepack/blas-util")
  :components
  ((:module "lsoda"
    :pathname ""
    :components
    ((:file "dlsodar"
      :depends-on ("dewset"
		   "dmnorm"
		   "drchek"
		   "dintdy"
		   "dstoda"
		   "dsolsy")
      :f2cl-options (:common-as-array t :declare-common t))
     (:file "dstoda"
      :depends-on ("dcfode"
		   "dmnorm"
		   "dprja"))
     (:file "dprja"
      :depends-on ("dfnorm"
		   "dbnorm"))
     (:file "dsolsy")
     (:file "dcfode")
     (:file "dfnorm")
     (:file "dbnorm")
     (:file "dewset")
     (:file "dmnorm")
     (:file "drchek"
      :depends-on ("droots"))
     (:file "droots")
     (:file "dintdy")))))



;;; Demo programs
;;;
;;; Note: Each of the demos should probably be run in a separate Lisp
;;; instance because some of the demos define functions with the same
;;; name but different parameters.  This will really confuse the
;;; generated code, because the generated code uses knowledge of the
;;; function to generate the call.

;; (opkdemo1)
;;
;; Output matches Fortran code.
(defsystem "odepack/lsode-demo"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :pathname "odepack/"
  :depends-on ("odepack/lsode")
  :components
  ((:module "demo1"
	    :components
	    ((:file "opkdemo1")
	     (:file "f1")
	     (:file "jac1")
	     (:file "f2")
	     (:file "jac2")
	     (:file "edit2"))))
  :perform (test-op (o c) (symbol-call :odepack :opkdemo1)))

#||
;; This won't work because opkdemo2 equivalences two arrays together.
;; f2cl doesn't know how to handle that yet.
(defsystem "odepack/lsodes-demo"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :depends-on ("odepack")
  :components ((:file "opkdemo2"))
  :perform (test-op (o c) (symbol-call :odepack :opkdemo2)))
||#

;; (opkdemo3)
;;
;; Output matches Fortran code.
(defsystem "odepack/lsoda-demo"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :pathname "odepack/"
  :depends-on ("odepack/lsoda")
  :components
  ((:module "demo3"
	    :components
	    ((:file "opkdemo3")
	     (:file "f1")
	     (:file "jac1")
	     (:file "f2")
	     (:file "jac2")
	     (:file "edit2"))))
  :perform (test-op (o c) (symbol-call :odepack :opkdemo3)))

;; (opkdemo4)
;;
;; Output matches Fortran code.
(defsystem "odepack/lsodar-demo"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :pathname "odepack/"
  :depends-on ("odepack/lsodar")
  :components
  ((:module "demo4"
	    :components
	    ((:file "opkdemo4")
	     (:file "f1")
	     (:file "gr1")
	     (:file "f2")
	     (:file "jac2")
	     (:file "gr2"))))
  :perform (test-op (o c) (symbol-call :odepack :opkdemo4)))


;; (opkdemo5)
;;
;; This test takes quite a while to run.  Probably could be optimized
;; more if we were more careful about array declarations.  Assumption
;; untested, though.
;;
;; This seems to work, and the output matches the Fortran output,
;; except the test with mf = 29 isn't printed out.  Don't know why.
;;
;; The output is placed in demout in the directory where this is run.
;; Compare this to demo-lsodpk.out
(defsystem "odepack/lsodpk-demo"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :pathname "odepack/"
  :depends-on ("odepack")
  :components
  ((:module "demo5"
	    :components
	    ((:file "opkdemo5"
                    :depends-on ("gset" "cinit" "outweb")
                    :f2cl-options (:declare-common t))
	     (:file "setpar")
	     (:file "gset")
	     (:file "cinit")
	     (:file "outweb")
	     (:file "fweb"
		    :depends-on ("webr"))
	     (:file "webr")
	     (:file "jacbg"
		    :depends-on ("fbg"))
	     (:file "fbg")
	     (:file "solsbg"
		    :depends-on ("gs"))
	     (:file "gs"))))
  :perform (test-op (o c)
             (format! *error-output* "Running odepack/lsodpk-demo.  This make take some time.~%")
             (symbol-call :odepack :opkdemo5)))


(defsystem "odepack/lsodkr-demo"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :pathname "odepack/"
  :depends-on ("odepack")
  :components ((:file "fortran/opkdemo6" :f2cl-options (:declare-common t)))
  :perform (test-op (o c) (symbol-call :odepack :opkdemo6)))



;; This runs and the expected output seems ok.
(defsystem "odepack/lsodi-demo"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :depends-on ("odepack")
  :pathname "odepack/"
  :components
  ((:module "demo7"
	    :components
	    ((:file "opkdemo7"
                    :f2cl-options (:declare-common t)
                    :depends-on ("elkup"))
	     (:file "gfun")
	     (:file "res"
		    :depends-on ("gfun"))
	     (:file "addabd")
	     (:file "addafl")
	     (:file "jacbd")
	     (:file "jacfl")
	     (:file "elkup"))))
  :perform (test-op (o c)
             (format! *error-output* "Running odepack/lsodi-demo.  This make take some time.~%")
             (symbol-call :odepack :opkdemo7)))

(defsystem "odepack/lsoibt-demo"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil)
  :depends-on ("odepack")
  :pathname "odepack/"
  :components
  ((:module "demo8"
	    :components
	    ((:file "opkdemo8"
                    :f2cl-options (:declare-common t)
                    :depends-on ("setic"
				 "edit"
				 "maxerr"))
	     (:file "addabt")
	     (:file "edit")
	     (:file "gfun")
	     (:file "jacbt")
	     (:file "maxerr")
	     (:file "res"
		    :depends-on ("subav"
				 "gfun"))
	     (:file "setic")
	     (:file "subav"))))
  :perform (test-op (o c)
             (format! *error-output* "Running odepack/lsoibt-demo.  This make take some time.~%")
             (symbol-call :odepack :opkdemo7)))

#||
;; Doesn't work.  DIPREPI takes a double precision array and slices it
;; up and passes it to DPREPI which wants integer arrays.  That ain't
;; gonna work in Lisp!
(defsystem "odepack/lsodis-demo"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "ODEPACK" :array-slicing t :array-type :array :common-as-array t
                          :relaxed-array-decls nil :declare-common t)
  :depends-on ("odepack")
  :components ((:file "opkdemo9")))
||#
