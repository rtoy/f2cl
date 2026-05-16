;;; -*- Mode: Lisp -*-
;;;
;;; Regression test for the f2cl-translated tst-lmdif driver from
;;; minpack.  Same approach as tst-hybrd-test.lisp: run
;;; (minpack::tlmdif) once at load time with stdin tied to
;;; lmdif-input.dat and stdout captured to tst-lmdif.actual.txt
;;; (next to this source).  Parse the SUMMARY-OF-53-CALLS table out
;;; of that output and out of the native-Fortran reference
;;; (lmdif-ref.txt, produced by `make lmdif-ref.txt` in this
;;; directory).  Then emit one RT deftest per summary row.
;;;
;;; The lmdif summary table is fixed-format, with two more columns
;;; than hybrd's (M and NJEV):
;;;
;;;   1SUMMARY OF  53 CALLS TO LMDIF1
;;;   <blank>
;;;    NPROB   N    M   NFEV  NJEV  INFO  FINAL L2 NORM
;;;   <blank>
;;;      1    5   10     4     3     3   0.2236068D+01
;;;      ...
;;;
;;; Each row is one call to LMDIF1 with the problem number, the
;;; variable-vector length N, the equation count M, function and
;;; Jacobian evaluation counts (both read but ignored), exit flag,
;;; and final residual L2 norm.  See tst-hybrd-test.lisp's header
;;; for the rationale behind summary-table comparison and the
;;; pass criterion.
;;;
;;; The pass criterion is:
;;;
;;;   * NPROB, N, M, INFO must match exactly.  M is checked here
;;;     (unlike tst-hybrd which has no M field) because it identifies
;;;     the problem instance -- the same NPROB can be exercised at
;;;     several (N, M) sizes from the same input.
;;;
;;;   * L2 norm: if expected is exactly zero, actual must be too;
;;;     otherwise |actual - expected| <= rel-tol * |expected|.
;;;
;;; Per-row tolerances live in *TST-LMDIF-TOLERANCES* below.  NFEV
;;; and NJEV are read off but discarded.
;;;
;;; CANNOT be loaded in the same Lisp image as tst-hybrd-test.lisp:
;;; both drivers define FCN and INITPT with different signatures.
;;; To run both test suites, restart Lisp between them.
;;;
;;; Loaded via the "minpack-rt-tests/lmdif" ASDF system.

(in-package #:minpack-tests)

(defparameter *tst-lmdif-tolerances*
  ;; Per-row relative tolerance for the L2-norm check.  Exactly 53
  ;; entries, one per call to LMDIF1.  Edit this list to retune.
  ;;
  ;; The same NPROB can appear at multiple (N, M) sizes -- these
  ;; are 53 distinct calls to LMDIF1 from tst-lmdif.f, each with
  ;; different problem dimensions and/or initial conditions.
  ;;
  ;; Baseline values reflect drift observed between f2cl-translated
  ;; minpack (under clisp) and a freshly-built gfortran 13
  ;; lmdif-ref.txt.  Most rows agree bit-exactly.  Rows 10, 11, 12,
  ;; and 36 have L2-norm values at or below double-float epsilon
  ;; (~2e-16), so their relative drift across implementations is
  ;; large in ratio terms even though the absolute values are
  ;; indistinguishable from zero in any practical sense.  Those
  ;; rows are given very loose relative tolerances (essentially "do
  ;; not regression-check the magnitude of this near-zero noise").
  ;; If a row's L2 norm shifts meaningfully (across orders of
  ;; magnitude or away from sub-epsilon), the tight default catches
  ;; it.
  '(1.0d-4   ;  1: NPROB= 1 N= 5 M=10
    1.0d-4   ;  2: NPROB= 1 N= 5 M=50
    1.0d-4   ;  3: NPROB= 2 N= 5 M=10
    1.0d-4   ;  4: NPROB= 2 N= 5 M=50
    1.0d-4   ;  5: NPROB= 3 N= 5 M=10
    1.0d-4   ;  6: NPROB= 3 N= 5 M=50
    1.0d-4   ;  7: NPROB= 4 N= 2 M= 2   converges to 0
    1.0d-4   ;  8: NPROB= 4 N= 2 M= 2
    1.0d-4   ;  9: NPROB= 4 N= 2 M= 2   converges to 0
    1.0d+0   ; 10: NPROB= 5 N= 3 M= 3   sub-epsilon (7e-16 vs 4e-16)
    1.0d+2   ; 11: NPROB= 5 N= 3 M= 3   sub-epsilon (1e-18 vs 8e-18)
    1.0d+0   ; 12: NPROB= 5 N= 3 M= 3   sub-epsilon (4e-22 vs 2e-22)
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
    1.0d-4   ; 26: NPROB=10 N= 3 M=16
    1.0d-4   ; 27: NPROB=11 N= 6 M=31
    1.0d-4   ; 28: NPROB=11 N= 6 M=31
    1.0d-4   ; 29: NPROB=11 N= 6 M=31
    1.0d-4   ; 30: NPROB=11 N= 9 M=31
    1.0d-4   ; 31: NPROB=11 N= 9 M=31
    1.0d-4   ; 32: NPROB=11 N= 9 M=31
    1.0d-4   ; 33: NPROB=11 N=12 M=31
    1.0d-4   ; 34: NPROB=11 N=12 M=31
    1.0d-4   ; 35: NPROB=11 N=12 M=31
    1.0d+0   ; 36: NPROB=12 N= 3 M=10   sub-epsilon (2e-16 vs 1.5e-16)
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
  TST-LMDIF-NN.  Exactly 53 entries, one per LMDIF1 call.  Edit to
  retune.  Rows with values below double-float epsilon have
  intentionally loose tolerances -- the practical-zero noise level
  has no meaningful regression-test value.")

(defparameter *tst-lmdif-input*
  (merge-pathnames "lmdif-input.dat"
                   #.(make-pathname
                      :name nil :type nil
                      :defaults (or *compile-file-pathname* *load-pathname*)))
  "Stdin data file for tst-lmdif, resolved relative to this source.")

(defparameter *tst-lmdif-expected-path*
  (merge-pathnames "lmdif-ref.txt"
                   #.(make-pathname
                      :name nil :type nil
                      :defaults (or *compile-file-pathname* *load-pathname*)))
  "Native-Fortran reference for tst-lmdif.")

(defparameter *tst-lmdif-actual-path*
  (merge-pathnames "tst-lmdif.actual.txt"
                   #.(make-pathname
                      :name nil :type nil
                      :defaults (or *compile-file-pathname* *load-pathname*)))
  "Receives the captured output of every TLMDIF invocation.  Useful
  for inspecting:
      diff packages/minpack/{lmdif-ref.txt,tst-lmdif.actual.txt}
  Not checked into git; regenerated every test invocation.")

(defparameter *tst-lmdif-actual-rows* nil
  "Cache of the most recent run's parsed summary table.")

(defun run-tst-lmdif ()
  "Run (minpack::tlmdif), capture output to *TST-LMDIF-ACTUAL-PATH*,
  return the captured string."
  (let ((tlmdif (find-symbol "TLMDIF" :minpack)))
    (unless (and tlmdif (fboundp tlmdif))
      (error "MINPACK::TLMDIF is not defined; was minpack/test-lmdif loaded?"))
    (let ((captured (call-with-fortran-stdio *tst-lmdif-input*
                                             (lambda () (funcall tlmdif)))))
      (capture-to-file captured *tst-lmdif-actual-path*)
      captured)))

(defun tst-lmdif-parse-row (row)
  "Project a raw 7-tuple (NPROB N M NFEV NJEV INFO L2) -- the field
  layout of tst-lmdif's summary -- onto the (NPROB N M INFO L2)
  form used by the comparator.  NFEV and NJEV are dropped."
  (destructuring-bind (nprob n m nfev njev info l2) row
    (declare (ignore nfev njev))
    (list nprob n m info (coerce l2 'double-float))))

(defun ensure-tst-lmdif-ran ()
  "Ensure TLMDIF has run and *TST-LMDIF-ACTUAL-ROWS* is populated."
  (unless *tst-lmdif-actual-rows*
    (setf *tst-lmdif-actual-rows*
          (mapcar #'tst-lmdif-parse-row
                  (parse-summary-table (run-tst-lmdif) 7))))
  *tst-lmdif-actual-rows*)

(defun tst-lmdif-row-pass-p (row-index e-nprob e-n e-m e-info e-l2 rel-tol)
  "Pull row ROW-INDEX (1-based) from the cached actual results and
  check it against the given expected values.  Used by the
  generated TST-LMDIF-NN deftests."
  (ensure-tst-lmdif-ran)
  (let ((row (nth (1- row-index) *tst-lmdif-actual-rows*)))
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
;;; Deftest generation: 53 deftests at load time, TST-LMDIF-01..
;;; TST-LMDIF-53.

(defun %tst-lmdif-emit-deftests ()
  (let ((expected-rows (mapcar #'tst-lmdif-parse-row
                               (parse-summary-table
                                (slurp-file *tst-lmdif-expected-path*)
                                7)))
        (tolerances *tst-lmdif-tolerances*))
    (unless (= (length expected-rows) 53)
      (error "tst-lmdif expected reference at ~A has ~D summary rows; expected 53."
             *tst-lmdif-expected-path* (length expected-rows)))
    (unless (= (length tolerances) 53)
      (error "*TST-LMDIF-TOLERANCES* has ~D entries; expected 53."
             (length tolerances)))
    (loop for row in expected-rows
          for tol in tolerances
          for i from 1
          do (destructuring-bind (nprob n m info l2) row
               (let ((test-name (intern (format nil "TST-LMDIF-~2,'0D" i)
                                        :minpack-tests)))
                 (eval `(rt:deftest ,test-name
                            (tst-lmdif-row-pass-p ,i ,nprob ,n ,m ,info ,l2 ,tol)
                          t)))))))

(%tst-lmdif-emit-deftests)
