;;;; o-ed-input-1.tests.lisp
;;;;
;;;; AUTO-GENERATED from o-ed-input-1.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-input-corpus-tests
;;;;     #P"...o-ed-input-1.test")
;;;;
;;;; 1000 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0001
    (read-format "(O1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0002
    (handler-case (progn (read-format "(O1)" "-0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0003
    (read-format "(O1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0004
    (handler-case (progn (read-format "(O1)" "-1") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0005
    (read-format "(O1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0006
    (handler-case (progn (read-format "(O1)" "-3") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0007
    (read-format "(O1)" "10")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0008
    (handler-case (progn (read-format "(O1)" "-10") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0009
    (read-format "(O1)" "100")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0010
    (handler-case (progn (read-format "(O1)" "-100") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0011
    (read-format "(O1)" "1000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0012
    (handler-case (progn (read-format "(O1)" "-1000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0013
    (read-format "(O1)" "10000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0014
    (handler-case (progn (read-format "(O1)" "-10000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0015
    (read-format "(O1)" "100000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0016
    (handler-case (progn (read-format "(O1)" "-100000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0017
    (read-format "(O1)" "12345678")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0018
    (read-format "(O1)" "123456789")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0019
    (read-format "(O2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0020
    (read-format "(O2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0021
    (read-format "(O2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0022
    (read-format "(O2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0023
    (read-format "(O2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0024
    (read-format "(O2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0025
    (read-format "(O2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0026
    (read-format "(O2)" "-10")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0027
    (read-format "(O2)" "100")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0028
    (read-format "(O2)" "-100")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0029
    (read-format "(O2)" "1000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0030
    (read-format "(O2)" "-1000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0031
    (read-format "(O2)" "10000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0032
    (read-format "(O2)" "-10000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0033
    (read-format "(O2)" "100000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0034
    (read-format "(O2)" "-100000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0035
    (read-format "(O2)" "12345678")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0036
    (read-format "(O2)" "123456789")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0037
    (read-format "(O3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0038
    (read-format "(O3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0039
    (read-format "(O3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0040
    (read-format "(O3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0041
    (read-format "(O3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0042
    (read-format "(O3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0043
    (read-format "(O3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0044
    (read-format "(O3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0045
    (read-format "(O3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0046
    (read-format "(O3)" "-100")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0047
    (read-format "(O3)" "1000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0048
    (read-format "(O3)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0049
    (read-format "(O3)" "10000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0050
    (read-format "(O3)" "-10000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0051
    (read-format "(O3)" "100000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0052
    (read-format "(O3)" "-100000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0053
    (read-format "(O3)" "12345678")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0054
    (read-format "(O3)" "123456789")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0055
    (read-format "(O4)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0056
    (read-format "(O4)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0057
    (read-format "(O4)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0058
    (read-format "(O4)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0059
    (read-format "(O4)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0060
    (read-format "(O4)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0061
    (read-format "(O4)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0062
    (read-format "(O4)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0063
    (read-format "(O4)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0064
    (read-format "(O4)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0065
    (read-format "(O4)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0066
    (read-format "(O4)" "-1000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0067
    (read-format "(O4)" "10000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0068
    (read-format "(O4)" "-10000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0069
    (read-format "(O4)" "100000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0070
    (read-format "(O4)" "-100000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0071
    (read-format "(O4)" "12345678")
  (668))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0072
    (read-format "(O4)" "123456789")
  (668))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0073
    (read-format "(O5)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0074
    (read-format "(O5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0075
    (read-format "(O5)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0076
    (read-format "(O5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0077
    (read-format "(O5)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0078
    (read-format "(O5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0079
    (read-format "(O5)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0080
    (read-format "(O5)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0081
    (read-format "(O5)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0082
    (read-format "(O5)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0083
    (read-format "(O5)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0084
    (read-format "(O5)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0085
    (read-format "(O5)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0086
    (read-format "(O5)" "-10000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0087
    (read-format "(O5)" "100000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0088
    (read-format "(O5)" "-100000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0089
    (read-format "(O5)" "12345678")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0090
    (read-format "(O5)" "123456789")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0091
    (read-format "(O6)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0092
    (read-format "(O6)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0093
    (read-format "(O6)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0094
    (read-format "(O6)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0095
    (read-format "(O6)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0096
    (read-format "(O6)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0097
    (read-format "(O6)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0098
    (read-format "(O6)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0099
    (read-format "(O6)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0100
    (read-format "(O6)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0101
    (read-format "(O6)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0102
    (read-format "(O6)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0103
    (read-format "(O6)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0104
    (read-format "(O6)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0105
    (read-format "(O6)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0106
    (read-format "(O6)" "-100000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0107
    (read-format "(O6)" "12345678")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0108
    (read-format "(O6)" "123456789")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0109
    (read-format "(O7)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0110
    (read-format "(O7)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0111
    (read-format "(O7)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0112
    (read-format "(O7)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0113
    (read-format "(O7)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0114
    (read-format "(O7)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0115
    (read-format "(O7)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0116
    (read-format "(O7)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0117
    (read-format "(O7)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0118
    (read-format "(O7)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0119
    (read-format "(O7)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0120
    (read-format "(O7)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0121
    (read-format "(O7)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0122
    (read-format "(O7)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0123
    (read-format "(O7)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0124
    (read-format "(O7)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0125
    (read-format "(O7)" "12345678")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0126
    (read-format "(O7)" "123456789")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0127
    (read-format "(O8)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0128
    (read-format "(O8)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0129
    (read-format "(O8)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0130
    (read-format "(O8)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0131
    (read-format "(O8)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0132
    (read-format "(O8)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0133
    (read-format "(O8)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0134
    (read-format "(O8)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0135
    (read-format "(O8)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0136
    (read-format "(O8)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0137
    (read-format "(O8)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0138
    (read-format "(O8)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0139
    (read-format "(O8)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0140
    (read-format "(O8)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0141
    (read-format "(O8)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0142
    (read-format "(O8)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0143
    (handler-case (progn (read-format "(O8)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0144
    (handler-case (progn (read-format "(O8)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0145
    (read-format "(O9)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0146
    (read-format "(O9)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0147
    (read-format "(O9)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0148
    (read-format "(O9)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0149
    (read-format "(O9)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0150
    (read-format "(O9)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0151
    (read-format "(O9)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0152
    (read-format "(O9)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0153
    (read-format "(O9)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0154
    (read-format "(O9)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0155
    (read-format "(O9)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0156
    (read-format "(O9)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0157
    (read-format "(O9)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0158
    (read-format "(O9)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0159
    (read-format "(O9)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0160
    (read-format "(O9)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0161
    (handler-case (progn (read-format "(O9)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0162
    (handler-case (progn (read-format "(O9)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0163
    (read-format "(O10)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0164
    (read-format "(O10)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0165
    (read-format "(O10)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0166
    (read-format "(O10)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0167
    (read-format "(O10)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0168
    (read-format "(O10)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0169
    (read-format "(O10)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0170
    (read-format "(O10)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0171
    (read-format "(O10)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0172
    (read-format "(O10)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0173
    (read-format "(O10)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0174
    (read-format "(O10)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0175
    (read-format "(O10)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0176
    (read-format "(O10)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0177
    (read-format "(O10)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0178
    (read-format "(O10)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0179
    (handler-case (progn (read-format "(O10)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0180
    (handler-case (progn (read-format "(O10)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0181
    (read-format "(O1.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0182
    (handler-case (progn (read-format "(O1.0)" "-0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0183
    (read-format "(O1.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0184
    (handler-case (progn (read-format "(O1.0)" "-1") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0185
    (read-format "(O1.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0186
    (handler-case (progn (read-format "(O1.0)" "-3") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0187
    (read-format "(O1.0)" "10")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0188
    (handler-case (progn (read-format "(O1.0)" "-10") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0189
    (read-format "(O1.0)" "100")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0190
    (handler-case (progn (read-format "(O1.0)" "-100") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0191
    (read-format "(O1.0)" "1000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0192
    (handler-case (progn (read-format "(O1.0)" "-1000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0193
    (read-format "(O1.0)" "10000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0194
    (handler-case (progn (read-format "(O1.0)" "-10000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0195
    (read-format "(O1.0)" "100000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0196
    (handler-case (progn (read-format "(O1.0)" "-100000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0197
    (read-format "(O1.0)" "12345678")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0198
    (read-format "(O1.0)" "123456789")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0199
    (read-format "(O2.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0200
    (read-format "(O2.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0201
    (read-format "(O2.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0202
    (read-format "(O2.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0203
    (read-format "(O2.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0204
    (read-format "(O2.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0205
    (read-format "(O2.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0206
    (read-format "(O2.0)" "-10")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0207
    (read-format "(O2.0)" "100")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0208
    (read-format "(O2.0)" "-100")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0209
    (read-format "(O2.0)" "1000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0210
    (read-format "(O2.0)" "-1000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0211
    (read-format "(O2.0)" "10000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0212
    (read-format "(O2.0)" "-10000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0213
    (read-format "(O2.0)" "100000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0214
    (read-format "(O2.0)" "-100000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0215
    (read-format "(O2.0)" "12345678")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0216
    (read-format "(O2.0)" "123456789")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0217
    (read-format "(O3.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0218
    (read-format "(O3.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0219
    (read-format "(O3.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0220
    (read-format "(O3.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0221
    (read-format "(O3.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0222
    (read-format "(O3.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0223
    (read-format "(O3.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0224
    (read-format "(O3.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0225
    (read-format "(O3.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0226
    (read-format "(O3.0)" "-100")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0227
    (read-format "(O3.0)" "1000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0228
    (read-format "(O3.0)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0229
    (read-format "(O3.0)" "10000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0230
    (read-format "(O3.0)" "-10000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0231
    (read-format "(O3.0)" "100000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0232
    (read-format "(O3.0)" "-100000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0233
    (read-format "(O3.0)" "12345678")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0234
    (read-format "(O3.0)" "123456789")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0235
    (read-format "(O4.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0236
    (read-format "(O4.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0237
    (read-format "(O4.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0238
    (read-format "(O4.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0239
    (read-format "(O4.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0240
    (read-format "(O4.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0241
    (read-format "(O4.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0242
    (read-format "(O4.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0243
    (read-format "(O4.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0244
    (read-format "(O4.0)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0245
    (read-format "(O4.0)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0246
    (read-format "(O4.0)" "-1000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0247
    (read-format "(O4.0)" "10000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0248
    (read-format "(O4.0)" "-10000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0249
    (read-format "(O4.0)" "100000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0250
    (read-format "(O4.0)" "-100000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0251
    (read-format "(O4.0)" "12345678")
  (668))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0252
    (read-format "(O4.0)" "123456789")
  (668))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0253
    (read-format "(O5.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0254
    (read-format "(O5.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0255
    (read-format "(O5.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0256
    (read-format "(O5.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0257
    (read-format "(O5.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0258
    (read-format "(O5.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0259
    (read-format "(O5.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0260
    (read-format "(O5.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0261
    (read-format "(O5.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0262
    (read-format "(O5.0)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0263
    (read-format "(O5.0)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0264
    (read-format "(O5.0)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0265
    (read-format "(O5.0)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0266
    (read-format "(O5.0)" "-10000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0267
    (read-format "(O5.0)" "100000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0268
    (read-format "(O5.0)" "-100000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0269
    (read-format "(O5.0)" "12345678")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0270
    (read-format "(O5.0)" "123456789")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0271
    (read-format "(O6.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0272
    (read-format "(O6.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0273
    (read-format "(O6.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0274
    (read-format "(O6.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0275
    (read-format "(O6.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0276
    (read-format "(O6.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0277
    (read-format "(O6.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0278
    (read-format "(O6.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0279
    (read-format "(O6.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0280
    (read-format "(O6.0)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0281
    (read-format "(O6.0)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0282
    (read-format "(O6.0)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0283
    (read-format "(O6.0)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0284
    (read-format "(O6.0)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0285
    (read-format "(O6.0)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0286
    (read-format "(O6.0)" "-100000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0287
    (read-format "(O6.0)" "12345678")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0288
    (read-format "(O6.0)" "123456789")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0289
    (read-format "(O7.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0290
    (read-format "(O7.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0291
    (read-format "(O7.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0292
    (read-format "(O7.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0293
    (read-format "(O7.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0294
    (read-format "(O7.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0295
    (read-format "(O7.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0296
    (read-format "(O7.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0297
    (read-format "(O7.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0298
    (read-format "(O7.0)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0299
    (read-format "(O7.0)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0300
    (read-format "(O7.0)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0301
    (read-format "(O7.0)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0302
    (read-format "(O7.0)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0303
    (read-format "(O7.0)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0304
    (read-format "(O7.0)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0305
    (read-format "(O7.0)" "12345678")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0306
    (read-format "(O7.0)" "123456789")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0307
    (read-format "(O8.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0308
    (read-format "(O8.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0309
    (read-format "(O8.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0310
    (read-format "(O8.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0311
    (read-format "(O8.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0312
    (read-format "(O8.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0313
    (read-format "(O8.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0314
    (read-format "(O8.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0315
    (read-format "(O8.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0316
    (read-format "(O8.0)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0317
    (read-format "(O8.0)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0318
    (read-format "(O8.0)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0319
    (read-format "(O8.0)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0320
    (read-format "(O8.0)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0321
    (read-format "(O8.0)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0322
    (read-format "(O8.0)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0323
    (handler-case (progn (read-format "(O8.0)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0324
    (handler-case (progn (read-format "(O8.0)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0325
    (read-format "(O9.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0326
    (read-format "(O9.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0327
    (read-format "(O9.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0328
    (read-format "(O9.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0329
    (read-format "(O9.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0330
    (read-format "(O9.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0331
    (read-format "(O9.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0332
    (read-format "(O9.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0333
    (read-format "(O9.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0334
    (read-format "(O9.0)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0335
    (read-format "(O9.0)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0336
    (read-format "(O9.0)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0337
    (read-format "(O9.0)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0338
    (read-format "(O9.0)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0339
    (read-format "(O9.0)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0340
    (read-format "(O9.0)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0341
    (handler-case (progn (read-format "(O9.0)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0342
    (handler-case (progn (read-format "(O9.0)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0343
    (read-format "(O10.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0344
    (read-format "(O10.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0345
    (read-format "(O10.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0346
    (read-format "(O10.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0347
    (read-format "(O10.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0348
    (read-format "(O10.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0349
    (read-format "(O10.0)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0350
    (read-format "(O10.0)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0351
    (read-format "(O10.0)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0352
    (read-format "(O10.0)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0353
    (read-format "(O10.0)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0354
    (read-format "(O10.0)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0355
    (read-format "(O10.0)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0356
    (read-format "(O10.0)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0357
    (read-format "(O10.0)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0358
    (read-format "(O10.0)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0359
    (handler-case (progn (read-format "(O10.0)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0360
    (handler-case (progn (read-format "(O10.0)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0361
    (read-format "(O1.1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0362
    (handler-case (progn (read-format "(O1.1)" "-0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0363
    (read-format "(O1.1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0364
    (handler-case (progn (read-format "(O1.1)" "-1") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0365
    (read-format "(O1.1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0366
    (handler-case (progn (read-format "(O1.1)" "-3") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0367
    (read-format "(O1.1)" "10")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0368
    (handler-case (progn (read-format "(O1.1)" "-10") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0369
    (read-format "(O1.1)" "100")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0370
    (handler-case (progn (read-format "(O1.1)" "-100") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0371
    (read-format "(O1.1)" "1000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0372
    (handler-case (progn (read-format "(O1.1)" "-1000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0373
    (read-format "(O1.1)" "10000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0374
    (handler-case (progn (read-format "(O1.1)" "-10000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0375
    (read-format "(O1.1)" "100000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0376
    (handler-case (progn (read-format "(O1.1)" "-100000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0377
    (read-format "(O1.1)" "12345678")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0378
    (read-format "(O1.1)" "123456789")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0379
    (read-format "(O2.1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0380
    (read-format "(O2.1)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0381
    (read-format "(O2.1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0382
    (read-format "(O2.1)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0383
    (read-format "(O2.1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0384
    (read-format "(O2.1)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0385
    (read-format "(O2.1)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0386
    (read-format "(O2.1)" "-10")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0387
    (read-format "(O2.1)" "100")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0388
    (read-format "(O2.1)" "-100")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0389
    (read-format "(O2.1)" "1000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0390
    (read-format "(O2.1)" "-1000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0391
    (read-format "(O2.1)" "10000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0392
    (read-format "(O2.1)" "-10000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0393
    (read-format "(O2.1)" "100000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0394
    (read-format "(O2.1)" "-100000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0395
    (read-format "(O2.1)" "12345678")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0396
    (read-format "(O2.1)" "123456789")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0397
    (read-format "(O3.1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0398
    (read-format "(O3.1)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0399
    (read-format "(O3.1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0400
    (read-format "(O3.1)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0401
    (read-format "(O3.1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0402
    (read-format "(O3.1)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0403
    (read-format "(O3.1)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0404
    (read-format "(O3.1)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0405
    (read-format "(O3.1)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0406
    (read-format "(O3.1)" "-100")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0407
    (read-format "(O3.1)" "1000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0408
    (read-format "(O3.1)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0409
    (read-format "(O3.1)" "10000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0410
    (read-format "(O3.1)" "-10000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0411
    (read-format "(O3.1)" "100000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0412
    (read-format "(O3.1)" "-100000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0413
    (read-format "(O3.1)" "12345678")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0414
    (read-format "(O3.1)" "123456789")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0415
    (read-format "(O4.1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0416
    (read-format "(O4.1)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0417
    (read-format "(O4.1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0418
    (read-format "(O4.1)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0419
    (read-format "(O4.1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0420
    (read-format "(O4.1)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0421
    (read-format "(O4.1)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0422
    (read-format "(O4.1)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0423
    (read-format "(O4.1)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0424
    (read-format "(O4.1)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0425
    (read-format "(O4.1)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0426
    (read-format "(O4.1)" "-1000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0427
    (read-format "(O4.1)" "10000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0428
    (read-format "(O4.1)" "-10000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0429
    (read-format "(O4.1)" "100000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0430
    (read-format "(O4.1)" "-100000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0431
    (read-format "(O4.1)" "12345678")
  (668))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0432
    (read-format "(O4.1)" "123456789")
  (668))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0433
    (read-format "(O5.1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0434
    (read-format "(O5.1)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0435
    (read-format "(O5.1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0436
    (read-format "(O5.1)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0437
    (read-format "(O5.1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0438
    (read-format "(O5.1)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0439
    (read-format "(O5.1)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0440
    (read-format "(O5.1)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0441
    (read-format "(O5.1)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0442
    (read-format "(O5.1)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0443
    (read-format "(O5.1)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0444
    (read-format "(O5.1)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0445
    (read-format "(O5.1)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0446
    (read-format "(O5.1)" "-10000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0447
    (read-format "(O5.1)" "100000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0448
    (read-format "(O5.1)" "-100000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0449
    (read-format "(O5.1)" "12345678")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0450
    (read-format "(O5.1)" "123456789")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0451
    (read-format "(O6.1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0452
    (read-format "(O6.1)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0453
    (read-format "(O6.1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0454
    (read-format "(O6.1)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0455
    (read-format "(O6.1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0456
    (read-format "(O6.1)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0457
    (read-format "(O6.1)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0458
    (read-format "(O6.1)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0459
    (read-format "(O6.1)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0460
    (read-format "(O6.1)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0461
    (read-format "(O6.1)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0462
    (read-format "(O6.1)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0463
    (read-format "(O6.1)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0464
    (read-format "(O6.1)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0465
    (read-format "(O6.1)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0466
    (read-format "(O6.1)" "-100000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0467
    (read-format "(O6.1)" "12345678")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0468
    (read-format "(O6.1)" "123456789")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0469
    (read-format "(O7.1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0470
    (read-format "(O7.1)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0471
    (read-format "(O7.1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0472
    (read-format "(O7.1)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0473
    (read-format "(O7.1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0474
    (read-format "(O7.1)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0475
    (read-format "(O7.1)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0476
    (read-format "(O7.1)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0477
    (read-format "(O7.1)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0478
    (read-format "(O7.1)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0479
    (read-format "(O7.1)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0480
    (read-format "(O7.1)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0481
    (read-format "(O7.1)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0482
    (read-format "(O7.1)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0483
    (read-format "(O7.1)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0484
    (read-format "(O7.1)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0485
    (read-format "(O7.1)" "12345678")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0486
    (read-format "(O7.1)" "123456789")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0487
    (read-format "(O8.1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0488
    (read-format "(O8.1)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0489
    (read-format "(O8.1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0490
    (read-format "(O8.1)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0491
    (read-format "(O8.1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0492
    (read-format "(O8.1)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0493
    (read-format "(O8.1)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0494
    (read-format "(O8.1)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0495
    (read-format "(O8.1)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0496
    (read-format "(O8.1)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0497
    (read-format "(O8.1)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0498
    (read-format "(O8.1)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0499
    (read-format "(O8.1)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0500
    (read-format "(O8.1)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0501
    (read-format "(O8.1)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0502
    (read-format "(O8.1)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0503
    (handler-case (progn (read-format "(O8.1)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0504
    (handler-case (progn (read-format "(O8.1)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0505
    (read-format "(O9.1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0506
    (read-format "(O9.1)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0507
    (read-format "(O9.1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0508
    (read-format "(O9.1)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0509
    (read-format "(O9.1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0510
    (read-format "(O9.1)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0511
    (read-format "(O9.1)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0512
    (read-format "(O9.1)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0513
    (read-format "(O9.1)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0514
    (read-format "(O9.1)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0515
    (read-format "(O9.1)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0516
    (read-format "(O9.1)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0517
    (read-format "(O9.1)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0518
    (read-format "(O9.1)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0519
    (read-format "(O9.1)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0520
    (read-format "(O9.1)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0521
    (handler-case (progn (read-format "(O9.1)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0522
    (handler-case (progn (read-format "(O9.1)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0523
    (read-format "(O10.1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0524
    (read-format "(O10.1)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0525
    (read-format "(O10.1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0526
    (read-format "(O10.1)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0527
    (read-format "(O10.1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0528
    (read-format "(O10.1)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0529
    (read-format "(O10.1)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0530
    (read-format "(O10.1)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0531
    (read-format "(O10.1)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0532
    (read-format "(O10.1)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0533
    (read-format "(O10.1)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0534
    (read-format "(O10.1)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0535
    (read-format "(O10.1)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0536
    (read-format "(O10.1)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0537
    (read-format "(O10.1)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0538
    (read-format "(O10.1)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0539
    (handler-case (progn (read-format "(O10.1)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0540
    (handler-case (progn (read-format "(O10.1)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0541
    (read-format "(O2.2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0542
    (read-format "(O2.2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0543
    (read-format "(O2.2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0544
    (read-format "(O2.2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0545
    (read-format "(O2.2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0546
    (read-format "(O2.2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0547
    (read-format "(O2.2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0548
    (read-format "(O2.2)" "-10")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0549
    (read-format "(O2.2)" "100")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0550
    (read-format "(O2.2)" "-100")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0551
    (read-format "(O2.2)" "1000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0552
    (read-format "(O2.2)" "-1000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0553
    (read-format "(O2.2)" "10000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0554
    (read-format "(O2.2)" "-10000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0555
    (read-format "(O2.2)" "100000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0556
    (read-format "(O2.2)" "-100000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0557
    (read-format "(O2.2)" "12345678")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0558
    (read-format "(O2.2)" "123456789")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0559
    (read-format "(O3.2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0560
    (read-format "(O3.2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0561
    (read-format "(O3.2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0562
    (read-format "(O3.2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0563
    (read-format "(O3.2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0564
    (read-format "(O3.2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0565
    (read-format "(O3.2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0566
    (read-format "(O3.2)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0567
    (read-format "(O3.2)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0568
    (read-format "(O3.2)" "-100")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0569
    (read-format "(O3.2)" "1000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0570
    (read-format "(O3.2)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0571
    (read-format "(O3.2)" "10000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0572
    (read-format "(O3.2)" "-10000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0573
    (read-format "(O3.2)" "100000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0574
    (read-format "(O3.2)" "-100000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0575
    (read-format "(O3.2)" "12345678")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0576
    (read-format "(O3.2)" "123456789")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0577
    (read-format "(O4.2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0578
    (read-format "(O4.2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0579
    (read-format "(O4.2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0580
    (read-format "(O4.2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0581
    (read-format "(O4.2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0582
    (read-format "(O4.2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0583
    (read-format "(O4.2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0584
    (read-format "(O4.2)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0585
    (read-format "(O4.2)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0586
    (read-format "(O4.2)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0587
    (read-format "(O4.2)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0588
    (read-format "(O4.2)" "-1000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0589
    (read-format "(O4.2)" "10000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0590
    (read-format "(O4.2)" "-10000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0591
    (read-format "(O4.2)" "100000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0592
    (read-format "(O4.2)" "-100000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0593
    (read-format "(O4.2)" "12345678")
  (668))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0594
    (read-format "(O4.2)" "123456789")
  (668))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0595
    (read-format "(O5.2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0596
    (read-format "(O5.2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0597
    (read-format "(O5.2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0598
    (read-format "(O5.2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0599
    (read-format "(O5.2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0600
    (read-format "(O5.2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0601
    (read-format "(O5.2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0602
    (read-format "(O5.2)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0603
    (read-format "(O5.2)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0604
    (read-format "(O5.2)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0605
    (read-format "(O5.2)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0606
    (read-format "(O5.2)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0607
    (read-format "(O5.2)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0608
    (read-format "(O5.2)" "-10000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0609
    (read-format "(O5.2)" "100000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0610
    (read-format "(O5.2)" "-100000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0611
    (read-format "(O5.2)" "12345678")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0612
    (read-format "(O5.2)" "123456789")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0613
    (read-format "(O6.2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0614
    (read-format "(O6.2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0615
    (read-format "(O6.2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0616
    (read-format "(O6.2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0617
    (read-format "(O6.2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0618
    (read-format "(O6.2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0619
    (read-format "(O6.2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0620
    (read-format "(O6.2)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0621
    (read-format "(O6.2)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0622
    (read-format "(O6.2)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0623
    (read-format "(O6.2)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0624
    (read-format "(O6.2)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0625
    (read-format "(O6.2)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0626
    (read-format "(O6.2)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0627
    (read-format "(O6.2)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0628
    (read-format "(O6.2)" "-100000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0629
    (read-format "(O6.2)" "12345678")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0630
    (read-format "(O6.2)" "123456789")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0631
    (read-format "(O7.2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0632
    (read-format "(O7.2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0633
    (read-format "(O7.2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0634
    (read-format "(O7.2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0635
    (read-format "(O7.2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0636
    (read-format "(O7.2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0637
    (read-format "(O7.2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0638
    (read-format "(O7.2)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0639
    (read-format "(O7.2)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0640
    (read-format "(O7.2)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0641
    (read-format "(O7.2)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0642
    (read-format "(O7.2)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0643
    (read-format "(O7.2)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0644
    (read-format "(O7.2)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0645
    (read-format "(O7.2)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0646
    (read-format "(O7.2)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0647
    (read-format "(O7.2)" "12345678")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0648
    (read-format "(O7.2)" "123456789")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0649
    (read-format "(O8.2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0650
    (read-format "(O8.2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0651
    (read-format "(O8.2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0652
    (read-format "(O8.2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0653
    (read-format "(O8.2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0654
    (read-format "(O8.2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0655
    (read-format "(O8.2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0656
    (read-format "(O8.2)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0657
    (read-format "(O8.2)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0658
    (read-format "(O8.2)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0659
    (read-format "(O8.2)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0660
    (read-format "(O8.2)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0661
    (read-format "(O8.2)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0662
    (read-format "(O8.2)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0663
    (read-format "(O8.2)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0664
    (read-format "(O8.2)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0665
    (handler-case (progn (read-format "(O8.2)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0666
    (handler-case (progn (read-format "(O8.2)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0667
    (read-format "(O9.2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0668
    (read-format "(O9.2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0669
    (read-format "(O9.2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0670
    (read-format "(O9.2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0671
    (read-format "(O9.2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0672
    (read-format "(O9.2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0673
    (read-format "(O9.2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0674
    (read-format "(O9.2)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0675
    (read-format "(O9.2)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0676
    (read-format "(O9.2)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0677
    (read-format "(O9.2)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0678
    (read-format "(O9.2)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0679
    (read-format "(O9.2)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0680
    (read-format "(O9.2)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0681
    (read-format "(O9.2)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0682
    (read-format "(O9.2)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0683
    (handler-case (progn (read-format "(O9.2)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0684
    (handler-case (progn (read-format "(O9.2)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0685
    (read-format "(O10.2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0686
    (read-format "(O10.2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0687
    (read-format "(O10.2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0688
    (read-format "(O10.2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0689
    (read-format "(O10.2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0690
    (read-format "(O10.2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0691
    (read-format "(O10.2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0692
    (read-format "(O10.2)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0693
    (read-format "(O10.2)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0694
    (read-format "(O10.2)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0695
    (read-format "(O10.2)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0696
    (read-format "(O10.2)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0697
    (read-format "(O10.2)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0698
    (read-format "(O10.2)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0699
    (read-format "(O10.2)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0700
    (read-format "(O10.2)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0701
    (handler-case (progn (read-format "(O10.2)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0702
    (handler-case (progn (read-format "(O10.2)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0703
    (read-format "(O3.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0704
    (read-format "(O3.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0705
    (read-format "(O3.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0706
    (read-format "(O3.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0707
    (read-format "(O3.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0708
    (read-format "(O3.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0709
    (read-format "(O3.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0710
    (read-format "(O3.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0711
    (read-format "(O3.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0712
    (read-format "(O3.3)" "-100")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0713
    (read-format "(O3.3)" "1000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0714
    (read-format "(O3.3)" "-1000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0715
    (read-format "(O3.3)" "10000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0716
    (read-format "(O3.3)" "-10000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0717
    (read-format "(O3.3)" "100000")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0718
    (read-format "(O3.3)" "-100000")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0719
    (read-format "(O3.3)" "12345678")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0720
    (read-format "(O3.3)" "123456789")
  (83))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0721
    (read-format "(O4.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0722
    (read-format "(O4.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0723
    (read-format "(O4.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0724
    (read-format "(O4.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0725
    (read-format "(O4.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0726
    (read-format "(O4.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0727
    (read-format "(O4.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0728
    (read-format "(O4.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0729
    (read-format "(O4.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0730
    (read-format "(O4.3)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0731
    (read-format "(O4.3)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0732
    (read-format "(O4.3)" "-1000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0733
    (read-format "(O4.3)" "10000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0734
    (read-format "(O4.3)" "-10000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0735
    (read-format "(O4.3)" "100000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0736
    (read-format "(O4.3)" "-100000")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0737
    (read-format "(O4.3)" "12345678")
  (668))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0738
    (read-format "(O4.3)" "123456789")
  (668))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0739
    (read-format "(O5.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0740
    (read-format "(O5.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0741
    (read-format "(O5.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0742
    (read-format "(O5.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0743
    (read-format "(O5.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0744
    (read-format "(O5.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0745
    (read-format "(O5.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0746
    (read-format "(O5.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0747
    (read-format "(O5.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0748
    (read-format "(O5.3)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0749
    (read-format "(O5.3)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0750
    (read-format "(O5.3)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0751
    (read-format "(O5.3)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0752
    (read-format "(O5.3)" "-10000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0753
    (read-format "(O5.3)" "100000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0754
    (read-format "(O5.3)" "-100000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0755
    (read-format "(O5.3)" "12345678")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0756
    (read-format "(O5.3)" "123456789")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0757
    (read-format "(O6.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0758
    (read-format "(O6.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0759
    (read-format "(O6.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0760
    (read-format "(O6.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0761
    (read-format "(O6.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0762
    (read-format "(O6.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0763
    (read-format "(O6.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0764
    (read-format "(O6.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0765
    (read-format "(O6.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0766
    (read-format "(O6.3)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0767
    (read-format "(O6.3)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0768
    (read-format "(O6.3)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0769
    (read-format "(O6.3)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0770
    (read-format "(O6.3)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0771
    (read-format "(O6.3)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0772
    (read-format "(O6.3)" "-100000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0773
    (read-format "(O6.3)" "12345678")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0774
    (read-format "(O6.3)" "123456789")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0775
    (read-format "(O7.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0776
    (read-format "(O7.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0777
    (read-format "(O7.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0778
    (read-format "(O7.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0779
    (read-format "(O7.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0780
    (read-format "(O7.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0781
    (read-format "(O7.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0782
    (read-format "(O7.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0783
    (read-format "(O7.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0784
    (read-format "(O7.3)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0785
    (read-format "(O7.3)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0786
    (read-format "(O7.3)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0787
    (read-format "(O7.3)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0788
    (read-format "(O7.3)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0789
    (read-format "(O7.3)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0790
    (read-format "(O7.3)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0791
    (read-format "(O7.3)" "12345678")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0792
    (read-format "(O7.3)" "123456789")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0793
    (read-format "(O8.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0794
    (read-format "(O8.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0795
    (read-format "(O8.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0796
    (read-format "(O8.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0797
    (read-format "(O8.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0798
    (read-format "(O8.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0799
    (read-format "(O8.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0800
    (read-format "(O8.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0801
    (read-format "(O8.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0802
    (read-format "(O8.3)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0803
    (read-format "(O8.3)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0804
    (read-format "(O8.3)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0805
    (read-format "(O8.3)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0806
    (read-format "(O8.3)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0807
    (read-format "(O8.3)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0808
    (read-format "(O8.3)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0809
    (handler-case (progn (read-format "(O8.3)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0810
    (handler-case (progn (read-format "(O8.3)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0811
    (read-format "(O9.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0812
    (read-format "(O9.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0813
    (read-format "(O9.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0814
    (read-format "(O9.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0815
    (read-format "(O9.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0816
    (read-format "(O9.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0817
    (read-format "(O9.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0818
    (read-format "(O9.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0819
    (read-format "(O9.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0820
    (read-format "(O9.3)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0821
    (read-format "(O9.3)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0822
    (read-format "(O9.3)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0823
    (read-format "(O9.3)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0824
    (read-format "(O9.3)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0825
    (read-format "(O9.3)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0826
    (read-format "(O9.3)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0827
    (handler-case (progn (read-format "(O9.3)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0828
    (handler-case (progn (read-format "(O9.3)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0829
    (read-format "(O10.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0830
    (read-format "(O10.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0831
    (read-format "(O10.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0832
    (read-format "(O10.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0833
    (read-format "(O10.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0834
    (read-format "(O10.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0835
    (read-format "(O10.3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0836
    (read-format "(O10.3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0837
    (read-format "(O10.3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0838
    (read-format "(O10.3)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0839
    (read-format "(O10.3)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0840
    (read-format "(O10.3)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0841
    (read-format "(O10.3)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0842
    (read-format "(O10.3)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0843
    (read-format "(O10.3)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0844
    (read-format "(O10.3)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0845
    (handler-case (progn (read-format "(O10.3)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0846
    (handler-case (progn (read-format "(O10.3)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0847
    (read-format "(O5.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0848
    (read-format "(O5.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0849
    (read-format "(O5.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0850
    (read-format "(O5.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0851
    (read-format "(O5.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0852
    (read-format "(O5.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0853
    (read-format "(O5.5)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0854
    (read-format "(O5.5)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0855
    (read-format "(O5.5)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0856
    (read-format "(O5.5)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0857
    (read-format "(O5.5)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0858
    (read-format "(O5.5)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0859
    (read-format "(O5.5)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0860
    (read-format "(O5.5)" "-10000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0861
    (read-format "(O5.5)" "100000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0862
    (read-format "(O5.5)" "-100000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0863
    (read-format "(O5.5)" "12345678")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0864
    (read-format "(O5.5)" "123456789")
  (5349))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0865
    (read-format "(O6.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0866
    (read-format "(O6.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0867
    (read-format "(O6.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0868
    (read-format "(O6.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0869
    (read-format "(O6.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0870
    (read-format "(O6.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0871
    (read-format "(O6.5)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0872
    (read-format "(O6.5)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0873
    (read-format "(O6.5)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0874
    (read-format "(O6.5)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0875
    (read-format "(O6.5)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0876
    (read-format "(O6.5)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0877
    (read-format "(O6.5)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0878
    (read-format "(O6.5)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0879
    (read-format "(O6.5)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0880
    (read-format "(O6.5)" "-100000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0881
    (read-format "(O6.5)" "12345678")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0882
    (read-format "(O6.5)" "123456789")
  (42798))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0883
    (read-format "(O7.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0884
    (read-format "(O7.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0885
    (read-format "(O7.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0886
    (read-format "(O7.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0887
    (read-format "(O7.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0888
    (read-format "(O7.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0889
    (read-format "(O7.5)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0890
    (read-format "(O7.5)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0891
    (read-format "(O7.5)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0892
    (read-format "(O7.5)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0893
    (read-format "(O7.5)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0894
    (read-format "(O7.5)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0895
    (read-format "(O7.5)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0896
    (read-format "(O7.5)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0897
    (read-format "(O7.5)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0898
    (read-format "(O7.5)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0899
    (read-format "(O7.5)" "12345678")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0900
    (read-format "(O7.5)" "123456789")
  (342391))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0901
    (read-format "(O8.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0902
    (read-format "(O8.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0903
    (read-format "(O8.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0904
    (read-format "(O8.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0905
    (read-format "(O8.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0906
    (read-format "(O8.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0907
    (read-format "(O8.5)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0908
    (read-format "(O8.5)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0909
    (read-format "(O8.5)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0910
    (read-format "(O8.5)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0911
    (read-format "(O8.5)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0912
    (read-format "(O8.5)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0913
    (read-format "(O8.5)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0914
    (read-format "(O8.5)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0915
    (read-format "(O8.5)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0916
    (read-format "(O8.5)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0917
    (handler-case (progn (read-format "(O8.5)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0918
    (handler-case (progn (read-format "(O8.5)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0919
    (read-format "(O9.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0920
    (read-format "(O9.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0921
    (read-format "(O9.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0922
    (read-format "(O9.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0923
    (read-format "(O9.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0924
    (read-format "(O9.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0925
    (read-format "(O9.5)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0926
    (read-format "(O9.5)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0927
    (read-format "(O9.5)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0928
    (read-format "(O9.5)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0929
    (read-format "(O9.5)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0930
    (read-format "(O9.5)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0931
    (read-format "(O9.5)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0932
    (read-format "(O9.5)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0933
    (read-format "(O9.5)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0934
    (read-format "(O9.5)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0935
    (handler-case (progn (read-format "(O9.5)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0936
    (handler-case (progn (read-format "(O9.5)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0937
    (read-format "(O10.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0938
    (read-format "(O10.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0939
    (read-format "(O10.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0940
    (read-format "(O10.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0941
    (read-format "(O10.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0942
    (read-format "(O10.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0943
    (read-format "(O10.5)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0944
    (read-format "(O10.5)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0945
    (read-format "(O10.5)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0946
    (read-format "(O10.5)" "-100")
  (-64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0947
    (read-format "(O10.5)" "1000")
  (512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0948
    (read-format "(O10.5)" "-1000")
  (-512))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0949
    (read-format "(O10.5)" "10000")
  (4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0950
    (read-format "(O10.5)" "-10000")
  (-4096))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0951
    (read-format "(O10.5)" "100000")
  (32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0952
    (read-format "(O10.5)" "-100000")
  (-32768))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0953
    (handler-case (progn (read-format "(O10.5)" "12345678") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0954
    (handler-case (progn (read-format "(O10.5)" "123456789") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0955
    (read-format "(1O1)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0956
    (handler-case (progn (read-format "(1O1)" "-0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0957
    (read-format "(1O1)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0958
    (handler-case (progn (read-format "(1O1)" "-1") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0959
    (read-format "(1O1)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0960
    (handler-case (progn (read-format "(1O1)" "-3") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0961
    (read-format "(1O1)" "10")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0962
    (handler-case (progn (read-format "(1O1)" "-10") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0963
    (read-format "(1O1)" "100")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0964
    (handler-case (progn (read-format "(1O1)" "-100") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0965
    (read-format "(1O1)" "1000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0966
    (handler-case (progn (read-format "(1O1)" "-1000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0967
    (read-format "(1O1)" "10000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0968
    (handler-case (progn (read-format "(1O1)" "-10000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0969
    (read-format "(1O1)" "100000")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0970
    (handler-case (progn (read-format "(1O1)" "-100000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0971
    (read-format "(1O1)" "12345678")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0972
    (read-format "(1O1)" "123456789")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0973
    (read-format "(1O2)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0974
    (read-format "(1O2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0975
    (read-format "(1O2)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0976
    (read-format "(1O2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0977
    (read-format "(1O2)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0978
    (read-format "(1O2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0979
    (read-format "(1O2)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0980
    (read-format "(1O2)" "-10")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0981
    (read-format "(1O2)" "100")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0982
    (read-format "(1O2)" "-100")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0983
    (read-format "(1O2)" "1000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0984
    (read-format "(1O2)" "-1000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0985
    (read-format "(1O2)" "10000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0986
    (read-format "(1O2)" "-10000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0987
    (read-format "(1O2)" "100000")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0988
    (read-format "(1O2)" "-100000")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0989
    (read-format "(1O2)" "12345678")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0990
    (read-format "(1O2)" "123456789")
  (10))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0991
    (read-format "(1O3)" "0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0992
    (read-format "(1O3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0993
    (read-format "(1O3)" "1")
  (1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0994
    (read-format "(1O3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0995
    (read-format "(1O3)" "3")
  (3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0996
    (read-format "(1O3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0997
    (read-format "(1O3)" "10")
  (8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0998
    (read-format "(1O3)" "-10")
  (-8))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.0999
    (read-format "(1O3)" "100")
  (64))

(rt:deftest FMT.CORPUS.O-ED-INPUT-1.1000
    (read-format "(1O3)" "-100")
  (-8))

