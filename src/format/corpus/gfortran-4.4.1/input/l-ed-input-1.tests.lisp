;;;; l-ed-input-1.tests.lisp
;;;;
;;;; AUTO-GENERATED from l-ed-input-1.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-input-corpus-tests
;;;;     #P"...l-ed-input-1.test")
;;;;
;;;; 40 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0001
    (handler-case (progn (read-format "(L1)" ".TRUE.") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0002
    (handler-case (progn (read-format "(L1)" ".FALSE.") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0003
    (read-format "(L1)" "T")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0004
    (read-format "(L1)" "F")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0005
    (read-format "(L2)" ".TRUE.")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0006
    (read-format "(L2)" ".FALSE.")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0007
    (read-format "(L2)" "T")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0008
    (read-format "(L2)" "F")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0009
    (read-format "(L3)" ".TRUE.")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0010
    (read-format "(L3)" ".FALSE.")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0011
    (read-format "(L3)" "T")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0012
    (read-format "(L3)" "F")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0013
    (read-format "(L4)" ".TRUE.")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0014
    (read-format "(L4)" ".FALSE.")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0015
    (read-format "(L4)" "T")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0016
    (read-format "(L4)" "F")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0017
    (read-format "(L5)" ".TRUE.")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0018
    (read-format "(L5)" ".FALSE.")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0019
    (read-format "(L5)" "T")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0020
    (read-format "(L5)" "F")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0021
    (read-format "(L6)" ".TRUE.")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0022
    (read-format "(L6)" ".FALSE.")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0023
    (read-format "(L6)" "T")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0024
    (read-format "(L6)" "F")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0025
    (read-format "(L7)" ".TRUE.")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0026
    (read-format "(L7)" ".FALSE.")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0027
    (read-format "(L7)" "T")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0028
    (read-format "(L7)" "F")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0029
    (read-format "(L8)" ".TRUE.")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0030
    (read-format "(L8)" ".FALSE.")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0031
    (read-format "(L8)" "T")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0032
    (read-format "(L8)" "F")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0033
    (read-format "(L9)" ".TRUE.")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0034
    (read-format "(L9)" ".FALSE.")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0035
    (read-format "(L9)" "T")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0036
    (read-format "(L9)" "F")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0037
    (read-format "(L10)" ".TRUE.")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0038
    (read-format "(L10)" ".FALSE.")
  (NIL))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0039
    (read-format "(L10)" "T")
  (T))

(rt:deftest FMT.CORPUS.L-ED-INPUT-1.0040
    (read-format "(L10)" "F")
  (NIL))

