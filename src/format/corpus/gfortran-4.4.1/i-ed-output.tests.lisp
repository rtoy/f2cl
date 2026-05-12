;;;; i-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from i-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...i-ed-output.test")
;;;;
;;;; 1428 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0001
    (write-format "(I1)" 0)
  "0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0002
    (write-format "(I1)" 0)
  "0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0003
    (write-format "(I1)" 1)
  "1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0004
    (write-format "(I1)" -1)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0005
    (write-format "(I1)" 3)
  "3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0006
    (write-format "(I1)" -3)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0007
    (write-format "(I1)" 10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0008
    (write-format "(I1)" -10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0009
    (write-format "(I1)" 100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0010
    (write-format "(I1)" -100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0011
    (write-format "(I1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0012
    (write-format "(I1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0013
    (write-format "(I1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0014
    (write-format "(I1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0015
    (write-format "(I1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0016
    (write-format "(I1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0017
    (write-format "(I1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0018
    (write-format "(I2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0019
    (write-format "(I2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0020
    (write-format "(I2)" 1)
  " 1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0021
    (write-format "(I2)" -1)
  "-1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0022
    (write-format "(I2)" 3)
  " 3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0023
    (write-format "(I2)" -3)
  "-3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0024
    (write-format "(I2)" 10)
  "10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0025
    (write-format "(I2)" -10)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0026
    (write-format "(I2)" 100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0027
    (write-format "(I2)" -100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0028
    (write-format "(I2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0029
    (write-format "(I2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0030
    (write-format "(I2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0031
    (write-format "(I2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0032
    (write-format "(I2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0033
    (write-format "(I2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0034
    (write-format "(I2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0035
    (write-format "(I3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0036
    (write-format "(I3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0037
    (write-format "(I3)" 1)
  "  1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0038
    (write-format "(I3)" -1)
  " -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0039
    (write-format "(I3)" 3)
  "  3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0040
    (write-format "(I3)" -3)
  " -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0041
    (write-format "(I3)" 10)
  " 10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0042
    (write-format "(I3)" -10)
  "-10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0043
    (write-format "(I3)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0044
    (write-format "(I3)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0045
    (write-format "(I3)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0046
    (write-format "(I3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0047
    (write-format "(I3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0048
    (write-format "(I3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0049
    (write-format "(I3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0050
    (write-format "(I3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0051
    (write-format "(I3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0052
    (write-format "(I4)" 0)
  "   0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0053
    (write-format "(I4)" 0)
  "   0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0054
    (write-format "(I4)" 1)
  "   1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0055
    (write-format "(I4)" -1)
  "  -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0056
    (write-format "(I4)" 3)
  "   3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0057
    (write-format "(I4)" -3)
  "  -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0058
    (write-format "(I4)" 10)
  "  10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0059
    (write-format "(I4)" -10)
  " -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0060
    (write-format "(I4)" 100)
  " 100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0061
    (write-format "(I4)" -100)
  "-100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0062
    (write-format "(I4)" 1000)
  "1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0063
    (write-format "(I4)" -1000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0064
    (write-format "(I4)" 10000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0065
    (write-format "(I4)" -10000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0066
    (write-format "(I4)" 100000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0067
    (write-format "(I4)" -100000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0068
    (write-format "(I4)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0069
    (write-format "(I5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0070
    (write-format "(I5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0071
    (write-format "(I5)" 1)
  "    1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0072
    (write-format "(I5)" -1)
  "   -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0073
    (write-format "(I5)" 3)
  "    3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0074
    (write-format "(I5)" -3)
  "   -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0075
    (write-format "(I5)" 10)
  "   10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0076
    (write-format "(I5)" -10)
  "  -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0077
    (write-format "(I5)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0078
    (write-format "(I5)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0079
    (write-format "(I5)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0080
    (write-format "(I5)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0081
    (write-format "(I5)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0082
    (write-format "(I5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0083
    (write-format "(I5)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0084
    (write-format "(I5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0085
    (write-format "(I5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0086
    (write-format "(I6)" 0)
  "     0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0087
    (write-format "(I6)" 0)
  "     0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0088
    (write-format "(I6)" 1)
  "     1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0089
    (write-format "(I6)" -1)
  "    -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0090
    (write-format "(I6)" 3)
  "     3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0091
    (write-format "(I6)" -3)
  "    -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0092
    (write-format "(I6)" 10)
  "    10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0093
    (write-format "(I6)" -10)
  "   -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0094
    (write-format "(I6)" 100)
  "   100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0095
    (write-format "(I6)" -100)
  "  -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0096
    (write-format "(I6)" 1000)
  "  1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0097
    (write-format "(I6)" -1000)
  " -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0098
    (write-format "(I6)" 10000)
  " 10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0099
    (write-format "(I6)" -10000)
  "-10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0100
    (write-format "(I6)" 100000)
  "100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0101
    (write-format "(I6)" -100000)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0102
    (write-format "(I6)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0103
    (write-format "(I7)" 0)
  "      0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0104
    (write-format "(I7)" 0)
  "      0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0105
    (write-format "(I7)" 1)
  "      1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0106
    (write-format "(I7)" -1)
  "     -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0107
    (write-format "(I7)" 3)
  "      3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0108
    (write-format "(I7)" -3)
  "     -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0109
    (write-format "(I7)" 10)
  "     10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0110
    (write-format "(I7)" -10)
  "    -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0111
    (write-format "(I7)" 100)
  "    100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0112
    (write-format "(I7)" -100)
  "   -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0113
    (write-format "(I7)" 1000)
  "   1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0114
    (write-format "(I7)" -1000)
  "  -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0115
    (write-format "(I7)" 10000)
  "  10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0116
    (write-format "(I7)" -10000)
  " -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0117
    (write-format "(I7)" 100000)
  " 100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0118
    (write-format "(I7)" -100000)
  "-100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0119
    (write-format "(I7)" 123456789)
  "*******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0120
    (write-format "(I8)" 0)
  "       0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0121
    (write-format "(I8)" 0)
  "       0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0122
    (write-format "(I8)" 1)
  "       1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0123
    (write-format "(I8)" -1)
  "      -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0124
    (write-format "(I8)" 3)
  "       3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0125
    (write-format "(I8)" -3)
  "      -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0126
    (write-format "(I8)" 10)
  "      10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0127
    (write-format "(I8)" -10)
  "     -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0128
    (write-format "(I8)" 100)
  "     100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0129
    (write-format "(I8)" -100)
  "    -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0130
    (write-format "(I8)" 1000)
  "    1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0131
    (write-format "(I8)" -1000)
  "   -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0132
    (write-format "(I8)" 10000)
  "   10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0133
    (write-format "(I8)" -10000)
  "  -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0134
    (write-format "(I8)" 100000)
  "  100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0135
    (write-format "(I8)" -100000)
  " -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0136
    (write-format "(I8)" 123456789)
  "********")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0137
    (write-format "(I9)" 0)
  "        0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0138
    (write-format "(I9)" 0)
  "        0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0139
    (write-format "(I9)" 1)
  "        1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0140
    (write-format "(I9)" -1)
  "       -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0141
    (write-format "(I9)" 3)
  "        3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0142
    (write-format "(I9)" -3)
  "       -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0143
    (write-format "(I9)" 10)
  "       10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0144
    (write-format "(I9)" -10)
  "      -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0145
    (write-format "(I9)" 100)
  "      100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0146
    (write-format "(I9)" -100)
  "     -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0147
    (write-format "(I9)" 1000)
  "     1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0148
    (write-format "(I9)" -1000)
  "    -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0149
    (write-format "(I9)" 10000)
  "    10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0150
    (write-format "(I9)" -10000)
  "   -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0151
    (write-format "(I9)" 100000)
  "   100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0152
    (write-format "(I9)" -100000)
  "  -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0153
    (write-format "(I9)" 123456789)
  "123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0154
    (write-format "(I10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0155
    (write-format "(I10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0156
    (write-format "(I10)" 1)
  "         1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0157
    (write-format "(I10)" -1)
  "        -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0158
    (write-format "(I10)" 3)
  "         3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0159
    (write-format "(I10)" -3)
  "        -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0160
    (write-format "(I10)" 10)
  "        10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0161
    (write-format "(I10)" -10)
  "       -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0162
    (write-format "(I10)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0163
    (write-format "(I10)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0164
    (write-format "(I10)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0165
    (write-format "(I10)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0166
    (write-format "(I10)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0167
    (write-format "(I10)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0168
    (write-format "(I10)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0169
    (write-format "(I10)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0170
    (write-format "(I10)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0171
    (write-format "(I1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0172
    (write-format "(I1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0173
    (write-format "(I1.0)" 1)
  "1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0174
    (write-format "(I1.0)" -1)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0175
    (write-format "(I1.0)" 3)
  "3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0176
    (write-format "(I1.0)" -3)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0177
    (write-format "(I1.0)" 10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0178
    (write-format "(I1.0)" -10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0179
    (write-format "(I1.0)" 100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0180
    (write-format "(I1.0)" -100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0181
    (write-format "(I1.0)" 1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0182
    (write-format "(I1.0)" -1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0183
    (write-format "(I1.0)" 10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0184
    (write-format "(I1.0)" -10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0185
    (write-format "(I1.0)" 100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0186
    (write-format "(I1.0)" -100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0187
    (write-format "(I1.0)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0188
    (write-format "(I2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0189
    (write-format "(I2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0190
    (write-format "(I2.0)" 1)
  " 1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0191
    (write-format "(I2.0)" -1)
  "-1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0192
    (write-format "(I2.0)" 3)
  " 3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0193
    (write-format "(I2.0)" -3)
  "-3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0194
    (write-format "(I2.0)" 10)
  "10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0195
    (write-format "(I2.0)" -10)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0196
    (write-format "(I2.0)" 100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0197
    (write-format "(I2.0)" -100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0198
    (write-format "(I2.0)" 1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0199
    (write-format "(I2.0)" -1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0200
    (write-format "(I2.0)" 10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0201
    (write-format "(I2.0)" -10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0202
    (write-format "(I2.0)" 100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0203
    (write-format "(I2.0)" -100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0204
    (write-format "(I2.0)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0205
    (write-format "(I3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0206
    (write-format "(I3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0207
    (write-format "(I3.0)" 1)
  "  1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0208
    (write-format "(I3.0)" -1)
  " -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0209
    (write-format "(I3.0)" 3)
  "  3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0210
    (write-format "(I3.0)" -3)
  " -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0211
    (write-format "(I3.0)" 10)
  " 10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0212
    (write-format "(I3.0)" -10)
  "-10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0213
    (write-format "(I3.0)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0214
    (write-format "(I3.0)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0215
    (write-format "(I3.0)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0216
    (write-format "(I3.0)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0217
    (write-format "(I3.0)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0218
    (write-format "(I3.0)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0219
    (write-format "(I3.0)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0220
    (write-format "(I3.0)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0221
    (write-format "(I3.0)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0222
    (write-format "(I4.0)" 0)
  "    ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0223
    (write-format "(I4.0)" 0)
  "    ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0224
    (write-format "(I4.0)" 1)
  "   1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0225
    (write-format "(I4.0)" -1)
  "  -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0226
    (write-format "(I4.0)" 3)
  "   3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0227
    (write-format "(I4.0)" -3)
  "  -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0228
    (write-format "(I4.0)" 10)
  "  10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0229
    (write-format "(I4.0)" -10)
  " -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0230
    (write-format "(I4.0)" 100)
  " 100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0231
    (write-format "(I4.0)" -100)
  "-100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0232
    (write-format "(I4.0)" 1000)
  "1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0233
    (write-format "(I4.0)" -1000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0234
    (write-format "(I4.0)" 10000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0235
    (write-format "(I4.0)" -10000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0236
    (write-format "(I4.0)" 100000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0237
    (write-format "(I4.0)" -100000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0238
    (write-format "(I4.0)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0239
    (write-format "(I5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0240
    (write-format "(I5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0241
    (write-format "(I5.0)" 1)
  "    1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0242
    (write-format "(I5.0)" -1)
  "   -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0243
    (write-format "(I5.0)" 3)
  "    3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0244
    (write-format "(I5.0)" -3)
  "   -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0245
    (write-format "(I5.0)" 10)
  "   10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0246
    (write-format "(I5.0)" -10)
  "  -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0247
    (write-format "(I5.0)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0248
    (write-format "(I5.0)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0249
    (write-format "(I5.0)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0250
    (write-format "(I5.0)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0251
    (write-format "(I5.0)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0252
    (write-format "(I5.0)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0253
    (write-format "(I5.0)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0254
    (write-format "(I5.0)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0255
    (write-format "(I5.0)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0256
    (write-format "(I6.0)" 0)
  "      ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0257
    (write-format "(I6.0)" 0)
  "      ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0258
    (write-format "(I6.0)" 1)
  "     1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0259
    (write-format "(I6.0)" -1)
  "    -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0260
    (write-format "(I6.0)" 3)
  "     3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0261
    (write-format "(I6.0)" -3)
  "    -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0262
    (write-format "(I6.0)" 10)
  "    10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0263
    (write-format "(I6.0)" -10)
  "   -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0264
    (write-format "(I6.0)" 100)
  "   100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0265
    (write-format "(I6.0)" -100)
  "  -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0266
    (write-format "(I6.0)" 1000)
  "  1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0267
    (write-format "(I6.0)" -1000)
  " -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0268
    (write-format "(I6.0)" 10000)
  " 10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0269
    (write-format "(I6.0)" -10000)
  "-10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0270
    (write-format "(I6.0)" 100000)
  "100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0271
    (write-format "(I6.0)" -100000)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0272
    (write-format "(I6.0)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0273
    (write-format "(I7.0)" 0)
  "       ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0274
    (write-format "(I7.0)" 0)
  "       ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0275
    (write-format "(I7.0)" 1)
  "      1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0276
    (write-format "(I7.0)" -1)
  "     -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0277
    (write-format "(I7.0)" 3)
  "      3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0278
    (write-format "(I7.0)" -3)
  "     -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0279
    (write-format "(I7.0)" 10)
  "     10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0280
    (write-format "(I7.0)" -10)
  "    -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0281
    (write-format "(I7.0)" 100)
  "    100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0282
    (write-format "(I7.0)" -100)
  "   -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0283
    (write-format "(I7.0)" 1000)
  "   1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0284
    (write-format "(I7.0)" -1000)
  "  -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0285
    (write-format "(I7.0)" 10000)
  "  10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0286
    (write-format "(I7.0)" -10000)
  " -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0287
    (write-format "(I7.0)" 100000)
  " 100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0288
    (write-format "(I7.0)" -100000)
  "-100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0289
    (write-format "(I7.0)" 123456789)
  "*******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0290
    (write-format "(I8.0)" 0)
  "        ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0291
    (write-format "(I8.0)" 0)
  "        ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0292
    (write-format "(I8.0)" 1)
  "       1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0293
    (write-format "(I8.0)" -1)
  "      -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0294
    (write-format "(I8.0)" 3)
  "       3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0295
    (write-format "(I8.0)" -3)
  "      -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0296
    (write-format "(I8.0)" 10)
  "      10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0297
    (write-format "(I8.0)" -10)
  "     -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0298
    (write-format "(I8.0)" 100)
  "     100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0299
    (write-format "(I8.0)" -100)
  "    -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0300
    (write-format "(I8.0)" 1000)
  "    1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0301
    (write-format "(I8.0)" -1000)
  "   -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0302
    (write-format "(I8.0)" 10000)
  "   10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0303
    (write-format "(I8.0)" -10000)
  "  -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0304
    (write-format "(I8.0)" 100000)
  "  100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0305
    (write-format "(I8.0)" -100000)
  " -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0306
    (write-format "(I8.0)" 123456789)
  "********")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0307
    (write-format "(I9.0)" 0)
  "         ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0308
    (write-format "(I9.0)" 0)
  "         ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0309
    (write-format "(I9.0)" 1)
  "        1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0310
    (write-format "(I9.0)" -1)
  "       -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0311
    (write-format "(I9.0)" 3)
  "        3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0312
    (write-format "(I9.0)" -3)
  "       -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0313
    (write-format "(I9.0)" 10)
  "       10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0314
    (write-format "(I9.0)" -10)
  "      -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0315
    (write-format "(I9.0)" 100)
  "      100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0316
    (write-format "(I9.0)" -100)
  "     -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0317
    (write-format "(I9.0)" 1000)
  "     1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0318
    (write-format "(I9.0)" -1000)
  "    -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0319
    (write-format "(I9.0)" 10000)
  "    10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0320
    (write-format "(I9.0)" -10000)
  "   -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0321
    (write-format "(I9.0)" 100000)
  "   100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0322
    (write-format "(I9.0)" -100000)
  "  -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0323
    (write-format "(I9.0)" 123456789)
  "123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0324
    (write-format "(I10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0325
    (write-format "(I10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0326
    (write-format "(I10.0)" 1)
  "         1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0327
    (write-format "(I10.0)" -1)
  "        -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0328
    (write-format "(I10.0)" 3)
  "         3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0329
    (write-format "(I10.0)" -3)
  "        -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0330
    (write-format "(I10.0)" 10)
  "        10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0331
    (write-format "(I10.0)" -10)
  "       -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0332
    (write-format "(I10.0)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0333
    (write-format "(I10.0)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0334
    (write-format "(I10.0)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0335
    (write-format "(I10.0)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0336
    (write-format "(I10.0)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0337
    (write-format "(I10.0)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0338
    (write-format "(I10.0)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0339
    (write-format "(I10.0)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0340
    (write-format "(I10.0)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0341
    (write-format "(I1.1)" 0)
  "0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0342
    (write-format "(I1.1)" 0)
  "0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0343
    (write-format "(I1.1)" 1)
  "1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0344
    (write-format "(I1.1)" -1)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0345
    (write-format "(I1.1)" 3)
  "3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0346
    (write-format "(I1.1)" -3)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0347
    (write-format "(I1.1)" 10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0348
    (write-format "(I1.1)" -10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0349
    (write-format "(I1.1)" 100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0350
    (write-format "(I1.1)" -100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0351
    (write-format "(I1.1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0352
    (write-format "(I1.1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0353
    (write-format "(I1.1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0354
    (write-format "(I1.1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0355
    (write-format "(I1.1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0356
    (write-format "(I1.1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0357
    (write-format "(I1.1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0358
    (write-format "(I2.1)" 0)
  " 0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0359
    (write-format "(I2.1)" 0)
  " 0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0360
    (write-format "(I2.1)" 1)
  " 1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0361
    (write-format "(I2.1)" -1)
  "-1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0362
    (write-format "(I2.1)" 3)
  " 3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0363
    (write-format "(I2.1)" -3)
  "-3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0364
    (write-format "(I2.1)" 10)
  "10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0365
    (write-format "(I2.1)" -10)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0366
    (write-format "(I2.1)" 100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0367
    (write-format "(I2.1)" -100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0368
    (write-format "(I2.1)" 1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0369
    (write-format "(I2.1)" -1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0370
    (write-format "(I2.1)" 10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0371
    (write-format "(I2.1)" -10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0372
    (write-format "(I2.1)" 100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0373
    (write-format "(I2.1)" -100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0374
    (write-format "(I2.1)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0375
    (write-format "(I3.1)" 0)
  "  0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0376
    (write-format "(I3.1)" 0)
  "  0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0377
    (write-format "(I3.1)" 1)
  "  1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0378
    (write-format "(I3.1)" -1)
  " -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0379
    (write-format "(I3.1)" 3)
  "  3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0380
    (write-format "(I3.1)" -3)
  " -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0381
    (write-format "(I3.1)" 10)
  " 10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0382
    (write-format "(I3.1)" -10)
  "-10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0383
    (write-format "(I3.1)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0384
    (write-format "(I3.1)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0385
    (write-format "(I3.1)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0386
    (write-format "(I3.1)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0387
    (write-format "(I3.1)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0388
    (write-format "(I3.1)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0389
    (write-format "(I3.1)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0390
    (write-format "(I3.1)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0391
    (write-format "(I3.1)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0392
    (write-format "(I4.1)" 0)
  "   0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0393
    (write-format "(I4.1)" 0)
  "   0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0394
    (write-format "(I4.1)" 1)
  "   1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0395
    (write-format "(I4.1)" -1)
  "  -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0396
    (write-format "(I4.1)" 3)
  "   3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0397
    (write-format "(I4.1)" -3)
  "  -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0398
    (write-format "(I4.1)" 10)
  "  10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0399
    (write-format "(I4.1)" -10)
  " -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0400
    (write-format "(I4.1)" 100)
  " 100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0401
    (write-format "(I4.1)" -100)
  "-100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0402
    (write-format "(I4.1)" 1000)
  "1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0403
    (write-format "(I4.1)" -1000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0404
    (write-format "(I4.1)" 10000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0405
    (write-format "(I4.1)" -10000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0406
    (write-format "(I4.1)" 100000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0407
    (write-format "(I4.1)" -100000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0408
    (write-format "(I4.1)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0409
    (write-format "(I5.1)" 0)
  "    0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0410
    (write-format "(I5.1)" 0)
  "    0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0411
    (write-format "(I5.1)" 1)
  "    1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0412
    (write-format "(I5.1)" -1)
  "   -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0413
    (write-format "(I5.1)" 3)
  "    3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0414
    (write-format "(I5.1)" -3)
  "   -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0415
    (write-format "(I5.1)" 10)
  "   10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0416
    (write-format "(I5.1)" -10)
  "  -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0417
    (write-format "(I5.1)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0418
    (write-format "(I5.1)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0419
    (write-format "(I5.1)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0420
    (write-format "(I5.1)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0421
    (write-format "(I5.1)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0422
    (write-format "(I5.1)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0423
    (write-format "(I5.1)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0424
    (write-format "(I5.1)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0425
    (write-format "(I5.1)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0426
    (write-format "(I6.1)" 0)
  "     0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0427
    (write-format "(I6.1)" 0)
  "     0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0428
    (write-format "(I6.1)" 1)
  "     1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0429
    (write-format "(I6.1)" -1)
  "    -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0430
    (write-format "(I6.1)" 3)
  "     3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0431
    (write-format "(I6.1)" -3)
  "    -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0432
    (write-format "(I6.1)" 10)
  "    10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0433
    (write-format "(I6.1)" -10)
  "   -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0434
    (write-format "(I6.1)" 100)
  "   100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0435
    (write-format "(I6.1)" -100)
  "  -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0436
    (write-format "(I6.1)" 1000)
  "  1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0437
    (write-format "(I6.1)" -1000)
  " -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0438
    (write-format "(I6.1)" 10000)
  " 10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0439
    (write-format "(I6.1)" -10000)
  "-10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0440
    (write-format "(I6.1)" 100000)
  "100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0441
    (write-format "(I6.1)" -100000)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0442
    (write-format "(I6.1)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0443
    (write-format "(I7.1)" 0)
  "      0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0444
    (write-format "(I7.1)" 0)
  "      0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0445
    (write-format "(I7.1)" 1)
  "      1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0446
    (write-format "(I7.1)" -1)
  "     -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0447
    (write-format "(I7.1)" 3)
  "      3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0448
    (write-format "(I7.1)" -3)
  "     -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0449
    (write-format "(I7.1)" 10)
  "     10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0450
    (write-format "(I7.1)" -10)
  "    -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0451
    (write-format "(I7.1)" 100)
  "    100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0452
    (write-format "(I7.1)" -100)
  "   -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0453
    (write-format "(I7.1)" 1000)
  "   1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0454
    (write-format "(I7.1)" -1000)
  "  -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0455
    (write-format "(I7.1)" 10000)
  "  10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0456
    (write-format "(I7.1)" -10000)
  " -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0457
    (write-format "(I7.1)" 100000)
  " 100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0458
    (write-format "(I7.1)" -100000)
  "-100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0459
    (write-format "(I7.1)" 123456789)
  "*******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0460
    (write-format "(I8.1)" 0)
  "       0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0461
    (write-format "(I8.1)" 0)
  "       0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0462
    (write-format "(I8.1)" 1)
  "       1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0463
    (write-format "(I8.1)" -1)
  "      -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0464
    (write-format "(I8.1)" 3)
  "       3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0465
    (write-format "(I8.1)" -3)
  "      -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0466
    (write-format "(I8.1)" 10)
  "      10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0467
    (write-format "(I8.1)" -10)
  "     -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0468
    (write-format "(I8.1)" 100)
  "     100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0469
    (write-format "(I8.1)" -100)
  "    -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0470
    (write-format "(I8.1)" 1000)
  "    1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0471
    (write-format "(I8.1)" -1000)
  "   -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0472
    (write-format "(I8.1)" 10000)
  "   10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0473
    (write-format "(I8.1)" -10000)
  "  -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0474
    (write-format "(I8.1)" 100000)
  "  100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0475
    (write-format "(I8.1)" -100000)
  " -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0476
    (write-format "(I8.1)" 123456789)
  "********")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0477
    (write-format "(I9.1)" 0)
  "        0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0478
    (write-format "(I9.1)" 0)
  "        0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0479
    (write-format "(I9.1)" 1)
  "        1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0480
    (write-format "(I9.1)" -1)
  "       -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0481
    (write-format "(I9.1)" 3)
  "        3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0482
    (write-format "(I9.1)" -3)
  "       -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0483
    (write-format "(I9.1)" 10)
  "       10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0484
    (write-format "(I9.1)" -10)
  "      -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0485
    (write-format "(I9.1)" 100)
  "      100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0486
    (write-format "(I9.1)" -100)
  "     -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0487
    (write-format "(I9.1)" 1000)
  "     1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0488
    (write-format "(I9.1)" -1000)
  "    -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0489
    (write-format "(I9.1)" 10000)
  "    10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0490
    (write-format "(I9.1)" -10000)
  "   -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0491
    (write-format "(I9.1)" 100000)
  "   100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0492
    (write-format "(I9.1)" -100000)
  "  -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0493
    (write-format "(I9.1)" 123456789)
  "123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0494
    (write-format "(I10.1)" 0)
  "         0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0495
    (write-format "(I10.1)" 0)
  "         0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0496
    (write-format "(I10.1)" 1)
  "         1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0497
    (write-format "(I10.1)" -1)
  "        -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0498
    (write-format "(I10.1)" 3)
  "         3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0499
    (write-format "(I10.1)" -3)
  "        -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0500
    (write-format "(I10.1)" 10)
  "        10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0501
    (write-format "(I10.1)" -10)
  "       -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0502
    (write-format "(I10.1)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0503
    (write-format "(I10.1)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0504
    (write-format "(I10.1)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0505
    (write-format "(I10.1)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0506
    (write-format "(I10.1)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0507
    (write-format "(I10.1)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0508
    (write-format "(I10.1)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0509
    (write-format "(I10.1)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0510
    (write-format "(I10.1)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0511
    (write-format "(I2.2)" 0)
  "00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0512
    (write-format "(I2.2)" 0)
  "00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0513
    (write-format "(I2.2)" 1)
  "01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0514
    (write-format "(I2.2)" -1)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0515
    (write-format "(I2.2)" 3)
  "03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0516
    (write-format "(I2.2)" -3)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0517
    (write-format "(I2.2)" 10)
  "10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0518
    (write-format "(I2.2)" -10)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0519
    (write-format "(I2.2)" 100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0520
    (write-format "(I2.2)" -100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0521
    (write-format "(I2.2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0522
    (write-format "(I2.2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0523
    (write-format "(I2.2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0524
    (write-format "(I2.2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0525
    (write-format "(I2.2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0526
    (write-format "(I2.2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0527
    (write-format "(I2.2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0528
    (write-format "(I3.2)" 0)
  " 00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0529
    (write-format "(I3.2)" 0)
  " 00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0530
    (write-format "(I3.2)" 1)
  " 01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0531
    (write-format "(I3.2)" -1)
  "-01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0532
    (write-format "(I3.2)" 3)
  " 03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0533
    (write-format "(I3.2)" -3)
  "-03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0534
    (write-format "(I3.2)" 10)
  " 10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0535
    (write-format "(I3.2)" -10)
  "-10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0536
    (write-format "(I3.2)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0537
    (write-format "(I3.2)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0538
    (write-format "(I3.2)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0539
    (write-format "(I3.2)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0540
    (write-format "(I3.2)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0541
    (write-format "(I3.2)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0542
    (write-format "(I3.2)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0543
    (write-format "(I3.2)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0544
    (write-format "(I3.2)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0545
    (write-format "(I4.2)" 0)
  "  00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0546
    (write-format "(I4.2)" 0)
  "  00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0547
    (write-format "(I4.2)" 1)
  "  01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0548
    (write-format "(I4.2)" -1)
  " -01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0549
    (write-format "(I4.2)" 3)
  "  03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0550
    (write-format "(I4.2)" -3)
  " -03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0551
    (write-format "(I4.2)" 10)
  "  10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0552
    (write-format "(I4.2)" -10)
  " -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0553
    (write-format "(I4.2)" 100)
  " 100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0554
    (write-format "(I4.2)" -100)
  "-100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0555
    (write-format "(I4.2)" 1000)
  "1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0556
    (write-format "(I4.2)" -1000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0557
    (write-format "(I4.2)" 10000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0558
    (write-format "(I4.2)" -10000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0559
    (write-format "(I4.2)" 100000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0560
    (write-format "(I4.2)" -100000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0561
    (write-format "(I4.2)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0562
    (write-format "(I5.2)" 0)
  "   00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0563
    (write-format "(I5.2)" 0)
  "   00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0564
    (write-format "(I5.2)" 1)
  "   01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0565
    (write-format "(I5.2)" -1)
  "  -01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0566
    (write-format "(I5.2)" 3)
  "   03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0567
    (write-format "(I5.2)" -3)
  "  -03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0568
    (write-format "(I5.2)" 10)
  "   10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0569
    (write-format "(I5.2)" -10)
  "  -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0570
    (write-format "(I5.2)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0571
    (write-format "(I5.2)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0572
    (write-format "(I5.2)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0573
    (write-format "(I5.2)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0574
    (write-format "(I5.2)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0575
    (write-format "(I5.2)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0576
    (write-format "(I5.2)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0577
    (write-format "(I5.2)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0578
    (write-format "(I5.2)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0579
    (write-format "(I6.2)" 0)
  "    00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0580
    (write-format "(I6.2)" 0)
  "    00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0581
    (write-format "(I6.2)" 1)
  "    01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0582
    (write-format "(I6.2)" -1)
  "   -01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0583
    (write-format "(I6.2)" 3)
  "    03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0584
    (write-format "(I6.2)" -3)
  "   -03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0585
    (write-format "(I6.2)" 10)
  "    10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0586
    (write-format "(I6.2)" -10)
  "   -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0587
    (write-format "(I6.2)" 100)
  "   100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0588
    (write-format "(I6.2)" -100)
  "  -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0589
    (write-format "(I6.2)" 1000)
  "  1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0590
    (write-format "(I6.2)" -1000)
  " -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0591
    (write-format "(I6.2)" 10000)
  " 10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0592
    (write-format "(I6.2)" -10000)
  "-10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0593
    (write-format "(I6.2)" 100000)
  "100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0594
    (write-format "(I6.2)" -100000)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0595
    (write-format "(I6.2)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0596
    (write-format "(I7.2)" 0)
  "     00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0597
    (write-format "(I7.2)" 0)
  "     00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0598
    (write-format "(I7.2)" 1)
  "     01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0599
    (write-format "(I7.2)" -1)
  "    -01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0600
    (write-format "(I7.2)" 3)
  "     03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0601
    (write-format "(I7.2)" -3)
  "    -03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0602
    (write-format "(I7.2)" 10)
  "     10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0603
    (write-format "(I7.2)" -10)
  "    -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0604
    (write-format "(I7.2)" 100)
  "    100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0605
    (write-format "(I7.2)" -100)
  "   -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0606
    (write-format "(I7.2)" 1000)
  "   1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0607
    (write-format "(I7.2)" -1000)
  "  -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0608
    (write-format "(I7.2)" 10000)
  "  10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0609
    (write-format "(I7.2)" -10000)
  " -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0610
    (write-format "(I7.2)" 100000)
  " 100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0611
    (write-format "(I7.2)" -100000)
  "-100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0612
    (write-format "(I7.2)" 123456789)
  "*******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0613
    (write-format "(I8.2)" 0)
  "      00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0614
    (write-format "(I8.2)" 0)
  "      00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0615
    (write-format "(I8.2)" 1)
  "      01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0616
    (write-format "(I8.2)" -1)
  "     -01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0617
    (write-format "(I8.2)" 3)
  "      03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0618
    (write-format "(I8.2)" -3)
  "     -03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0619
    (write-format "(I8.2)" 10)
  "      10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0620
    (write-format "(I8.2)" -10)
  "     -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0621
    (write-format "(I8.2)" 100)
  "     100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0622
    (write-format "(I8.2)" -100)
  "    -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0623
    (write-format "(I8.2)" 1000)
  "    1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0624
    (write-format "(I8.2)" -1000)
  "   -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0625
    (write-format "(I8.2)" 10000)
  "   10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0626
    (write-format "(I8.2)" -10000)
  "  -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0627
    (write-format "(I8.2)" 100000)
  "  100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0628
    (write-format "(I8.2)" -100000)
  " -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0629
    (write-format "(I8.2)" 123456789)
  "********")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0630
    (write-format "(I9.2)" 0)
  "       00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0631
    (write-format "(I9.2)" 0)
  "       00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0632
    (write-format "(I9.2)" 1)
  "       01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0633
    (write-format "(I9.2)" -1)
  "      -01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0634
    (write-format "(I9.2)" 3)
  "       03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0635
    (write-format "(I9.2)" -3)
  "      -03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0636
    (write-format "(I9.2)" 10)
  "       10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0637
    (write-format "(I9.2)" -10)
  "      -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0638
    (write-format "(I9.2)" 100)
  "      100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0639
    (write-format "(I9.2)" -100)
  "     -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0640
    (write-format "(I9.2)" 1000)
  "     1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0641
    (write-format "(I9.2)" -1000)
  "    -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0642
    (write-format "(I9.2)" 10000)
  "    10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0643
    (write-format "(I9.2)" -10000)
  "   -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0644
    (write-format "(I9.2)" 100000)
  "   100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0645
    (write-format "(I9.2)" -100000)
  "  -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0646
    (write-format "(I9.2)" 123456789)
  "123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0647
    (write-format "(I10.2)" 0)
  "        00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0648
    (write-format "(I10.2)" 0)
  "        00")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0649
    (write-format "(I10.2)" 1)
  "        01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0650
    (write-format "(I10.2)" -1)
  "       -01")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0651
    (write-format "(I10.2)" 3)
  "        03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0652
    (write-format "(I10.2)" -3)
  "       -03")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0653
    (write-format "(I10.2)" 10)
  "        10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0654
    (write-format "(I10.2)" -10)
  "       -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0655
    (write-format "(I10.2)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0656
    (write-format "(I10.2)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0657
    (write-format "(I10.2)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0658
    (write-format "(I10.2)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0659
    (write-format "(I10.2)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0660
    (write-format "(I10.2)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0661
    (write-format "(I10.2)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0662
    (write-format "(I10.2)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0663
    (write-format "(I10.2)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0664
    (write-format "(I3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0665
    (write-format "(I3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0666
    (write-format "(I3.3)" 1)
  "001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0667
    (write-format "(I3.3)" -1)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0668
    (write-format "(I3.3)" 3)
  "003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0669
    (write-format "(I3.3)" -3)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0670
    (write-format "(I3.3)" 10)
  "010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0671
    (write-format "(I3.3)" -10)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0672
    (write-format "(I3.3)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0673
    (write-format "(I3.3)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0674
    (write-format "(I3.3)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0675
    (write-format "(I3.3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0676
    (write-format "(I3.3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0677
    (write-format "(I3.3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0678
    (write-format "(I3.3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0679
    (write-format "(I3.3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0680
    (write-format "(I3.3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0681
    (write-format "(I4.3)" 0)
  " 000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0682
    (write-format "(I4.3)" 0)
  " 000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0683
    (write-format "(I4.3)" 1)
  " 001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0684
    (write-format "(I4.3)" -1)
  "-001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0685
    (write-format "(I4.3)" 3)
  " 003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0686
    (write-format "(I4.3)" -3)
  "-003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0687
    (write-format "(I4.3)" 10)
  " 010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0688
    (write-format "(I4.3)" -10)
  "-010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0689
    (write-format "(I4.3)" 100)
  " 100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0690
    (write-format "(I4.3)" -100)
  "-100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0691
    (write-format "(I4.3)" 1000)
  "1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0692
    (write-format "(I4.3)" -1000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0693
    (write-format "(I4.3)" 10000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0694
    (write-format "(I4.3)" -10000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0695
    (write-format "(I4.3)" 100000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0696
    (write-format "(I4.3)" -100000)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0697
    (write-format "(I4.3)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0698
    (write-format "(I5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0699
    (write-format "(I5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0700
    (write-format "(I5.3)" 1)
  "  001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0701
    (write-format "(I5.3)" -1)
  " -001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0702
    (write-format "(I5.3)" 3)
  "  003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0703
    (write-format "(I5.3)" -3)
  " -003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0704
    (write-format "(I5.3)" 10)
  "  010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0705
    (write-format "(I5.3)" -10)
  " -010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0706
    (write-format "(I5.3)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0707
    (write-format "(I5.3)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0708
    (write-format "(I5.3)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0709
    (write-format "(I5.3)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0710
    (write-format "(I5.3)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0711
    (write-format "(I5.3)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0712
    (write-format "(I5.3)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0713
    (write-format "(I5.3)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0714
    (write-format "(I5.3)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0715
    (write-format "(I6.3)" 0)
  "   000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0716
    (write-format "(I6.3)" 0)
  "   000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0717
    (write-format "(I6.3)" 1)
  "   001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0718
    (write-format "(I6.3)" -1)
  "  -001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0719
    (write-format "(I6.3)" 3)
  "   003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0720
    (write-format "(I6.3)" -3)
  "  -003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0721
    (write-format "(I6.3)" 10)
  "   010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0722
    (write-format "(I6.3)" -10)
  "  -010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0723
    (write-format "(I6.3)" 100)
  "   100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0724
    (write-format "(I6.3)" -100)
  "  -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0725
    (write-format "(I6.3)" 1000)
  "  1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0726
    (write-format "(I6.3)" -1000)
  " -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0727
    (write-format "(I6.3)" 10000)
  " 10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0728
    (write-format "(I6.3)" -10000)
  "-10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0729
    (write-format "(I6.3)" 100000)
  "100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0730
    (write-format "(I6.3)" -100000)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0731
    (write-format "(I6.3)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0732
    (write-format "(I7.3)" 0)
  "    000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0733
    (write-format "(I7.3)" 0)
  "    000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0734
    (write-format "(I7.3)" 1)
  "    001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0735
    (write-format "(I7.3)" -1)
  "   -001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0736
    (write-format "(I7.3)" 3)
  "    003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0737
    (write-format "(I7.3)" -3)
  "   -003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0738
    (write-format "(I7.3)" 10)
  "    010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0739
    (write-format "(I7.3)" -10)
  "   -010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0740
    (write-format "(I7.3)" 100)
  "    100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0741
    (write-format "(I7.3)" -100)
  "   -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0742
    (write-format "(I7.3)" 1000)
  "   1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0743
    (write-format "(I7.3)" -1000)
  "  -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0744
    (write-format "(I7.3)" 10000)
  "  10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0745
    (write-format "(I7.3)" -10000)
  " -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0746
    (write-format "(I7.3)" 100000)
  " 100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0747
    (write-format "(I7.3)" -100000)
  "-100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0748
    (write-format "(I7.3)" 123456789)
  "*******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0749
    (write-format "(I8.3)" 0)
  "     000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0750
    (write-format "(I8.3)" 0)
  "     000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0751
    (write-format "(I8.3)" 1)
  "     001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0752
    (write-format "(I8.3)" -1)
  "    -001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0753
    (write-format "(I8.3)" 3)
  "     003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0754
    (write-format "(I8.3)" -3)
  "    -003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0755
    (write-format "(I8.3)" 10)
  "     010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0756
    (write-format "(I8.3)" -10)
  "    -010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0757
    (write-format "(I8.3)" 100)
  "     100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0758
    (write-format "(I8.3)" -100)
  "    -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0759
    (write-format "(I8.3)" 1000)
  "    1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0760
    (write-format "(I8.3)" -1000)
  "   -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0761
    (write-format "(I8.3)" 10000)
  "   10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0762
    (write-format "(I8.3)" -10000)
  "  -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0763
    (write-format "(I8.3)" 100000)
  "  100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0764
    (write-format "(I8.3)" -100000)
  " -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0765
    (write-format "(I8.3)" 123456789)
  "********")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0766
    (write-format "(I9.3)" 0)
  "      000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0767
    (write-format "(I9.3)" 0)
  "      000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0768
    (write-format "(I9.3)" 1)
  "      001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0769
    (write-format "(I9.3)" -1)
  "     -001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0770
    (write-format "(I9.3)" 3)
  "      003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0771
    (write-format "(I9.3)" -3)
  "     -003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0772
    (write-format "(I9.3)" 10)
  "      010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0773
    (write-format "(I9.3)" -10)
  "     -010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0774
    (write-format "(I9.3)" 100)
  "      100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0775
    (write-format "(I9.3)" -100)
  "     -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0776
    (write-format "(I9.3)" 1000)
  "     1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0777
    (write-format "(I9.3)" -1000)
  "    -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0778
    (write-format "(I9.3)" 10000)
  "    10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0779
    (write-format "(I9.3)" -10000)
  "   -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0780
    (write-format "(I9.3)" 100000)
  "   100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0781
    (write-format "(I9.3)" -100000)
  "  -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0782
    (write-format "(I9.3)" 123456789)
  "123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0783
    (write-format "(I10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0784
    (write-format "(I10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0785
    (write-format "(I10.3)" 1)
  "       001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0786
    (write-format "(I10.3)" -1)
  "      -001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0787
    (write-format "(I10.3)" 3)
  "       003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0788
    (write-format "(I10.3)" -3)
  "      -003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0789
    (write-format "(I10.3)" 10)
  "       010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0790
    (write-format "(I10.3)" -10)
  "      -010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0791
    (write-format "(I10.3)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0792
    (write-format "(I10.3)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0793
    (write-format "(I10.3)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0794
    (write-format "(I10.3)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0795
    (write-format "(I10.3)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0796
    (write-format "(I10.3)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0797
    (write-format "(I10.3)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0798
    (write-format "(I10.3)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0799
    (write-format "(I10.3)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0800
    (write-format "(I5.5)" 0)
  "00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0801
    (write-format "(I5.5)" 0)
  "00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0802
    (write-format "(I5.5)" 1)
  "00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0803
    (write-format "(I5.5)" -1)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0804
    (write-format "(I5.5)" 3)
  "00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0805
    (write-format "(I5.5)" -3)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0806
    (write-format "(I5.5)" 10)
  "00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0807
    (write-format "(I5.5)" -10)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0808
    (write-format "(I5.5)" 100)
  "00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0809
    (write-format "(I5.5)" -100)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0810
    (write-format "(I5.5)" 1000)
  "01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0811
    (write-format "(I5.5)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0812
    (write-format "(I5.5)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0813
    (write-format "(I5.5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0814
    (write-format "(I5.5)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0815
    (write-format "(I5.5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0816
    (write-format "(I5.5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0817
    (write-format "(I6.5)" 0)
  " 00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0818
    (write-format "(I6.5)" 0)
  " 00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0819
    (write-format "(I6.5)" 1)
  " 00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0820
    (write-format "(I6.5)" -1)
  "-00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0821
    (write-format "(I6.5)" 3)
  " 00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0822
    (write-format "(I6.5)" -3)
  "-00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0823
    (write-format "(I6.5)" 10)
  " 00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0824
    (write-format "(I6.5)" -10)
  "-00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0825
    (write-format "(I6.5)" 100)
  " 00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0826
    (write-format "(I6.5)" -100)
  "-00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0827
    (write-format "(I6.5)" 1000)
  " 01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0828
    (write-format "(I6.5)" -1000)
  "-01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0829
    (write-format "(I6.5)" 10000)
  " 10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0830
    (write-format "(I6.5)" -10000)
  "-10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0831
    (write-format "(I6.5)" 100000)
  "100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0832
    (write-format "(I6.5)" -100000)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0833
    (write-format "(I6.5)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0834
    (write-format "(I7.5)" 0)
  "  00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0835
    (write-format "(I7.5)" 0)
  "  00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0836
    (write-format "(I7.5)" 1)
  "  00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0837
    (write-format "(I7.5)" -1)
  " -00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0838
    (write-format "(I7.5)" 3)
  "  00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0839
    (write-format "(I7.5)" -3)
  " -00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0840
    (write-format "(I7.5)" 10)
  "  00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0841
    (write-format "(I7.5)" -10)
  " -00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0842
    (write-format "(I7.5)" 100)
  "  00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0843
    (write-format "(I7.5)" -100)
  " -00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0844
    (write-format "(I7.5)" 1000)
  "  01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0845
    (write-format "(I7.5)" -1000)
  " -01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0846
    (write-format "(I7.5)" 10000)
  "  10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0847
    (write-format "(I7.5)" -10000)
  " -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0848
    (write-format "(I7.5)" 100000)
  " 100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0849
    (write-format "(I7.5)" -100000)
  "-100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0850
    (write-format "(I7.5)" 123456789)
  "*******")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0851
    (write-format "(I8.5)" 0)
  "   00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0852
    (write-format "(I8.5)" 0)
  "   00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0853
    (write-format "(I8.5)" 1)
  "   00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0854
    (write-format "(I8.5)" -1)
  "  -00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0855
    (write-format "(I8.5)" 3)
  "   00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0856
    (write-format "(I8.5)" -3)
  "  -00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0857
    (write-format "(I8.5)" 10)
  "   00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0858
    (write-format "(I8.5)" -10)
  "  -00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0859
    (write-format "(I8.5)" 100)
  "   00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0860
    (write-format "(I8.5)" -100)
  "  -00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0861
    (write-format "(I8.5)" 1000)
  "   01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0862
    (write-format "(I8.5)" -1000)
  "  -01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0863
    (write-format "(I8.5)" 10000)
  "   10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0864
    (write-format "(I8.5)" -10000)
  "  -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0865
    (write-format "(I8.5)" 100000)
  "  100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0866
    (write-format "(I8.5)" -100000)
  " -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0867
    (write-format "(I8.5)" 123456789)
  "********")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0868
    (write-format "(I9.5)" 0)
  "    00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0869
    (write-format "(I9.5)" 0)
  "    00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0870
    (write-format "(I9.5)" 1)
  "    00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0871
    (write-format "(I9.5)" -1)
  "   -00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0872
    (write-format "(I9.5)" 3)
  "    00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0873
    (write-format "(I9.5)" -3)
  "   -00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0874
    (write-format "(I9.5)" 10)
  "    00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0875
    (write-format "(I9.5)" -10)
  "   -00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0876
    (write-format "(I9.5)" 100)
  "    00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0877
    (write-format "(I9.5)" -100)
  "   -00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0878
    (write-format "(I9.5)" 1000)
  "    01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0879
    (write-format "(I9.5)" -1000)
  "   -01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0880
    (write-format "(I9.5)" 10000)
  "    10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0881
    (write-format "(I9.5)" -10000)
  "   -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0882
    (write-format "(I9.5)" 100000)
  "   100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0883
    (write-format "(I9.5)" -100000)
  "  -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0884
    (write-format "(I9.5)" 123456789)
  "123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0885
    (write-format "(I10.5)" 0)
  "     00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0886
    (write-format "(I10.5)" 0)
  "     00000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0887
    (write-format "(I10.5)" 1)
  "     00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0888
    (write-format "(I10.5)" -1)
  "    -00001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0889
    (write-format "(I10.5)" 3)
  "     00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0890
    (write-format "(I10.5)" -3)
  "    -00003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0891
    (write-format "(I10.5)" 10)
  "     00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0892
    (write-format "(I10.5)" -10)
  "    -00010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0893
    (write-format "(I10.5)" 100)
  "     00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0894
    (write-format "(I10.5)" -100)
  "    -00100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0895
    (write-format "(I10.5)" 1000)
  "     01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0896
    (write-format "(I10.5)" -1000)
  "    -01000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0897
    (write-format "(I10.5)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0898
    (write-format "(I10.5)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0899
    (write-format "(I10.5)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0900
    (write-format "(I10.5)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0901
    (write-format "(I10.5)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0902
    (write-format "(1I1)" 0)
  "0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0903
    (write-format "(1I1)" 0)
  "0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0904
    (write-format "(1I1)" 1)
  "1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0905
    (write-format "(1I1)" -1)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0906
    (write-format "(1I1)" 3)
  "3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0907
    (write-format "(1I1)" -3)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0908
    (write-format "(1I1)" 10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0909
    (write-format "(1I1)" -10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0910
    (write-format "(1I1)" 100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0911
    (write-format "(1I1)" -100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0912
    (write-format "(1I1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0913
    (write-format "(1I1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0914
    (write-format "(1I1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0915
    (write-format "(1I1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0916
    (write-format "(1I1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0917
    (write-format "(1I1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0918
    (write-format "(1I1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0919
    (write-format "(1I2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0920
    (write-format "(1I2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0921
    (write-format "(1I2)" 1)
  " 1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0922
    (write-format "(1I2)" -1)
  "-1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0923
    (write-format "(1I2)" 3)
  " 3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0924
    (write-format "(1I2)" -3)
  "-3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0925
    (write-format "(1I2)" 10)
  "10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0926
    (write-format "(1I2)" -10)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0927
    (write-format "(1I2)" 100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0928
    (write-format "(1I2)" -100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0929
    (write-format "(1I2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0930
    (write-format "(1I2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0931
    (write-format "(1I2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0932
    (write-format "(1I2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0933
    (write-format "(1I2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0934
    (write-format "(1I2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0935
    (write-format "(1I2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0936
    (write-format "(1I3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0937
    (write-format "(1I3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0938
    (write-format "(1I3)" 1)
  "  1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0939
    (write-format "(1I3)" -1)
  " -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0940
    (write-format "(1I3)" 3)
  "  3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0941
    (write-format "(1I3)" -3)
  " -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0942
    (write-format "(1I3)" 10)
  " 10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0943
    (write-format "(1I3)" -10)
  "-10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0944
    (write-format "(1I3)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0945
    (write-format "(1I3)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0946
    (write-format "(1I3)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0947
    (write-format "(1I3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0948
    (write-format "(1I3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0949
    (write-format "(1I3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0950
    (write-format "(1I3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0951
    (write-format "(1I3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0952
    (write-format "(1I3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0953
    (write-format "(1I5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0954
    (write-format "(1I5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0955
    (write-format "(1I5)" 1)
  "    1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0956
    (write-format "(1I5)" -1)
  "   -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0957
    (write-format "(1I5)" 3)
  "    3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0958
    (write-format "(1I5)" -3)
  "   -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0959
    (write-format "(1I5)" 10)
  "   10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0960
    (write-format "(1I5)" -10)
  "  -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0961
    (write-format "(1I5)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0962
    (write-format "(1I5)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0963
    (write-format "(1I5)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0964
    (write-format "(1I5)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0965
    (write-format "(1I5)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0966
    (write-format "(1I5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0967
    (write-format "(1I5)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0968
    (write-format "(1I5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0969
    (write-format "(1I5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0970
    (write-format "(1I10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0971
    (write-format "(1I10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0972
    (write-format "(1I10)" 1)
  "         1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0973
    (write-format "(1I10)" -1)
  "        -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0974
    (write-format "(1I10)" 3)
  "         3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0975
    (write-format "(1I10)" -3)
  "        -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0976
    (write-format "(1I10)" 10)
  "        10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0977
    (write-format "(1I10)" -10)
  "       -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0978
    (write-format "(1I10)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0979
    (write-format "(1I10)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0980
    (write-format "(1I10)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0981
    (write-format "(1I10)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0982
    (write-format "(1I10)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0983
    (write-format "(1I10)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0984
    (write-format "(1I10)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0985
    (write-format "(1I10)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0986
    (write-format "(1I10)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0987
    (write-format "(2I1)" 0)
  "0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0988
    (write-format "(2I1)" 0)
  "0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0989
    (write-format "(2I1)" 1)
  "1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0990
    (write-format "(2I1)" -1)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0991
    (write-format "(2I1)" 3)
  "3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0992
    (write-format "(2I1)" -3)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0993
    (write-format "(2I1)" 10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0994
    (write-format "(2I1)" -10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0995
    (write-format "(2I1)" 100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0996
    (write-format "(2I1)" -100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0997
    (write-format "(2I1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0998
    (write-format "(2I1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.0999
    (write-format "(2I1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1000
    (write-format "(2I1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1001
    (write-format "(2I1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1002
    (write-format "(2I1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1003
    (write-format "(2I1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1004
    (write-format "(2I2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1005
    (write-format "(2I2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1006
    (write-format "(2I2)" 1)
  " 1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1007
    (write-format "(2I2)" -1)
  "-1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1008
    (write-format "(2I2)" 3)
  " 3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1009
    (write-format "(2I2)" -3)
  "-3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1010
    (write-format "(2I2)" 10)
  "10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1011
    (write-format "(2I2)" -10)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1012
    (write-format "(2I2)" 100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1013
    (write-format "(2I2)" -100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1014
    (write-format "(2I2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1015
    (write-format "(2I2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1016
    (write-format "(2I2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1017
    (write-format "(2I2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1018
    (write-format "(2I2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1019
    (write-format "(2I2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1020
    (write-format "(2I2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1021
    (write-format "(2I3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1022
    (write-format "(2I3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1023
    (write-format "(2I3)" 1)
  "  1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1024
    (write-format "(2I3)" -1)
  " -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1025
    (write-format "(2I3)" 3)
  "  3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1026
    (write-format "(2I3)" -3)
  " -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1027
    (write-format "(2I3)" 10)
  " 10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1028
    (write-format "(2I3)" -10)
  "-10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1029
    (write-format "(2I3)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1030
    (write-format "(2I3)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1031
    (write-format "(2I3)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1032
    (write-format "(2I3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1033
    (write-format "(2I3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1034
    (write-format "(2I3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1035
    (write-format "(2I3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1036
    (write-format "(2I3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1037
    (write-format "(2I3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1038
    (write-format "(2I5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1039
    (write-format "(2I5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1040
    (write-format "(2I5)" 1)
  "    1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1041
    (write-format "(2I5)" -1)
  "   -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1042
    (write-format "(2I5)" 3)
  "    3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1043
    (write-format "(2I5)" -3)
  "   -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1044
    (write-format "(2I5)" 10)
  "   10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1045
    (write-format "(2I5)" -10)
  "  -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1046
    (write-format "(2I5)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1047
    (write-format "(2I5)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1048
    (write-format "(2I5)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1049
    (write-format "(2I5)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1050
    (write-format "(2I5)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1051
    (write-format "(2I5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1052
    (write-format "(2I5)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1053
    (write-format "(2I5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1054
    (write-format "(2I5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1055
    (write-format "(2I10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1056
    (write-format "(2I10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1057
    (write-format "(2I10)" 1)
  "         1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1058
    (write-format "(2I10)" -1)
  "        -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1059
    (write-format "(2I10)" 3)
  "         3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1060
    (write-format "(2I10)" -3)
  "        -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1061
    (write-format "(2I10)" 10)
  "        10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1062
    (write-format "(2I10)" -10)
  "       -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1063
    (write-format "(2I10)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1064
    (write-format "(2I10)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1065
    (write-format "(2I10)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1066
    (write-format "(2I10)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1067
    (write-format "(2I10)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1068
    (write-format "(2I10)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1069
    (write-format "(2I10)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1070
    (write-format "(2I10)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1071
    (write-format "(2I10)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1072
    (write-format "(3I1)" 0)
  "0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1073
    (write-format "(3I1)" 0)
  "0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1074
    (write-format "(3I1)" 1)
  "1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1075
    (write-format "(3I1)" -1)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1076
    (write-format "(3I1)" 3)
  "3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1077
    (write-format "(3I1)" -3)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1078
    (write-format "(3I1)" 10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1079
    (write-format "(3I1)" -10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1080
    (write-format "(3I1)" 100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1081
    (write-format "(3I1)" -100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1082
    (write-format "(3I1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1083
    (write-format "(3I1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1084
    (write-format "(3I1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1085
    (write-format "(3I1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1086
    (write-format "(3I1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1087
    (write-format "(3I1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1088
    (write-format "(3I1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1089
    (write-format "(3I2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1090
    (write-format "(3I2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1091
    (write-format "(3I2)" 1)
  " 1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1092
    (write-format "(3I2)" -1)
  "-1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1093
    (write-format "(3I2)" 3)
  " 3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1094
    (write-format "(3I2)" -3)
  "-3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1095
    (write-format "(3I2)" 10)
  "10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1096
    (write-format "(3I2)" -10)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1097
    (write-format "(3I2)" 100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1098
    (write-format "(3I2)" -100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1099
    (write-format "(3I2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1100
    (write-format "(3I2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1101
    (write-format "(3I2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1102
    (write-format "(3I2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1103
    (write-format "(3I2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1104
    (write-format "(3I2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1105
    (write-format "(3I2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1106
    (write-format "(3I3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1107
    (write-format "(3I3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1108
    (write-format "(3I3)" 1)
  "  1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1109
    (write-format "(3I3)" -1)
  " -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1110
    (write-format "(3I3)" 3)
  "  3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1111
    (write-format "(3I3)" -3)
  " -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1112
    (write-format "(3I3)" 10)
  " 10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1113
    (write-format "(3I3)" -10)
  "-10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1114
    (write-format "(3I3)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1115
    (write-format "(3I3)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1116
    (write-format "(3I3)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1117
    (write-format "(3I3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1118
    (write-format "(3I3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1119
    (write-format "(3I3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1120
    (write-format "(3I3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1121
    (write-format "(3I3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1122
    (write-format "(3I3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1123
    (write-format "(3I5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1124
    (write-format "(3I5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1125
    (write-format "(3I5)" 1)
  "    1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1126
    (write-format "(3I5)" -1)
  "   -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1127
    (write-format "(3I5)" 3)
  "    3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1128
    (write-format "(3I5)" -3)
  "   -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1129
    (write-format "(3I5)" 10)
  "   10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1130
    (write-format "(3I5)" -10)
  "  -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1131
    (write-format "(3I5)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1132
    (write-format "(3I5)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1133
    (write-format "(3I5)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1134
    (write-format "(3I5)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1135
    (write-format "(3I5)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1136
    (write-format "(3I5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1137
    (write-format "(3I5)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1138
    (write-format "(3I5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1139
    (write-format "(3I5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1140
    (write-format "(3I10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1141
    (write-format "(3I10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1142
    (write-format "(3I10)" 1)
  "         1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1143
    (write-format "(3I10)" -1)
  "        -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1144
    (write-format "(3I10)" 3)
  "         3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1145
    (write-format "(3I10)" -3)
  "        -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1146
    (write-format "(3I10)" 10)
  "        10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1147
    (write-format "(3I10)" -10)
  "       -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1148
    (write-format "(3I10)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1149
    (write-format "(3I10)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1150
    (write-format "(3I10)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1151
    (write-format "(3I10)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1152
    (write-format "(3I10)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1153
    (write-format "(3I10)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1154
    (write-format "(3I10)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1155
    (write-format "(3I10)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1156
    (write-format "(3I10)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1157
    (write-format "(1I1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1158
    (write-format "(1I1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1159
    (write-format "(1I1.0)" 1)
  "1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1160
    (write-format "(1I1.0)" -1)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1161
    (write-format "(1I1.0)" 3)
  "3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1162
    (write-format "(1I1.0)" -3)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1163
    (write-format "(1I1.0)" 10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1164
    (write-format "(1I1.0)" -10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1165
    (write-format "(1I1.0)" 100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1166
    (write-format "(1I1.0)" -100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1167
    (write-format "(1I1.0)" 1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1168
    (write-format "(1I1.0)" -1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1169
    (write-format "(1I1.0)" 10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1170
    (write-format "(1I1.0)" -10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1171
    (write-format "(1I1.0)" 100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1172
    (write-format "(1I1.0)" -100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1173
    (write-format "(1I1.0)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1174
    (write-format "(1I2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1175
    (write-format "(1I2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1176
    (write-format "(1I2.0)" 1)
  " 1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1177
    (write-format "(1I2.0)" -1)
  "-1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1178
    (write-format "(1I2.0)" 3)
  " 3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1179
    (write-format "(1I2.0)" -3)
  "-3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1180
    (write-format "(1I2.0)" 10)
  "10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1181
    (write-format "(1I2.0)" -10)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1182
    (write-format "(1I2.0)" 100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1183
    (write-format "(1I2.0)" -100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1184
    (write-format "(1I2.0)" 1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1185
    (write-format "(1I2.0)" -1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1186
    (write-format "(1I2.0)" 10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1187
    (write-format "(1I2.0)" -10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1188
    (write-format "(1I2.0)" 100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1189
    (write-format "(1I2.0)" -100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1190
    (write-format "(1I2.0)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1191
    (write-format "(1I3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1192
    (write-format "(1I3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1193
    (write-format "(1I3.0)" 1)
  "  1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1194
    (write-format "(1I3.0)" -1)
  " -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1195
    (write-format "(1I3.0)" 3)
  "  3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1196
    (write-format "(1I3.0)" -3)
  " -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1197
    (write-format "(1I3.0)" 10)
  " 10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1198
    (write-format "(1I3.0)" -10)
  "-10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1199
    (write-format "(1I3.0)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1200
    (write-format "(1I3.0)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1201
    (write-format "(1I3.0)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1202
    (write-format "(1I3.0)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1203
    (write-format "(1I3.0)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1204
    (write-format "(1I3.0)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1205
    (write-format "(1I3.0)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1206
    (write-format "(1I3.0)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1207
    (write-format "(1I3.0)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1208
    (write-format "(1I5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1209
    (write-format "(1I5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1210
    (write-format "(1I5.0)" 1)
  "    1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1211
    (write-format "(1I5.0)" -1)
  "   -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1212
    (write-format "(1I5.0)" 3)
  "    3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1213
    (write-format "(1I5.0)" -3)
  "   -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1214
    (write-format "(1I5.0)" 10)
  "   10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1215
    (write-format "(1I5.0)" -10)
  "  -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1216
    (write-format "(1I5.0)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1217
    (write-format "(1I5.0)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1218
    (write-format "(1I5.0)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1219
    (write-format "(1I5.0)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1220
    (write-format "(1I5.0)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1221
    (write-format "(1I5.0)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1222
    (write-format "(1I5.0)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1223
    (write-format "(1I5.0)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1224
    (write-format "(1I5.0)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1225
    (write-format "(1I10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1226
    (write-format "(1I10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1227
    (write-format "(1I10.0)" 1)
  "         1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1228
    (write-format "(1I10.0)" -1)
  "        -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1229
    (write-format "(1I10.0)" 3)
  "         3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1230
    (write-format "(1I10.0)" -3)
  "        -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1231
    (write-format "(1I10.0)" 10)
  "        10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1232
    (write-format "(1I10.0)" -10)
  "       -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1233
    (write-format "(1I10.0)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1234
    (write-format "(1I10.0)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1235
    (write-format "(1I10.0)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1236
    (write-format "(1I10.0)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1237
    (write-format "(1I10.0)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1238
    (write-format "(1I10.0)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1239
    (write-format "(1I10.0)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1240
    (write-format "(1I10.0)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1241
    (write-format "(1I10.0)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1242
    (write-format "(1I3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1243
    (write-format "(1I3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1244
    (write-format "(1I3.3)" 1)
  "001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1245
    (write-format "(1I3.3)" -1)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1246
    (write-format "(1I3.3)" 3)
  "003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1247
    (write-format "(1I3.3)" -3)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1248
    (write-format "(1I3.3)" 10)
  "010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1249
    (write-format "(1I3.3)" -10)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1250
    (write-format "(1I3.3)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1251
    (write-format "(1I3.3)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1252
    (write-format "(1I3.3)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1253
    (write-format "(1I3.3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1254
    (write-format "(1I3.3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1255
    (write-format "(1I3.3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1256
    (write-format "(1I3.3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1257
    (write-format "(1I3.3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1258
    (write-format "(1I3.3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1259
    (write-format "(1I5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1260
    (write-format "(1I5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1261
    (write-format "(1I5.3)" 1)
  "  001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1262
    (write-format "(1I5.3)" -1)
  " -001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1263
    (write-format "(1I5.3)" 3)
  "  003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1264
    (write-format "(1I5.3)" -3)
  " -003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1265
    (write-format "(1I5.3)" 10)
  "  010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1266
    (write-format "(1I5.3)" -10)
  " -010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1267
    (write-format "(1I5.3)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1268
    (write-format "(1I5.3)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1269
    (write-format "(1I5.3)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1270
    (write-format "(1I5.3)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1271
    (write-format "(1I5.3)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1272
    (write-format "(1I5.3)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1273
    (write-format "(1I5.3)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1274
    (write-format "(1I5.3)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1275
    (write-format "(1I5.3)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1276
    (write-format "(1I10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1277
    (write-format "(1I10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1278
    (write-format "(1I10.3)" 1)
  "       001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1279
    (write-format "(1I10.3)" -1)
  "      -001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1280
    (write-format "(1I10.3)" 3)
  "       003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1281
    (write-format "(1I10.3)" -3)
  "      -003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1282
    (write-format "(1I10.3)" 10)
  "       010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1283
    (write-format "(1I10.3)" -10)
  "      -010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1284
    (write-format "(1I10.3)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1285
    (write-format "(1I10.3)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1286
    (write-format "(1I10.3)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1287
    (write-format "(1I10.3)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1288
    (write-format "(1I10.3)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1289
    (write-format "(1I10.3)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1290
    (write-format "(1I10.3)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1291
    (write-format "(1I10.3)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1292
    (write-format "(1I10.3)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1293
    (write-format "(3I1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1294
    (write-format "(3I1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1295
    (write-format "(3I1.0)" 1)
  "1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1296
    (write-format "(3I1.0)" -1)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1297
    (write-format "(3I1.0)" 3)
  "3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1298
    (write-format "(3I1.0)" -3)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1299
    (write-format "(3I1.0)" 10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1300
    (write-format "(3I1.0)" -10)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1301
    (write-format "(3I1.0)" 100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1302
    (write-format "(3I1.0)" -100)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1303
    (write-format "(3I1.0)" 1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1304
    (write-format "(3I1.0)" -1000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1305
    (write-format "(3I1.0)" 10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1306
    (write-format "(3I1.0)" -10000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1307
    (write-format "(3I1.0)" 100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1308
    (write-format "(3I1.0)" -100000)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1309
    (write-format "(3I1.0)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1310
    (write-format "(3I2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1311
    (write-format "(3I2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1312
    (write-format "(3I2.0)" 1)
  " 1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1313
    (write-format "(3I2.0)" -1)
  "-1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1314
    (write-format "(3I2.0)" 3)
  " 3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1315
    (write-format "(3I2.0)" -3)
  "-3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1316
    (write-format "(3I2.0)" 10)
  "10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1317
    (write-format "(3I2.0)" -10)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1318
    (write-format "(3I2.0)" 100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1319
    (write-format "(3I2.0)" -100)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1320
    (write-format "(3I2.0)" 1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1321
    (write-format "(3I2.0)" -1000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1322
    (write-format "(3I2.0)" 10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1323
    (write-format "(3I2.0)" -10000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1324
    (write-format "(3I2.0)" 100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1325
    (write-format "(3I2.0)" -100000)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1326
    (write-format "(3I2.0)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1327
    (write-format "(3I3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1328
    (write-format "(3I3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1329
    (write-format "(3I3.0)" 1)
  "  1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1330
    (write-format "(3I3.0)" -1)
  " -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1331
    (write-format "(3I3.0)" 3)
  "  3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1332
    (write-format "(3I3.0)" -3)
  " -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1333
    (write-format "(3I3.0)" 10)
  " 10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1334
    (write-format "(3I3.0)" -10)
  "-10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1335
    (write-format "(3I3.0)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1336
    (write-format "(3I3.0)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1337
    (write-format "(3I3.0)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1338
    (write-format "(3I3.0)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1339
    (write-format "(3I3.0)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1340
    (write-format "(3I3.0)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1341
    (write-format "(3I3.0)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1342
    (write-format "(3I3.0)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1343
    (write-format "(3I3.0)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1344
    (write-format "(3I5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1345
    (write-format "(3I5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1346
    (write-format "(3I5.0)" 1)
  "    1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1347
    (write-format "(3I5.0)" -1)
  "   -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1348
    (write-format "(3I5.0)" 3)
  "    3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1349
    (write-format "(3I5.0)" -3)
  "   -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1350
    (write-format "(3I5.0)" 10)
  "   10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1351
    (write-format "(3I5.0)" -10)
  "  -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1352
    (write-format "(3I5.0)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1353
    (write-format "(3I5.0)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1354
    (write-format "(3I5.0)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1355
    (write-format "(3I5.0)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1356
    (write-format "(3I5.0)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1357
    (write-format "(3I5.0)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1358
    (write-format "(3I5.0)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1359
    (write-format "(3I5.0)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1360
    (write-format "(3I5.0)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1361
    (write-format "(3I10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1362
    (write-format "(3I10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1363
    (write-format "(3I10.0)" 1)
  "         1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1364
    (write-format "(3I10.0)" -1)
  "        -1")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1365
    (write-format "(3I10.0)" 3)
  "         3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1366
    (write-format "(3I10.0)" -3)
  "        -3")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1367
    (write-format "(3I10.0)" 10)
  "        10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1368
    (write-format "(3I10.0)" -10)
  "       -10")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1369
    (write-format "(3I10.0)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1370
    (write-format "(3I10.0)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1371
    (write-format "(3I10.0)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1372
    (write-format "(3I10.0)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1373
    (write-format "(3I10.0)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1374
    (write-format "(3I10.0)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1375
    (write-format "(3I10.0)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1376
    (write-format "(3I10.0)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1377
    (write-format "(3I10.0)" 123456789)
  " 123456789")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1378
    (write-format "(3I3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1379
    (write-format "(3I3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1380
    (write-format "(3I3.3)" 1)
  "001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1381
    (write-format "(3I3.3)" -1)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1382
    (write-format "(3I3.3)" 3)
  "003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1383
    (write-format "(3I3.3)" -3)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1384
    (write-format "(3I3.3)" 10)
  "010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1385
    (write-format "(3I3.3)" -10)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1386
    (write-format "(3I3.3)" 100)
  "100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1387
    (write-format "(3I3.3)" -100)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1388
    (write-format "(3I3.3)" 1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1389
    (write-format "(3I3.3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1390
    (write-format "(3I3.3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1391
    (write-format "(3I3.3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1392
    (write-format "(3I3.3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1393
    (write-format "(3I3.3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1394
    (write-format "(3I3.3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1395
    (write-format "(3I5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1396
    (write-format "(3I5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1397
    (write-format "(3I5.3)" 1)
  "  001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1398
    (write-format "(3I5.3)" -1)
  " -001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1399
    (write-format "(3I5.3)" 3)
  "  003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1400
    (write-format "(3I5.3)" -3)
  " -003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1401
    (write-format "(3I5.3)" 10)
  "  010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1402
    (write-format "(3I5.3)" -10)
  " -010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1403
    (write-format "(3I5.3)" 100)
  "  100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1404
    (write-format "(3I5.3)" -100)
  " -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1405
    (write-format "(3I5.3)" 1000)
  " 1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1406
    (write-format "(3I5.3)" -1000)
  "-1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1407
    (write-format "(3I5.3)" 10000)
  "10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1408
    (write-format "(3I5.3)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1409
    (write-format "(3I5.3)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1410
    (write-format "(3I5.3)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1411
    (write-format "(3I5.3)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1412
    (write-format "(3I10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1413
    (write-format "(3I10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1414
    (write-format "(3I10.3)" 1)
  "       001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1415
    (write-format "(3I10.3)" -1)
  "      -001")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1416
    (write-format "(3I10.3)" 3)
  "       003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1417
    (write-format "(3I10.3)" -3)
  "      -003")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1418
    (write-format "(3I10.3)" 10)
  "       010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1419
    (write-format "(3I10.3)" -10)
  "      -010")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1420
    (write-format "(3I10.3)" 100)
  "       100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1421
    (write-format "(3I10.3)" -100)
  "      -100")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1422
    (write-format "(3I10.3)" 1000)
  "      1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1423
    (write-format "(3I10.3)" -1000)
  "     -1000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1424
    (write-format "(3I10.3)" 10000)
  "     10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1425
    (write-format "(3I10.3)" -10000)
  "    -10000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1426
    (write-format "(3I10.3)" 100000)
  "    100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1427
    (write-format "(3I10.3)" -100000)
  "   -100000")

(rt:deftest FMT.CORPUS.I-ED-OUTPUT.1428
    (write-format "(3I10.3)" 123456789)
  " 123456789")

