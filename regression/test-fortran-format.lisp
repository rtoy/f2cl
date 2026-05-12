;;;; -*- Mode: Lisp -*-
;;;;
;;;; Regression tests for the new fortran-format-based printer.
;;;;
;;;; val/cxtest.f contains a series of subroutines, each writing one
;;;; complex value in list-directed format.  We translate that file
;;;; once with the new printer enabled, load it, and then call each
;;;; subroutine in its own deftest, comparing the captured stdout
;;;; against the byte-for-byte output gfortran produces for the same
;;;; Fortran source.
;;;;
;;;; The cases where we currently differ from gfortran (last-digit
;;;; rounding, 3-digit-exponent E-letter drop) are listed in
;;;; *expected-failures* further down with comments explaining why.

(in-package #:common-lisp-user)

;;;----------------------------------------------------------------------
;;; One-time translation+compile+load of val/cxtest.f.
;;;
;;; This eval-when fires when the file is loaded (as a fasl or
;;; directly).  CONVERT-COMPILE-LOAD now uses the new
;;; fortran-format printer by default, so the resulting code uses
;;; FORMAT-WRITE rather than the legacy FFORMAT.

(eval-when (:load-toplevel :execute)
  (f2cl-regression:convert-compile-load "val/cxtest.f"))

;;;----------------------------------------------------------------------
;;; Single-precision COMPLEX
;;;
;;; Field width is 36 chars including the leading blank.  Each
;;; component is rendered with 9 significant digits in F-form
;;; (8 fractional, e.g. 1.50000000) or E-form (9 mantissa digits,
;;; e.g. 1.000000000E+10) according to its magnitude.

(rt:deftest fortran-format.cx-simple
    (f2cl-regression:run-subroutine "cx_simple")
  #.(format nil "            (1.50000000,-2.50000000)~%"))

(rt:deftest fortran-format.cx-unit
    (f2cl-regression:run-subroutine "cx_unit")
  #.(format nil "             (1.00000000,1.00000000)~%"))

(rt:deftest fortran-format.cx-eform
    (f2cl-regression:run-subroutine "cx_eform")
  #.(format nil "  (1.000000000E+10,-1.000000013E-10)~%"))

(rt:deftest fortran-format.cx-fform-wide
    (f2cl-regression:run-subroutine "cx_fform_wide")
  #.(format nil "        (1.000000047E-03,1000.00000)~%"))

(rt:deftest fortran-format.cx-mixed
    ;; Real component in F-range (1.5), imaginary in E-range (1e10).
    ;; Confirms F/E choice is independent per component.
    (f2cl-regression:run-subroutine "cx_mixed")
  #.(format nil "        (1.50000000,1.000000000E+10)~%"))

(rt:deftest fortran-format.cx-zero
    (f2cl-regression:run-subroutine "cx_zero")
  #.(format nil "             (0.00000000,0.00000000)~%"))

(rt:deftest fortran-format.cx-zero-imag
    (f2cl-regression:run-subroutine "cx_zero_imag")
  #.(format nil "            (0.00000000,-1.50000000)~%"))

;;;----------------------------------------------------------------------
;;; DOUBLE PRECISION COMPLEX
;;;
;;; Field width is 54 chars.  17 significant digits per component
;;; in F-form (16 fractional), 17-digit mantissa in E-form.

(rt:deftest fortran-format.cz-simple
    (f2cl-regression:run-subroutine "cz_simple")
  #.(format nil "               (1.0000000000000000,2.0000000000000000)~%"))

(rt:deftest fortran-format.cz-full-precision
    ;; gfortran prints -9.8765432109876503 (last digit 3 from
    ;; correct round-to-nearest); the new printer goes through CL's
    ;; F directive and produces -9.8765432109876500 on
    ;; implementations whose tie-breaking differs.  Expected to
    ;; fail; see TODO entry "CL-defined rounding leakage".
    (f2cl-regression:run-subroutine "cz_full_precision")
  #.(format nil "              (1.2345678901234500,-9.8765432109876503)~%"))

(rt:deftest fortran-format.cz-eform
    ;; gfortran prints E-010 / E+010 (3-digit exponent with the E
    ;; letter); we print E-10 (2-digit, no leading zero) for normal
    ;; magnitudes, or drop the E letter for huge ones.  Expected to
    ;; fail; see TODO entry "3-digit exponents drop the E".
    (f2cl-regression:run-subroutine "cz_eform")
  #.(format nil "        (10000000000.000000,-1.00000000000000004E-010)~%"))

;;;----------------------------------------------------------------------
;;; Known divergences from gfortran.  See src/format/TODO.md for the
;;; underlying reasons.

(setf rt:*expected-failures*
      (append rt:*expected-failures*
              '(fortran-format.cz-full-precision
                fortran-format.cz-eform)))
