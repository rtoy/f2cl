(defpackage :f2cl-asdf
  (:use :cl :asdf :uiop :asdf/component)
  (:export #:fortran-file #:f2cl-system #:f2cl-options))

(in-package :f2cl-asdf)

(defclass f2cl-system (system)
  ((f2cl-options
    :initarg :f2cl-options :type list :reader f2cl-options)
   (asdf/component:default-component-class :initform 'fortran-file)))

(defclass fortran-file (cl-source-file)
  ((f2cl-options
    :initarg :f2cl-options :initform nil :type list :reader f2cl-options))
  (:default-initargs :type "f"))

(defmethod perform ((o compile-op) (c fortran-file))
  (let ((file (component-pathname c)))
    (apply 'symbol-call :f2cl :f2cl-compile file
           :output-file (first (output-files o c))
           (append (f2cl-options c) (f2cl-options (component-system c))))))

(defmethod perform ((o load-op) (c fortran-file))
  (load (first (input-files o c))))
