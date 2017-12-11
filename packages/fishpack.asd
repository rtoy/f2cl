;;; -*- Mode: lisp -*-
;;;
;;; This defsystem converts the FISHPACK Fortran routines
;;; to Lisp and compiling the result.
;;;

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "fishpack"
  :description "F2CL conversion of FISHPACK: Solution of separable elliptic PDEs"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :components
  ((:module "package"
	    :pathname "fishpack"
	    :components
	    ((:cl-source-file "package")))
   (:module "fishpack"
	    :components
	    ((:file "pimach")
	     (:file "merge")
	     (:file "cosgen"
		    :depends-on ("pimach"))
	     (:file "genbun"
		    :depends-on ("pimach" "poisd2" "poisp2" "poisn2"))
	     (:file "tri3")
	     (:file "trix")
	     (:file "hwscrt"
		    :depends-on ("trix" "tri3" "pimach"))
	     (:file "hwscyl")
	     (:file "hwsplr")
	     (:file "hwsssp" :depends-on ("hwsss1"))
	     (:file "hwsss1")
	     (:file "hwscsp" :depends-on ("hwscs1"))
	     (:file "hwscs1" :depends-on ("epmach" "blktri" "store"))
	     (:file "hstcrt" :depends-on ("poistg"))
	     (:file "poistg" :depends-on ("postg2"))
	     (:file "postg2")
	     (:file "hstplr")
	     (:file "hstcyl")
	     (:file "hstssp")
	     (:file "hstcsp" :depends-on ("hstcs1"))
	     (:file "hstcs1")
	     (:file "sepx4" :depends-on ("chkpr4" "speli4"))
	     (:file "chkpr4")
	     (:file "speli4"
		    :depends-on ("chksn4" "tris4" "ortho4" "minso4" "defe4"))
	     (:file "chksn4")
	     (:file "tris4")
	     (:file "ortho4")
	     (:file "minso4")
	     (:file "defe4" :depends-on ("dx4" "dy4"))
	     (:file "dx4" :f2cl-options (:declare-common t))
	     (:file "dy4"
		    ;; Want common block defined before compiling dy4.
		    :depends-on ("dx4"))
	     (:file "epmach"
		    :depends-on ("store"))
	     (:file "blktri"
		    :depends-on ("compb" "blktr1" "prodp" "cprodp"))
	     ;; WARNING: compb passes an array of single-floats to
	     ;; PPADD, but PPADD is expecting an array of COMPLEX
	     ;; numbers.  None of the test programs trigger this, so
	     ;; it might not be a problem, but it is something to
	     ;; watch out for.  F2cl does not handle this case.
	     (:file "compb"
		    :depends-on ("indxb" "tevls" "ppadd" "epmach"))
	     (:file "blktr1"
		    :depends-on ("indxa" "indxb" "indxc"))
	     (:file "store" :f2cl-options (:declare-common t))
	     (:file "indxa" :f2cl-options (:declare-common t))
	     (:file "indxb"
		    ;; Want the common block defined before compiling indxb.
		    :depends-on ("indxa"))
	     (:file "indxc"
		    ;; Want the common block defined before compiling indxb.
		    :depends-on ("indxa"))
	     (:file "tevls")
	     (:file "ppadd"
		    :depends-on ("psgf" "bsrh" "ppsgf"))
	     (:file "psgf")
	     (:file "bsrh")
	     (:file "ppsgf")
	     (:file "poisd2"
		    :depends-on ("cosgen" "trix" "merge"))
	     (:file "poisn2"
		    :depends-on ("cosgen" "trix" "tri3" "merge"))
	     (:file "poisp2"
		    :depends-on ("cosgen" "trix" "tri3" "merge"
					  "poisd2"))
	     (:file "prod")
	     (:file "cprod")
	     (:file "cprodp")
	     (:file "ppspf")
	     (:file "prodp"))))
  :in-order-to ((test-op
                 (test-op
                  "fishpack/test-hwscrt"
                  "fishpack/test-hwscrt"
		  "fishpack/test-hwscyl"
		  "fishpack/test-hwsplr"
		  "fishpack/test-hwsssp"
		  "fishpack/test-hwscsp"
		  "fishpack/test-hstcrt"
		  "fishpack/test-hstplr"
		  "fishpack/test-hstcyl"
		  "fishpack/test-hstssp"
		  "fishpack/test-hstcsp"
		  "fishpack/test-sepx4"
		  ))))

;; Some tests of Fishpack.
;;
;; The results won't match the results printed for the NCAR Control
;; Data 7600, but they should be close.

;; Works
(defsystem "fishpack/test-hwscrt"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "hwscrt"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tsthwscrt"))))
  :perform (test-op (o c) (symbol-call :fishpack :thwscrt)))

;; Works
(defsystem "fishpack/test-hwscyl"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "hwscyl"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tsthwscyl"))))
  :perform (test-op (o c) (symbol-call :fishpack :thwscyl)))

;; Works
(defsystem "fishpack/test-hwsplr"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "hwsplr"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tsthwsplr"))))
  :perform (test-op (o c) (symbol-call :fishpack :thwsplr)))

;; Works
(defsystem "fishpack/test-hwsssp"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "hwsssp"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tsthwsssp"))))
  :perform (test-op (o c) (symbol-call :fishpack :thwsssp)))

;; Works
(defsystem "fishpack/test-hwscsp"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "hwscsp"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tsthwscsp"))))
  :perform (test-op (o c) (symbol-call :fishpack :thwscsp)))

;; Works
(defsystem "fishpack/test-hstcrt"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "hstcrt"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tsthstcrt"))))
  :perform (test-op (o c) (symbol-call :fishpack :thstcrt)))

;; Works
(defsystem "fishpack/test-hstplr"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "hstplr"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tsthstplr"))))
  :perform (test-op (o c) (symbol-call :fishpack :thstplr)))

;; Works
(defsystem "fishpack/test-hstcyl"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "hstcyl"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tsthstcyl"))))
  :perform (test-op (o c) (symbol-call :fishpack :thstcyl)))

;; Works
(defsystem "fishpack/test-hstssp"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "hstssp"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tsthstssp")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack/test-hstssp"))))
  (funcall (find-symbol "THSTSSP" (find-package '#:fishpack))))

;; Works
(defsystem "fishpack/test-hstcsp"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "hstcsp"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tsthstcsp"))))
  :perform (test-op (o c) (symbol-call :fishpack :thstcsp)))

;; Works
(defsystem "fishpack/test-sepx4"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "FISHPACK" :array-slicing t :array-type :array :common-as-array t :keep-lisp-file t)
  :depends-on ("fishpack")
  :components
  ((:module "sepx4"
	    :pathname "fishpack/ex/"
	    :components
	    ((:file "tstsepx4" :depends-on ("cofx4"))
	     (:file "cofx4"))))
  :perform (test-op (o c) (symbol-call :fishpack :tsepx4)))

