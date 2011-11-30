;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:load-system :f2cl))

(defpackage hompack-system
  (:use #:cl #:asdf))

(in-package #:hompack-system)


(defclass hompack-fortran-file (cl-source-file)
  ()
  (:default-initargs :type "f"))

(defun fortran-compile (op c &key (array-slicing t) (array-type :array) package declare-common)
  (let ((file (component-pathname c)))
    (f2cl:f2cl-compile file
		       :keep-lisp-file t
		       :output-file (first (output-files op c))
		       :array-slicing array-slicing
		       :array-type array-type
		       :package "HOMPACK"
		       :relaxed-array-decls t
		       :declare-common declare-common
		       )))

(defmethod perform ((op compile-op) (c hompack-fortran-file))
  (fortran-compile op c))

(defmethod perform ((op load-op) (c hompack-fortran-file))
  (load (first (input-files op c))))

(defsystem hompack
  :depends-on ("blas-hompack")
  :components
  ((:module "package"
	    :pathname "hompack"
	    :components
	    ((:file "hompack-package")))
   (:module "hompack"
	    :default-component-class hompack-fortran-file
	    :depends-on ("package")
	    :components
	    (
	     ;; The following are :compile-only here because HOMPACK only
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
	     ))))

(defmethod perform ((op test-op) (c (eql (find-system "hompack"))))
  (oos 'test-op "hompack-test-mainf")
  (oos 'test-op "hompack-test-mainp")
  (oos 'test-op "hompack-test-mains"))

;; Run (hompack::mainf).  Compare with hompack/ref-main.txt.
;;
;; Results are identical.
(defsystem hompack-test-mainf
  :depends-on ("hompack")
  :default-component-class hompack-fortran-file
  :components
  ((:module mainf
	    :pathname "hompack"
	    :components
	    ((:file "mainf"
		    :perform (compile-op :around (op c)
					 (fortran-compile op c :declare-common t)))))))

(defmethod perform ((op test-op) (c (eql (find-system "hompack-test-mainf"))))
  (let ((*default-pathname-defaults*
	 (merge-pathnames "package/hompack"
			  (load-time-value *load-pathname*))))
    (funcall (find-symbol "MAINF" (find-package "HOMPACK")))))


;; This wants to read from innhp.dat in the hompack directory, so you
;; have to be in that directory when running this test.  The output is
;; placed in OUTHP.DAT.  You may need to close the output file to see
;; the results since the main program doesn't.  Use something like
;; (close (f2cl-lib:lun->stream 6)).

(defsystem hompack-test-mainp
  :depends-on ("hompack")
  :components
  ((:module mainp
	    :pathname "hompack"
	    :default-component-class hompack-fortran-file
	    :components
	    ((:file "mainp"
		    :perform (compile-op :around (op c)
					 (fortran-compile op c :declare-common t)))))))

(defmethod perform ((op test-op) (c (eql (find-system "hompack-test-mainp"))))
  (let ((*default-pathname-defaults*
	 (merge-pathnames (make-pathname :directory '(:relative "hompack"))
			  (load-time-value *load-pathname*))))
    (funcall (find-symbol "MAINP" (find-package "HOMPACK")))))

(defsystem hompack-test-mains
  :depends-on ("hompack")
  :components
  ((:module mains
	    :pathname "hompack"
	    :default-component-class hompack-fortran-file
	    :components
	    ((:file "mains"
		    :perform (compile-op :around (op c)
					 (fortran-compile op c :declare-common t)))))))

(defmethod perform ((op test-op) (c (eql (find-system "hompack-test-mains"))))
  (let ((*default-pathname-defaults*
	 (merge-pathnames (make-pathname :directory '(:relative "hompack"))
			  (load-time-value *load-pathname*))))
    (funcall (find-symbol "MAINS" (find-package "HOMPACK")))))