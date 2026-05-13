;;;; sp-l-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from sp-l-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...sp-l-ed-output.test")
;;;;
;;;; 20 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0001
    (write-format "(SP, L1)" T)
  "T")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0002
    (write-format "(SP, L1)" NIL)
  "F")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0003
    (write-format "(SP, L2)" T)
  " T")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0004
    (write-format "(SP, L2)" NIL)
  " F")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0005
    (write-format "(SP, L3)" T)
  "  T")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0006
    (write-format "(SP, L3)" NIL)
  "  F")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0007
    (write-format "(SP, L4)" T)
  "   T")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0008
    (write-format "(SP, L4)" NIL)
  "   F")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0009
    (write-format "(SP, L5)" T)
  "    T")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0010
    (write-format "(SP, L5)" NIL)
  "    F")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0011
    (write-format "(SP, L6)" T)
  "     T")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0012
    (write-format "(SP, L6)" NIL)
  "     F")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0013
    (write-format "(SP, L7)" T)
  "      T")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0014
    (write-format "(SP, L7)" NIL)
  "      F")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0015
    (write-format "(SP, L8)" T)
  "       T")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0016
    (write-format "(SP, L8)" NIL)
  "       F")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0017
    (write-format "(SP, L9)" T)
  "        T")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0018
    (write-format "(SP, L9)" NIL)
  "        F")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0019
    (write-format "(SP, L10)" T)
  "         T")

(rt:deftest FMT.CORPUS.SP-L-ED-OUTPUT.0020
    (write-format "(SP, L10)" NIL)
  "         F")

