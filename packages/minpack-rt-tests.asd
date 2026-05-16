;;; -*- Mode: lisp -*-
;;;
;;; ASDF definition for the rt-based minpack regression tests.
;;;
;;; Mirrors the "quadpack/tests" pattern in packages/quadpack.asd:
;;; loading this system registers an rt:deftest with RT; running it
;;; is left to the caller's (rt:do-tests) (or via asdf:test-system).
;;;
;;; Distinct from anything in packages/minpack.asd so it can be
;;; added without modifying the existing minpack system definitions.
;;; Lives in its own .asd file (rather than tacked onto minpack.asd)
;;; so ASDF's central-registry can find it as "minpack-rt-tests".
;;;
;;; Named "minpack-rt-tests" rather than "minpack-tests" because the
;;; matching mk-defsystem in packages/minpack-rt-tests.system needs
;;; to avoid a name collision with the existing (mk:defsystem
;;; minpack-tests ...) in packages/minpack.system, which is a
;;; different thing entirely (it drives tst-lmdif / tst-lmder via
;;; (minpack::run-minpack-tests) writing to .txt files).  Using the
;;; same name in both worlds keeps the user-facing surface uniform.
;;;
;;; Depends on:
;;;   f2cl                   -- the translator (needed for f2cl-system)
;;;   minpack                -- the f2cl-translated minpack library
;;;   minpack/test-hybrd     -- the translated tst-hybrd driver
;;;   rt                     -- the RT regression-test framework

;; Need f2cl to be loaded before we can even read this file, since
;; the dependency on minpack pulls in f2cl-system as its :class.
(load-system "f2cl")

(defsystem "minpack-rt-tests"
  :description "rt-based regression tests for f2cl-translated MINPACK"
  :depends-on ("minpack" "minpack/test-hybrd" "rt")
  :components
  ((:module "minpack"
            :components
            ((:cl-source-file "minpack-tests-package")
             (:cl-source-file "tst-hybrd-test"
                              :depends-on ("minpack-tests-package")))))
  :perform (test-op (o c)
             (or (symbol-call :rt :do-tests)
                 (error "TEST-OP failed for minpack-rt-tests"))))
