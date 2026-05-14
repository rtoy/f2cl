;;;; b-ed-input-2.tests.lisp
;;;;
;;;; AUTO-GENERATED from b-ed-input-2.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-input-corpus-tests
;;;;     #P"...b-ed-input-2.test")
;;;;
;;;; 122 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0001
    (handler-case (progn (read-format "(1B1.0)" "-100000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0002
    (read-format "(1B1.0)" "10 0 00 10  0 0 1")
  (1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0003
    (read-format "(1B1.0)" "10101000")
  (1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0004
    (read-format "(1B2.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0005
    (read-format "(1B2.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0006
    (read-format "(1B2.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0007
    (read-format "(1B2.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0008
    (handler-case (progn (read-format "(1B2.0)" "2") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0009
    (read-format "(1B2.0)" "10")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0010
    (read-format "(1B2.0)" "-10")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0011
    (read-format "(1B2.0)" "100")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0012
    (read-format "(1B2.0)" "-100")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0013
    (read-format "(1B2.0)" "1000")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0014
    (read-format "(1B2.0)" "-1000")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0015
    (read-format "(1B2.0)" "10000")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0016
    (read-format "(1B2.0)" "-10000")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0017
    (read-format "(1B2.0)" "100000")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0018
    (read-format "(1B2.0)" "-100000")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0019
    (read-format "(1B2.0)" "10 0 00 10  0 0 1")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0020
    (read-format "(1B2.0)" "10101000")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0021
    (read-format "(1B3.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0022
    (read-format "(1B3.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0023
    (read-format "(1B3.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0024
    (read-format "(1B3.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0025
    (handler-case (progn (read-format "(1B3.0)" "2") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0026
    (read-format "(1B3.0)" "10")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0027
    (read-format "(1B3.0)" "-10")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0028
    (read-format "(1B3.0)" "100")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0029
    (read-format "(1B3.0)" "-100")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0030
    (read-format "(1B3.0)" "1000")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0031
    (read-format "(1B3.0)" "-1000")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0032
    (read-format "(1B3.0)" "10000")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0033
    (read-format "(1B3.0)" "-10000")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0034
    (read-format "(1B3.0)" "100000")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0035
    (read-format "(1B3.0)" "-100000")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0036
    (read-format "(1B3.0)" "10 0 00 10  0 0 1")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0037
    (read-format "(1B3.0)" "10101000")
  (5))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0038
    (read-format "(1B5.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0039
    (read-format "(1B5.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0040
    (read-format "(1B5.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0041
    (read-format "(1B5.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0042
    (handler-case (progn (read-format "(1B5.0)" "2") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0043
    (read-format "(1B5.0)" "10")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0044
    (read-format "(1B5.0)" "-10")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0045
    (read-format "(1B5.0)" "100")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0046
    (read-format "(1B5.0)" "-100")
  (-4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0047
    (read-format "(1B5.0)" "1000")
  (8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0048
    (read-format "(1B5.0)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0049
    (read-format "(1B5.0)" "10000")
  (16))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0050
    (read-format "(1B5.0)" "-10000")
  (-8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0051
    (read-format "(1B5.0)" "100000")
  (16))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0052
    (read-format "(1B5.0)" "-100000")
  (-8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0053
    (read-format "(1B5.0)" "10 0 00 10  0 0 1")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0054
    (read-format "(1B5.0)" "10101000")
  (21))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0055
    (read-format "(1B10.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0056
    (read-format "(1B10.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0057
    (read-format "(1B10.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0058
    (read-format "(1B10.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0059
    (handler-case (progn (read-format "(1B10.0)" "2") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0060
    (read-format "(1B10.0)" "10")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0061
    (read-format "(1B10.0)" "-10")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0062
    (read-format "(1B10.0)" "100")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0063
    (read-format "(1B10.0)" "-100")
  (-4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0064
    (read-format "(1B10.0)" "1000")
  (8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0065
    (read-format "(1B10.0)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0066
    (read-format "(1B10.0)" "10000")
  (16))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0067
    (read-format "(1B10.0)" "-10000")
  (-16))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0068
    (read-format "(1B10.0)" "100000")
  (32))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0069
    (read-format "(1B10.0)" "-100000")
  (-32))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0070
    (read-format "(1B10.0)" "10 0 00 10  0 0 1")
  (66))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0071
    (read-format "(1B10.0)" "10101000")
  (168))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0072
    (read-format "(1B3.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0073
    (read-format "(1B3.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0074
    (read-format "(1B3.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0075
    (read-format "(1B3.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0076
    (handler-case (progn (read-format "(1B3.3)" "2") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0077
    (read-format "(1B3.3)" "10")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0078
    (read-format "(1B3.3)" "-10")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0079
    (read-format "(1B3.3)" "100")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0080
    (read-format "(1B3.3)" "-100")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0081
    (read-format "(1B3.3)" "1000")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0082
    (read-format "(1B3.3)" "-1000")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0083
    (read-format "(1B3.3)" "10000")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0084
    (read-format "(1B3.3)" "-10000")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0085
    (read-format "(1B3.3)" "100000")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0086
    (read-format "(1B3.3)" "-100000")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0087
    (read-format "(1B3.3)" "10 0 00 10  0 0 1")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0088
    (read-format "(1B3.3)" "10101000")
  (5))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0089
    (read-format "(1B5.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0090
    (read-format "(1B5.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0091
    (read-format "(1B5.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0092
    (read-format "(1B5.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0093
    (handler-case (progn (read-format "(1B5.3)" "2") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0094
    (read-format "(1B5.3)" "10")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0095
    (read-format "(1B5.3)" "-10")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0096
    (read-format "(1B5.3)" "100")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0097
    (read-format "(1B5.3)" "-100")
  (-4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0098
    (read-format "(1B5.3)" "1000")
  (8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0099
    (read-format "(1B5.3)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0100
    (read-format "(1B5.3)" "10000")
  (16))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0101
    (read-format "(1B5.3)" "-10000")
  (-8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0102
    (read-format "(1B5.3)" "100000")
  (16))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0103
    (read-format "(1B5.3)" "-100000")
  (-8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0104
    (read-format "(1B5.3)" "10 0 00 10  0 0 1")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0105
    (read-format "(1B5.3)" "10101000")
  (21))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0106
    (read-format "(1B10.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0107
    (read-format "(1B10.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0108
    (read-format "(1B10.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0109
    (read-format "(1B10.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0110
    (handler-case (progn (read-format "(1B10.3)" "2") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0111
    (read-format "(1B10.3)" "10")
  (2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0112
    (read-format "(1B10.3)" "-10")
  (-2))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0113
    (read-format "(1B10.3)" "100")
  (4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0114
    (read-format "(1B10.3)" "-100")
  (-4))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0115
    (read-format "(1B10.3)" "1000")
  (8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0116
    (read-format "(1B10.3)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0117
    (read-format "(1B10.3)" "10000")
  (16))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0118
    (read-format "(1B10.3)" "-10000")
  (-16))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0119
    (read-format "(1B10.3)" "100000")
  (32))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0120
    (read-format "(1B10.3)" "-100000")
  (-32))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0121
    (read-format "(1B10.3)" "10 0 00 10  0 0 1")
  (66))

(rt:deftest FMT.CORPUS.B-ED-INPUT-2.0122
    (read-format "(1B10.3)" "10101000")
  (168))

