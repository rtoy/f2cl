;;; -*- Mode: lisp -*-
;;;
;;; ASDF definitions for the rt-based minpack regression tests.
;;; Two systems, one per driver:
;;;
;;;   minpack-rt-tests/hybrd   -- runs tst-hybrd, builds 55 deftests
;;;   minpack-rt-tests/lmdif   -- runs tst-lmdif, builds 53 deftests
;;;
;;; The two systems CANNOT be loaded in the same Lisp image.  The
;;; underlying tst-hybrd.f and tst-lmdif.f both define top-level
;;; subroutines named FCN and INITPT (with different signatures),
;;; so loading the second clobbers the first.  This is the same
;;; constraint that prompted the comment "This test defines things
;;; that are incompatible with tst-lmdif and tst-lmder" in
;;; packages/minpack.asd at minpack/test-hybrd.  To run both,
;;; restart Lisp between them.
;;;
;;; Loading either system registers RT deftests; running them is
;;; left to the caller's (rt:do-tests) (or asdf:test-system).
;;;
;;; Both systems depend on:
;;;   f2cl                       -- the translator (for f2cl-system)
;;;   minpack                    -- the f2cl-translated MINPACK library
;;;   rt                         -- the RT regression-test framework
;;;   minpack/test-<driver>      -- the translated test driver
;;;
;;; The mk-defsystem mirrors (minpack-rt-tests-hybrd.system,
;;; minpack-rt-tests-lmdif.system) name themselves
;;; "minpack-rt-tests-hybrd" / "...-lmdif" (no slash) because
;;; mk-defsystem's central-registry lookup is by exact filename.
;;; The ASDF slash names and the mk-defsystem dash names refer to
;;; the same things.

;; Need f2cl to be loaded before we can even read this file, since
;; both system dependencies pull in f2cl-system as their :class.
(load-system "f2cl")

;; Primary system.  ASDF's slash-name routing requires this to
;; exist: a lookup of "minpack-rt-tests/hybrd" first looks for
;; "minpack-rt-tests" to confirm the .asd file owns that namespace.
;; The primary system itself isn't meant to be loaded -- loading
;; either /hybrd or /lmdif is what registers RT deftests.  Trying
;; to load this directly errors with a hint.
(defsystem "minpack-rt-tests"
  :description "Umbrella for minpack-rt-tests/hybrd and minpack-rt-tests/lmdif"
  :perform (load-op (o c)
             (declare (ignore o c))
             (error "Load minpack-rt-tests/hybrd or minpack-rt-tests/lmdif, ~
                     not the bare \"minpack-rt-tests\" system. ~
                     The two driver suites cannot coexist in one Lisp image ~
                     because tst-hybrd.f and tst-lmdif.f both define FCN and ~
                     INITPT with incompatible signatures.")))

(defsystem "minpack-rt-tests/hybrd"
  :description "rt-based regression tests for f2cl-translated tst-hybrd from MINPACK"
  :depends-on ("minpack" "minpack/test-hybrd" "rt")
  :components
  ((:module "minpack"
            :components
            ((:cl-source-file "minpack-tests-package")
             (:cl-source-file "minpack-tests-helpers"
                              :depends-on ("minpack-tests-package"))
             (:cl-source-file "tst-hybrd-test"
                              :depends-on ("minpack-tests-helpers")))))
  :perform (test-op (o c)
             (or (symbol-call :rt :do-tests)
                 (error "TEST-OP failed for minpack-rt-tests/hybrd"))))

(defsystem "minpack-rt-tests/lmdif"
  :description "rt-based regression tests for f2cl-translated tst-lmdif from MINPACK"
  :depends-on ("minpack" "minpack/test-lmdif" "rt")
  :components
  ((:module "minpack"
            :components
            ((:cl-source-file "minpack-tests-package")
             (:cl-source-file "minpack-tests-helpers"
                              :depends-on ("minpack-tests-package"))
             (:cl-source-file "tst-lmdif-test"
                              :depends-on ("minpack-tests-helpers")))))
  :perform (test-op (o c)
             (or (symbol-call :rt :do-tests)
                 (error "TEST-OP failed for minpack-rt-tests/lmdif"))))
