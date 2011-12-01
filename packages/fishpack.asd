;;; -*- Mode: lisp -*-
;;;
;;; This defsystem converts the FISHPACK Fortran routines
;;; to Lisp and compiling the result.
;;;

;; Need f2cl to be loaded before we can even read this file.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:load-system :f2cl))

(defpackage #:fishpack-asd
  (:use :cl :asdf))

(in-package :fishpack-asd)

(defclass fishpack-fortran-file (cl-source-file)
  ()
  (:default-initargs :type "f"))

(defun fortran-compile (op c &key (array-slicing t) (array-type :array) package declare-common)
  (let ((file (component-pathname c)))
    (f2cl:f2cl-compile file
		       :keep-lisp-file t
		       :output-file (first (output-files op c))
		       :array-slicing array-slicing
		       :array-type array-type
		       :package "FISHPACK"
		       :declare-common declare-common
		       )))

(defmethod perform ((op compile-op) (c fishpack-fortran-file))
  (fortran-compile op c :package "MINPACK"))

(defmethod perform ((op load-op) (c fishpack-fortran-file))
  (load (first (input-files op c))))


(defsystem fishpack
  :description "F2CL conversion of FISHPACK: Solution of separable elliptic PDEs"
  :components
  ((:module package
	    :pathname "fishpack"
	    :components
	    ((:file "package")))
   (:module fishpack
	    :default-component-class fishpack-fortran-file
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
	     (:file "dx4"
		    :perform (compile-op :around (op c)
					 (fortran-compile op c :declare-common t)))
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
	     (:file "store"
		    :perform (compile-op :around (op c)
					 (fortran-compile op c :declare-common t)))
	     (:file "indxa"
		    :perform (compile-op :around (op c)
					 (fortran-compile op c :declare-common t)))
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
	     (:file "prodp")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack"))))
  (dolist (test '("fishpack-test-hwscrt"
		  "fishpack-test-hwscrt"
		  "fishpack-test-hwscyl"
		  "fishpack-test-hwsplr"
		  "fishpack-test-hwsssp"
		  "fishpack-test-hwscsp"
		  "fishpack-test-hstcrt"
		  "fishpack-test-hstplr"
		  "fishpack-test-hstcyl"
		  "fishpack-test-hstssp"
		  "fishpack-test-hstcsp"
		  "fishpack-test-sepx4"
		  ))
  (oos 'test-op test)))

;; Some tests of Fishpack.
;;
;; The results won't match the results printed for the NCAR Control
;; Data 7600, but they should be close.

;; Works
(defsystem fishpack-test-hwscrt
  :depends-on ("fishpack")
  :components
  ((:module hwscrt
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tsthwscrt")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-hwscrt"))))
  (funcall (find-symbol "THWSCRT" (find-package '#:fishpack))))

;; Works
(defsystem fishpack-test-hwscyl
  :depends-on ("fishpack")
  :components
  ((:module hwscyl
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tsthwscyl")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-hwscyl"))))
  (funcall (find-symbol "THWSCYL" (find-package '#:fishpack))))

;; Works
(defsystem fishpack-test-hwsplr
  :depends-on ("fishpack")
  :components
  ((:module hwsplr
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tsthwsplr")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-hwsplr"))))
  (funcall (find-symbol "THWSPLR" (find-package '#:fishpack))))

;; Works
(defsystem fishpack-test-hwsssp
  :depends-on ("fishpack")
  :components
  ((:module hwsssp
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tsthwsssp")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-hwsssp"))))
  (funcall (find-symbol "THWSSSP" (find-package '#:fishpack))))

;; Works
(defsystem fishpack-test-hwscsp
  :depends-on ("fishpack")
  :components
  ((:module hwscsp
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tsthwscsp")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-hwscsp"))))
  (funcall (find-symbol "THWSCSP" (find-package '#:fishpack))))

;; Works
(defsystem fishpack-test-hstcrt
  :depends-on ("fishpack")
  :components
  ((:module hstcrt
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tsthstcrt")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-hstcrt"))))
  (funcall (find-symbol "THSTCRT" (find-package '#:fishpack))))

;; Works
(defsystem fishpack-test-hstplr
  :depends-on ("fishpack")
  :components
  ((:module hstplr
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tsthstplr")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-hstplr"))))
  (funcall (find-symbol "THSTPLR" (find-package '#:fishpack))))

;; Works
(defsystem fishpack-test-hstcyl
  :depends-on ("fishpack")
  :components
  ((:module hstcyl
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tsthstcyl")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-hstcyl"))))
  (funcall (find-symbol "THSTCYL" (find-package '#:fishpack))))

;; Works
(defsystem fishpack-test-hstssp
  :depends-on ("fishpack")
  :components
  ((:module hstssp
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tsthstssp")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-hstssp"))))
  (funcall (find-symbol "THSTSSP" (find-package '#:fishpack))))

;; Works
(defsystem fishpack-test-hstcsp
  :depends-on ("fishpack")
  :components
  ((:module hstcsp
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tsthstcsp")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-hstcsp"))))
  (funcall (find-symbol "THSTCSP" (find-package '#:fishpack))))

;; Works
(defsystem fishpack-test-sepx4
  :depends-on ("fishpack")
  :components
  ((:module sepx4
	    :pathname "fishpack/ex/"
	    :default-component-class fishpack-fortran-file
	    :components
	    ((:file "tstsepx4" :depends-on ("cofx4"))
	     (:file "cofx4")))))

(defmethod perform ((op test-op) (c (eql (find-system "fishpack-test-sepx4"))))
  (funcall (find-symbol "TSEPX4" (find-package '#:fishpack))))

