;;; -*- Mode: lisp -*-
;;;
;;; Vendored RT (regression-test) from ansi-test, packaged as a
;;; minimal ASDF system under the name "f2cl-rt".  Any test system in
;;; this tree depends on "f2cl-rt" rather than the bare "rt" so the
;;; lookup never collides with the older Quicklisp-shipped
;;; rt-20101006-git, whose rt.asd declares an rt-package component
;;; but doesn't include the corresponding source file.
;;;
;;; The implementation files live next to this .asd; they keep
;;; their .lsp extension because that's how they ship in ansi-test.
;;; In-Lisp the package name remains REGRESSION-TEST (nicknamed
;;; RT), unchanged from upstream.

(defsystem "f2cl-rt"
  :description "Vendored ansi-test RT regression tester (M.I.T. 1990)"
  :serial t
  :components
  ((:file "rt-package" :type "lsp")
   (:file "rt"         :type "lsp")))
