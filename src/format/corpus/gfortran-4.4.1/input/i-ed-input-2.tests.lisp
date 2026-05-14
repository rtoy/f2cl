;;;; i-ed-input-2.tests.lisp
;;;;
;;;; AUTO-GENERATED from i-ed-input-2.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-input-corpus-tests
;;;;     #P"...i-ed-input-2.test")
;;;;
;;;; 386 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0001
    (read-format "(I5.5)" "-10000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0002
    (read-format "(I5.5)" "100000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0003
    (read-format "(I5.5)" "-100000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0004
    (read-format "(I5.5)" "123456789")
  (12345))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0005
    (read-format "(I5.5)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0006
    (read-format "(I5.5)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0007
    (read-format "(I5.5)" "-   001")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0008
    (read-format "(I5.5)" "12  012")
  (120))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0009
    (read-format "(I6.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0010
    (read-format "(I6.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0011
    (read-format "(I6.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0012
    (read-format "(I6.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0013
    (read-format "(I6.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0014
    (read-format "(I6.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0015
    (read-format "(I6.5)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0016
    (read-format "(I6.5)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0017
    (read-format "(I6.5)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0018
    (read-format "(I6.5)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0019
    (read-format "(I6.5)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0020
    (read-format "(I6.5)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0021
    (read-format "(I6.5)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0022
    (read-format "(I6.5)" "-10000")
  (-10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0023
    (read-format "(I6.5)" "100000")
  (100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0024
    (read-format "(I6.5)" "-100000")
  (-10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0025
    (read-format "(I6.5)" "123456789")
  (123456))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0026
    (read-format "(I6.5)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0027
    (read-format "(I6.5)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0028
    (read-format "(I6.5)" "-   001")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0029
    (read-format "(I6.5)" "12  012")
  (1201))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0030
    (read-format "(I7.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0031
    (read-format "(I7.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0032
    (read-format "(I7.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0033
    (read-format "(I7.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0034
    (read-format "(I7.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0035
    (read-format "(I7.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0036
    (read-format "(I7.5)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0037
    (read-format "(I7.5)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0038
    (read-format "(I7.5)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0039
    (read-format "(I7.5)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0040
    (read-format "(I7.5)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0041
    (read-format "(I7.5)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0042
    (read-format "(I7.5)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0043
    (read-format "(I7.5)" "-10000")
  (-10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0044
    (read-format "(I7.5)" "100000")
  (100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0045
    (read-format "(I7.5)" "-100000")
  (-100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0046
    (read-format "(I7.5)" "123456789")
  (1234567))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0047
    (read-format "(I7.5)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0048
    (read-format "(I7.5)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0049
    (read-format "(I7.5)" "-   001")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0050
    (read-format "(I7.5)" "12  012")
  (12012))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0051
    (read-format "(I8.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0052
    (read-format "(I8.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0053
    (read-format "(I8.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0054
    (read-format "(I8.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0055
    (read-format "(I8.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0056
    (read-format "(I8.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0057
    (read-format "(I8.5)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0058
    (read-format "(I8.5)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0059
    (read-format "(I8.5)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0060
    (read-format "(I8.5)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0061
    (read-format "(I8.5)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0062
    (read-format "(I8.5)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0063
    (read-format "(I8.5)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0064
    (read-format "(I8.5)" "-10000")
  (-10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0065
    (read-format "(I8.5)" "100000")
  (100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0066
    (read-format "(I8.5)" "-100000")
  (-100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0067
    (read-format "(I8.5)" "123456789")
  (12345678))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0068
    (read-format "(I8.5)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0069
    (read-format "(I8.5)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0070
    (read-format "(I8.5)" "-   001")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0071
    (read-format "(I8.5)" "12  012")
  (12012))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0072
    (read-format "(I9.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0073
    (read-format "(I9.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0074
    (read-format "(I9.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0075
    (read-format "(I9.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0076
    (read-format "(I9.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0077
    (read-format "(I9.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0078
    (read-format "(I9.5)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0079
    (read-format "(I9.5)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0080
    (read-format "(I9.5)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0081
    (read-format "(I9.5)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0082
    (read-format "(I9.5)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0083
    (read-format "(I9.5)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0084
    (read-format "(I9.5)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0085
    (read-format "(I9.5)" "-10000")
  (-10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0086
    (read-format "(I9.5)" "100000")
  (100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0087
    (read-format "(I9.5)" "-100000")
  (-100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0088
    (read-format "(I9.5)" "123456789")
  (123456789))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0089
    (read-format "(I9.5)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0090
    (read-format "(I9.5)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0091
    (read-format "(I9.5)" "-   001")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0092
    (read-format "(I9.5)" "12  012")
  (12012))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0093
    (read-format "(I10.5)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0094
    (read-format "(I10.5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0095
    (read-format "(I10.5)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0096
    (read-format "(I10.5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0097
    (read-format "(I10.5)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0098
    (read-format "(I10.5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0099
    (read-format "(I10.5)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0100
    (read-format "(I10.5)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0101
    (read-format "(I10.5)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0102
    (read-format "(I10.5)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0103
    (read-format "(I10.5)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0104
    (read-format "(I10.5)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0105
    (read-format "(I10.5)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0106
    (read-format "(I10.5)" "-10000")
  (-10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0107
    (read-format "(I10.5)" "100000")
  (100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0108
    (read-format "(I10.5)" "-100000")
  (-100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0109
    (read-format "(I10.5)" "123456789")
  (123456789))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0110
    (read-format "(I10.5)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0111
    (read-format "(I10.5)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0112
    (read-format "(I10.5)" "-   001")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0113
    (read-format "(I10.5)" "12  012")
  (12012))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0114
    (read-format "(1I1)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0115
    (handler-case (progn (read-format "(1I1)" "-0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0116
    (read-format "(1I1)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0117
    (handler-case (progn (read-format "(1I1)" "-1") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0118
    (read-format "(1I1)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0119
    (handler-case (progn (read-format "(1I1)" "-3") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0120
    (read-format "(1I1)" "10")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0121
    (handler-case (progn (read-format "(1I1)" "-10") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0122
    (read-format "(1I1)" "100")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0123
    (handler-case (progn (read-format "(1I1)" "-100") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0124
    (read-format "(1I1)" "1000")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0125
    (handler-case (progn (read-format "(1I1)" "-1000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0126
    (read-format "(1I1)" "10000")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0127
    (handler-case (progn (read-format "(1I1)" "-10000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0128
    (read-format "(1I1)" "100000")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0129
    (handler-case (progn (read-format "(1I1)" "-100000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0130
    (read-format "(1I1)" "123456789")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0131
    (read-format "(1I1)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0132
    (handler-case (progn (read-format "(1I1)" "- 0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0133
    (handler-case (progn (read-format "(1I1)" "-   001") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0134
    (read-format "(1I1)" "12  012")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0135
    (read-format "(1I2)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0136
    (read-format "(1I2)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0137
    (read-format "(1I2)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0138
    (read-format "(1I2)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0139
    (read-format "(1I2)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0140
    (read-format "(1I2)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0141
    (read-format "(1I2)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0142
    (read-format "(1I2)" "-10")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0143
    (read-format "(1I2)" "100")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0144
    (read-format "(1I2)" "-100")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0145
    (read-format "(1I2)" "1000")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0146
    (read-format "(1I2)" "-1000")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0147
    (read-format "(1I2)" "10000")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0148
    (read-format "(1I2)" "-10000")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0149
    (read-format "(1I2)" "100000")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0150
    (read-format "(1I2)" "-100000")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0151
    (read-format "(1I2)" "123456789")
  (12))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0152
    (read-format "(1I2)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0153
    (read-format "(1I2)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0154
    (read-format "(1I2)" "-   001")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0155
    (read-format "(1I2)" "12  012")
  (12))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0156
    (read-format "(1I3)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0157
    (read-format "(1I3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0158
    (read-format "(1I3)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0159
    (read-format "(1I3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0160
    (read-format "(1I3)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0161
    (read-format "(1I3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0162
    (read-format "(1I3)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0163
    (read-format "(1I3)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0164
    (read-format "(1I3)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0165
    (read-format "(1I3)" "-100")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0166
    (read-format "(1I3)" "1000")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0167
    (read-format "(1I3)" "-1000")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0168
    (read-format "(1I3)" "10000")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0169
    (read-format "(1I3)" "-10000")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0170
    (read-format "(1I3)" "100000")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0171
    (read-format "(1I3)" "-100000")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0172
    (read-format "(1I3)" "123456789")
  (123))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0173
    (read-format "(1I3)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0174
    (read-format "(1I3)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0175
    (read-format "(1I3)" "-   001")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0176
    (read-format "(1I3)" "12  012")
  (12))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0177
    (read-format "(1I5)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0178
    (read-format "(1I5)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0179
    (read-format "(1I5)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0180
    (read-format "(1I5)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0181
    (read-format "(1I5)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0182
    (read-format "(1I5)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0183
    (read-format "(1I5)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0184
    (read-format "(1I5)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0185
    (read-format "(1I5)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0186
    (read-format "(1I5)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0187
    (read-format "(1I5)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0188
    (read-format "(1I5)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0189
    (read-format "(1I5)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0190
    (read-format "(1I5)" "-10000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0191
    (read-format "(1I5)" "100000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0192
    (read-format "(1I5)" "-100000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0193
    (read-format "(1I5)" "123456789")
  (12345))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0194
    (read-format "(1I5)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0195
    (read-format "(1I5)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0196
    (read-format "(1I5)" "-   001")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0197
    (read-format "(1I5)" "12  012")
  (120))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0198
    (read-format "(1I10)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0199
    (read-format "(1I10)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0200
    (read-format "(1I10)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0201
    (read-format "(1I10)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0202
    (read-format "(1I10)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0203
    (read-format "(1I10)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0204
    (read-format "(1I10)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0205
    (read-format "(1I10)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0206
    (read-format "(1I10)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0207
    (read-format "(1I10)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0208
    (read-format "(1I10)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0209
    (read-format "(1I10)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0210
    (read-format "(1I10)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0211
    (read-format "(1I10)" "-10000")
  (-10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0212
    (read-format "(1I10)" "100000")
  (100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0213
    (read-format "(1I10)" "-100000")
  (-100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0214
    (read-format "(1I10)" "123456789")
  (123456789))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0215
    (read-format "(1I10)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0216
    (read-format "(1I10)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0217
    (read-format "(1I10)" "-   001")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0218
    (read-format "(1I10)" "12  012")
  (12012))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0219
    (read-format "(1I1.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0220
    (handler-case (progn (read-format "(1I1.0)" "-0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0221
    (read-format "(1I1.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0222
    (handler-case (progn (read-format "(1I1.0)" "-1") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0223
    (read-format "(1I1.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0224
    (handler-case (progn (read-format "(1I1.0)" "-3") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0225
    (read-format "(1I1.0)" "10")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0226
    (handler-case (progn (read-format "(1I1.0)" "-10") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0227
    (read-format "(1I1.0)" "100")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0228
    (handler-case (progn (read-format "(1I1.0)" "-100") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0229
    (read-format "(1I1.0)" "1000")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0230
    (handler-case (progn (read-format "(1I1.0)" "-1000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0231
    (read-format "(1I1.0)" "10000")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0232
    (handler-case (progn (read-format "(1I1.0)" "-10000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0233
    (read-format "(1I1.0)" "100000")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0234
    (handler-case (progn (read-format "(1I1.0)" "-100000") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0235
    (read-format "(1I1.0)" "123456789")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0236
    (read-format "(1I1.0)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0237
    (handler-case (progn (read-format "(1I1.0)" "- 0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0238
    (handler-case (progn (read-format "(1I1.0)" "-   001") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0239
    (read-format "(1I1.0)" "12  012")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0240
    (read-format "(1I2.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0241
    (read-format "(1I2.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0242
    (read-format "(1I2.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0243
    (read-format "(1I2.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0244
    (read-format "(1I2.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0245
    (read-format "(1I2.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0246
    (read-format "(1I2.0)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0247
    (read-format "(1I2.0)" "-10")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0248
    (read-format "(1I2.0)" "100")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0249
    (read-format "(1I2.0)" "-100")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0250
    (read-format "(1I2.0)" "1000")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0251
    (read-format "(1I2.0)" "-1000")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0252
    (read-format "(1I2.0)" "10000")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0253
    (read-format "(1I2.0)" "-10000")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0254
    (read-format "(1I2.0)" "100000")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0255
    (read-format "(1I2.0)" "-100000")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0256
    (read-format "(1I2.0)" "123456789")
  (12))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0257
    (read-format "(1I2.0)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0258
    (read-format "(1I2.0)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0259
    (read-format "(1I2.0)" "-   001")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0260
    (read-format "(1I2.0)" "12  012")
  (12))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0261
    (read-format "(1I3.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0262
    (read-format "(1I3.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0263
    (read-format "(1I3.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0264
    (read-format "(1I3.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0265
    (read-format "(1I3.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0266
    (read-format "(1I3.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0267
    (read-format "(1I3.0)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0268
    (read-format "(1I3.0)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0269
    (read-format "(1I3.0)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0270
    (read-format "(1I3.0)" "-100")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0271
    (read-format "(1I3.0)" "1000")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0272
    (read-format "(1I3.0)" "-1000")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0273
    (read-format "(1I3.0)" "10000")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0274
    (read-format "(1I3.0)" "-10000")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0275
    (read-format "(1I3.0)" "100000")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0276
    (read-format "(1I3.0)" "-100000")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0277
    (read-format "(1I3.0)" "123456789")
  (123))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0278
    (read-format "(1I3.0)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0279
    (read-format "(1I3.0)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0280
    (read-format "(1I3.0)" "-   001")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0281
    (read-format "(1I3.0)" "12  012")
  (12))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0282
    (read-format "(1I5.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0283
    (read-format "(1I5.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0284
    (read-format "(1I5.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0285
    (read-format "(1I5.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0286
    (read-format "(1I5.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0287
    (read-format "(1I5.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0288
    (read-format "(1I5.0)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0289
    (read-format "(1I5.0)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0290
    (read-format "(1I5.0)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0291
    (read-format "(1I5.0)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0292
    (read-format "(1I5.0)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0293
    (read-format "(1I5.0)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0294
    (read-format "(1I5.0)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0295
    (read-format "(1I5.0)" "-10000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0296
    (read-format "(1I5.0)" "100000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0297
    (read-format "(1I5.0)" "-100000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0298
    (read-format "(1I5.0)" "123456789")
  (12345))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0299
    (read-format "(1I5.0)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0300
    (read-format "(1I5.0)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0301
    (read-format "(1I5.0)" "-   001")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0302
    (read-format "(1I5.0)" "12  012")
  (120))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0303
    (read-format "(1I10.0)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0304
    (read-format "(1I10.0)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0305
    (read-format "(1I10.0)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0306
    (read-format "(1I10.0)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0307
    (read-format "(1I10.0)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0308
    (read-format "(1I10.0)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0309
    (read-format "(1I10.0)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0310
    (read-format "(1I10.0)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0311
    (read-format "(1I10.0)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0312
    (read-format "(1I10.0)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0313
    (read-format "(1I10.0)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0314
    (read-format "(1I10.0)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0315
    (read-format "(1I10.0)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0316
    (read-format "(1I10.0)" "-10000")
  (-10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0317
    (read-format "(1I10.0)" "100000")
  (100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0318
    (read-format "(1I10.0)" "-100000")
  (-100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0319
    (read-format "(1I10.0)" "123456789")
  (123456789))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0320
    (read-format "(1I10.0)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0321
    (read-format "(1I10.0)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0322
    (read-format "(1I10.0)" "-   001")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0323
    (read-format "(1I10.0)" "12  012")
  (12012))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0324
    (read-format "(1I3.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0325
    (read-format "(1I3.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0326
    (read-format "(1I3.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0327
    (read-format "(1I3.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0328
    (read-format "(1I3.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0329
    (read-format "(1I3.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0330
    (read-format "(1I3.3)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0331
    (read-format "(1I3.3)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0332
    (read-format "(1I3.3)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0333
    (read-format "(1I3.3)" "-100")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0334
    (read-format "(1I3.3)" "1000")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0335
    (read-format "(1I3.3)" "-1000")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0336
    (read-format "(1I3.3)" "10000")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0337
    (read-format "(1I3.3)" "-10000")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0338
    (read-format "(1I3.3)" "100000")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0339
    (read-format "(1I3.3)" "-100000")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0340
    (read-format "(1I3.3)" "123456789")
  (123))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0341
    (read-format "(1I3.3)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0342
    (read-format "(1I3.3)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0343
    (read-format "(1I3.3)" "-   001")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0344
    (read-format "(1I3.3)" "12  012")
  (12))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0345
    (read-format "(1I5.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0346
    (read-format "(1I5.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0347
    (read-format "(1I5.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0348
    (read-format "(1I5.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0349
    (read-format "(1I5.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0350
    (read-format "(1I5.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0351
    (read-format "(1I5.3)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0352
    (read-format "(1I5.3)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0353
    (read-format "(1I5.3)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0354
    (read-format "(1I5.3)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0355
    (read-format "(1I5.3)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0356
    (read-format "(1I5.3)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0357
    (read-format "(1I5.3)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0358
    (read-format "(1I5.3)" "-10000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0359
    (read-format "(1I5.3)" "100000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0360
    (read-format "(1I5.3)" "-100000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0361
    (read-format "(1I5.3)" "123456789")
  (12345))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0362
    (read-format "(1I5.3)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0363
    (read-format "(1I5.3)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0364
    (read-format "(1I5.3)" "-   001")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0365
    (read-format "(1I5.3)" "12  012")
  (120))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0366
    (read-format "(1I10.3)" "0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0367
    (read-format "(1I10.3)" "-0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0368
    (read-format "(1I10.3)" "1")
  (1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0369
    (read-format "(1I10.3)" "-1")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0370
    (read-format "(1I10.3)" "3")
  (3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0371
    (read-format "(1I10.3)" "-3")
  (-3))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0372
    (read-format "(1I10.3)" "10")
  (10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0373
    (read-format "(1I10.3)" "-10")
  (-10))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0374
    (read-format "(1I10.3)" "100")
  (100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0375
    (read-format "(1I10.3)" "-100")
  (-100))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0376
    (read-format "(1I10.3)" "1000")
  (1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0377
    (read-format "(1I10.3)" "-1000")
  (-1000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0378
    (read-format "(1I10.3)" "10000")
  (10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0379
    (read-format "(1I10.3)" "-10000")
  (-10000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0380
    (read-format "(1I10.3)" "100000")
  (100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0381
    (read-format "(1I10.3)" "-100000")
  (-100000))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0382
    (read-format "(1I10.3)" "123456789")
  (123456789))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0383
    (read-format "(1I10.3)" " 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0384
    (read-format "(1I10.3)" "- 0")
  (0))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0385
    (read-format "(1I10.3)" "-   001")
  (-1))

(rt:deftest FMT.CORPUS.I-ED-INPUT-2.0386
    (read-format "(1I10.3)" "12  012")
  (12012))

