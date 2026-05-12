;;;; -*- Mode: Lisp -*-
;;;;
;;;; Regression tests for the new fortran-format-based reader.
;;;;
;;;; val/rdtest.f contains a series of subroutines, each opening
;;;; 'rdtest.dat' on unit 20, reading one or more values per a
;;;; particular format, closing the unit, and writing the result
;;;; back to unit 6.  We translate that file once with the new
;;;; printer flag enabled (which also routes READs through
;;;; FORMAT-READ), load it, and then each deftest stages rdtest.dat
;;;; with the right input bytes, calls the subroutine, and checks
;;;; the captured stdout.
;;;;
;;;; Companion to regression/test-fortran-format.lisp, which does
;;;; the same on the write side.

(in-package #:common-lisp-user)

;;;----------------------------------------------------------------------
;;; One-time translation+compile+load of val/rdtest.f.
;;;
;;; CONVERT-COMPILE-LOAD/NEW-PRINTER toggles
;;; f2cl::*USE-FORTRAN-FORMAT-PRINTER* on for the duration of the
;;; translation step.  When that flag is on, parse-read emits
;;; FORMAT-READ calls (and parse-write/parse-print emit FORMAT-WRITE
;;; calls), so both halves of each subroutine exercise the new
;;; engines.

(eval-when (:load-toplevel :execute)
  (f2cl-regression:convert-compile-load/new-printer "val/rdtest.f"))

;;;----------------------------------------------------------------------
;;; Helper.  Write INPUT to 'rdtest.dat', call the subroutine, return
;;; captured stdout.  Inline rather than added to helpers.lisp because
;;; rdtest.dat is specific to this fixture.

(defun rd-test (entry input)
  (with-open-file (out "rdtest.dat"
                       :direction :output
                       :if-exists :supersede
                       :if-does-not-exist :create)
    (write-string input out)
    (terpri out))
  (f2cl-regression:run-subroutine entry))

;;;----------------------------------------------------------------------
;;; List-directed reads.

(rt:deftest fortran-format-read.int-list
    (rd-test "rd_int_list" " 1 2 3")
  "           1           2           3
")

(rt:deftest fortran-format-read.implied-do
    (rd-test "rd_implied" "10 20 30 40 50")
  "          10          20          30          40          50
")

(rt:deftest fortran-format-read.logical
    (rd-test "rd_logical" ".TRUE.")
  " T
")

(rt:deftest fortran-format-read.quoted-string
    (rd-test "rd_quoted" "'hello'")
  " hello     
")

;;;----------------------------------------------------------------------
;;; Edit-descriptor formatted reads.
;;;
;;; These are the cases that the legacy READ-FILE path simply could
;;; not honour -- it would have used Lisp's READ regardless of the
;;; FMT string.  The new path reads them per the descriptor.

(rt:deftest fortran-format-read.i5
    (rd-test "rd_int_fmt" "  123")
  "         123
")

(rt:deftest fortran-format-read.f8.3
    ;; F-form into a REAL.  The format engine returns DOUBLE-FLOAT;
    ;; %format-read-assign-form COERCEs to SINGLE-FLOAT per the
    ;; declared variable type.
    (rd-test "rd_real_fmt" "  12.345")
  "   12.3450003    
")

(rt:deftest fortran-format-read.e10.3
    ;; D-style exponent on input.  The list-directed classifier and
    ;; the format engine both fold D/Q to E so CL's reader accepts it.
    (rd-test "rd_dble_fmt" " 6.022D23")
  "   6.02200000000000000E+23
")

(rt:deftest fortran-format-read.numeric-label
    ;; FMT given by a numeric format-statement label rather than an
    ;; inline string.  Goes through get_format_stmt which returns the
    ;; raw Fortran string under the new-printer flag.
    (rd-test "rd_label_fmt" "   500")
  "         500
")

;;;----------------------------------------------------------------------
;;; Reversion.  Format consumes three values per record; six values
;;; needed means reversion fires and the format runs again on a
;;; second record.

(rt:deftest fortran-format-read.reversion
    (rd-test "rd_reversion" "  1  2  3
  4  5  6")
  "           1           2           3           4           5           6
")

;;;----------------------------------------------------------------------
;;; FMT supplied as a CHARACTER variable.  parse-read can't resolve
;;; the variable's contents at translate time, so it passes the
;;; symbol through; FORMAT-READ evaluates it at run time.

(rt:deftest fortran-format-read.runtime-fmt
    (rd-test "rd_var_fmt" "  999")
  "         999
")

;;;----------------------------------------------------------------------
;;; IOSTAT= surfaces EOF.  The fixture's input has one record; the
;;; second READ inside the subroutine hits EOF.
;;;
;;; Currently the IOSTAT value is +1 rather than the strictly correct
;;; -1, because FORMAT-READ (matching the legacy READ-FILE) only
;;; registers the END-OF-FILE handler clause when an END= label is
;;; given.  Without END=, the EOF condition falls through to the
;;; (ERROR ()) clause and IOSTAT is set to +1.  This mirrors what the
;;; legacy path does today; making both paths emit -1 in this case
;;; is a separate semantic fix.

(rt:deftest fortran-format-read.eof-iostat
    (rd-test "rd_eof_iostat" "42")
  " first:          42 ios:           0
 second-ios:           1
")
