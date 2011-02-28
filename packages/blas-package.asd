;;; -*- Mode: lisp -*-
;;;

(asdf:defsystem blas-package
  :components
  ((:module package
	    :pathname "blas"
	    :components
	    ((:file "blas-package")))))
