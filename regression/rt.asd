;;; -*- Mode: lisp -*-
;;;
;;; Vendored RT (regression-test) from ansi-test, packaged as a
;;; minimal ASDF system so any test system in this tree can do
;;; :depends-on ("rt").  The implementation files live next to this
;;; .asd; they keep their .lsp extension because that's how they
;;; ship in ansi-test.

(defsystem "rt"
  :description "Vendored ansi-test RT regression tester (M.I.T. 1990)"
  :serial t
  :components
  ((:file "rt-package" :type "lsp")
   (:file "rt"         :type "lsp")))
