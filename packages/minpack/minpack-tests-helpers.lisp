;;; -*- Mode: Lisp -*-
;;;
;;; Shared infrastructure for the f2cl-minpack regression tests.
;;; Each driver-specific test file (tst-hybrd-test.lisp,
;;; tst-lmdif-test.lisp, ...) uses the parsing primitives and the
;;; LUN-5/LUN-6 stdin/stdout wiring from here.
;;;
;;; Comparison criterion (CLOSE-ENOUGH-P): exact match when EXPECTED
;;; is zero, otherwise relative tolerance |a - e| <= rel-tol * |e|.
;;; Pure relative for nonzero, exact-match for zero.
;;;
;;; Summary tables follow the same general pattern across drivers:
;;;
;;;   1SUMMARY OF  NN CALLS TO DRIVER
;;;   <blank>
;;;    NPROB   N  ...  FINAL L2 NORM
;;;   <blank>
;;;     <fixed-format rows>
;;;
;;; The number of fields per row varies (5 for tst-hybrd, 7 for
;;; tst-lmdif).  PARSE-SUMMARY-TABLE takes the expected field count
;;; so each test file pins it down.

(in-package #:minpack-tests)

(defun slurp-file (path)
  "Read PATH into a fresh string."
  (with-open-file (s path :direction :input)
    (let ((buf (make-string (file-length s))))
      (read-sequence buf s)
      buf)))

(defun close-enough-p (actual expected rel-tol)
  "Pass criterion for an L2-norm comparison: exact match for zero,
  relative tolerance for nonzero EXPECTED."
  (if (zerop expected)
      (zerop actual)
      (<= (abs (- actual expected)) (* rel-tol (abs expected)))))

(defun read-summary-fields (line n-fields)
  "Read N-FIELDS values out of LINE using CL READ.  The Fortran D
  exponent marker reads as a double-float exponent;
  *READ-DEFAULT-FLOAT-FORMAT* is bound to DOUBLE-FLOAT so any plain
  E exponent also lands in a double.  Returns a list of N-FIELDS
  values, or NIL if any token fails to read."
  (handler-case
      (with-input-from-string (s line)
        (let ((*read-default-float-format* 'double-float))
          (loop repeat n-fields collect (read s))))
    (error () nil)))

(defun parse-summary-table (text n-fields)
  "Parse the SUMMARY-OF-NN-CALLS table out of TEXT.  Returns a list
  of raw N-FIELDS-long tuples (one per summary row, in document
  order).  Skips everything before the '1SUMMARY OF' marker and the
  header line.  The caller is responsible for interpreting which
  position holds NPROB, L2-norm, etc."
  (let ((rows '())
        (state :before-summary))
    (with-input-from-string (s text)
      (loop for line = (read-line s nil nil)
            while line
            do (let ((trimmed (string-trim '(#\Space #\Tab) line)))
                 (case state
                   (:before-summary
                    (when (and (>= (length line) 11)
                               (string= line "1SUMMARY OF" :end1 11))
                      (setf state :before-header)))
                   (:before-header
                    (when (search "NPROB" trimmed)
                      (setf state :rows)))
                   (:rows
                    (when (plusp (length trimmed))
                      (let ((row (read-summary-fields trimmed n-fields)))
                        (when row
                          (push row rows)))))))))
    (nreverse rows)))

(defun call-with-fortran-stdio (input-path thunk)
  "Bind unit 5 (Fortran stdin) to INPUT-PATH and unit 6 (stdout) to
  a fresh string-output-stream, call THUNK with no arguments, then
  restore the previous unit-5/6 bindings.  Returns the captured
  stdout as a string.  Errors signalled inside THUNK are caught and
  a trailing diagnostic line is appended so the captured output
  always reflects what executed before the failure."
  (let ((out   (make-string-output-stream))
        (old-5 (gethash 5 f2cl-lib::*lun-hash*))
        (old-6 (gethash 6 f2cl-lib::*lun-hash*)))
    (unwind-protect
         (with-open-file (in input-path :direction :input)
           (setf (gethash 5 f2cl-lib::*lun-hash*) in)
           (setf (gethash 6 f2cl-lib::*lun-hash*) out)
           (handler-case (funcall thunk)
             (error (c)
               (format out "~&*** uncaught Lisp error: ~A~%" c))))
      (setf (gethash 5 f2cl-lib::*lun-hash*) old-5)
      (setf (gethash 6 f2cl-lib::*lun-hash*) old-6))
    (get-output-stream-string out)))

(defun capture-to-file (string path)
  "Write STRING to PATH, overwriting any existing content.  Used to
  record the most-recent captured driver output for inspection on
  failure."
  (with-open-file (s path :direction :output
                          :if-exists :supersede
                          :if-does-not-exist :create)
    (write-string string s)))
