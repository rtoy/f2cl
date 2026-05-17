;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "minpack"
  :description "F2CL conversion of MINPACK: Solutions to non-linear equations and least-squares problems"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "MINPACK" :keep-lisp-file t :array-slicing t :array-type :array :relaxed-array-decls nil)
  :components
  ((:cl-source-file "minpack/package")
   (:module "minpack"
	    :depends-on ("minpack/package")
	    :components
	    ((:file "dogleg" :depends-on ("dpmpar" "enorm"))
	     (:file "dpmpar")
	     (:file "enorm")
	     (:file "fdjac1" :depends-on ("dpmpar"))
	     (:file "fdjac2" :depends-on ("dpmpar"))
	     (:file "hybrd" :depends-on
		    ("dogleg" "dpmpar" "enorm" "fdjac1" "qform" "qrfac" "r1mpyq" "r1updt"))
	     (:file "hybrd1" :depends-on ("hybrd"))
	     (:file "hybrj" :depends-on
		    ("dogleg" "dpmpar" "enorm" "qform" "qrfac" "r1mpyq" "r1updt"))
	     (:file "hybrj1" :depends-on ("hybrj"))
	     (:file "lmder" :depends-on ("dpmpar" "enorm" "lmpar" "qrfac"))
	     (:file "lmder1" :depends-on ("lmder"))
	     (:file "lmdif" :depends-on ("dpmpar" "enorm" "fdjac2" "lmpar" "qrfac"))
	     (:file "lmdif1" :depends-on ("lmdif"))
	     (:file "lmpar" :depends-on ("dpmpar" "enorm" "qrsolv"))
	     (:file "qform")
	     (:file "qrfac" :depends-on ("dpmpar" "enorm")) (:file "qrsolv")
	     (:file "r1mpyq")
	     (:file "r1updt" :depends-on ("dpmpar"))))))

(setf (logical-pathname-translations "minpack")
      (list (list "**;*.*.*"
		  (merge-pathnames (make-pathname :host (pathname-host *load-pathname*)
						  :directory '(:relative "minpack" :wild-inferiors)
						  :name :wild :type :wild)
				   *load-pathname*))))


(defsystem "minpack/test-lmdif"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "MINPACK" :keep-lisp-file t :array-slicing t :array-type :array :relaxed-array-decls nil)
  :pathname "minpack/"
  :depends-on ("minpack")
  :components
  ((:module "main"
	    :pathname ""
	    :components
	    ((:cl-source-file "run-minpack-tests")))
   (:module "tests"
	    :pathname ""
	    :components
	    ((:file "tst-lmdif"
		    :f2cl-options (:declare-common t))
	     (:file "tst-lmder"
		    :f2cl-options (:declare-common t)))))
;; (minpack::run-minpack-tests) will run the tst-lmdif and tst-lmder
;; tests.  (When the STOP statement is reached, select the continue
;; restart to continue.)  Compare the output in tlmdif.txt to
;; lmdif-ref.txt and tlmder.txt to lmder-ref.txt.
  :perform (test-op (o c) (symbol-call :minpack :run-minpack-tests)))


;; This test defines things that are incompatible with tst-lmdif
;; and tst-lmder (all three define top-level FCN/INITPT and friends
;; with different signatures, so any two of them can't coexist in
;; one Lisp image; whichever loads second clobbers the first).

(defsystem "minpack/test-hybrd"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "MINPACK" :keep-lisp-file t :array-slicing t :array-type :array :relaxed-array-decls nil)
  :pathname "minpack/"
  :depends-on ("minpack")
  :components
  ((:module "main"
	    :pathname ""
	    :components
	    ((:cl-source-file "run-minpack-tests")))
   (:module "tests"
	    :pathname ""
	    :components
	    ((:file "tst-hybrd"
		    :f2cl-options (:declare-common t)))))
  :perform (test-op (o c) (symbol-call :minpack :run-minpack-test-hybrd)))


;; Like minpack/test-hybrd above: a single-driver system that
;; translates only tst-lmder.f.  Used by minpack/rt-tests-lmder
;; below.  Loading this system is mutually exclusive with loading
;; minpack/test-lmdif (the latter brings in tst-lmdif.f, which
;; defines INITPT and SSQFCN with the same names but different
;; bodies; whichever is loaded second wins).
(defsystem "minpack/test-lmder"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "MINPACK" :keep-lisp-file t :array-slicing t :array-type :array :relaxed-array-decls nil)
  :pathname "minpack/"
  :depends-on ("minpack")
  :components
  ((:module "tests"
	    :pathname ""
	    :components
	    ((:file "tst-lmder"
		    :f2cl-options (:declare-common t))))))


;; ----------------------------------------------------------------
;; Rt-based regression tests for the minpack drivers.  See
;; packages/minpack-tests/ for the deftest sources, the per-row
;; tolerance tables (*tst-hybrd-tolerances*, *tst-lmdif-tolerances*,
;; *tst-lmder-tolerances*), the native-Fortran references they
;; compare against (hybrd-ref.txt, lmdif-ref.txt, lmder-ref.txt,
;; produced by the Makefile in that same directory), and a longer
;; rationale in the test-file headers.
;;
;; Three siblings, one per driver.  Any two cannot coexist in a
;; single Lisp image because tst-hybrd.f, tst-lmdif.f, and tst-lmder.f
;; all define top-level FCN/FCNJ/INITPT/SSQFCN subroutines with
;; incompatible signatures; whichever is loaded last wins.  To run
;; multiple suites, restart Lisp between them.

(defsystem "minpack/rt-tests-hybrd"
  :description "rt-based regression tests for f2cl-translated tst-hybrd from MINPACK"
  :depends-on ("minpack" "minpack/test-hybrd" "f2cl-rt")
  :pathname "minpack-tests/"
  :components
  ((:cl-source-file "minpack-tests-package")
   (:cl-source-file "minpack-tests-helpers"
                    :depends-on ("minpack-tests-package"))
   (:cl-source-file "tst-hybrd-test"
                    :depends-on ("minpack-tests-helpers")))
  :perform (test-op (o c)
             (or (symbol-call :rt :do-tests)
                 (error "TEST-OP failed for minpack/rt-tests-hybrd"))))

(defsystem "minpack/rt-tests-lmdif"
  :description "rt-based regression tests for f2cl-translated tst-lmdif from MINPACK"
  :depends-on ("minpack" "minpack/test-lmdif" "f2cl-rt")
  :pathname "minpack-tests/"
  :components
  ((:cl-source-file "minpack-tests-package")
   (:cl-source-file "minpack-tests-helpers"
                    :depends-on ("minpack-tests-package"))
   (:cl-source-file "tst-lmdif-test"
                    :depends-on ("minpack-tests-helpers")))
  :perform (test-op (o c)
             (or (symbol-call :rt :do-tests)
                 (error "TEST-OP failed for minpack/rt-tests-lmdif"))))

(defsystem "minpack/rt-tests-lmder"
  :description "rt-based regression tests for f2cl-translated tst-lmder from MINPACK"
  :depends-on ("minpack" "minpack/test-lmder" "f2cl-rt")
  :pathname "minpack-tests/"
  :components
  ((:cl-source-file "minpack-tests-package")
   (:cl-source-file "minpack-tests-helpers"
                    :depends-on ("minpack-tests-package"))
   (:cl-source-file "tst-lmder-test"
                    :depends-on ("minpack-tests-helpers")))
  :perform (test-op (o c)
             (or (symbol-call :rt :do-tests)
                 (error "TEST-OP failed for minpack/rt-tests-lmder"))))
