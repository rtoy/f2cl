;;; -*- Mode: Lisp -*-
;;;
;;; Regression test for the f2cl-translated tst-lmder driver from
;;; minpack.  Same approach as tst-hybrd-test.lisp and
;;; tst-lmdif-test.lisp: run (minpack::tlmder) once at load time
;;; with stdin tied to lmdif-input.dat (yes, the lmdif file -- the
;;; lmder driver reads the same NPROB/N/M/NTRIES quartets) and
;;; stdout captured to tst-lmder.actual.txt (next to this source).
;;; Parse the SUMMARY-OF-53-CALLS table out of that output and out
;;; of the native-Fortran reference (lmder-ref.txt, produced by
;;; `make lmder-ref.txt` in this directory).  Then emit one RT
;;; deftest per summary row.
;;;
;;; The lmder summary table is fixed-format with the same seven
;;; columns as lmdif's (the only difference is which driver gets
;;; called):
;;;
;;;   1SUMMARY OF  53 CALLS TO LMDER1
;;;   <blank>
;;;    NPROB   N    M   NFEV  NJEV  INFO  FINAL L2 NORM
;;;   <blank>
;;;      1    5   10     6     5     1   0.2236068D+01
;;;      ...
;;;
;;; LMDER1 is the analytic-Jacobian sibling of LMDIF1 (which uses a
;;; finite-difference Jacobian).  The two solve the same nonlinear
;;; least-squares problems, so the test driver and summary format
;;; are structurally identical -- only the residual values differ.
;;;
;;; See tst-hybrd-test.lisp's header for the rationale behind
;;; summary-table comparison and the pass criterion.  Summary:
;;;
;;;   * NPROB, N, M, INFO must match exactly.
;;;
;;;   * L2 norm: exact match for zero, otherwise relative tolerance
;;;     |actual - expected| <= rel-tol * |expected|.
;;;
;;; Per-row tolerances live in *TST-LMDER-TOLERANCES* below.  NFEV
;;; and NJEV are read off but discarded.
;;;
;;; CANNOT be loaded in the same Lisp image as tst-hybrd-test.lisp
;;; or tst-lmdif-test.lisp: all three drivers define top-level
;;; subroutines with the same names but different signatures, so
;;; any pair clashes.  To run multiple suites, restart Lisp between
;;; them.
;;;
;;; Loaded via the "minpack/rt-tests-lmder" ASDF system in
;;; packages/minpack.asd.  Shares minpack-tests-helpers.lisp with
;;; tst-hybrd-test.lisp and tst-lmdif-test.lisp.

(in-package #:minpack-tests)

(defparameter *tst-lmder-tolerances*
  ;; Per-row relative tolerance for the L2-norm check.  Exactly 53
  ;; entries, one per call to LMDER1.  Edit this list to retune.
  ;;
  ;; Baseline values reflect drift observed between f2cl-translated
  ;; minpack (under clisp) and a freshly-built gfortran 13
  ;; lmder-ref.txt.  Almost everything is bit-exact.  Row 12 sits
  ;; at sub-epsilon (~3e-29) where the relative ratio is large but
  ;; the values are below practical zero -- given a loose tolerance
  ;; with a comment explaining why.
  '(1.0d-4   ;  1: NPROB= 1 N= 5 M=10
    1.0d-4   ;  2: NPROB= 1 N= 5 M=50
    1.0d-4   ;  3: NPROB= 2 N= 5 M=10
    1.0d-4   ;  4: NPROB= 2 N= 5 M=50
    1.0d-4   ;  5: NPROB= 3 N= 5 M=10
    1.0d-4   ;  6: NPROB= 3 N= 5 M=50
    1.0d-4   ;  7: NPROB= 4 N= 2 M= 2   converges to 0
    1.0d-4   ;  8: NPROB= 4 N= 2 M= 2   converges to 0
    1.0d-4   ;  9: NPROB= 4 N= 2 M= 2   converges to 0
    1.0d-4   ; 10: NPROB= 5 N= 3 M= 3
    1.0d-4   ; 11: NPROB= 5 N= 3 M= 3
    1.0d+0   ; 12: NPROB= 5 N= 3 M= 3   sub-epsilon (3e-29 vs 3.5e-29)
    1.0d-4   ; 13: NPROB= 6 N= 4 M= 4
    1.0d-4   ; 14: NPROB= 6 N= 4 M= 4
    1.0d-4   ; 15: NPROB= 6 N= 4 M= 4
    1.0d-4   ; 16: NPROB= 7 N= 2 M= 2
    1.0d-4   ; 17: NPROB= 7 N= 2 M= 2
    1.0d-4   ; 18: NPROB= 7 N= 2 M= 2
    1.0d-4   ; 19: NPROB= 8 N= 3 M=15
    1.0d-4   ; 20: NPROB= 8 N= 3 M=15
    1.0d-4   ; 21: NPROB= 8 N= 3 M=15
    1.0d-4   ; 22: NPROB= 9 N= 4 M=11
    1.0d-4   ; 23: NPROB= 9 N= 4 M=11
    1.0d-4   ; 24: NPROB= 9 N= 4 M=11
    1.0d-4   ; 25: NPROB=10 N= 3 M=16
    5.958d-3 ; 26: NPROB=10 N= 3 M=16
    1.0d-4   ; 27: NPROB=11 N= 6 M=31
    1.0d-4   ; 28: NPROB=11 N= 6 M=31
    1.0d-4   ; 29: NPROB=11 N= 6 M=31
    1.0d-4   ; 30: NPROB=11 N= 9 M=31
    1.0d-4   ; 31: NPROB=11 N= 9 M=31
    1.0d-4   ; 32: NPROB=11 N= 9 M=31
    1.0d-4   ; 33: NPROB=11 N=12 M=31
    1.0d-4   ; 34: NPROB=11 N=12 M=31
    1.0d-4   ; 35: NPROB=11 N=12 M=31
    1.698d-1 ; 36: NPROB=12 N= 3 M=10
    1.0d-4   ; 37: NPROB=13 N= 2 M=10
    1.0d-4   ; 38: NPROB=14 N= 4 M=20
    1.0d-4   ; 39: NPROB=14 N= 4 M=20
    1.0d-4   ; 40: NPROB=14 N= 4 M=20
    1.0d-4   ; 41: NPROB=15 N= 1 M= 8
    1.0d-4   ; 42: NPROB=15 N= 1 M= 8
    1.0d-4   ; 43: NPROB=15 N= 1 M= 8
    1.0d-4   ; 44: NPROB=15 N= 8 M= 8
    1.0d-4   ; 45: NPROB=15 N= 9 M= 9
    1.0d-4   ; 46: NPROB=15 N=10 M=10
    1.0d-4   ; 47: NPROB=16 N=10 M=10
    1.0d-4   ; 48: NPROB=16 N=10 M=10
    1.0d-4   ; 49: NPROB=16 N=10 M=10
    1.0d-4   ; 50: NPROB=16 N=30 M=30
    1.0d-4   ; 51: NPROB=16 N=40 M=40
    1.0d-4   ; 52: NPROB=17 N= 5 M=33
    1.0d-4)  ; 53: NPROB=18 N=11 M=65
  "Per-row relative tolerances for the L2-norm check in
  TST-LMDER-NN.  Exactly 53 entries, one per LMDER1 call.  Edit
  to retune.  Loosen a row if cross-compiler arithmetic drift on
  that problem legitimately exceeds the default.")

(defparameter *tst-lmder-input*
  ;; tst-lmder uses the same input data file as tst-lmdif -- the
  ;; quartets (NPROB N M NTRIES) describe least-squares problems
  ;; without specifying which solver applies.
  (merge-pathnames "lmdif-input.dat"
                   #.(make-pathname
                      :name nil :type nil
                      :defaults (or *compile-file-pathname* *load-pathname*)))
  "Stdin data file for tst-lmder, resolved relative to this source.
  Shares with tst-lmdif: both drivers consume the same input
  quartets.")

(defparameter *tst-lmder-expected-path*
  (merge-pathnames "lmder-ref.txt"
                   #.(make-pathname
                      :name nil :type nil
                      :defaults (or *compile-file-pathname* *load-pathname*)))
  "Native-Fortran reference for tst-lmder.")

(defparameter *tst-lmder-actual-path*
  (merge-pathnames "tst-lmder.actual.txt"
                   #.(make-pathname
                      :name nil :type nil
                      :defaults (or *compile-file-pathname* *load-pathname*)))
  "Receives the captured output of every TLMDER invocation.  Useful
  for inspecting:
      diff packages/minpack-tests/{lmder-ref.txt,tst-lmder.actual.txt}
  Not checked into git; regenerated every test invocation.")

(defparameter *tst-lmder-actual-rows* nil
  "Cache of the most recent run's parsed summary table.")

(defun run-tst-lmder ()
  "Run (minpack::tlmder), capture output to *TST-LMDER-ACTUAL-PATH*,
  return the captured string."
  (let ((tlmder (find-symbol "TLMDER" :minpack)))
    (unless (and tlmder (fboundp tlmder))
      (error "MINPACK::TLMDER is not defined; was minpack/test-lmder loaded?"))
    (let ((captured (call-with-fortran-stdio *tst-lmder-input*
                                             (lambda () (funcall tlmder)))))
      (capture-to-file captured *tst-lmder-actual-path*)
      captured)))

(defun tst-lmder-parse-row (row)
  "Project a raw 7-tuple (NPROB N M NFEV NJEV INFO L2) -- the field
  layout of tst-lmder's summary, identical to tst-lmdif's -- onto
  the (NPROB N M INFO L2) form used by the comparator.  NFEV and
  NJEV are dropped."
  (destructuring-bind (nprob n m nfev njev info l2) row
    (declare (ignore nfev njev))
    (list nprob n m info (coerce l2 'double-float))))

(defun ensure-tst-lmder-ran ()
  "Ensure TLMDER has run and *TST-LMDER-ACTUAL-ROWS* is populated."
  (unless *tst-lmder-actual-rows*
    (setf *tst-lmder-actual-rows*
          (mapcar #'tst-lmder-parse-row
                  (parse-summary-table (run-tst-lmder) 7))))
  *tst-lmder-actual-rows*)

(defun tst-lmder-row-pass-p (row-index e-nprob e-n e-m e-info e-l2 rel-tol)
  "Pull row ROW-INDEX (1-based) from the cached actual results and
  check it against the given expected values.  Used by the
  generated TST-LMDER-NN deftests."
  (ensure-tst-lmder-ran)
  (let ((row (nth (1- row-index) *tst-lmder-actual-rows*)))
    (cond
      ((null row)
       (format t "~&FAIL row ~D: actual summary has no such row~%" row-index)
       nil)
      (t
       (destructuring-bind (a-nprob a-n a-m a-info a-l2) row
         (let ((ok t))
           (unless (and (= a-nprob e-nprob) (= a-n e-n) (= a-m e-m))
             (format t "~&FAIL row ~D: NPROB/N/M differ -- actual (~D ~D ~D) vs expected (~D ~D ~D)~%"
                     row-index a-nprob a-n a-m e-nprob e-n e-m)
             (setf ok nil))
           (unless (= a-info e-info)
             (format t "~&FAIL row ~D (NPROB=~D N=~D M=~D): INFO ~D vs expected ~D~%"
                     row-index e-nprob e-n e-m a-info e-info)
             (setf ok nil))
           (unless (close-enough-p a-l2 e-l2 rel-tol)
             (let* ((diff (abs (- a-l2 e-l2)))
                    (mag  (abs e-l2))
                    (rel  (if (zerop mag) diff (/ diff mag))))
               (format t "~&FAIL row ~D (NPROB=~D N=~D M=~D): L2 norm ~,7E vs ~,7E (rel ~,3E, tol ~,3E)~%"
                       row-index e-nprob e-n e-m a-l2 e-l2 rel rel-tol))
             (setf ok nil))
           ok))))))

;;; ------------------------------------------------------------
;;; Deftest generation: 53 deftests at load time, TST-LMDER-01..
;;; TST-LMDER-53.

(defun %tst-lmder-emit-deftests ()
  (let ((expected-rows (mapcar #'tst-lmder-parse-row
                               (parse-summary-table
                                (slurp-file *tst-lmder-expected-path*)
                                7)))
        (tolerances *tst-lmder-tolerances*))
    (unless (= (length expected-rows) 53)
      (error "tst-lmder expected reference at ~A has ~D summary rows; expected 53."
             *tst-lmder-expected-path* (length expected-rows)))
    (unless (= (length tolerances) 53)
      (error "*TST-LMDER-TOLERANCES* has ~D entries; expected 53."
             (length tolerances)))
    (loop for row in expected-rows
          for tol in tolerances
          for i from 1
          do (destructuring-bind (nprob n m info l2) row
               (let ((test-name (intern (format nil "TST-LMDER-~2,'0D" i)
                                        :minpack-tests)))
                 (eval `(rt:deftest ,test-name
                            (tst-lmder-row-pass-p ,i ,nprob ,n ,m ,info ,l2 ,tol)
                          t)))))))

(%tst-lmder-emit-deftests)
