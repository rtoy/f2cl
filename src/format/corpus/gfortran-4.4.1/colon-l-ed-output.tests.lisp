;;;; colon-l-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from colon-l-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...colon-l-ed-output.test")
;;;;
;;;; 20 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0001
    (write-format "(:, L1)" T)
  "T")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0002
    (write-format "(:, L1)" NIL)
  "F")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0003
    (write-format "(:, L2)" T)
  " T")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0004
    (write-format "(:, L2)" NIL)
  " F")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0005
    (write-format "(:, L3)" T)
  "  T")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0006
    (write-format "(:, L3)" NIL)
  "  F")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0007
    (write-format "(:, L4)" T)
  "   T")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0008
    (write-format "(:, L4)" NIL)
  "   F")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0009
    (write-format "(:, L5)" T)
  "    T")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0010
    (write-format "(:, L5)" NIL)
  "    F")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0011
    (write-format "(:, L6)" T)
  "     T")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0012
    (write-format "(:, L6)" NIL)
  "     F")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0013
    (write-format "(:, L7)" T)
  "      T")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0014
    (write-format "(:, L7)" NIL)
  "      F")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0015
    (write-format "(:, L8)" T)
  "       T")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0016
    (write-format "(:, L8)" NIL)
  "       F")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0017
    (write-format "(:, L9)" T)
  "        T")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0018
    (write-format "(:, L9)" NIL)
  "        F")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0019
    (write-format "(:, L10)" T)
  "         T")

(rt:deftest FMT.CORPUS.COLON-L-ED-OUTPUT.0020
    (write-format "(:, L10)" NIL)
  "         F")

