;;; -*- Mode: lisp -*-

(defclass cl-source-file.l (cl-source-file)
  ((type :initform "l"))
  (:documentation "Component class for a Common Lisp source file using type \"l\""))

(defsystem "f2cl"
  :default-component-class cl-source-file.l
  :components
  ((:file "f2cl-asdf")
   (:file "f2cl0")
   (:file "f2cl1" :depends-on ("f2cl0"))
   (:file "f2cl2" :depends-on ("f2cl1"))
   (:file "f2cl3" :depends-on ("f2cl2"))
   (:file "f2cl4" :depends-on ("f2cl3"))
   (:file "f2cl5" :depends-on ("f2cl4"))
   (:file "f2cl6" :depends-on ("f2cl5"))
   (:file "f2cl7" :depends-on ("f2cl6"))
   (:file "f2cl8" :depends-on ("f2cl7"))
   (:file "macros" :depends-on ("f2cl8"))))
