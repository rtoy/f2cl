(defpackage :f2cl-asdf
  (:use :cl :asdf :uiop :asdf/component)
  (:export #:fortran-file #:f2cl-system #:f2cl-options))

(in-package :f2cl-asdf)

;; Source files for f2cl itself.
(defclass cl-source-file.l (cl-source-file)
  ((type :initform "l"))
  (:documentation "Component class for a Common Lisp source file using type \"l\""))

(setf (find-class 'asdf::cl-source-file.l) (find-class 'cl-source-file.l))

(defclass f2cl-system (system)
  ((f2cl-options
    :initarg :f2cl-options :type list :reader f2cl-options)
   ;; Note that the below only works on ASDF 3.3 and later:
   ;; a bug in the reset-system protocol prevents usefully overriding
   ;; the :initform (or :default-initargs) of slots defined by class SYSTEM.
   ;; Therefore, until everyone uses ASDF 3.3 (say in 2019?),
   ;; all f2cl-system's must explicitly use:
   ;;   :default-component-class fortran-file
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
