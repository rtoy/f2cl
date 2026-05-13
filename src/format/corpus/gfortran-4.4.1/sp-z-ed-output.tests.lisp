;;;; sp-z-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from sp-z-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...sp-z-ed-output.test")
;;;;
;;;; 1428 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0001
    (write-format "(SP, Z1)" 0)
  "0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0002
    (write-format "(SP, Z1)" 0)
  "0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0003
    (write-format "(SP, Z1)" 1)
  "1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0004
    (write-format "(SP, Z1)" -1)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0005
    (write-format "(SP, Z1)" 3)
  "3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0006
    (write-format "(SP, Z1)" -3)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0007
    (write-format "(SP, Z1)" 10)
  "A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0008
    (write-format "(SP, Z1)" -10)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0009
    (write-format "(SP, Z1)" 100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0010
    (write-format "(SP, Z1)" -100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0011
    (write-format "(SP, Z1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0012
    (write-format "(SP, Z1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0013
    (write-format "(SP, Z1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0014
    (write-format "(SP, Z1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0015
    (write-format "(SP, Z1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0016
    (write-format "(SP, Z1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0017
    (write-format "(SP, Z1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0018
    (write-format "(SP, Z2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0019
    (write-format "(SP, Z2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0020
    (write-format "(SP, Z2)" 1)
  " 1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0021
    (write-format "(SP, Z2)" -1)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0022
    (write-format "(SP, Z2)" 3)
  " 3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0023
    (write-format "(SP, Z2)" -3)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0024
    (write-format "(SP, Z2)" 10)
  " A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0025
    (write-format "(SP, Z2)" -10)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0026
    (write-format "(SP, Z2)" 100)
  "64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0027
    (write-format "(SP, Z2)" -100)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0028
    (write-format "(SP, Z2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0029
    (write-format "(SP, Z2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0030
    (write-format "(SP, Z2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0031
    (write-format "(SP, Z2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0032
    (write-format "(SP, Z2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0033
    (write-format "(SP, Z2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0034
    (write-format "(SP, Z2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0035
    (write-format "(SP, Z3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0036
    (write-format "(SP, Z3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0037
    (write-format "(SP, Z3)" 1)
  "  1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0038
    (write-format "(SP, Z3)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0039
    (write-format "(SP, Z3)" 3)
  "  3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0040
    (write-format "(SP, Z3)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0041
    (write-format "(SP, Z3)" 10)
  "  A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0042
    (write-format "(SP, Z3)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0043
    (write-format "(SP, Z3)" 100)
  " 64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0044
    (write-format "(SP, Z3)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0045
    (write-format "(SP, Z3)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0046
    (write-format "(SP, Z3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0047
    (write-format "(SP, Z3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0048
    (write-format "(SP, Z3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0049
    (write-format "(SP, Z3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0050
    (write-format "(SP, Z3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0051
    (write-format "(SP, Z3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0052
    (write-format "(SP, Z4)" 0)
  "   0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0053
    (write-format "(SP, Z4)" 0)
  "   0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0054
    (write-format "(SP, Z4)" 1)
  "   1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0055
    (write-format "(SP, Z4)" -1)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0056
    (write-format "(SP, Z4)" 3)
  "   3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0057
    (write-format "(SP, Z4)" -3)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0058
    (write-format "(SP, Z4)" 10)
  "   A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0059
    (write-format "(SP, Z4)" -10)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0060
    (write-format "(SP, Z4)" 100)
  "  64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0061
    (write-format "(SP, Z4)" -100)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0062
    (write-format "(SP, Z4)" 1000)
  " 3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0063
    (write-format "(SP, Z4)" -1000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0064
    (write-format "(SP, Z4)" 10000)
  "2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0065
    (write-format "(SP, Z4)" -10000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0066
    (write-format "(SP, Z4)" 100000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0067
    (write-format "(SP, Z4)" -100000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0068
    (write-format "(SP, Z4)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0069
    (write-format "(SP, Z5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0070
    (write-format "(SP, Z5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0071
    (write-format "(SP, Z5)" 1)
  "    1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0072
    (write-format "(SP, Z5)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0073
    (write-format "(SP, Z5)" 3)
  "    3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0074
    (write-format "(SP, Z5)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0075
    (write-format "(SP, Z5)" 10)
  "    A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0076
    (write-format "(SP, Z5)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0077
    (write-format "(SP, Z5)" 100)
  "   64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0078
    (write-format "(SP, Z5)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0079
    (write-format "(SP, Z5)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0080
    (write-format "(SP, Z5)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0081
    (write-format "(SP, Z5)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0082
    (write-format "(SP, Z5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0083
    (write-format "(SP, Z5)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0084
    (write-format "(SP, Z5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0085
    (write-format "(SP, Z5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0086
    (write-format "(SP, Z6)" 0)
  "     0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0087
    (write-format "(SP, Z6)" 0)
  "     0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0088
    (write-format "(SP, Z6)" 1)
  "     1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0089
    (write-format "(SP, Z6)" -1)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0090
    (write-format "(SP, Z6)" 3)
  "     3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0091
    (write-format "(SP, Z6)" -3)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0092
    (write-format "(SP, Z6)" 10)
  "     A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0093
    (write-format "(SP, Z6)" -10)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0094
    (write-format "(SP, Z6)" 100)
  "    64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0095
    (write-format "(SP, Z6)" -100)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0096
    (write-format "(SP, Z6)" 1000)
  "   3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0097
    (write-format "(SP, Z6)" -1000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0098
    (write-format "(SP, Z6)" 10000)
  "  2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0099
    (write-format "(SP, Z6)" -10000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0100
    (write-format "(SP, Z6)" 100000)
  " 186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0101
    (write-format "(SP, Z6)" -100000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0102
    (write-format "(SP, Z6)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0103
    (write-format "(SP, Z7)" 0)
  "      0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0104
    (write-format "(SP, Z7)" 0)
  "      0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0105
    (write-format "(SP, Z7)" 1)
  "      1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0106
    (write-format "(SP, Z7)" -1)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0107
    (write-format "(SP, Z7)" 3)
  "      3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0108
    (write-format "(SP, Z7)" -3)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0109
    (write-format "(SP, Z7)" 10)
  "      A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0110
    (write-format "(SP, Z7)" -10)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0111
    (write-format "(SP, Z7)" 100)
  "     64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0112
    (write-format "(SP, Z7)" -100)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0113
    (write-format "(SP, Z7)" 1000)
  "    3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0114
    (write-format "(SP, Z7)" -1000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0115
    (write-format "(SP, Z7)" 10000)
  "   2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0116
    (write-format "(SP, Z7)" -10000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0117
    (write-format "(SP, Z7)" 100000)
  "  186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0118
    (write-format "(SP, Z7)" -100000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0119
    (write-format "(SP, Z7)" 123456789)
  "75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0120
    (write-format "(SP, Z8)" 0)
  "       0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0121
    (write-format "(SP, Z8)" 0)
  "       0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0122
    (write-format "(SP, Z8)" 1)
  "       1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0123
    (write-format "(SP, Z8)" -1)
  "FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0124
    (write-format "(SP, Z8)" 3)
  "       3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0125
    (write-format "(SP, Z8)" -3)
  "FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0126
    (write-format "(SP, Z8)" 10)
  "       A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0127
    (write-format "(SP, Z8)" -10)
  "FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0128
    (write-format "(SP, Z8)" 100)
  "      64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0129
    (write-format "(SP, Z8)" -100)
  "FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0130
    (write-format "(SP, Z8)" 1000)
  "     3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0131
    (write-format "(SP, Z8)" -1000)
  "FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0132
    (write-format "(SP, Z8)" 10000)
  "    2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0133
    (write-format "(SP, Z8)" -10000)
  "FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0134
    (write-format "(SP, Z8)" 100000)
  "   186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0135
    (write-format "(SP, Z8)" -100000)
  "FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0136
    (write-format "(SP, Z8)" 123456789)
  " 75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0137
    (write-format "(SP, Z9)" 0)
  "        0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0138
    (write-format "(SP, Z9)" 0)
  "        0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0139
    (write-format "(SP, Z9)" 1)
  "        1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0140
    (write-format "(SP, Z9)" -1)
  " FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0141
    (write-format "(SP, Z9)" 3)
  "        3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0142
    (write-format "(SP, Z9)" -3)
  " FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0143
    (write-format "(SP, Z9)" 10)
  "        A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0144
    (write-format "(SP, Z9)" -10)
  " FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0145
    (write-format "(SP, Z9)" 100)
  "       64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0146
    (write-format "(SP, Z9)" -100)
  " FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0147
    (write-format "(SP, Z9)" 1000)
  "      3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0148
    (write-format "(SP, Z9)" -1000)
  " FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0149
    (write-format "(SP, Z9)" 10000)
  "     2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0150
    (write-format "(SP, Z9)" -10000)
  " FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0151
    (write-format "(SP, Z9)" 100000)
  "    186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0152
    (write-format "(SP, Z9)" -100000)
  " FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0153
    (write-format "(SP, Z9)" 123456789)
  "  75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0154
    (write-format "(SP, Z10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0155
    (write-format "(SP, Z10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0156
    (write-format "(SP, Z10)" 1)
  "         1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0157
    (write-format "(SP, Z10)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0158
    (write-format "(SP, Z10)" 3)
  "         3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0159
    (write-format "(SP, Z10)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0160
    (write-format "(SP, Z10)" 10)
  "         A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0161
    (write-format "(SP, Z10)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0162
    (write-format "(SP, Z10)" 100)
  "        64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0163
    (write-format "(SP, Z10)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0164
    (write-format "(SP, Z10)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0165
    (write-format "(SP, Z10)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0166
    (write-format "(SP, Z10)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0167
    (write-format "(SP, Z10)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0168
    (write-format "(SP, Z10)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0169
    (write-format "(SP, Z10)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0170
    (write-format "(SP, Z10)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0171
    (write-format "(SP, Z1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0172
    (write-format "(SP, Z1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0173
    (write-format "(SP, Z1.0)" 1)
  "1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0174
    (write-format "(SP, Z1.0)" -1)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0175
    (write-format "(SP, Z1.0)" 3)
  "3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0176
    (write-format "(SP, Z1.0)" -3)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0177
    (write-format "(SP, Z1.0)" 10)
  "A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0178
    (write-format "(SP, Z1.0)" -10)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0179
    (write-format "(SP, Z1.0)" 100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0180
    (write-format "(SP, Z1.0)" -100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0181
    (write-format "(SP, Z1.0)" 1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0182
    (write-format "(SP, Z1.0)" -1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0183
    (write-format "(SP, Z1.0)" 10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0184
    (write-format "(SP, Z1.0)" -10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0185
    (write-format "(SP, Z1.0)" 100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0186
    (write-format "(SP, Z1.0)" -100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0187
    (write-format "(SP, Z1.0)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0188
    (write-format "(SP, Z2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0189
    (write-format "(SP, Z2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0190
    (write-format "(SP, Z2.0)" 1)
  " 1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0191
    (write-format "(SP, Z2.0)" -1)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0192
    (write-format "(SP, Z2.0)" 3)
  " 3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0193
    (write-format "(SP, Z2.0)" -3)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0194
    (write-format "(SP, Z2.0)" 10)
  " A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0195
    (write-format "(SP, Z2.0)" -10)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0196
    (write-format "(SP, Z2.0)" 100)
  "64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0197
    (write-format "(SP, Z2.0)" -100)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0198
    (write-format "(SP, Z2.0)" 1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0199
    (write-format "(SP, Z2.0)" -1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0200
    (write-format "(SP, Z2.0)" 10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0201
    (write-format "(SP, Z2.0)" -10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0202
    (write-format "(SP, Z2.0)" 100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0203
    (write-format "(SP, Z2.0)" -100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0204
    (write-format "(SP, Z2.0)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0205
    (write-format "(SP, Z3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0206
    (write-format "(SP, Z3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0207
    (write-format "(SP, Z3.0)" 1)
  "  1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0208
    (write-format "(SP, Z3.0)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0209
    (write-format "(SP, Z3.0)" 3)
  "  3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0210
    (write-format "(SP, Z3.0)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0211
    (write-format "(SP, Z3.0)" 10)
  "  A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0212
    (write-format "(SP, Z3.0)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0213
    (write-format "(SP, Z3.0)" 100)
  " 64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0214
    (write-format "(SP, Z3.0)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0215
    (write-format "(SP, Z3.0)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0216
    (write-format "(SP, Z3.0)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0217
    (write-format "(SP, Z3.0)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0218
    (write-format "(SP, Z3.0)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0219
    (write-format "(SP, Z3.0)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0220
    (write-format "(SP, Z3.0)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0221
    (write-format "(SP, Z3.0)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0222
    (write-format "(SP, Z4.0)" 0)
  "    ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0223
    (write-format "(SP, Z4.0)" 0)
  "    ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0224
    (write-format "(SP, Z4.0)" 1)
  "   1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0225
    (write-format "(SP, Z4.0)" -1)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0226
    (write-format "(SP, Z4.0)" 3)
  "   3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0227
    (write-format "(SP, Z4.0)" -3)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0228
    (write-format "(SP, Z4.0)" 10)
  "   A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0229
    (write-format "(SP, Z4.0)" -10)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0230
    (write-format "(SP, Z4.0)" 100)
  "  64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0231
    (write-format "(SP, Z4.0)" -100)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0232
    (write-format "(SP, Z4.0)" 1000)
  " 3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0233
    (write-format "(SP, Z4.0)" -1000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0234
    (write-format "(SP, Z4.0)" 10000)
  "2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0235
    (write-format "(SP, Z4.0)" -10000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0236
    (write-format "(SP, Z4.0)" 100000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0237
    (write-format "(SP, Z4.0)" -100000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0238
    (write-format "(SP, Z4.0)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0239
    (write-format "(SP, Z5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0240
    (write-format "(SP, Z5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0241
    (write-format "(SP, Z5.0)" 1)
  "    1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0242
    (write-format "(SP, Z5.0)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0243
    (write-format "(SP, Z5.0)" 3)
  "    3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0244
    (write-format "(SP, Z5.0)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0245
    (write-format "(SP, Z5.0)" 10)
  "    A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0246
    (write-format "(SP, Z5.0)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0247
    (write-format "(SP, Z5.0)" 100)
  "   64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0248
    (write-format "(SP, Z5.0)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0249
    (write-format "(SP, Z5.0)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0250
    (write-format "(SP, Z5.0)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0251
    (write-format "(SP, Z5.0)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0252
    (write-format "(SP, Z5.0)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0253
    (write-format "(SP, Z5.0)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0254
    (write-format "(SP, Z5.0)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0255
    (write-format "(SP, Z5.0)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0256
    (write-format "(SP, Z6.0)" 0)
  "      ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0257
    (write-format "(SP, Z6.0)" 0)
  "      ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0258
    (write-format "(SP, Z6.0)" 1)
  "     1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0259
    (write-format "(SP, Z6.0)" -1)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0260
    (write-format "(SP, Z6.0)" 3)
  "     3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0261
    (write-format "(SP, Z6.0)" -3)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0262
    (write-format "(SP, Z6.0)" 10)
  "     A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0263
    (write-format "(SP, Z6.0)" -10)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0264
    (write-format "(SP, Z6.0)" 100)
  "    64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0265
    (write-format "(SP, Z6.0)" -100)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0266
    (write-format "(SP, Z6.0)" 1000)
  "   3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0267
    (write-format "(SP, Z6.0)" -1000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0268
    (write-format "(SP, Z6.0)" 10000)
  "  2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0269
    (write-format "(SP, Z6.0)" -10000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0270
    (write-format "(SP, Z6.0)" 100000)
  " 186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0271
    (write-format "(SP, Z6.0)" -100000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0272
    (write-format "(SP, Z6.0)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0273
    (write-format "(SP, Z7.0)" 0)
  "       ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0274
    (write-format "(SP, Z7.0)" 0)
  "       ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0275
    (write-format "(SP, Z7.0)" 1)
  "      1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0276
    (write-format "(SP, Z7.0)" -1)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0277
    (write-format "(SP, Z7.0)" 3)
  "      3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0278
    (write-format "(SP, Z7.0)" -3)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0279
    (write-format "(SP, Z7.0)" 10)
  "      A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0280
    (write-format "(SP, Z7.0)" -10)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0281
    (write-format "(SP, Z7.0)" 100)
  "     64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0282
    (write-format "(SP, Z7.0)" -100)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0283
    (write-format "(SP, Z7.0)" 1000)
  "    3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0284
    (write-format "(SP, Z7.0)" -1000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0285
    (write-format "(SP, Z7.0)" 10000)
  "   2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0286
    (write-format "(SP, Z7.0)" -10000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0287
    (write-format "(SP, Z7.0)" 100000)
  "  186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0288
    (write-format "(SP, Z7.0)" -100000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0289
    (write-format "(SP, Z7.0)" 123456789)
  "75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0290
    (write-format "(SP, Z8.0)" 0)
  "        ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0291
    (write-format "(SP, Z8.0)" 0)
  "        ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0292
    (write-format "(SP, Z8.0)" 1)
  "       1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0293
    (write-format "(SP, Z8.0)" -1)
  "FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0294
    (write-format "(SP, Z8.0)" 3)
  "       3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0295
    (write-format "(SP, Z8.0)" -3)
  "FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0296
    (write-format "(SP, Z8.0)" 10)
  "       A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0297
    (write-format "(SP, Z8.0)" -10)
  "FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0298
    (write-format "(SP, Z8.0)" 100)
  "      64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0299
    (write-format "(SP, Z8.0)" -100)
  "FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0300
    (write-format "(SP, Z8.0)" 1000)
  "     3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0301
    (write-format "(SP, Z8.0)" -1000)
  "FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0302
    (write-format "(SP, Z8.0)" 10000)
  "    2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0303
    (write-format "(SP, Z8.0)" -10000)
  "FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0304
    (write-format "(SP, Z8.0)" 100000)
  "   186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0305
    (write-format "(SP, Z8.0)" -100000)
  "FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0306
    (write-format "(SP, Z8.0)" 123456789)
  " 75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0307
    (write-format "(SP, Z9.0)" 0)
  "         ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0308
    (write-format "(SP, Z9.0)" 0)
  "         ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0309
    (write-format "(SP, Z9.0)" 1)
  "        1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0310
    (write-format "(SP, Z9.0)" -1)
  " FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0311
    (write-format "(SP, Z9.0)" 3)
  "        3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0312
    (write-format "(SP, Z9.0)" -3)
  " FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0313
    (write-format "(SP, Z9.0)" 10)
  "        A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0314
    (write-format "(SP, Z9.0)" -10)
  " FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0315
    (write-format "(SP, Z9.0)" 100)
  "       64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0316
    (write-format "(SP, Z9.0)" -100)
  " FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0317
    (write-format "(SP, Z9.0)" 1000)
  "      3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0318
    (write-format "(SP, Z9.0)" -1000)
  " FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0319
    (write-format "(SP, Z9.0)" 10000)
  "     2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0320
    (write-format "(SP, Z9.0)" -10000)
  " FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0321
    (write-format "(SP, Z9.0)" 100000)
  "    186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0322
    (write-format "(SP, Z9.0)" -100000)
  " FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0323
    (write-format "(SP, Z9.0)" 123456789)
  "  75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0324
    (write-format "(SP, Z10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0325
    (write-format "(SP, Z10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0326
    (write-format "(SP, Z10.0)" 1)
  "         1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0327
    (write-format "(SP, Z10.0)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0328
    (write-format "(SP, Z10.0)" 3)
  "         3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0329
    (write-format "(SP, Z10.0)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0330
    (write-format "(SP, Z10.0)" 10)
  "         A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0331
    (write-format "(SP, Z10.0)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0332
    (write-format "(SP, Z10.0)" 100)
  "        64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0333
    (write-format "(SP, Z10.0)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0334
    (write-format "(SP, Z10.0)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0335
    (write-format "(SP, Z10.0)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0336
    (write-format "(SP, Z10.0)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0337
    (write-format "(SP, Z10.0)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0338
    (write-format "(SP, Z10.0)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0339
    (write-format "(SP, Z10.0)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0340
    (write-format "(SP, Z10.0)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0341
    (write-format "(SP, Z1.1)" 0)
  "0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0342
    (write-format "(SP, Z1.1)" 0)
  "0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0343
    (write-format "(SP, Z1.1)" 1)
  "1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0344
    (write-format "(SP, Z1.1)" -1)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0345
    (write-format "(SP, Z1.1)" 3)
  "3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0346
    (write-format "(SP, Z1.1)" -3)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0347
    (write-format "(SP, Z1.1)" 10)
  "A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0348
    (write-format "(SP, Z1.1)" -10)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0349
    (write-format "(SP, Z1.1)" 100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0350
    (write-format "(SP, Z1.1)" -100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0351
    (write-format "(SP, Z1.1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0352
    (write-format "(SP, Z1.1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0353
    (write-format "(SP, Z1.1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0354
    (write-format "(SP, Z1.1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0355
    (write-format "(SP, Z1.1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0356
    (write-format "(SP, Z1.1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0357
    (write-format "(SP, Z1.1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0358
    (write-format "(SP, Z2.1)" 0)
  " 0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0359
    (write-format "(SP, Z2.1)" 0)
  " 0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0360
    (write-format "(SP, Z2.1)" 1)
  " 1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0361
    (write-format "(SP, Z2.1)" -1)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0362
    (write-format "(SP, Z2.1)" 3)
  " 3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0363
    (write-format "(SP, Z2.1)" -3)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0364
    (write-format "(SP, Z2.1)" 10)
  " A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0365
    (write-format "(SP, Z2.1)" -10)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0366
    (write-format "(SP, Z2.1)" 100)
  "64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0367
    (write-format "(SP, Z2.1)" -100)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0368
    (write-format "(SP, Z2.1)" 1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0369
    (write-format "(SP, Z2.1)" -1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0370
    (write-format "(SP, Z2.1)" 10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0371
    (write-format "(SP, Z2.1)" -10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0372
    (write-format "(SP, Z2.1)" 100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0373
    (write-format "(SP, Z2.1)" -100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0374
    (write-format "(SP, Z2.1)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0375
    (write-format "(SP, Z3.1)" 0)
  "  0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0376
    (write-format "(SP, Z3.1)" 0)
  "  0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0377
    (write-format "(SP, Z3.1)" 1)
  "  1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0378
    (write-format "(SP, Z3.1)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0379
    (write-format "(SP, Z3.1)" 3)
  "  3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0380
    (write-format "(SP, Z3.1)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0381
    (write-format "(SP, Z3.1)" 10)
  "  A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0382
    (write-format "(SP, Z3.1)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0383
    (write-format "(SP, Z3.1)" 100)
  " 64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0384
    (write-format "(SP, Z3.1)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0385
    (write-format "(SP, Z3.1)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0386
    (write-format "(SP, Z3.1)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0387
    (write-format "(SP, Z3.1)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0388
    (write-format "(SP, Z3.1)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0389
    (write-format "(SP, Z3.1)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0390
    (write-format "(SP, Z3.1)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0391
    (write-format "(SP, Z3.1)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0392
    (write-format "(SP, Z4.1)" 0)
  "   0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0393
    (write-format "(SP, Z4.1)" 0)
  "   0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0394
    (write-format "(SP, Z4.1)" 1)
  "   1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0395
    (write-format "(SP, Z4.1)" -1)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0396
    (write-format "(SP, Z4.1)" 3)
  "   3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0397
    (write-format "(SP, Z4.1)" -3)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0398
    (write-format "(SP, Z4.1)" 10)
  "   A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0399
    (write-format "(SP, Z4.1)" -10)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0400
    (write-format "(SP, Z4.1)" 100)
  "  64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0401
    (write-format "(SP, Z4.1)" -100)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0402
    (write-format "(SP, Z4.1)" 1000)
  " 3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0403
    (write-format "(SP, Z4.1)" -1000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0404
    (write-format "(SP, Z4.1)" 10000)
  "2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0405
    (write-format "(SP, Z4.1)" -10000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0406
    (write-format "(SP, Z4.1)" 100000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0407
    (write-format "(SP, Z4.1)" -100000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0408
    (write-format "(SP, Z4.1)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0409
    (write-format "(SP, Z5.1)" 0)
  "    0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0410
    (write-format "(SP, Z5.1)" 0)
  "    0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0411
    (write-format "(SP, Z5.1)" 1)
  "    1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0412
    (write-format "(SP, Z5.1)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0413
    (write-format "(SP, Z5.1)" 3)
  "    3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0414
    (write-format "(SP, Z5.1)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0415
    (write-format "(SP, Z5.1)" 10)
  "    A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0416
    (write-format "(SP, Z5.1)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0417
    (write-format "(SP, Z5.1)" 100)
  "   64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0418
    (write-format "(SP, Z5.1)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0419
    (write-format "(SP, Z5.1)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0420
    (write-format "(SP, Z5.1)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0421
    (write-format "(SP, Z5.1)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0422
    (write-format "(SP, Z5.1)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0423
    (write-format "(SP, Z5.1)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0424
    (write-format "(SP, Z5.1)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0425
    (write-format "(SP, Z5.1)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0426
    (write-format "(SP, Z6.1)" 0)
  "     0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0427
    (write-format "(SP, Z6.1)" 0)
  "     0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0428
    (write-format "(SP, Z6.1)" 1)
  "     1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0429
    (write-format "(SP, Z6.1)" -1)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0430
    (write-format "(SP, Z6.1)" 3)
  "     3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0431
    (write-format "(SP, Z6.1)" -3)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0432
    (write-format "(SP, Z6.1)" 10)
  "     A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0433
    (write-format "(SP, Z6.1)" -10)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0434
    (write-format "(SP, Z6.1)" 100)
  "    64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0435
    (write-format "(SP, Z6.1)" -100)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0436
    (write-format "(SP, Z6.1)" 1000)
  "   3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0437
    (write-format "(SP, Z6.1)" -1000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0438
    (write-format "(SP, Z6.1)" 10000)
  "  2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0439
    (write-format "(SP, Z6.1)" -10000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0440
    (write-format "(SP, Z6.1)" 100000)
  " 186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0441
    (write-format "(SP, Z6.1)" -100000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0442
    (write-format "(SP, Z6.1)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0443
    (write-format "(SP, Z7.1)" 0)
  "      0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0444
    (write-format "(SP, Z7.1)" 0)
  "      0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0445
    (write-format "(SP, Z7.1)" 1)
  "      1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0446
    (write-format "(SP, Z7.1)" -1)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0447
    (write-format "(SP, Z7.1)" 3)
  "      3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0448
    (write-format "(SP, Z7.1)" -3)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0449
    (write-format "(SP, Z7.1)" 10)
  "      A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0450
    (write-format "(SP, Z7.1)" -10)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0451
    (write-format "(SP, Z7.1)" 100)
  "     64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0452
    (write-format "(SP, Z7.1)" -100)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0453
    (write-format "(SP, Z7.1)" 1000)
  "    3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0454
    (write-format "(SP, Z7.1)" -1000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0455
    (write-format "(SP, Z7.1)" 10000)
  "   2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0456
    (write-format "(SP, Z7.1)" -10000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0457
    (write-format "(SP, Z7.1)" 100000)
  "  186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0458
    (write-format "(SP, Z7.1)" -100000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0459
    (write-format "(SP, Z7.1)" 123456789)
  "75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0460
    (write-format "(SP, Z8.1)" 0)
  "       0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0461
    (write-format "(SP, Z8.1)" 0)
  "       0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0462
    (write-format "(SP, Z8.1)" 1)
  "       1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0463
    (write-format "(SP, Z8.1)" -1)
  "FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0464
    (write-format "(SP, Z8.1)" 3)
  "       3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0465
    (write-format "(SP, Z8.1)" -3)
  "FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0466
    (write-format "(SP, Z8.1)" 10)
  "       A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0467
    (write-format "(SP, Z8.1)" -10)
  "FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0468
    (write-format "(SP, Z8.1)" 100)
  "      64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0469
    (write-format "(SP, Z8.1)" -100)
  "FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0470
    (write-format "(SP, Z8.1)" 1000)
  "     3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0471
    (write-format "(SP, Z8.1)" -1000)
  "FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0472
    (write-format "(SP, Z8.1)" 10000)
  "    2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0473
    (write-format "(SP, Z8.1)" -10000)
  "FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0474
    (write-format "(SP, Z8.1)" 100000)
  "   186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0475
    (write-format "(SP, Z8.1)" -100000)
  "FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0476
    (write-format "(SP, Z8.1)" 123456789)
  " 75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0477
    (write-format "(SP, Z9.1)" 0)
  "        0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0478
    (write-format "(SP, Z9.1)" 0)
  "        0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0479
    (write-format "(SP, Z9.1)" 1)
  "        1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0480
    (write-format "(SP, Z9.1)" -1)
  " FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0481
    (write-format "(SP, Z9.1)" 3)
  "        3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0482
    (write-format "(SP, Z9.1)" -3)
  " FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0483
    (write-format "(SP, Z9.1)" 10)
  "        A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0484
    (write-format "(SP, Z9.1)" -10)
  " FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0485
    (write-format "(SP, Z9.1)" 100)
  "       64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0486
    (write-format "(SP, Z9.1)" -100)
  " FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0487
    (write-format "(SP, Z9.1)" 1000)
  "      3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0488
    (write-format "(SP, Z9.1)" -1000)
  " FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0489
    (write-format "(SP, Z9.1)" 10000)
  "     2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0490
    (write-format "(SP, Z9.1)" -10000)
  " FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0491
    (write-format "(SP, Z9.1)" 100000)
  "    186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0492
    (write-format "(SP, Z9.1)" -100000)
  " FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0493
    (write-format "(SP, Z9.1)" 123456789)
  "  75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0494
    (write-format "(SP, Z10.1)" 0)
  "         0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0495
    (write-format "(SP, Z10.1)" 0)
  "         0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0496
    (write-format "(SP, Z10.1)" 1)
  "         1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0497
    (write-format "(SP, Z10.1)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0498
    (write-format "(SP, Z10.1)" 3)
  "         3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0499
    (write-format "(SP, Z10.1)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0500
    (write-format "(SP, Z10.1)" 10)
  "         A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0501
    (write-format "(SP, Z10.1)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0502
    (write-format "(SP, Z10.1)" 100)
  "        64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0503
    (write-format "(SP, Z10.1)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0504
    (write-format "(SP, Z10.1)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0505
    (write-format "(SP, Z10.1)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0506
    (write-format "(SP, Z10.1)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0507
    (write-format "(SP, Z10.1)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0508
    (write-format "(SP, Z10.1)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0509
    (write-format "(SP, Z10.1)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0510
    (write-format "(SP, Z10.1)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0511
    (write-format "(SP, Z2.2)" 0)
  "00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0512
    (write-format "(SP, Z2.2)" 0)
  "00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0513
    (write-format "(SP, Z2.2)" 1)
  "01")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0514
    (write-format "(SP, Z2.2)" -1)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0515
    (write-format "(SP, Z2.2)" 3)
  "03")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0516
    (write-format "(SP, Z2.2)" -3)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0517
    (write-format "(SP, Z2.2)" 10)
  "0A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0518
    (write-format "(SP, Z2.2)" -10)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0519
    (write-format "(SP, Z2.2)" 100)
  "64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0520
    (write-format "(SP, Z2.2)" -100)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0521
    (write-format "(SP, Z2.2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0522
    (write-format "(SP, Z2.2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0523
    (write-format "(SP, Z2.2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0524
    (write-format "(SP, Z2.2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0525
    (write-format "(SP, Z2.2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0526
    (write-format "(SP, Z2.2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0527
    (write-format "(SP, Z2.2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0528
    (write-format "(SP, Z3.2)" 0)
  " 00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0529
    (write-format "(SP, Z3.2)" 0)
  " 00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0530
    (write-format "(SP, Z3.2)" 1)
  " 01")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0531
    (write-format "(SP, Z3.2)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0532
    (write-format "(SP, Z3.2)" 3)
  " 03")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0533
    (write-format "(SP, Z3.2)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0534
    (write-format "(SP, Z3.2)" 10)
  " 0A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0535
    (write-format "(SP, Z3.2)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0536
    (write-format "(SP, Z3.2)" 100)
  " 64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0537
    (write-format "(SP, Z3.2)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0538
    (write-format "(SP, Z3.2)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0539
    (write-format "(SP, Z3.2)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0540
    (write-format "(SP, Z3.2)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0541
    (write-format "(SP, Z3.2)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0542
    (write-format "(SP, Z3.2)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0543
    (write-format "(SP, Z3.2)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0544
    (write-format "(SP, Z3.2)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0545
    (write-format "(SP, Z4.2)" 0)
  "  00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0546
    (write-format "(SP, Z4.2)" 0)
  "  00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0547
    (write-format "(SP, Z4.2)" 1)
  "  01")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0548
    (write-format "(SP, Z4.2)" -1)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0549
    (write-format "(SP, Z4.2)" 3)
  "  03")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0550
    (write-format "(SP, Z4.2)" -3)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0551
    (write-format "(SP, Z4.2)" 10)
  "  0A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0552
    (write-format "(SP, Z4.2)" -10)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0553
    (write-format "(SP, Z4.2)" 100)
  "  64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0554
    (write-format "(SP, Z4.2)" -100)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0555
    (write-format "(SP, Z4.2)" 1000)
  " 3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0556
    (write-format "(SP, Z4.2)" -1000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0557
    (write-format "(SP, Z4.2)" 10000)
  "2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0558
    (write-format "(SP, Z4.2)" -10000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0559
    (write-format "(SP, Z4.2)" 100000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0560
    (write-format "(SP, Z4.2)" -100000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0561
    (write-format "(SP, Z4.2)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0562
    (write-format "(SP, Z5.2)" 0)
  "   00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0563
    (write-format "(SP, Z5.2)" 0)
  "   00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0564
    (write-format "(SP, Z5.2)" 1)
  "   01")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0565
    (write-format "(SP, Z5.2)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0566
    (write-format "(SP, Z5.2)" 3)
  "   03")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0567
    (write-format "(SP, Z5.2)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0568
    (write-format "(SP, Z5.2)" 10)
  "   0A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0569
    (write-format "(SP, Z5.2)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0570
    (write-format "(SP, Z5.2)" 100)
  "   64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0571
    (write-format "(SP, Z5.2)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0572
    (write-format "(SP, Z5.2)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0573
    (write-format "(SP, Z5.2)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0574
    (write-format "(SP, Z5.2)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0575
    (write-format "(SP, Z5.2)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0576
    (write-format "(SP, Z5.2)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0577
    (write-format "(SP, Z5.2)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0578
    (write-format "(SP, Z5.2)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0579
    (write-format "(SP, Z6.2)" 0)
  "    00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0580
    (write-format "(SP, Z6.2)" 0)
  "    00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0581
    (write-format "(SP, Z6.2)" 1)
  "    01")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0582
    (write-format "(SP, Z6.2)" -1)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0583
    (write-format "(SP, Z6.2)" 3)
  "    03")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0584
    (write-format "(SP, Z6.2)" -3)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0585
    (write-format "(SP, Z6.2)" 10)
  "    0A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0586
    (write-format "(SP, Z6.2)" -10)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0587
    (write-format "(SP, Z6.2)" 100)
  "    64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0588
    (write-format "(SP, Z6.2)" -100)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0589
    (write-format "(SP, Z6.2)" 1000)
  "   3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0590
    (write-format "(SP, Z6.2)" -1000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0591
    (write-format "(SP, Z6.2)" 10000)
  "  2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0592
    (write-format "(SP, Z6.2)" -10000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0593
    (write-format "(SP, Z6.2)" 100000)
  " 186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0594
    (write-format "(SP, Z6.2)" -100000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0595
    (write-format "(SP, Z6.2)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0596
    (write-format "(SP, Z7.2)" 0)
  "     00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0597
    (write-format "(SP, Z7.2)" 0)
  "     00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0598
    (write-format "(SP, Z7.2)" 1)
  "     01")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0599
    (write-format "(SP, Z7.2)" -1)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0600
    (write-format "(SP, Z7.2)" 3)
  "     03")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0601
    (write-format "(SP, Z7.2)" -3)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0602
    (write-format "(SP, Z7.2)" 10)
  "     0A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0603
    (write-format "(SP, Z7.2)" -10)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0604
    (write-format "(SP, Z7.2)" 100)
  "     64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0605
    (write-format "(SP, Z7.2)" -100)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0606
    (write-format "(SP, Z7.2)" 1000)
  "    3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0607
    (write-format "(SP, Z7.2)" -1000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0608
    (write-format "(SP, Z7.2)" 10000)
  "   2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0609
    (write-format "(SP, Z7.2)" -10000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0610
    (write-format "(SP, Z7.2)" 100000)
  "  186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0611
    (write-format "(SP, Z7.2)" -100000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0612
    (write-format "(SP, Z7.2)" 123456789)
  "75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0613
    (write-format "(SP, Z8.2)" 0)
  "      00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0614
    (write-format "(SP, Z8.2)" 0)
  "      00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0615
    (write-format "(SP, Z8.2)" 1)
  "      01")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0616
    (write-format "(SP, Z8.2)" -1)
  "FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0617
    (write-format "(SP, Z8.2)" 3)
  "      03")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0618
    (write-format "(SP, Z8.2)" -3)
  "FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0619
    (write-format "(SP, Z8.2)" 10)
  "      0A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0620
    (write-format "(SP, Z8.2)" -10)
  "FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0621
    (write-format "(SP, Z8.2)" 100)
  "      64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0622
    (write-format "(SP, Z8.2)" -100)
  "FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0623
    (write-format "(SP, Z8.2)" 1000)
  "     3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0624
    (write-format "(SP, Z8.2)" -1000)
  "FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0625
    (write-format "(SP, Z8.2)" 10000)
  "    2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0626
    (write-format "(SP, Z8.2)" -10000)
  "FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0627
    (write-format "(SP, Z8.2)" 100000)
  "   186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0628
    (write-format "(SP, Z8.2)" -100000)
  "FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0629
    (write-format "(SP, Z8.2)" 123456789)
  " 75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0630
    (write-format "(SP, Z9.2)" 0)
  "       00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0631
    (write-format "(SP, Z9.2)" 0)
  "       00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0632
    (write-format "(SP, Z9.2)" 1)
  "       01")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0633
    (write-format "(SP, Z9.2)" -1)
  " FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0634
    (write-format "(SP, Z9.2)" 3)
  "       03")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0635
    (write-format "(SP, Z9.2)" -3)
  " FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0636
    (write-format "(SP, Z9.2)" 10)
  "       0A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0637
    (write-format "(SP, Z9.2)" -10)
  " FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0638
    (write-format "(SP, Z9.2)" 100)
  "       64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0639
    (write-format "(SP, Z9.2)" -100)
  " FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0640
    (write-format "(SP, Z9.2)" 1000)
  "      3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0641
    (write-format "(SP, Z9.2)" -1000)
  " FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0642
    (write-format "(SP, Z9.2)" 10000)
  "     2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0643
    (write-format "(SP, Z9.2)" -10000)
  " FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0644
    (write-format "(SP, Z9.2)" 100000)
  "    186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0645
    (write-format "(SP, Z9.2)" -100000)
  " FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0646
    (write-format "(SP, Z9.2)" 123456789)
  "  75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0647
    (write-format "(SP, Z10.2)" 0)
  "        00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0648
    (write-format "(SP, Z10.2)" 0)
  "        00")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0649
    (write-format "(SP, Z10.2)" 1)
  "        01")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0650
    (write-format "(SP, Z10.2)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0651
    (write-format "(SP, Z10.2)" 3)
  "        03")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0652
    (write-format "(SP, Z10.2)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0653
    (write-format "(SP, Z10.2)" 10)
  "        0A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0654
    (write-format "(SP, Z10.2)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0655
    (write-format "(SP, Z10.2)" 100)
  "        64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0656
    (write-format "(SP, Z10.2)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0657
    (write-format "(SP, Z10.2)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0658
    (write-format "(SP, Z10.2)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0659
    (write-format "(SP, Z10.2)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0660
    (write-format "(SP, Z10.2)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0661
    (write-format "(SP, Z10.2)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0662
    (write-format "(SP, Z10.2)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0663
    (write-format "(SP, Z10.2)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0664
    (write-format "(SP, Z3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0665
    (write-format "(SP, Z3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0666
    (write-format "(SP, Z3.3)" 1)
  "001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0667
    (write-format "(SP, Z3.3)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0668
    (write-format "(SP, Z3.3)" 3)
  "003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0669
    (write-format "(SP, Z3.3)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0670
    (write-format "(SP, Z3.3)" 10)
  "00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0671
    (write-format "(SP, Z3.3)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0672
    (write-format "(SP, Z3.3)" 100)
  "064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0673
    (write-format "(SP, Z3.3)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0674
    (write-format "(SP, Z3.3)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0675
    (write-format "(SP, Z3.3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0676
    (write-format "(SP, Z3.3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0677
    (write-format "(SP, Z3.3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0678
    (write-format "(SP, Z3.3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0679
    (write-format "(SP, Z3.3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0680
    (write-format "(SP, Z3.3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0681
    (write-format "(SP, Z4.3)" 0)
  " 000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0682
    (write-format "(SP, Z4.3)" 0)
  " 000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0683
    (write-format "(SP, Z4.3)" 1)
  " 001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0684
    (write-format "(SP, Z4.3)" -1)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0685
    (write-format "(SP, Z4.3)" 3)
  " 003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0686
    (write-format "(SP, Z4.3)" -3)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0687
    (write-format "(SP, Z4.3)" 10)
  " 00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0688
    (write-format "(SP, Z4.3)" -10)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0689
    (write-format "(SP, Z4.3)" 100)
  " 064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0690
    (write-format "(SP, Z4.3)" -100)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0691
    (write-format "(SP, Z4.3)" 1000)
  " 3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0692
    (write-format "(SP, Z4.3)" -1000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0693
    (write-format "(SP, Z4.3)" 10000)
  "2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0694
    (write-format "(SP, Z4.3)" -10000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0695
    (write-format "(SP, Z4.3)" 100000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0696
    (write-format "(SP, Z4.3)" -100000)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0697
    (write-format "(SP, Z4.3)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0698
    (write-format "(SP, Z5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0699
    (write-format "(SP, Z5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0700
    (write-format "(SP, Z5.3)" 1)
  "  001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0701
    (write-format "(SP, Z5.3)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0702
    (write-format "(SP, Z5.3)" 3)
  "  003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0703
    (write-format "(SP, Z5.3)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0704
    (write-format "(SP, Z5.3)" 10)
  "  00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0705
    (write-format "(SP, Z5.3)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0706
    (write-format "(SP, Z5.3)" 100)
  "  064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0707
    (write-format "(SP, Z5.3)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0708
    (write-format "(SP, Z5.3)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0709
    (write-format "(SP, Z5.3)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0710
    (write-format "(SP, Z5.3)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0711
    (write-format "(SP, Z5.3)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0712
    (write-format "(SP, Z5.3)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0713
    (write-format "(SP, Z5.3)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0714
    (write-format "(SP, Z5.3)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0715
    (write-format "(SP, Z6.3)" 0)
  "   000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0716
    (write-format "(SP, Z6.3)" 0)
  "   000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0717
    (write-format "(SP, Z6.3)" 1)
  "   001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0718
    (write-format "(SP, Z6.3)" -1)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0719
    (write-format "(SP, Z6.3)" 3)
  "   003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0720
    (write-format "(SP, Z6.3)" -3)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0721
    (write-format "(SP, Z6.3)" 10)
  "   00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0722
    (write-format "(SP, Z6.3)" -10)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0723
    (write-format "(SP, Z6.3)" 100)
  "   064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0724
    (write-format "(SP, Z6.3)" -100)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0725
    (write-format "(SP, Z6.3)" 1000)
  "   3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0726
    (write-format "(SP, Z6.3)" -1000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0727
    (write-format "(SP, Z6.3)" 10000)
  "  2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0728
    (write-format "(SP, Z6.3)" -10000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0729
    (write-format "(SP, Z6.3)" 100000)
  " 186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0730
    (write-format "(SP, Z6.3)" -100000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0731
    (write-format "(SP, Z6.3)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0732
    (write-format "(SP, Z7.3)" 0)
  "    000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0733
    (write-format "(SP, Z7.3)" 0)
  "    000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0734
    (write-format "(SP, Z7.3)" 1)
  "    001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0735
    (write-format "(SP, Z7.3)" -1)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0736
    (write-format "(SP, Z7.3)" 3)
  "    003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0737
    (write-format "(SP, Z7.3)" -3)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0738
    (write-format "(SP, Z7.3)" 10)
  "    00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0739
    (write-format "(SP, Z7.3)" -10)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0740
    (write-format "(SP, Z7.3)" 100)
  "    064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0741
    (write-format "(SP, Z7.3)" -100)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0742
    (write-format "(SP, Z7.3)" 1000)
  "    3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0743
    (write-format "(SP, Z7.3)" -1000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0744
    (write-format "(SP, Z7.3)" 10000)
  "   2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0745
    (write-format "(SP, Z7.3)" -10000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0746
    (write-format "(SP, Z7.3)" 100000)
  "  186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0747
    (write-format "(SP, Z7.3)" -100000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0748
    (write-format "(SP, Z7.3)" 123456789)
  "75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0749
    (write-format "(SP, Z8.3)" 0)
  "     000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0750
    (write-format "(SP, Z8.3)" 0)
  "     000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0751
    (write-format "(SP, Z8.3)" 1)
  "     001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0752
    (write-format "(SP, Z8.3)" -1)
  "FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0753
    (write-format "(SP, Z8.3)" 3)
  "     003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0754
    (write-format "(SP, Z8.3)" -3)
  "FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0755
    (write-format "(SP, Z8.3)" 10)
  "     00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0756
    (write-format "(SP, Z8.3)" -10)
  "FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0757
    (write-format "(SP, Z8.3)" 100)
  "     064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0758
    (write-format "(SP, Z8.3)" -100)
  "FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0759
    (write-format "(SP, Z8.3)" 1000)
  "     3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0760
    (write-format "(SP, Z8.3)" -1000)
  "FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0761
    (write-format "(SP, Z8.3)" 10000)
  "    2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0762
    (write-format "(SP, Z8.3)" -10000)
  "FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0763
    (write-format "(SP, Z8.3)" 100000)
  "   186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0764
    (write-format "(SP, Z8.3)" -100000)
  "FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0765
    (write-format "(SP, Z8.3)" 123456789)
  " 75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0766
    (write-format "(SP, Z9.3)" 0)
  "      000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0767
    (write-format "(SP, Z9.3)" 0)
  "      000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0768
    (write-format "(SP, Z9.3)" 1)
  "      001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0769
    (write-format "(SP, Z9.3)" -1)
  " FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0770
    (write-format "(SP, Z9.3)" 3)
  "      003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0771
    (write-format "(SP, Z9.3)" -3)
  " FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0772
    (write-format "(SP, Z9.3)" 10)
  "      00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0773
    (write-format "(SP, Z9.3)" -10)
  " FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0774
    (write-format "(SP, Z9.3)" 100)
  "      064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0775
    (write-format "(SP, Z9.3)" -100)
  " FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0776
    (write-format "(SP, Z9.3)" 1000)
  "      3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0777
    (write-format "(SP, Z9.3)" -1000)
  " FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0778
    (write-format "(SP, Z9.3)" 10000)
  "     2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0779
    (write-format "(SP, Z9.3)" -10000)
  " FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0780
    (write-format "(SP, Z9.3)" 100000)
  "    186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0781
    (write-format "(SP, Z9.3)" -100000)
  " FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0782
    (write-format "(SP, Z9.3)" 123456789)
  "  75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0783
    (write-format "(SP, Z10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0784
    (write-format "(SP, Z10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0785
    (write-format "(SP, Z10.3)" 1)
  "       001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0786
    (write-format "(SP, Z10.3)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0787
    (write-format "(SP, Z10.3)" 3)
  "       003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0788
    (write-format "(SP, Z10.3)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0789
    (write-format "(SP, Z10.3)" 10)
  "       00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0790
    (write-format "(SP, Z10.3)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0791
    (write-format "(SP, Z10.3)" 100)
  "       064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0792
    (write-format "(SP, Z10.3)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0793
    (write-format "(SP, Z10.3)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0794
    (write-format "(SP, Z10.3)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0795
    (write-format "(SP, Z10.3)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0796
    (write-format "(SP, Z10.3)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0797
    (write-format "(SP, Z10.3)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0798
    (write-format "(SP, Z10.3)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0799
    (write-format "(SP, Z10.3)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0800
    (write-format "(SP, Z5.5)" 0)
  "00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0801
    (write-format "(SP, Z5.5)" 0)
  "00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0802
    (write-format "(SP, Z5.5)" 1)
  "00001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0803
    (write-format "(SP, Z5.5)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0804
    (write-format "(SP, Z5.5)" 3)
  "00003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0805
    (write-format "(SP, Z5.5)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0806
    (write-format "(SP, Z5.5)" 10)
  "0000A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0807
    (write-format "(SP, Z5.5)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0808
    (write-format "(SP, Z5.5)" 100)
  "00064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0809
    (write-format "(SP, Z5.5)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0810
    (write-format "(SP, Z5.5)" 1000)
  "003E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0811
    (write-format "(SP, Z5.5)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0812
    (write-format "(SP, Z5.5)" 10000)
  "02710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0813
    (write-format "(SP, Z5.5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0814
    (write-format "(SP, Z5.5)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0815
    (write-format "(SP, Z5.5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0816
    (write-format "(SP, Z5.5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0817
    (write-format "(SP, Z6.5)" 0)
  " 00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0818
    (write-format "(SP, Z6.5)" 0)
  " 00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0819
    (write-format "(SP, Z6.5)" 1)
  " 00001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0820
    (write-format "(SP, Z6.5)" -1)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0821
    (write-format "(SP, Z6.5)" 3)
  " 00003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0822
    (write-format "(SP, Z6.5)" -3)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0823
    (write-format "(SP, Z6.5)" 10)
  " 0000A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0824
    (write-format "(SP, Z6.5)" -10)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0825
    (write-format "(SP, Z6.5)" 100)
  " 00064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0826
    (write-format "(SP, Z6.5)" -100)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0827
    (write-format "(SP, Z6.5)" 1000)
  " 003E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0828
    (write-format "(SP, Z6.5)" -1000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0829
    (write-format "(SP, Z6.5)" 10000)
  " 02710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0830
    (write-format "(SP, Z6.5)" -10000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0831
    (write-format "(SP, Z6.5)" 100000)
  " 186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0832
    (write-format "(SP, Z6.5)" -100000)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0833
    (write-format "(SP, Z6.5)" 123456789)
  "******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0834
    (write-format "(SP, Z7.5)" 0)
  "  00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0835
    (write-format "(SP, Z7.5)" 0)
  "  00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0836
    (write-format "(SP, Z7.5)" 1)
  "  00001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0837
    (write-format "(SP, Z7.5)" -1)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0838
    (write-format "(SP, Z7.5)" 3)
  "  00003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0839
    (write-format "(SP, Z7.5)" -3)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0840
    (write-format "(SP, Z7.5)" 10)
  "  0000A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0841
    (write-format "(SP, Z7.5)" -10)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0842
    (write-format "(SP, Z7.5)" 100)
  "  00064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0843
    (write-format "(SP, Z7.5)" -100)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0844
    (write-format "(SP, Z7.5)" 1000)
  "  003E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0845
    (write-format "(SP, Z7.5)" -1000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0846
    (write-format "(SP, Z7.5)" 10000)
  "  02710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0847
    (write-format "(SP, Z7.5)" -10000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0848
    (write-format "(SP, Z7.5)" 100000)
  "  186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0849
    (write-format "(SP, Z7.5)" -100000)
  "*******")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0850
    (write-format "(SP, Z7.5)" 123456789)
  "75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0851
    (write-format "(SP, Z8.5)" 0)
  "   00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0852
    (write-format "(SP, Z8.5)" 0)
  "   00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0853
    (write-format "(SP, Z8.5)" 1)
  "   00001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0854
    (write-format "(SP, Z8.5)" -1)
  "FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0855
    (write-format "(SP, Z8.5)" 3)
  "   00003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0856
    (write-format "(SP, Z8.5)" -3)
  "FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0857
    (write-format "(SP, Z8.5)" 10)
  "   0000A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0858
    (write-format "(SP, Z8.5)" -10)
  "FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0859
    (write-format "(SP, Z8.5)" 100)
  "   00064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0860
    (write-format "(SP, Z8.5)" -100)
  "FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0861
    (write-format "(SP, Z8.5)" 1000)
  "   003E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0862
    (write-format "(SP, Z8.5)" -1000)
  "FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0863
    (write-format "(SP, Z8.5)" 10000)
  "   02710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0864
    (write-format "(SP, Z8.5)" -10000)
  "FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0865
    (write-format "(SP, Z8.5)" 100000)
  "   186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0866
    (write-format "(SP, Z8.5)" -100000)
  "FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0867
    (write-format "(SP, Z8.5)" 123456789)
  " 75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0868
    (write-format "(SP, Z9.5)" 0)
  "    00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0869
    (write-format "(SP, Z9.5)" 0)
  "    00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0870
    (write-format "(SP, Z9.5)" 1)
  "    00001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0871
    (write-format "(SP, Z9.5)" -1)
  " FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0872
    (write-format "(SP, Z9.5)" 3)
  "    00003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0873
    (write-format "(SP, Z9.5)" -3)
  " FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0874
    (write-format "(SP, Z9.5)" 10)
  "    0000A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0875
    (write-format "(SP, Z9.5)" -10)
  " FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0876
    (write-format "(SP, Z9.5)" 100)
  "    00064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0877
    (write-format "(SP, Z9.5)" -100)
  " FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0878
    (write-format "(SP, Z9.5)" 1000)
  "    003E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0879
    (write-format "(SP, Z9.5)" -1000)
  " FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0880
    (write-format "(SP, Z9.5)" 10000)
  "    02710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0881
    (write-format "(SP, Z9.5)" -10000)
  " FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0882
    (write-format "(SP, Z9.5)" 100000)
  "    186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0883
    (write-format "(SP, Z9.5)" -100000)
  " FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0884
    (write-format "(SP, Z9.5)" 123456789)
  "  75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0885
    (write-format "(SP, Z10.5)" 0)
  "     00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0886
    (write-format "(SP, Z10.5)" 0)
  "     00000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0887
    (write-format "(SP, Z10.5)" 1)
  "     00001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0888
    (write-format "(SP, Z10.5)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0889
    (write-format "(SP, Z10.5)" 3)
  "     00003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0890
    (write-format "(SP, Z10.5)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0891
    (write-format "(SP, Z10.5)" 10)
  "     0000A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0892
    (write-format "(SP, Z10.5)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0893
    (write-format "(SP, Z10.5)" 100)
  "     00064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0894
    (write-format "(SP, Z10.5)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0895
    (write-format "(SP, Z10.5)" 1000)
  "     003E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0896
    (write-format "(SP, Z10.5)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0897
    (write-format "(SP, Z10.5)" 10000)
  "     02710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0898
    (write-format "(SP, Z10.5)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0899
    (write-format "(SP, Z10.5)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0900
    (write-format "(SP, Z10.5)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0901
    (write-format "(SP, Z10.5)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0902
    (write-format "(SP, 1Z1)" 0)
  "0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0903
    (write-format "(SP, 1Z1)" 0)
  "0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0904
    (write-format "(SP, 1Z1)" 1)
  "1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0905
    (write-format "(SP, 1Z1)" -1)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0906
    (write-format "(SP, 1Z1)" 3)
  "3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0907
    (write-format "(SP, 1Z1)" -3)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0908
    (write-format "(SP, 1Z1)" 10)
  "A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0909
    (write-format "(SP, 1Z1)" -10)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0910
    (write-format "(SP, 1Z1)" 100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0911
    (write-format "(SP, 1Z1)" -100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0912
    (write-format "(SP, 1Z1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0913
    (write-format "(SP, 1Z1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0914
    (write-format "(SP, 1Z1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0915
    (write-format "(SP, 1Z1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0916
    (write-format "(SP, 1Z1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0917
    (write-format "(SP, 1Z1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0918
    (write-format "(SP, 1Z1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0919
    (write-format "(SP, 1Z2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0920
    (write-format "(SP, 1Z2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0921
    (write-format "(SP, 1Z2)" 1)
  " 1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0922
    (write-format "(SP, 1Z2)" -1)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0923
    (write-format "(SP, 1Z2)" 3)
  " 3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0924
    (write-format "(SP, 1Z2)" -3)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0925
    (write-format "(SP, 1Z2)" 10)
  " A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0926
    (write-format "(SP, 1Z2)" -10)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0927
    (write-format "(SP, 1Z2)" 100)
  "64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0928
    (write-format "(SP, 1Z2)" -100)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0929
    (write-format "(SP, 1Z2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0930
    (write-format "(SP, 1Z2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0931
    (write-format "(SP, 1Z2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0932
    (write-format "(SP, 1Z2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0933
    (write-format "(SP, 1Z2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0934
    (write-format "(SP, 1Z2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0935
    (write-format "(SP, 1Z2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0936
    (write-format "(SP, 1Z3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0937
    (write-format "(SP, 1Z3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0938
    (write-format "(SP, 1Z3)" 1)
  "  1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0939
    (write-format "(SP, 1Z3)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0940
    (write-format "(SP, 1Z3)" 3)
  "  3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0941
    (write-format "(SP, 1Z3)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0942
    (write-format "(SP, 1Z3)" 10)
  "  A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0943
    (write-format "(SP, 1Z3)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0944
    (write-format "(SP, 1Z3)" 100)
  " 64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0945
    (write-format "(SP, 1Z3)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0946
    (write-format "(SP, 1Z3)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0947
    (write-format "(SP, 1Z3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0948
    (write-format "(SP, 1Z3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0949
    (write-format "(SP, 1Z3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0950
    (write-format "(SP, 1Z3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0951
    (write-format "(SP, 1Z3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0952
    (write-format "(SP, 1Z3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0953
    (write-format "(SP, 1Z5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0954
    (write-format "(SP, 1Z5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0955
    (write-format "(SP, 1Z5)" 1)
  "    1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0956
    (write-format "(SP, 1Z5)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0957
    (write-format "(SP, 1Z5)" 3)
  "    3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0958
    (write-format "(SP, 1Z5)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0959
    (write-format "(SP, 1Z5)" 10)
  "    A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0960
    (write-format "(SP, 1Z5)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0961
    (write-format "(SP, 1Z5)" 100)
  "   64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0962
    (write-format "(SP, 1Z5)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0963
    (write-format "(SP, 1Z5)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0964
    (write-format "(SP, 1Z5)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0965
    (write-format "(SP, 1Z5)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0966
    (write-format "(SP, 1Z5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0967
    (write-format "(SP, 1Z5)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0968
    (write-format "(SP, 1Z5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0969
    (write-format "(SP, 1Z5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0970
    (write-format "(SP, 1Z10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0971
    (write-format "(SP, 1Z10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0972
    (write-format "(SP, 1Z10)" 1)
  "         1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0973
    (write-format "(SP, 1Z10)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0974
    (write-format "(SP, 1Z10)" 3)
  "         3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0975
    (write-format "(SP, 1Z10)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0976
    (write-format "(SP, 1Z10)" 10)
  "         A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0977
    (write-format "(SP, 1Z10)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0978
    (write-format "(SP, 1Z10)" 100)
  "        64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0979
    (write-format "(SP, 1Z10)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0980
    (write-format "(SP, 1Z10)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0981
    (write-format "(SP, 1Z10)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0982
    (write-format "(SP, 1Z10)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0983
    (write-format "(SP, 1Z10)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0984
    (write-format "(SP, 1Z10)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0985
    (write-format "(SP, 1Z10)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0986
    (write-format "(SP, 1Z10)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0987
    (write-format "(SP, 2Z1)" 0)
  "0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0988
    (write-format "(SP, 2Z1)" 0)
  "0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0989
    (write-format "(SP, 2Z1)" 1)
  "1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0990
    (write-format "(SP, 2Z1)" -1)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0991
    (write-format "(SP, 2Z1)" 3)
  "3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0992
    (write-format "(SP, 2Z1)" -3)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0993
    (write-format "(SP, 2Z1)" 10)
  "A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0994
    (write-format "(SP, 2Z1)" -10)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0995
    (write-format "(SP, 2Z1)" 100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0996
    (write-format "(SP, 2Z1)" -100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0997
    (write-format "(SP, 2Z1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0998
    (write-format "(SP, 2Z1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.0999
    (write-format "(SP, 2Z1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1000
    (write-format "(SP, 2Z1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1001
    (write-format "(SP, 2Z1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1002
    (write-format "(SP, 2Z1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1003
    (write-format "(SP, 2Z1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1004
    (write-format "(SP, 2Z2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1005
    (write-format "(SP, 2Z2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1006
    (write-format "(SP, 2Z2)" 1)
  " 1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1007
    (write-format "(SP, 2Z2)" -1)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1008
    (write-format "(SP, 2Z2)" 3)
  " 3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1009
    (write-format "(SP, 2Z2)" -3)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1010
    (write-format "(SP, 2Z2)" 10)
  " A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1011
    (write-format "(SP, 2Z2)" -10)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1012
    (write-format "(SP, 2Z2)" 100)
  "64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1013
    (write-format "(SP, 2Z2)" -100)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1014
    (write-format "(SP, 2Z2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1015
    (write-format "(SP, 2Z2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1016
    (write-format "(SP, 2Z2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1017
    (write-format "(SP, 2Z2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1018
    (write-format "(SP, 2Z2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1019
    (write-format "(SP, 2Z2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1020
    (write-format "(SP, 2Z2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1021
    (write-format "(SP, 2Z3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1022
    (write-format "(SP, 2Z3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1023
    (write-format "(SP, 2Z3)" 1)
  "  1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1024
    (write-format "(SP, 2Z3)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1025
    (write-format "(SP, 2Z3)" 3)
  "  3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1026
    (write-format "(SP, 2Z3)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1027
    (write-format "(SP, 2Z3)" 10)
  "  A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1028
    (write-format "(SP, 2Z3)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1029
    (write-format "(SP, 2Z3)" 100)
  " 64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1030
    (write-format "(SP, 2Z3)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1031
    (write-format "(SP, 2Z3)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1032
    (write-format "(SP, 2Z3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1033
    (write-format "(SP, 2Z3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1034
    (write-format "(SP, 2Z3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1035
    (write-format "(SP, 2Z3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1036
    (write-format "(SP, 2Z3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1037
    (write-format "(SP, 2Z3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1038
    (write-format "(SP, 2Z5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1039
    (write-format "(SP, 2Z5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1040
    (write-format "(SP, 2Z5)" 1)
  "    1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1041
    (write-format "(SP, 2Z5)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1042
    (write-format "(SP, 2Z5)" 3)
  "    3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1043
    (write-format "(SP, 2Z5)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1044
    (write-format "(SP, 2Z5)" 10)
  "    A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1045
    (write-format "(SP, 2Z5)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1046
    (write-format "(SP, 2Z5)" 100)
  "   64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1047
    (write-format "(SP, 2Z5)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1048
    (write-format "(SP, 2Z5)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1049
    (write-format "(SP, 2Z5)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1050
    (write-format "(SP, 2Z5)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1051
    (write-format "(SP, 2Z5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1052
    (write-format "(SP, 2Z5)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1053
    (write-format "(SP, 2Z5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1054
    (write-format "(SP, 2Z5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1055
    (write-format "(SP, 2Z10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1056
    (write-format "(SP, 2Z10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1057
    (write-format "(SP, 2Z10)" 1)
  "         1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1058
    (write-format "(SP, 2Z10)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1059
    (write-format "(SP, 2Z10)" 3)
  "         3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1060
    (write-format "(SP, 2Z10)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1061
    (write-format "(SP, 2Z10)" 10)
  "         A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1062
    (write-format "(SP, 2Z10)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1063
    (write-format "(SP, 2Z10)" 100)
  "        64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1064
    (write-format "(SP, 2Z10)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1065
    (write-format "(SP, 2Z10)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1066
    (write-format "(SP, 2Z10)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1067
    (write-format "(SP, 2Z10)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1068
    (write-format "(SP, 2Z10)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1069
    (write-format "(SP, 2Z10)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1070
    (write-format "(SP, 2Z10)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1071
    (write-format "(SP, 2Z10)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1072
    (write-format "(SP, 3Z1)" 0)
  "0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1073
    (write-format "(SP, 3Z1)" 0)
  "0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1074
    (write-format "(SP, 3Z1)" 1)
  "1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1075
    (write-format "(SP, 3Z1)" -1)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1076
    (write-format "(SP, 3Z1)" 3)
  "3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1077
    (write-format "(SP, 3Z1)" -3)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1078
    (write-format "(SP, 3Z1)" 10)
  "A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1079
    (write-format "(SP, 3Z1)" -10)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1080
    (write-format "(SP, 3Z1)" 100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1081
    (write-format "(SP, 3Z1)" -100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1082
    (write-format "(SP, 3Z1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1083
    (write-format "(SP, 3Z1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1084
    (write-format "(SP, 3Z1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1085
    (write-format "(SP, 3Z1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1086
    (write-format "(SP, 3Z1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1087
    (write-format "(SP, 3Z1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1088
    (write-format "(SP, 3Z1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1089
    (write-format "(SP, 3Z2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1090
    (write-format "(SP, 3Z2)" 0)
  " 0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1091
    (write-format "(SP, 3Z2)" 1)
  " 1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1092
    (write-format "(SP, 3Z2)" -1)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1093
    (write-format "(SP, 3Z2)" 3)
  " 3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1094
    (write-format "(SP, 3Z2)" -3)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1095
    (write-format "(SP, 3Z2)" 10)
  " A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1096
    (write-format "(SP, 3Z2)" -10)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1097
    (write-format "(SP, 3Z2)" 100)
  "64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1098
    (write-format "(SP, 3Z2)" -100)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1099
    (write-format "(SP, 3Z2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1100
    (write-format "(SP, 3Z2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1101
    (write-format "(SP, 3Z2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1102
    (write-format "(SP, 3Z2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1103
    (write-format "(SP, 3Z2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1104
    (write-format "(SP, 3Z2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1105
    (write-format "(SP, 3Z2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1106
    (write-format "(SP, 3Z3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1107
    (write-format "(SP, 3Z3)" 0)
  "  0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1108
    (write-format "(SP, 3Z3)" 1)
  "  1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1109
    (write-format "(SP, 3Z3)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1110
    (write-format "(SP, 3Z3)" 3)
  "  3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1111
    (write-format "(SP, 3Z3)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1112
    (write-format "(SP, 3Z3)" 10)
  "  A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1113
    (write-format "(SP, 3Z3)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1114
    (write-format "(SP, 3Z3)" 100)
  " 64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1115
    (write-format "(SP, 3Z3)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1116
    (write-format "(SP, 3Z3)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1117
    (write-format "(SP, 3Z3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1118
    (write-format "(SP, 3Z3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1119
    (write-format "(SP, 3Z3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1120
    (write-format "(SP, 3Z3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1121
    (write-format "(SP, 3Z3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1122
    (write-format "(SP, 3Z3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1123
    (write-format "(SP, 3Z5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1124
    (write-format "(SP, 3Z5)" 0)
  "    0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1125
    (write-format "(SP, 3Z5)" 1)
  "    1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1126
    (write-format "(SP, 3Z5)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1127
    (write-format "(SP, 3Z5)" 3)
  "    3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1128
    (write-format "(SP, 3Z5)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1129
    (write-format "(SP, 3Z5)" 10)
  "    A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1130
    (write-format "(SP, 3Z5)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1131
    (write-format "(SP, 3Z5)" 100)
  "   64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1132
    (write-format "(SP, 3Z5)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1133
    (write-format "(SP, 3Z5)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1134
    (write-format "(SP, 3Z5)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1135
    (write-format "(SP, 3Z5)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1136
    (write-format "(SP, 3Z5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1137
    (write-format "(SP, 3Z5)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1138
    (write-format "(SP, 3Z5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1139
    (write-format "(SP, 3Z5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1140
    (write-format "(SP, 3Z10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1141
    (write-format "(SP, 3Z10)" 0)
  "         0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1142
    (write-format "(SP, 3Z10)" 1)
  "         1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1143
    (write-format "(SP, 3Z10)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1144
    (write-format "(SP, 3Z10)" 3)
  "         3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1145
    (write-format "(SP, 3Z10)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1146
    (write-format "(SP, 3Z10)" 10)
  "         A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1147
    (write-format "(SP, 3Z10)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1148
    (write-format "(SP, 3Z10)" 100)
  "        64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1149
    (write-format "(SP, 3Z10)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1150
    (write-format "(SP, 3Z10)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1151
    (write-format "(SP, 3Z10)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1152
    (write-format "(SP, 3Z10)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1153
    (write-format "(SP, 3Z10)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1154
    (write-format "(SP, 3Z10)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1155
    (write-format "(SP, 3Z10)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1156
    (write-format "(SP, 3Z10)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1157
    (write-format "(SP, 1Z1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1158
    (write-format "(SP, 1Z1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1159
    (write-format "(SP, 1Z1.0)" 1)
  "1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1160
    (write-format "(SP, 1Z1.0)" -1)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1161
    (write-format "(SP, 1Z1.0)" 3)
  "3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1162
    (write-format "(SP, 1Z1.0)" -3)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1163
    (write-format "(SP, 1Z1.0)" 10)
  "A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1164
    (write-format "(SP, 1Z1.0)" -10)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1165
    (write-format "(SP, 1Z1.0)" 100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1166
    (write-format "(SP, 1Z1.0)" -100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1167
    (write-format "(SP, 1Z1.0)" 1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1168
    (write-format "(SP, 1Z1.0)" -1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1169
    (write-format "(SP, 1Z1.0)" 10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1170
    (write-format "(SP, 1Z1.0)" -10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1171
    (write-format "(SP, 1Z1.0)" 100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1172
    (write-format "(SP, 1Z1.0)" -100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1173
    (write-format "(SP, 1Z1.0)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1174
    (write-format "(SP, 1Z2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1175
    (write-format "(SP, 1Z2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1176
    (write-format "(SP, 1Z2.0)" 1)
  " 1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1177
    (write-format "(SP, 1Z2.0)" -1)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1178
    (write-format "(SP, 1Z2.0)" 3)
  " 3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1179
    (write-format "(SP, 1Z2.0)" -3)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1180
    (write-format "(SP, 1Z2.0)" 10)
  " A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1181
    (write-format "(SP, 1Z2.0)" -10)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1182
    (write-format "(SP, 1Z2.0)" 100)
  "64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1183
    (write-format "(SP, 1Z2.0)" -100)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1184
    (write-format "(SP, 1Z2.0)" 1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1185
    (write-format "(SP, 1Z2.0)" -1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1186
    (write-format "(SP, 1Z2.0)" 10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1187
    (write-format "(SP, 1Z2.0)" -10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1188
    (write-format "(SP, 1Z2.0)" 100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1189
    (write-format "(SP, 1Z2.0)" -100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1190
    (write-format "(SP, 1Z2.0)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1191
    (write-format "(SP, 1Z3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1192
    (write-format "(SP, 1Z3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1193
    (write-format "(SP, 1Z3.0)" 1)
  "  1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1194
    (write-format "(SP, 1Z3.0)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1195
    (write-format "(SP, 1Z3.0)" 3)
  "  3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1196
    (write-format "(SP, 1Z3.0)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1197
    (write-format "(SP, 1Z3.0)" 10)
  "  A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1198
    (write-format "(SP, 1Z3.0)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1199
    (write-format "(SP, 1Z3.0)" 100)
  " 64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1200
    (write-format "(SP, 1Z3.0)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1201
    (write-format "(SP, 1Z3.0)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1202
    (write-format "(SP, 1Z3.0)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1203
    (write-format "(SP, 1Z3.0)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1204
    (write-format "(SP, 1Z3.0)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1205
    (write-format "(SP, 1Z3.0)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1206
    (write-format "(SP, 1Z3.0)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1207
    (write-format "(SP, 1Z3.0)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1208
    (write-format "(SP, 1Z5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1209
    (write-format "(SP, 1Z5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1210
    (write-format "(SP, 1Z5.0)" 1)
  "    1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1211
    (write-format "(SP, 1Z5.0)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1212
    (write-format "(SP, 1Z5.0)" 3)
  "    3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1213
    (write-format "(SP, 1Z5.0)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1214
    (write-format "(SP, 1Z5.0)" 10)
  "    A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1215
    (write-format "(SP, 1Z5.0)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1216
    (write-format "(SP, 1Z5.0)" 100)
  "   64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1217
    (write-format "(SP, 1Z5.0)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1218
    (write-format "(SP, 1Z5.0)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1219
    (write-format "(SP, 1Z5.0)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1220
    (write-format "(SP, 1Z5.0)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1221
    (write-format "(SP, 1Z5.0)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1222
    (write-format "(SP, 1Z5.0)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1223
    (write-format "(SP, 1Z5.0)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1224
    (write-format "(SP, 1Z5.0)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1225
    (write-format "(SP, 1Z10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1226
    (write-format "(SP, 1Z10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1227
    (write-format "(SP, 1Z10.0)" 1)
  "         1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1228
    (write-format "(SP, 1Z10.0)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1229
    (write-format "(SP, 1Z10.0)" 3)
  "         3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1230
    (write-format "(SP, 1Z10.0)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1231
    (write-format "(SP, 1Z10.0)" 10)
  "         A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1232
    (write-format "(SP, 1Z10.0)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1233
    (write-format "(SP, 1Z10.0)" 100)
  "        64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1234
    (write-format "(SP, 1Z10.0)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1235
    (write-format "(SP, 1Z10.0)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1236
    (write-format "(SP, 1Z10.0)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1237
    (write-format "(SP, 1Z10.0)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1238
    (write-format "(SP, 1Z10.0)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1239
    (write-format "(SP, 1Z10.0)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1240
    (write-format "(SP, 1Z10.0)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1241
    (write-format "(SP, 1Z10.0)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1242
    (write-format "(SP, 1Z3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1243
    (write-format "(SP, 1Z3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1244
    (write-format "(SP, 1Z3.3)" 1)
  "001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1245
    (write-format "(SP, 1Z3.3)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1246
    (write-format "(SP, 1Z3.3)" 3)
  "003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1247
    (write-format "(SP, 1Z3.3)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1248
    (write-format "(SP, 1Z3.3)" 10)
  "00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1249
    (write-format "(SP, 1Z3.3)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1250
    (write-format "(SP, 1Z3.3)" 100)
  "064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1251
    (write-format "(SP, 1Z3.3)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1252
    (write-format "(SP, 1Z3.3)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1253
    (write-format "(SP, 1Z3.3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1254
    (write-format "(SP, 1Z3.3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1255
    (write-format "(SP, 1Z3.3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1256
    (write-format "(SP, 1Z3.3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1257
    (write-format "(SP, 1Z3.3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1258
    (write-format "(SP, 1Z3.3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1259
    (write-format "(SP, 1Z5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1260
    (write-format "(SP, 1Z5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1261
    (write-format "(SP, 1Z5.3)" 1)
  "  001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1262
    (write-format "(SP, 1Z5.3)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1263
    (write-format "(SP, 1Z5.3)" 3)
  "  003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1264
    (write-format "(SP, 1Z5.3)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1265
    (write-format "(SP, 1Z5.3)" 10)
  "  00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1266
    (write-format "(SP, 1Z5.3)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1267
    (write-format "(SP, 1Z5.3)" 100)
  "  064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1268
    (write-format "(SP, 1Z5.3)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1269
    (write-format "(SP, 1Z5.3)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1270
    (write-format "(SP, 1Z5.3)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1271
    (write-format "(SP, 1Z5.3)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1272
    (write-format "(SP, 1Z5.3)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1273
    (write-format "(SP, 1Z5.3)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1274
    (write-format "(SP, 1Z5.3)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1275
    (write-format "(SP, 1Z5.3)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1276
    (write-format "(SP, 1Z10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1277
    (write-format "(SP, 1Z10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1278
    (write-format "(SP, 1Z10.3)" 1)
  "       001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1279
    (write-format "(SP, 1Z10.3)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1280
    (write-format "(SP, 1Z10.3)" 3)
  "       003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1281
    (write-format "(SP, 1Z10.3)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1282
    (write-format "(SP, 1Z10.3)" 10)
  "       00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1283
    (write-format "(SP, 1Z10.3)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1284
    (write-format "(SP, 1Z10.3)" 100)
  "       064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1285
    (write-format "(SP, 1Z10.3)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1286
    (write-format "(SP, 1Z10.3)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1287
    (write-format "(SP, 1Z10.3)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1288
    (write-format "(SP, 1Z10.3)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1289
    (write-format "(SP, 1Z10.3)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1290
    (write-format "(SP, 1Z10.3)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1291
    (write-format "(SP, 1Z10.3)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1292
    (write-format "(SP, 1Z10.3)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1293
    (write-format "(SP, 3Z1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1294
    (write-format "(SP, 3Z1.0)" 0)
  " ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1295
    (write-format "(SP, 3Z1.0)" 1)
  "1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1296
    (write-format "(SP, 3Z1.0)" -1)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1297
    (write-format "(SP, 3Z1.0)" 3)
  "3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1298
    (write-format "(SP, 3Z1.0)" -3)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1299
    (write-format "(SP, 3Z1.0)" 10)
  "A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1300
    (write-format "(SP, 3Z1.0)" -10)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1301
    (write-format "(SP, 3Z1.0)" 100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1302
    (write-format "(SP, 3Z1.0)" -100)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1303
    (write-format "(SP, 3Z1.0)" 1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1304
    (write-format "(SP, 3Z1.0)" -1000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1305
    (write-format "(SP, 3Z1.0)" 10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1306
    (write-format "(SP, 3Z1.0)" -10000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1307
    (write-format "(SP, 3Z1.0)" 100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1308
    (write-format "(SP, 3Z1.0)" -100000)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1309
    (write-format "(SP, 3Z1.0)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1310
    (write-format "(SP, 3Z2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1311
    (write-format "(SP, 3Z2.0)" 0)
  "  ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1312
    (write-format "(SP, 3Z2.0)" 1)
  " 1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1313
    (write-format "(SP, 3Z2.0)" -1)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1314
    (write-format "(SP, 3Z2.0)" 3)
  " 3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1315
    (write-format "(SP, 3Z2.0)" -3)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1316
    (write-format "(SP, 3Z2.0)" 10)
  " A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1317
    (write-format "(SP, 3Z2.0)" -10)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1318
    (write-format "(SP, 3Z2.0)" 100)
  "64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1319
    (write-format "(SP, 3Z2.0)" -100)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1320
    (write-format "(SP, 3Z2.0)" 1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1321
    (write-format "(SP, 3Z2.0)" -1000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1322
    (write-format "(SP, 3Z2.0)" 10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1323
    (write-format "(SP, 3Z2.0)" -10000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1324
    (write-format "(SP, 3Z2.0)" 100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1325
    (write-format "(SP, 3Z2.0)" -100000)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1326
    (write-format "(SP, 3Z2.0)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1327
    (write-format "(SP, 3Z3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1328
    (write-format "(SP, 3Z3.0)" 0)
  "   ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1329
    (write-format "(SP, 3Z3.0)" 1)
  "  1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1330
    (write-format "(SP, 3Z3.0)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1331
    (write-format "(SP, 3Z3.0)" 3)
  "  3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1332
    (write-format "(SP, 3Z3.0)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1333
    (write-format "(SP, 3Z3.0)" 10)
  "  A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1334
    (write-format "(SP, 3Z3.0)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1335
    (write-format "(SP, 3Z3.0)" 100)
  " 64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1336
    (write-format "(SP, 3Z3.0)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1337
    (write-format "(SP, 3Z3.0)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1338
    (write-format "(SP, 3Z3.0)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1339
    (write-format "(SP, 3Z3.0)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1340
    (write-format "(SP, 3Z3.0)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1341
    (write-format "(SP, 3Z3.0)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1342
    (write-format "(SP, 3Z3.0)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1343
    (write-format "(SP, 3Z3.0)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1344
    (write-format "(SP, 3Z5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1345
    (write-format "(SP, 3Z5.0)" 0)
  "     ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1346
    (write-format "(SP, 3Z5.0)" 1)
  "    1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1347
    (write-format "(SP, 3Z5.0)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1348
    (write-format "(SP, 3Z5.0)" 3)
  "    3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1349
    (write-format "(SP, 3Z5.0)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1350
    (write-format "(SP, 3Z5.0)" 10)
  "    A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1351
    (write-format "(SP, 3Z5.0)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1352
    (write-format "(SP, 3Z5.0)" 100)
  "   64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1353
    (write-format "(SP, 3Z5.0)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1354
    (write-format "(SP, 3Z5.0)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1355
    (write-format "(SP, 3Z5.0)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1356
    (write-format "(SP, 3Z5.0)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1357
    (write-format "(SP, 3Z5.0)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1358
    (write-format "(SP, 3Z5.0)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1359
    (write-format "(SP, 3Z5.0)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1360
    (write-format "(SP, 3Z5.0)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1361
    (write-format "(SP, 3Z10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1362
    (write-format "(SP, 3Z10.0)" 0)
  "          ")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1363
    (write-format "(SP, 3Z10.0)" 1)
  "         1")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1364
    (write-format "(SP, 3Z10.0)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1365
    (write-format "(SP, 3Z10.0)" 3)
  "         3")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1366
    (write-format "(SP, 3Z10.0)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1367
    (write-format "(SP, 3Z10.0)" 10)
  "         A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1368
    (write-format "(SP, 3Z10.0)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1369
    (write-format "(SP, 3Z10.0)" 100)
  "        64")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1370
    (write-format "(SP, 3Z10.0)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1371
    (write-format "(SP, 3Z10.0)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1372
    (write-format "(SP, 3Z10.0)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1373
    (write-format "(SP, 3Z10.0)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1374
    (write-format "(SP, 3Z10.0)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1375
    (write-format "(SP, 3Z10.0)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1376
    (write-format "(SP, 3Z10.0)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1377
    (write-format "(SP, 3Z10.0)" 123456789)
  "   75BCD15")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1378
    (write-format "(SP, 3Z3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1379
    (write-format "(SP, 3Z3.3)" 0)
  "000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1380
    (write-format "(SP, 3Z3.3)" 1)
  "001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1381
    (write-format "(SP, 3Z3.3)" -1)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1382
    (write-format "(SP, 3Z3.3)" 3)
  "003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1383
    (write-format "(SP, 3Z3.3)" -3)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1384
    (write-format "(SP, 3Z3.3)" 10)
  "00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1385
    (write-format "(SP, 3Z3.3)" -10)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1386
    (write-format "(SP, 3Z3.3)" 100)
  "064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1387
    (write-format "(SP, 3Z3.3)" -100)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1388
    (write-format "(SP, 3Z3.3)" 1000)
  "3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1389
    (write-format "(SP, 3Z3.3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1390
    (write-format "(SP, 3Z3.3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1391
    (write-format "(SP, 3Z3.3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1392
    (write-format "(SP, 3Z3.3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1393
    (write-format "(SP, 3Z3.3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1394
    (write-format "(SP, 3Z3.3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1395
    (write-format "(SP, 3Z5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1396
    (write-format "(SP, 3Z5.3)" 0)
  "  000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1397
    (write-format "(SP, 3Z5.3)" 1)
  "  001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1398
    (write-format "(SP, 3Z5.3)" -1)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1399
    (write-format "(SP, 3Z5.3)" 3)
  "  003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1400
    (write-format "(SP, 3Z5.3)" -3)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1401
    (write-format "(SP, 3Z5.3)" 10)
  "  00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1402
    (write-format "(SP, 3Z5.3)" -10)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1403
    (write-format "(SP, 3Z5.3)" 100)
  "  064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1404
    (write-format "(SP, 3Z5.3)" -100)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1405
    (write-format "(SP, 3Z5.3)" 1000)
  "  3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1406
    (write-format "(SP, 3Z5.3)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1407
    (write-format "(SP, 3Z5.3)" 10000)
  " 2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1408
    (write-format "(SP, 3Z5.3)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1409
    (write-format "(SP, 3Z5.3)" 100000)
  "186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1410
    (write-format "(SP, 3Z5.3)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1411
    (write-format "(SP, 3Z5.3)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1412
    (write-format "(SP, 3Z10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1413
    (write-format "(SP, 3Z10.3)" 0)
  "       000")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1414
    (write-format "(SP, 3Z10.3)" 1)
  "       001")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1415
    (write-format "(SP, 3Z10.3)" -1)
  "  FFFFFFFF")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1416
    (write-format "(SP, 3Z10.3)" 3)
  "       003")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1417
    (write-format "(SP, 3Z10.3)" -3)
  "  FFFFFFFD")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1418
    (write-format "(SP, 3Z10.3)" 10)
  "       00A")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1419
    (write-format "(SP, 3Z10.3)" -10)
  "  FFFFFFF6")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1420
    (write-format "(SP, 3Z10.3)" 100)
  "       064")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1421
    (write-format "(SP, 3Z10.3)" -100)
  "  FFFFFF9C")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1422
    (write-format "(SP, 3Z10.3)" 1000)
  "       3E8")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1423
    (write-format "(SP, 3Z10.3)" -1000)
  "  FFFFFC18")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1424
    (write-format "(SP, 3Z10.3)" 10000)
  "      2710")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1425
    (write-format "(SP, 3Z10.3)" -10000)
  "  FFFFD8F0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1426
    (write-format "(SP, 3Z10.3)" 100000)
  "     186A0")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1427
    (write-format "(SP, 3Z10.3)" -100000)
  "  FFFE7960")

(rt:deftest FMT.CORPUS.SP-Z-ED-OUTPUT.1428
    (write-format "(SP, 3Z10.3)" 123456789)
  "   75BCD15")

