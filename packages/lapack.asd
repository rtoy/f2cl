;;; -*- Mode: lisp -*-

(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "lapack/real"
  :description "LAPACK routines for real double-float matrices"
  :class f2cl-system
  :f2cl-options (:package "LAPACK" :array-slicing t :array-type :array :common-as-array t :relaxed-array-decls nil)
  :depends-on ("blas-real" "lapack/package")
  :components
  ((:module "lapack"
    :components
    ((:file "dgeev"
      :depends-on ("dlartg" "dlapy2" "dgebak" "dtrevc" "dhseqr"
			    "dorghr" "dlacpy" "dgehrd" "dgebal"
			    "dlascl" "dlange" "dlabad" "dlamch"
			    "ilaenv"))
     (:file "dgebak")
     (:file "dgebal")
     (:file "dgehrd"
      :depends-on ("dlahrd" "dlarfb" "dgehd2" "ilaenv"))
     (:file "dhseqr"
      :depends-on ("dlarfx" "dlarfg" "dlapy2" "dlacpy" "dlanhs"
			    "dlabad" "dlamch" "dlahqr" "ilaenv"
			    "dlaset"))
     (:file "dlabad")
     (:file "dlacpy")
     (:file "dlamch")
     (:file "dlange"
      :depends-on ("dlassq"))
     (:file "dlapy2")
     (:file "dlartg"
      :depends-on ("dlamch"))
     (:file "dlascl"
      :depends-on ("dlamch"))
     (:file "dorghr"
      :depends-on ("dorgqr" "ilaenv"))
     (:file "dtrevc"
      :depends-on ("dlabad" "dlamch" "dlaln2"))
     (:file "ilaenv"
      :depends-on ("ieeeck"))
     (:file "dlahrd"
      :depends-on ("dlarfg"))
     (:file "dlarfb")
     (:file "dgehd2"
      :depends-on ("dlarfg" "dlarf"))
     (:file "dlaset")
     (:file "dlahqr"
      :depends-on ("dlanhs" "dlarfg" "dlanv2" "dlabad" "dlamch"))
     (:file "dlanhs"
      :depends-on ("dlassq"))
     (:file "dlarfg"
      :depends-on ("dlapy2" "dlamch"))
     (:file "dlarfx")
     (:file "dlassq")
     (:file "dorgqr"
      :depends-on ("dorg2r" "dlarft" "dlarfb" "ilaenv"))
     (:file "dlaln2"
      :depends-on ("dladiv"
		   "dlamch"))
     (:file "ieeeck")
     (:file "dlarf")
     (:file "dlanv2"
      :depends-on ("dlapy2" "dlamch"))
     (:file "dorg2r"
      :depends-on ("dlarf"))
     (:file "dlarft")
     (:file "dladiv")

     ;; DGEEVX
     (:file "dgeevx"
      :depends-on ("dlartg" "dlapy2" "dgebak" "dtrsna" "dtrevc"
			    "dhseqr" "dorghr" "dlacpy" "dgehrd"
			    "dgebal" "dlascl" "dlange" "dlabad"
			    "dlamch" "ilaenv"))
     (:file "dtrsna"
      :depends-on ("dtrexc" "dlacon" "dlaqtr"
			    "dlacpy" "dlapy2" "dlamch"))
     (:file "dtrexc"
      :depends-on ("dlaexc"))
     (:file "dlacon")
     (:file "dlaqtr"
      :depends-on ("dladiv" "dlaln2" "dlange" "dlamch"))
     (:file "dlaexc"
      :depends-on ("dlasy2" "dlanv2" "dlarfg" "dlamch" "dlange"
			    "dlacpy" "dlartg"))
     (:file "dlasy2"
      :depends-on ("dlamch"))

     ;; DGESV
     (:file "dgesv"
      :depends-on ("dgetrf" "dgetrs"))
     (:file "dgetrf"
      :depends-on ("dgetf2" "dlaswp" "ilaenv"))
     (:file "dgetrs"
      :depends-on ("dlaswp"))
     (:file "dgetf2")
     (:file "dlaswp")

     ;; DGESDD
     (:file "dgesdd"
      :depends-on ("dorglq" "dgelqf" "dorgbr" "dormbr" "dorgqr"
			    "dlacpy" "dbdsdc" "dgebrd" "dlaset"
			    "dgeqrf" "dlascl" "dlange" "dlamch"
			    "ilaenv"))
     (:file "dbdsdc"
      :depends-on ("dlasr" "dlasda" "dlasd0" "dlamch" "dlascl"
			   "dlanst" "dlaset" "dlasdq"
			   "dlartg" "ilaenv"))
     (:file "dgebrd"
      :depends-on ("dlabrd" "dgebd2" "ilaenv"))
     (:file "dgelqf"
      :depends-on ("dgelq2" "dlarfb" "dlarft" "ilaenv"))
     (:file "dorgbr"
      :depends-on ("dorglq" "dorgqr" "ilaenv"))
     (:file "dorglq"
      :depends-on ("dorgl2" "dlarfb" "dlarft" "ilaenv"))
     (:file "dorgl2"
      :depends-on ("dlarf"))
     (:file "dormbr"
      :depends-on ("dormqr" "dormlq" "ilaenv"))
     (:file "dlasdq"
      :depends-on ("dlasr" "dbdsqr" "dlartg"))
     (:file "dlanst"
      :depends-on ("dlassq"))
     (:file "dlasd0"
      :depends-on ("dlasdt" "dlasd1" "dlasdq"))
     (:file "dlasda"
      :depends-on ("dlasd6" "dlaset" "dlasdq"))
     (:file "dlasr")
     (:file "dlabrd"
      :depends-on ("dlarfg"))
     (:file "dgebd2"
      :depends-on ("dlarf" "dlarfg"))
     (:file "dgelq2"
      :depends-on ("dlarf" "dlarfg"))
     (:file "dormqr"
      :depends-on ("dorm2r" "dlarfb" "dlarft" "ilaenv"))
     (:file "dormlq"
      :depends-on ("dorml2" "dlarfb" "dlarft" "ilaenv"))
     (:file "dgeqrf"
      :depends-on ("dgeqr2" "dlarfb" "dlarft" "ilaenv"))
     (:file "dbdsqr"
      :depends-on ("dlasq1" "dlasv2" "dlas2" "dlasr" "dlartg"
			    "dlamch"))
     (:file "dlasq1"
      :depends-on ("dlas2" "dlasrt" "dlasq2" "dlascl"))
     (:file "dlasv2"
      :depends-on ("dlamch"))
     (:file "dlas2")
     (:file "dlasdt")
     (:file "dlasd1"
      :depends-on ("dlasd2" "dlasd3" "dlamrg" "dlascl"))
     (:file "dlasrt")
     (:file "dlasq2"
      :depends-on ("dlasq3" "ilaenv" "dlasrt" "dlamch"))
     (:file "dlasd2"
      :depends-on ("dlamrg" "dlacpy" "dlaset" "dlapy2" "dlamch"
			    "dlamrg"))
     (:file "dlasd3"
      :depends-on ("dlasd4" "dlacpy" "dlascl" "dlamch"))
     (:file "dlamrg")
     (:file "dlasd6"
      :depends-on ("dlasd7" "dlasd8"))
     (:file "dorml2")
     (:file "dgeqr2"
      :depends-on ("dlarf" "dlarfg"))
     (:file "dorm2r"
      :depends-on ("dlarf"))
     (:file "dlasd4"
      :depends-on ("dlasd5" "dlaed6"))
     (:file "dlasd7"
      :depends-on ("dlapy2" "dlamch" "dlamrg"))
     (:file "dlasd8"
      :depends-on ("dlasd4" "dlaset" "dlascl" "dlamch"))
     (:file "dlasq3"
      :depends-on ("dlasq4" "dlasq5" "dlasq6" "dlamch"))
     (:file "dlasq4")
     (:file "dlasq5")
     (:file "dlasq6"
      :depends-on ("dlamch"))
     (:file "dlasd5")
     (:file "dlaed6"
      :depends-on ("dlamch"))

     ;; DGESVD
     (:file "dgesvd"
      :depends-on ("dorglq" "dgelqf" "dormbr" "dorgqr" "dlacpy"
			    "dbdsqr" "dorgbr" "dgebrd" "dlaset"
			    "dgeqrf" "dlascl" "dlange" "dlamch"
			    "ilaenv"))

     ;; For condition numbers of the singular vectors
     (:file "ddisna")

     ;;(:file "zgeev")
     ))))

(defsystem "lapack/complex"
  :description "LAPACK routines for complex double-float matrices"
  :class f2cl-system
  :f2cl-options (:package "LAPACK" :array-slicing t :array-type :array :common-as-array t :relaxed-array-decls nil)
  :depends-on ("blas-complex" "lapack/real")
  :components
  ((:module "complex"
    :pathname "lapack/"
    :components
    ((:file "zgeev"
      :depends-on ("zhseqr" "zlange" "zlascl" "zgebal" "zlacpy" "zunghr" "ztrevc" "zgebak" "zgehrd"))
     (:file "zhseqr"
	    :depends-on ("zlaqr0" "zlaset" "zlahqr"))
     (:file "zlange"
	    :depends-on ("zlassq"))
     (:file "zlascl"
	    :depends-on ("disnan"))
     (:file "zgebal")
     (:file "zlacpy"
	    :depends-on ("disnan"))
     (:file "zunghr"
	    :depends-on ("zungqr"))
     (:file "ztrevc")
     (:file "zgebak"
	    :depends-on ("zlatrs"))
     (:file "zlatrs"
	    :depends-on ("zladiv"))
     (:file "zungqr"
	    :depends-on ("zung2r" "zlarft" "zlarfb"))
     (:file "disnan"
            :depends-on ("dlaisnan"))
     (:file "dlaisnan")
     (:file "zlassq")
     (:file "zladiv")
     (:file "zung2r"
	    :depends-on ("zlarf"))
     (:file "zlarft"
	    :depends-on ("zlacgv"))
     (:file "zlarfb"
	    :depends-on ("ilazlr" "ilazlc" "zlacgv"))
     (:file "ilazlr")
     (:file "ilazlc")
     (:file "zlacgv")
     (:file "zlarf")
     (:file "zlaqr0"
	    :depends-on ("zlahqr" "zlaqr3" "zlaqr4" "zlaqr5"))
     (:file "zlaset")
     (:file "zlaqr3"
	    :depends-on ("zgehrd" "zunmhr" "zlahqr" "ztrexc" "zlarfg"))
     (:file "zlaqr4"
	    :depends-on ("zlaqr2" "zlahqr"))
     (:file "zlaqr5"
	    :depends-on ("zlaqr1" "zlarfg"))
     (:file "zlaqr1")
     (:file "zlaqr2"
	    :depends-on ("zunmhr" "ztrexc"))
     (:file "zlarfg"
	    :depends-on ("dlapy3"))
     (:file "zlahqr"
	    :depends-on ("zlarfg"))
     (:file "zgehrd"
	    :depends-on ("zlahr2" "zgehd2"))
     (:file "zunmhr"
	    :depends-on ("zunmqr"))
     (:file "ztrexc"
	    :depends-on ("zlartg" "zrot" "zunm2r"))
     (:file "dlapy3")
     (:file "zlartg")
     (:file "zrot")
     (:file "zunmqr")
     (:file "zlahr2")
     (:file "zgehd2"
	    :depends-on ("zlarfg" "zlarf"))
     (:file "zunm2r")
     (:file "zheev"
	    :depends-on ("dsterf" "zhetrd" "zlanhe" "zsteqr" "zungtr"))
     (:file "dsterf"
	    :depends-on ("dlae2"))
     (:file "zhetrd"
	    :depends-on ("zlatrd" "zhetd2"))
     (:file "zsteqr"
	    :depends-on ("dlaev2" "zlasr" "dlae2"))
     (:file "zlanhe")
     (:file "zungtr"
            :depends-on ("zungql"))
     (:file "dlae2")
     (:file "dlaev2")
     (:file "zhetd2")
     (:file "zlasr")
     (:file "zlatrd")
     (:file "zungql"
            :depends-on ("zung2l"))
     (:file "zung2l")
     ))))

(defsystem "lapack/package"
  :description "Package definition for LAPACK"
  :depends-on ("blas-package")
  :components ((:file "lapack/lapack-package")))

(defsystem "lapack"
  :description "LAPACK - Linear Algebra PACKage for double-float matrices"
  :depends-on ("lapack/package" "lapack/real" "lapack/complex")
  :in-order-to ((test-op (test-op "lapack/tests"))))

(defsystem "lapack/tests"
  :depends-on ("lapack" "rt")
  :components ((:file "lapack/lapack-tests"))
  :perform (test-op (o c)
             (or (symbol-call :rt :do-tests) (error "TEST-OP failed for lapack/tests"))))
