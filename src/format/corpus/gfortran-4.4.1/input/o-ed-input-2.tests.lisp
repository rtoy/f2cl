;;;; o-ed-input-2.tests.lisp
;;;;
;;;; AUTO-GENERATED from o-ed-input-2.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-input-corpus-tests
;;;;     #P"...o-ed-input-2.test")
;;;;
;;;; 188 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0001
    (read-format "(1O3)" "1000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0002
    (read-format "(1O3)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0003
    (read-format "(1O3)" "10000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0004
    (read-format "(1O3)" "-10000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0005
    (read-format "(1O3)" "100000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0006
    (read-format "(1O3)" "-100000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0007
    (read-format "(1O3)" "12345678")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0008
    (read-format "(1O3)" "123456789")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0009
    (read-format "(1O5)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0010
    (read-format "(1O5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0011
    (read-format "(1O5)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0012
    (read-format "(1O5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0013
    (read-format "(1O5)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0014
    (read-format "(1O5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0015
    (read-format "(1O5)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0016
    (read-format "(1O5)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0017
    (read-format "(1O5)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0018
    (read-format "(1O5)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0019
    (read-format "(1O5)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0020
    (read-format "(1O5)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0021
    (read-format "(1O5)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0022
    (read-format "(1O5)" "-10000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0023
    (read-format "(1O5)" "100000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0024
    (read-format "(1O5)" "-100000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0025
    (read-format "(1O5)" "12345678")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0026
    (read-format "(1O5)" "123456789")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0027
    (read-format "(1O10)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0028
    (read-format "(1O10)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0029
    (read-format "(1O10)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0030
    (read-format "(1O10)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0031
    (read-format "(1O10)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0032
    (read-format "(1O10)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0033
    (read-format "(1O10)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0034
    (read-format "(1O10)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0035
    (read-format "(1O10)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0036
    (read-format "(1O10)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0037
    (read-format "(1O10)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0038
    (read-format "(1O10)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0039
    (read-format "(1O10)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0040
    (read-format "(1O10)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0041
    (read-format "(1O10)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0042
    (read-format "(1O10)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0043
    (handler-case (progn (read-format "(1O10)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0044
    (handler-case (progn (read-format "(1O10)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0045
    (read-format "(1O1.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0046
    (handler-case (progn (read-format "(1O1.0)" "-0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0047
    (read-format "(1O1.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0048
    (handler-case (progn (read-format "(1O1.0)" "-1") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0049
    (read-format "(1O1.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0050
    (handler-case (progn (read-format "(1O1.0)" "-3") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0051
    (read-format "(1O1.0)" "10")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0052
    (handler-case (progn (read-format "(1O1.0)" "-10") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0053
    (read-format "(1O1.0)" "100")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0054
    (handler-case (progn (read-format "(1O1.0)" "-100") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0055
    (read-format "(1O1.0)" "1000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0056
    (handler-case (progn (read-format "(1O1.0)" "-1000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0057
    (read-format "(1O1.0)" "10000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0058
    (handler-case (progn (read-format "(1O1.0)" "-10000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0059
    (read-format "(1O1.0)" "100000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0060
    (handler-case (progn (read-format "(1O1.0)" "-100000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0061
    (read-format "(1O1.0)" "12345678")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0062
    (read-format "(1O1.0)" "123456789")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0063
    (read-format "(1O2.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0064
    (read-format "(1O2.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0065
    (read-format "(1O2.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0066
    (read-format "(1O2.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0067
    (read-format "(1O2.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0068
    (read-format "(1O2.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0069
    (read-format "(1O2.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0070
    (read-format "(1O2.0)" "-10")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0071
    (read-format "(1O2.0)" "100")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0072
    (read-format "(1O2.0)" "-100")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0073
    (read-format "(1O2.0)" "1000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0074
    (read-format "(1O2.0)" "-1000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0075
    (read-format "(1O2.0)" "10000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0076
    (read-format "(1O2.0)" "-10000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0077
    (read-format "(1O2.0)" "100000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0078
    (read-format "(1O2.0)" "-100000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0079
    (read-format "(1O2.0)" "12345678")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0080
    (read-format "(1O2.0)" "123456789")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0081
    (read-format "(1O3.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0082
    (read-format "(1O3.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0083
    (read-format "(1O3.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0084
    (read-format "(1O3.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0085
    (read-format "(1O3.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0086
    (read-format "(1O3.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0087
    (read-format "(1O3.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0088
    (read-format "(1O3.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0089
    (read-format "(1O3.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0090
    (read-format "(1O3.0)" "-100")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0091
    (read-format "(1O3.0)" "1000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0092
    (read-format "(1O3.0)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0093
    (read-format "(1O3.0)" "10000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0094
    (read-format "(1O3.0)" "-10000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0095
    (read-format "(1O3.0)" "100000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0096
    (read-format "(1O3.0)" "-100000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0097
    (read-format "(1O3.0)" "12345678")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0098
    (read-format "(1O3.0)" "123456789")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0099
    (read-format "(1O5.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0100
    (read-format "(1O5.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0101
    (read-format "(1O5.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0102
    (read-format "(1O5.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0103
    (read-format "(1O5.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0104
    (read-format "(1O5.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0105
    (read-format "(1O5.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0106
    (read-format "(1O5.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0107
    (read-format "(1O5.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0108
    (read-format "(1O5.0)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0109
    (read-format "(1O5.0)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0110
    (read-format "(1O5.0)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0111
    (read-format "(1O5.0)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0112
    (read-format "(1O5.0)" "-10000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0113
    (read-format "(1O5.0)" "100000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0114
    (read-format "(1O5.0)" "-100000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0115
    (read-format "(1O5.0)" "12345678")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0116
    (read-format "(1O5.0)" "123456789")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0117
    (read-format "(1O10.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0118
    (read-format "(1O10.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0119
    (read-format "(1O10.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0120
    (read-format "(1O10.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0121
    (read-format "(1O10.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0122
    (read-format "(1O10.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0123
    (read-format "(1O10.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0124
    (read-format "(1O10.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0125
    (read-format "(1O10.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0126
    (read-format "(1O10.0)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0127
    (read-format "(1O10.0)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0128
    (read-format "(1O10.0)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0129
    (read-format "(1O10.0)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0130
    (read-format "(1O10.0)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0131
    (read-format "(1O10.0)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0132
    (read-format "(1O10.0)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0133
    (handler-case (progn (read-format "(1O10.0)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0134
    (handler-case (progn (read-format "(1O10.0)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0135
    (read-format "(1O3.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0136
    (read-format "(1O3.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0137
    (read-format "(1O3.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0138
    (read-format "(1O3.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0139
    (read-format "(1O3.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0140
    (read-format "(1O3.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0141
    (read-format "(1O3.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0142
    (read-format "(1O3.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0143
    (read-format "(1O3.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0144
    (read-format "(1O3.3)" "-100")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0145
    (read-format "(1O3.3)" "1000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0146
    (read-format "(1O3.3)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0147
    (read-format "(1O3.3)" "10000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0148
    (read-format "(1O3.3)" "-10000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0149
    (read-format "(1O3.3)" "100000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0150
    (read-format "(1O3.3)" "-100000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0151
    (read-format "(1O3.3)" "12345678")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0152
    (read-format "(1O3.3)" "123456789")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0153
    (read-format "(1O5.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0154
    (read-format "(1O5.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0155
    (read-format "(1O5.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0156
    (read-format "(1O5.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0157
    (read-format "(1O5.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0158
    (read-format "(1O5.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0159
    (read-format "(1O5.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0160
    (read-format "(1O5.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0161
    (read-format "(1O5.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0162
    (read-format "(1O5.3)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0163
    (read-format "(1O5.3)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0164
    (read-format "(1O5.3)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0165
    (read-format "(1O5.3)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0166
    (read-format "(1O5.3)" "-10000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0167
    (read-format "(1O5.3)" "100000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0168
    (read-format "(1O5.3)" "-100000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0169
    (read-format "(1O5.3)" "12345678")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0170
    (read-format "(1O5.3)" "123456789")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0171
    (read-format "(1O10.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0172
    (read-format "(1O10.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0173
    (read-format "(1O10.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0174
    (read-format "(1O10.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0175
    (read-format "(1O10.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0176
    (read-format "(1O10.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0177
    (read-format "(1O10.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0178
    (read-format "(1O10.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0179
    (read-format "(1O10.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0180
    (read-format "(1O10.3)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0181
    (read-format "(1O10.3)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0182
    (read-format "(1O10.3)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0183
    (read-format "(1O10.3)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0184
    (read-format "(1O10.3)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0185
    (read-format "(1O10.3)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0186
    (read-format "(1O10.3)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0187
    (handler-case (progn (read-format "(1O10.3)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-2.0188
    (handler-case (progn (read-format "(1O10.3)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

