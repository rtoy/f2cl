;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "hompack"
  :description "F2CL conversion of HOMPACK: Solution of non-linear systems of equations by homotopy methods."
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "HOMPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t :relaxed-array-decls t)
  :depends-on ("blas-hompack")
  :components
  ((:module "package"
	    :pathname "hompack"
	    :components
	    ((:cl-source-file "hompack-package")))
   (:module "hompack"
	    :depends-on ("package")
	    :components
	    (;; The following are :compile-only here because HOMPACK only
	     ;; gives skeletons for them.  We make them :compile-only so that
	     ;; f2cl will get the function definitions so it can generate
	     ;; calls to them appropriately.
	     ;;
	     ;; The user is supposed to provide appropriate definitions for
	     ;; them.  Also, rho and rhojac are supposed to be user-defined,
	     ;; but the versions in HOMPACK are used for POLSYS.
	     (:file "f")
	     (:file "fjac")
	     (:file "fjacs")
	     (:file "rhojs")
	     (:file "rhoa")

	     (:file "rho")
	     (:file "rhojac" :depends-on ("hfunp"))

	     (:file "dcpose")
	     (:file "divp")
	     (:file "ffunp" :depends-on ("mulp" "powp"))
	     (:file "fixpdf" :depends-on ("rhoa" "steps" "sintrp" "root"))
	     (:file "fixpds" :depends-on ("rhoa" "stepds" "sintrp" "root"))
	     (:file "fixpnf" :depends-on ("stepnf" "rootnf"))
	     (:file "fixpns" :depends-on ("stepns" "rootns"))
	     (:file "fixpqf" :depends-on ("stepqf" "rootqf"))
	     (:file "fixpqs" :depends-on ("stepqs" "rootqs"))
	     (:file "fode" :depends-on ("rhojac" "fjac"))
	     (:file "fodeds" :depends-on ("rhojs" "pcgds" "fjacs"))
	     (:file "gfunp" :depends-on ("powp" "mulp"))
	     (:file "gmfads")
	     (:file "hfun1p" :depends-on ("gfunp" "ffunp"))
	     (:file "hfunp" :depends-on ("hfun1p"))
	     (:file "initp" :depends-on ("sclgnp"))
	     (:file "mfacds" :depends-on ("gmfads"))
	     (:file "mulp")
	     (:file "multds")
	     (:file "otputp")
	     (:file "pcgds" :depends-on ("qimuds" "mfacds" "multds"))
	     (:file "pcgns" :depends-on ("mfacds" "multds" "qimuds"))
	     (:file "pcgqs" :depends-on ("solvds" "gmfads" "multds"))
	     (:file "polsys" :depends-on ("polyp"))
	     (:file "polyp" :depends-on ("initp" "strptp" "otputp" "fixpnf"))
	     (:file "powp")
	     (:file "qimuds" :depends-on ("solvds"))
	     (:file "qrfaqf")
	     (:file "qrslqf")
	     (:file "root")
	     (:file "rootnf" :depends-on ("tangnf"))
	     (:file "rootns" :depends-on ("tangns"))
	     (:file "rootqf" :depends-on ("upqrqf" "rho" "qrslqf" "fjac"))
	     (:file "rootqs" :depends-on ("rhojs" "rho" "pcgqs" "fjacs"))
	     (:file "sclgnp")
	     (:file "sintrp")
	     (:file "solvds")
	     (:file "stepds")
	     (:file "stepnf" :depends-on ("tangnf"))
	     (:file "stepns" :depends-on ("tangns"))
	     (:file "stepqf" :depends-on ("tangqf" "upqrqf" "rho" "rhojac" "qrslqf" "fjac"))
	     (:file "stepqs" :depends-on ("tangqs" "rhojs" "pcgqs" "fjacs"))
	     (:file "steps")
	     (:file "strptp")
	     (:file "r1upqf")
	     (:file "tangnf" :depends-on ("rhojac" "rho" "fjac"))
	     (:file "tangns" :depends-on ("rhojac" "rho" "pcgns" "rhojs" "pcgds" "fjac"))
	     (:file "tangqf" :depends-on ("rhojac" "qrfaqf" "qrslqf" "r1upqf" "fjac"))
	     (:file "tangqs" :depends-on ("rhojs" "pcgqs" "fjac"))
	     (:file "upqrqf" :depends-on ("r1upqf"))
	     )))
  :in-order-to ((test-op (test-op "hompack/test-mainf" "hompack/test-mainp" "hompack/test-mains"))))

;; Run (hompack::mainf).  Compare with hompack/ref-main.txt.
;;
;; Results are identical.
(defsystem "hompack/test-mainf"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "HOMPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t :relaxed-array-decls t)
  :depends-on ("hompack")
  :components ((:file "hompack/mainf" :f2cl-options (:declare-common t)))
  :perform (test-op (o c)
             (let ((*default-pathname-defaults* (system-source-directory "hompack")))
               (symbol-call :hompack :mainf))))


;; This wants to read from innhp.dat in the hompack directory, so you
;; have to be in that directory when running this test.  The output is
;; placed in OUTHP.DAT.  You may need to close the output file to see
;; the results since the main program doesn't.  Use something like
;; (close (f2cl-lib:lun->stream 6)).

(defsystem "hompack/test-mainp"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "HOMPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t :relaxed-array-decls t)
  :depends-on ("hompack")
  :components ((:file "hompack/mainp" :f2cl-options (:declare-common t)))
  :perform (test-op (o c)
             (let ((*default-pathname-defaults* (system-source-directory "hompack")))
               (symbol-call :hompack :mainp))))

(defsystem "hompack/test-mains"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "HOMPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t :relaxed-array-decls t)
  :depends-on ("hompack")
  :components ((:file "hompack/mains" :f2cl-options (:declare-common t)))
  :perform (test-op (o c)
             (let ((*default-pathname-defaults* (system-source-directory "hompack")))
               (symbol-call :hompack :mains))))
