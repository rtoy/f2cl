;;; -*- Mode: Lisp -*-
;;;
;;; Regression test for the f2cl-translated tst-hybrd driver from
;;; minpack.  Approach: run (minpack::thybrd) once at load time
;;; with stdin tied to hybrd-input.dat and stdout captured to
;;; tst-hybrd.actual.txt (next to this source).  Parse the
;;; SUMMARY-OF-55-CALLS table out of that output and out of the
;;; native-Fortran reference (hybrd-ref.txt, produced by `make
;;; hybrd-ref.txt` in this directory).  Then emit one RT deftest
;;; per summary row, each comparing a single (NPROB N INFO L2-NORM)
;;; tuple at a per-row relative tolerance.
;;;
;;; The summary table is fixed-format:
;;;
;;;   1SUMMARY OF  55 CALLS TO HYBRD1
;;;   <blank>
;;;    NPROB   N    NFEV  INFO  FINAL L2 NORM
;;;   <blank>
;;;      1     2     22     1   0.0000000D+00
;;;      ...
;;;
;;; Each row is one call to HYBRD1 with the problem number,
;;; dimension, function-evaluation count (read but ignored), exit
;;; flag, and final residual L2 norm.  Comparing summary rows
;;; (rather than the whole output) sidesteps two unrelated issues:
;;;
;;;   1. Cross-compiler arithmetic drift inside the iterative
;;;      solver produces last-digit differences in the per-problem
;;;      detail sections.  The summary L2 norms drift similarly,
;;;      but a relative-tolerance check accepts that and only flags
;;;      genuinely-divergent runs.
;;;
;;;   2. SBCL's ~E directive doesn't normalize after rounding
;;;      carry: (format nil "~,6E" 0.99999999999999d0) returns
;;;      "10.000000d-1" rather than "1.0000000d+0".  f2cl's
;;;      %cl-mantissa-and-exp in
;;;      src/format/fortran-format-io.lisp inherits the quirk and
;;;      prints e.g. "0.1000000D+00" (= 0.1) for a value of 1.0
;;;      reached by iterative convergence from below.  CMUCL,
;;;      clisp, and ECL >= 24.5.10 normalize correctly; ECL 21.2.1
;;;      and SBCL do not.  The minpack summary table happens not to
;;;      hit the un-normalized case, so summary-based comparison
;;;      works under SBCL even though full-output comparison would
;;;      fail by ~15 lines.
;;;
;;; The pass criterion for each row is:
;;;
;;;   * NPROB, N, INFO must match exactly.  A different INFO means
;;;     a different exit status (e.g. converged vs. iteration
;;;     limit) -- a real semantic difference worth catching.
;;;
;;;   * L2 norm: if expected is exactly zero, actual must be too;
;;;     otherwise |actual - expected| <= rel-tol * |expected|.
;;;
;;; Per-row tolerances live in *TST-HYBRD-TOLERANCES* below.  Edit
;;; that defparameter to retune.  NFEV is read off but discarded.
;;;
;;; Loaded via the "minpack/rt-tests-hybrd" ASDF system in
;;; packages/minpack.asd.  Shares minpack-tests-helpers.lisp with
;;; tst-lmdif-test.lisp.

(in-package #:minpack-tests)

(defparameter *tst-hybrd-tolerances*
  ;; Per-row relative tolerance for the L2-norm check.  Exactly 55
  ;; entries, one per call to HYBRD1.  Edit this list to retune.
  ;;
  ;; The same NPROB/N can appear multiple times -- these are 55
  ;; distinct calls to HYBRD1 from tst-hybrd.f, each with different
  ;; initial conditions chosen by tst-hybrd's main loop.
  ;;
  ;; Baseline values were chosen from the worst-case drift observed
  ;; between f2cl-translated minpack and a freshly-built gfortran 13
  ;; hybrd-ref.txt.  Most rows agree bit-exactly; row 46 (NPROB=11,
  ;; the Watson function) drifts at ~2e-3 and needs 5e-3 headroom.
  '(1.0d-4   ;  1: NPROB= 1 N= 2   converges to 0
    1.0d-4   ;  2: NPROB= 1 N= 2   converges to 0
    1.0d-4   ;  3: NPROB= 1 N= 2
    1.0d-4   ;  4: NPROB= 2 N= 4
    1.0d-4   ;  5: NPROB= 2 N= 4
    1.0d-4   ;  6: NPROB= 2 N= 4
    1.0d-4   ;  7: NPROB= 3 N= 2
    1.0d-4   ;  8: NPROB= 3 N= 2
    1.0d-4   ;  9: NPROB= 4 N= 4
    1.0d-4   ; 10: NPROB= 4 N= 4
    1.0d-4   ; 11: NPROB= 4 N= 4
    1.0d-4   ; 12: NPROB= 5 N= 3
    1.0d-4   ; 13: NPROB= 5 N= 3
    1.0d-4   ; 14: NPROB= 5 N= 3
    1.0d-4   ; 15: NPROB= 6 N= 6
    1.0d-4   ; 16: NPROB= 6 N= 6
    1.0d-4   ; 17: NPROB= 6 N= 9
    1.0d-4   ; 18: NPROB= 6 N= 9
    1.0d-4   ; 19: NPROB= 7 N= 5
    1.0d-4   ; 20: NPROB= 7 N= 5
    1.0d-4   ; 21: NPROB= 7 N= 5
    1.0d-4   ; 22: NPROB= 7 N= 6
    1.0d-4   ; 23: NPROB= 7 N= 6
    1.0d-4   ; 24: NPROB= 7 N= 6
    1.0d-4   ; 25: NPROB= 7 N= 7
    1.0d-4   ; 26: NPROB= 7 N= 7
    1.0d-4   ; 27: NPROB= 7 N= 7
    1.0d-4   ; 28: NPROB= 7 N= 8
    1.0d-4   ; 29: NPROB= 7 N= 9
    1.0d-4   ; 30: NPROB= 8 N=10
    1.0d-4   ; 31: NPROB= 8 N=10
    1.0d-4   ; 32: NPROB= 8 N=10
    1.0d-4   ; 33: NPROB= 8 N=30
    1.0d-4   ; 34: NPROB= 8 N=40
    1.0d-4   ; 35: NPROB= 9 N=10
    1.0d-4   ; 36: NPROB= 9 N=10
    1.0d-4   ; 37: NPROB= 9 N=10
    1.0d-4   ; 38: NPROB=10 N= 1
    1.0d-4   ; 39: NPROB=10 N= 1
    1.0d-4   ; 40: NPROB=10 N= 1
    1.0d-4   ; 41: NPROB=10 N=10
    1.0d-4   ; 42: NPROB=10 N=10
    1.0d-4   ; 43: NPROB=10 N=10
    1.0d-4   ; 44: NPROB=11 N=10   Watson function (sensitive)
    1.0d-4   ; 45: NPROB=11 N=10   Watson function (sensitive)
    5.0d-3   ; 46: NPROB=11 N=10   Watson function; drift ~2e-3
    1.0d-4   ; 47: NPROB=12 N=10
    1.0d-4   ; 48: NPROB=12 N=10
    1.0d-4   ; 49: NPROB=12 N=10
    1.0d-4   ; 50: NPROB=13 N=10
    1.0d-4   ; 51: NPROB=13 N=10
    1.0d-4   ; 52: NPROB=13 N=10
    1.0d-4   ; 53: NPROB=14 N=10
    1.0d-4   ; 54: NPROB=14 N=10
    1.0d-4)  ; 55: NPROB=14 N=10
  "Per-row relative tolerances for the L2-norm check in
  TST-HYBRD-NN.  Exactly 55 entries, one per HYBRD1 call.  Edit
  to retune.  Loosen a row if cross-compiler arithmetic drift on
  that problem legitimately exceeds the default; tighten it back
  if a future minpack/f2cl change brings it back into agreement.")

(defparameter *tst-hybrd-input*
  (merge-pathnames "hybrd-input.dat"
                   #.(make-pathname
                      :name nil :type nil
                      :defaults (or *compile-file-pathname* *load-pathname*)))
  "Stdin data file for tst-hybrd, resolved relative to this source.")

(defparameter *tst-hybrd-expected-path*
  (merge-pathnames "hybrd-ref.txt"
                   #.(make-pathname
                      :name nil :type nil
                      :defaults (or *compile-file-pathname* *load-pathname*)))
  "Native-Fortran reference for tst-hybrd.")

(defparameter *tst-hybrd-actual-path*
  (merge-pathnames "tst-hybrd.actual.txt"
                   #.(make-pathname
                      :name nil :type nil
                      :defaults (or *compile-file-pathname* *load-pathname*)))
  "Receives the captured output of every THYBRD invocation.  Useful
  for inspecting:
      diff packages/minpack-tests/{hybrd-ref.txt,tst-hybrd.actual.txt}
  Not checked into git; regenerated every test invocation.")

(defparameter *tst-hybrd-actual-rows* nil
  "Cache of the most recent run's parsed summary table.  Populated
  by ENSURE-TST-HYBRD-RAN; consumed by the per-row deftests.  Set
  to NIL to force a re-run.")

(defun run-tst-hybrd ()
  "Run (minpack::thybrd), capture output to *TST-HYBRD-ACTUAL-PATH*,
  return the captured string."
  (let ((thybrd (find-symbol "THYBRD" :minpack)))
    (unless (and thybrd (fboundp thybrd))
      (error "MINPACK::THYBRD is not defined; was minpack/test-hybrd loaded?"))
    (let ((captured (call-with-fortran-stdio *tst-hybrd-input*
                                             (lambda () (funcall thybrd)))))
      (capture-to-file captured *tst-hybrd-actual-path*)
      captured)))

(defun tst-hybrd-parse-row (row)
  "Project a raw 5-tuple (NPROB N NFEV INFO L2) -- the field layout
  of tst-hybrd's summary -- onto the (NPROB N INFO L2) form used by
  the comparator.  NFEV is dropped."
  (destructuring-bind (nprob n nfev info l2) row
    (declare (ignore nfev))
    (list nprob n info (coerce l2 'double-float))))

(defun ensure-tst-hybrd-ran ()
  "Ensure THYBRD has run and *TST-HYBRD-ACTUAL-ROWS* is populated."
  (unless *tst-hybrd-actual-rows*
    (setf *tst-hybrd-actual-rows*
          (mapcar #'tst-hybrd-parse-row
                  (parse-summary-table (run-tst-hybrd) 5))))
  *tst-hybrd-actual-rows*)

(defun tst-hybrd-row-pass-p (row-index e-nprob e-n e-info e-l2 rel-tol)
  "Pull row ROW-INDEX (1-based) from the cached actual results and
  check it against the given expected values.  Used by the
  generated TST-HYBRD-NN deftests."
  (ensure-tst-hybrd-ran)
  (let ((row (nth (1- row-index) *tst-hybrd-actual-rows*)))
    (cond
      ((null row)
       (format t "~&FAIL row ~D: actual summary has no such row~%" row-index)
       nil)
      (t
       (destructuring-bind (a-nprob a-n a-info a-l2) row
         (let ((ok t))
           (unless (and (= a-nprob e-nprob) (= a-n e-n))
             (format t "~&FAIL row ~D: NPROB/N differ -- actual (~D ~D) vs expected (~D ~D)~%"
                     row-index a-nprob a-n e-nprob e-n)
             (setf ok nil))
           (unless (= a-info e-info)
             (format t "~&FAIL row ~D (NPROB=~D N=~D): INFO ~D vs expected ~D~%"
                     row-index e-nprob e-n a-info e-info)
             (setf ok nil))
           (unless (close-enough-p a-l2 e-l2 rel-tol)
             (let* ((diff (abs (- a-l2 e-l2)))
                    (mag  (abs e-l2))
                    (rel  (if (zerop mag) diff (/ diff mag))))
               (format t "~&FAIL row ~D (NPROB=~D N=~D): L2 norm ~,7E vs ~,7E (rel ~,3E, tol ~,3E)~%"
                       row-index e-nprob e-n a-l2 e-l2 rel rel-tol))
             (setf ok nil))
           ok))))))

;;; ------------------------------------------------------------
;;; Deftest generation: 55 deftests at load time, TST-HYBRD-01..
;;; TST-HYBRD-55.

(defun %tst-hybrd-emit-deftests ()
  (let ((expected-rows (mapcar #'tst-hybrd-parse-row
                               (parse-summary-table
                                (slurp-file *tst-hybrd-expected-path*)
                                5)))
        (tolerances *tst-hybrd-tolerances*))
    (unless (= (length expected-rows) 55)
      (error "tst-hybrd expected reference at ~A has ~D summary rows; expected 55."
             *tst-hybrd-expected-path* (length expected-rows)))
    (unless (= (length tolerances) 55)
      (error "*TST-HYBRD-TOLERANCES* has ~D entries; expected 55."
             (length tolerances)))
    (loop for row in expected-rows
          for tol in tolerances
          for i from 1
          do (destructuring-bind (nprob n info l2) row
               (let ((test-name (intern (format nil "TST-HYBRD-~2,'0D" i)
                                        :minpack-tests)))
                 (eval `(rt:deftest ,test-name
                            (tst-hybrd-row-pass-p ,i ,nprob ,n ,info ,l2 ,tol)
                          t)))))))

(%tst-hybrd-emit-deftests)
