;;;; a-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from a-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...a-ed-output.test")
;;;;
;;;; 42 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0001
    (write-format "(A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0002
    (write-format "(A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0003
    (write-format "(A)" "''")
  "''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0004
    (write-format "(A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0005
    (write-format "(A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0006
    (write-format "(A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0007
    (write-format "(A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0008
    (write-format "(A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0009
    (write-format "(A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0010
    (write-format "(A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0011
    (write-format "(A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0012
    (write-format "(A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0013
    (write-format "(A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0014
    (write-format "(A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0015
    (write-format "(A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0016
    (write-format "(A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0017
    (write-format "(A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0018
    (write-format "(A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0019
    (write-format "(A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0020
    (write-format "(A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0021
    (write-format "(A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0022
    (write-format "(A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0023
    (write-format "(A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0024
    (write-format "(A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0025
    (write-format "(A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0026
    (write-format "(A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0027
    (write-format "(A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0028
    (write-format "(A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0029
    (write-format "(A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0030
    (write-format "(A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0031
    (write-format "(A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0032
    (write-format "(A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0033
    (write-format "(A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0034
    (write-format "(A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0035
    (write-format "(A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0036
    (write-format "(A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0037
    (write-format "(A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0038
    (write-format "(A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0039
    (write-format "(A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0040
    (write-format "(A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0041
    (write-format "(A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.A-ED-OUTPUT.0042
    (write-format "(A100)" "''")
  "                                                                                                  ''")

