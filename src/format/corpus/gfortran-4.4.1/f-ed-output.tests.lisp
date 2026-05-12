;;;; f-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from f-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...f-ed-output.test")
;;;;
;;;; 621 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0001
    (write-format "(F1.0)" 3)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0002
    (write-format "(F1.0)" -3)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0003
    (write-format "(F1.0)" 10)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0004
    (write-format "(F1.0)" -10)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0005
    (write-format "(F1.0)" 100)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0006
    (write-format "(F1.0)" -100)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0007
    (write-format "(F1.0)" 1000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0008
    (write-format "(F1.0)" -1000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0009
    (write-format "(F1.0)" 10000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0010
    (write-format "(F1.0)" -10000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0011
    (write-format "(F1.0)" 100000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0012
    (write-format "(F1.0)" -100000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0013
    (write-format "(F1.0)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0014
    (write-format "(F1.0)" 0.1d0)
  "0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0015
    (write-format "(F1.0)" -0.1d0)
  "0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0016
    (write-format "(F1.0)" 0.01d0)
  "0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0017
    (write-format "(F1.0)" -0.01d0)
  "0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0018
    (write-format "(F1.0)" 0.001d0)
  "0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0019
    (write-format "(F1.0)" -0.001d0)
  "0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0020
    (write-format "(F1.0)" 1.0d-4)
  "0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0021
    (write-format "(F1.0)" -1.0d-4)
  "0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0022
    (write-format "(F1.0)" -1.96d-16)
  "0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0023
    (write-format "(F1.0)" 3.14159d0)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0024
    (write-format "(F2.0)" 3)
  "3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0025
    (write-format "(F2.0)" -3)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0026
    (write-format "(F2.0)" 10)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0027
    (write-format "(F2.0)" -10)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0028
    (write-format "(F2.0)" 100)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0029
    (write-format "(F2.0)" -100)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0030
    (write-format "(F2.0)" 1000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0031
    (write-format "(F2.0)" -1000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0032
    (write-format "(F2.0)" 10000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0033
    (write-format "(F2.0)" -10000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0034
    (write-format "(F2.0)" 100000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0035
    (write-format "(F2.0)" -100000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0036
    (write-format "(F2.0)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0037
    (write-format "(F2.0)" 0.1d0)
  "0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0038
    (write-format "(F2.0)" -0.1d0)
  "-.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0039
    (write-format "(F2.0)" 0.01d0)
  "0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0040
    (write-format "(F2.0)" -0.01d0)
  "-.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0041
    (write-format "(F2.0)" 0.001d0)
  "0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0042
    (write-format "(F2.0)" -0.001d0)
  "-.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0043
    (write-format "(F2.0)" 1.0d-4)
  "0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0044
    (write-format "(F2.0)" -1.0d-4)
  "-.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0045
    (write-format "(F2.0)" -1.96d-16)
  "-.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0046
    (write-format "(F2.0)" 3.14159d0)
  "3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0047
    (write-format "(F3.0)" 3)
  " 3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0048
    (write-format "(F3.0)" -3)
  "-3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0049
    (write-format "(F3.0)" 10)
  "10.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0050
    (write-format "(F3.0)" -10)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0051
    (write-format "(F3.0)" 100)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0052
    (write-format "(F3.0)" -100)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0053
    (write-format "(F3.0)" 1000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0054
    (write-format "(F3.0)" -1000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0055
    (write-format "(F3.0)" 10000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0056
    (write-format "(F3.0)" -10000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0057
    (write-format "(F3.0)" 100000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0058
    (write-format "(F3.0)" -100000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0059
    (write-format "(F3.0)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0060
    (write-format "(F3.0)" 0.1d0)
  " 0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0061
    (write-format "(F3.0)" -0.1d0)
  "-0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0062
    (write-format "(F3.0)" 0.01d0)
  " 0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0063
    (write-format "(F3.0)" -0.01d0)
  "-0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0064
    (write-format "(F3.0)" 0.001d0)
  " 0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0065
    (write-format "(F3.0)" -0.001d0)
  "-0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0066
    (write-format "(F3.0)" 1.0d-4)
  " 0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0067
    (write-format "(F3.0)" -1.0d-4)
  "-0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0068
    (write-format "(F3.0)" -1.96d-16)
  "-0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0069
    (write-format "(F3.0)" 3.14159d0)
  " 3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0070
    (write-format "(F4.0)" 3)
  "  3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0071
    (write-format "(F4.0)" -3)
  " -3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0072
    (write-format "(F4.0)" 10)
  " 10.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0073
    (write-format "(F4.0)" -10)
  "-10.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0074
    (write-format "(F4.0)" 100)
  "100.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0075
    (write-format "(F4.0)" -100)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0076
    (write-format "(F4.0)" 1000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0077
    (write-format "(F4.0)" -1000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0078
    (write-format "(F4.0)" 10000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0079
    (write-format "(F4.0)" -10000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0080
    (write-format "(F4.0)" 100000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0081
    (write-format "(F4.0)" -100000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0082
    (write-format "(F4.0)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0083
    (write-format "(F4.0)" 0.1d0)
  "  0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0084
    (write-format "(F4.0)" -0.1d0)
  " -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0085
    (write-format "(F4.0)" 0.01d0)
  "  0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0086
    (write-format "(F4.0)" -0.01d0)
  " -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0087
    (write-format "(F4.0)" 0.001d0)
  "  0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0088
    (write-format "(F4.0)" -0.001d0)
  " -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0089
    (write-format "(F4.0)" 1.0d-4)
  "  0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0090
    (write-format "(F4.0)" -1.0d-4)
  " -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0091
    (write-format "(F4.0)" -1.96d-16)
  " -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0092
    (write-format "(F4.0)" 3.14159d0)
  "  3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0093
    (write-format "(F5.0)" 3)
  "   3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0094
    (write-format "(F5.0)" -3)
  "  -3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0095
    (write-format "(F5.0)" 10)
  "  10.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0096
    (write-format "(F5.0)" -10)
  " -10.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0097
    (write-format "(F5.0)" 100)
  " 100.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0098
    (write-format "(F5.0)" -100)
  "-100.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0099
    (write-format "(F5.0)" 1000)
  "1000.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0100
    (write-format "(F5.0)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0101
    (write-format "(F5.0)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0102
    (write-format "(F5.0)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0103
    (write-format "(F5.0)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0104
    (write-format "(F5.0)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0105
    (write-format "(F5.0)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0106
    (write-format "(F5.0)" 0.1d0)
  "   0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0107
    (write-format "(F5.0)" -0.1d0)
  "  -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0108
    (write-format "(F5.0)" 0.01d0)
  "   0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0109
    (write-format "(F5.0)" -0.01d0)
  "  -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0110
    (write-format "(F5.0)" 0.001d0)
  "   0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0111
    (write-format "(F5.0)" -0.001d0)
  "  -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0112
    (write-format "(F5.0)" 1.0d-4)
  "   0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0113
    (write-format "(F5.0)" -1.0d-4)
  "  -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0114
    (write-format "(F5.0)" -1.96d-16)
  "  -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0115
    (write-format "(F5.0)" 3.14159d0)
  "   3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0116
    (write-format "(F10.0)" 3)
  "        3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0117
    (write-format "(F10.0)" -3)
  "       -3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0118
    (write-format "(F10.0)" 10)
  "       10.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0119
    (write-format "(F10.0)" -10)
  "      -10.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0120
    (write-format "(F10.0)" 100)
  "      100.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0121
    (write-format "(F10.0)" -100)
  "     -100.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0122
    (write-format "(F10.0)" 1000)
  "     1000.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0123
    (write-format "(F10.0)" -1000)
  "    -1000.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0124
    (write-format "(F10.0)" 10000)
  "    10000.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0125
    (write-format "(F10.0)" -10000)
  "   -10000.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0126
    (write-format "(F10.0)" 100000)
  "   100000.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0127
    (write-format "(F10.0)" -100000)
  "  -100000.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0128
    (write-format "(F10.0)" 123456789)
  "123456792.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0129
    (write-format "(F10.0)" 0.1d0)
  "        0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0130
    (write-format "(F10.0)" -0.1d0)
  "       -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0131
    (write-format "(F10.0)" 0.01d0)
  "        0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0132
    (write-format "(F10.0)" -0.01d0)
  "       -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0133
    (write-format "(F10.0)" 0.001d0)
  "        0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0134
    (write-format "(F10.0)" -0.001d0)
  "       -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0135
    (write-format "(F10.0)" 1.0d-4)
  "        0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0136
    (write-format "(F10.0)" -1.0d-4)
  "       -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0137
    (write-format "(F10.0)" -1.96d-16)
  "       -0.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0138
    (write-format "(F10.0)" 3.14159d0)
  "        3.")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0139
    (write-format "(F1.1)" 3)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0140
    (write-format "(F1.1)" -3)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0141
    (write-format "(F1.1)" 10)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0142
    (write-format "(F1.1)" -10)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0143
    (write-format "(F1.1)" 100)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0144
    (write-format "(F1.1)" -100)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0145
    (write-format "(F1.1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0146
    (write-format "(F1.1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0147
    (write-format "(F1.1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0148
    (write-format "(F1.1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0149
    (write-format "(F1.1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0150
    (write-format "(F1.1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0151
    (write-format "(F1.1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0152
    (write-format "(F1.1)" 0.1d0)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0153
    (write-format "(F1.1)" -0.1d0)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0154
    (write-format "(F1.1)" 0.01d0)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0155
    (write-format "(F1.1)" -0.01d0)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0156
    (write-format "(F1.1)" 0.001d0)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0157
    (write-format "(F1.1)" -0.001d0)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0158
    (write-format "(F1.1)" 1.0d-4)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0159
    (write-format "(F1.1)" -1.0d-4)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0160
    (write-format "(F1.1)" -1.96d-16)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0161
    (write-format "(F1.1)" 3.14159d0)
  "*")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0162
    (write-format "(F2.1)" 3)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0163
    (write-format "(F2.1)" -3)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0164
    (write-format "(F2.1)" 10)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0165
    (write-format "(F2.1)" -10)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0166
    (write-format "(F2.1)" 100)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0167
    (write-format "(F2.1)" -100)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0168
    (write-format "(F2.1)" 1000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0169
    (write-format "(F2.1)" -1000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0170
    (write-format "(F2.1)" 10000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0171
    (write-format "(F2.1)" -10000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0172
    (write-format "(F2.1)" 100000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0173
    (write-format "(F2.1)" -100000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0174
    (write-format "(F2.1)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0175
    (write-format "(F2.1)" 0.1d0)
  ".1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0176
    (write-format "(F2.1)" -0.1d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0177
    (write-format "(F2.1)" 0.01d0)
  ".0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0178
    (write-format "(F2.1)" -0.01d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0179
    (write-format "(F2.1)" 0.001d0)
  ".0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0180
    (write-format "(F2.1)" -0.001d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0181
    (write-format "(F2.1)" 1.0d-4)
  ".0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0182
    (write-format "(F2.1)" -1.0d-4)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0183
    (write-format "(F2.1)" -1.96d-16)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0184
    (write-format "(F2.1)" 3.14159d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0185
    (write-format "(F3.1)" 3)
  "3.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0186
    (write-format "(F3.1)" -3)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0187
    (write-format "(F3.1)" 10)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0188
    (write-format "(F3.1)" -10)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0189
    (write-format "(F3.1)" 100)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0190
    (write-format "(F3.1)" -100)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0191
    (write-format "(F3.1)" 1000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0192
    (write-format "(F3.1)" -1000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0193
    (write-format "(F3.1)" 10000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0194
    (write-format "(F3.1)" -10000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0195
    (write-format "(F3.1)" 100000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0196
    (write-format "(F3.1)" -100000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0197
    (write-format "(F3.1)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0198
    (write-format "(F3.1)" 0.1d0)
  "0.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0199
    (write-format "(F3.1)" -0.1d0)
  "-.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0200
    (write-format "(F3.1)" 0.01d0)
  "0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0201
    (write-format "(F3.1)" -0.01d0)
  "-.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0202
    (write-format "(F3.1)" 0.001d0)
  "0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0203
    (write-format "(F3.1)" -0.001d0)
  "-.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0204
    (write-format "(F3.1)" 1.0d-4)
  "0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0205
    (write-format "(F3.1)" -1.0d-4)
  "-.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0206
    (write-format "(F3.1)" -1.96d-16)
  "-.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0207
    (write-format "(F3.1)" 3.14159d0)
  "3.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0208
    (write-format "(F4.1)" 3)
  " 3.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0209
    (write-format "(F4.1)" -3)
  "-3.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0210
    (write-format "(F4.1)" 10)
  "10.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0211
    (write-format "(F4.1)" -10)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0212
    (write-format "(F4.1)" 100)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0213
    (write-format "(F4.1)" -100)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0214
    (write-format "(F4.1)" 1000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0215
    (write-format "(F4.1)" -1000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0216
    (write-format "(F4.1)" 10000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0217
    (write-format "(F4.1)" -10000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0218
    (write-format "(F4.1)" 100000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0219
    (write-format "(F4.1)" -100000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0220
    (write-format "(F4.1)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0221
    (write-format "(F4.1)" 0.1d0)
  " 0.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0222
    (write-format "(F4.1)" -0.1d0)
  "-0.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0223
    (write-format "(F4.1)" 0.01d0)
  " 0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0224
    (write-format "(F4.1)" -0.01d0)
  "-0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0225
    (write-format "(F4.1)" 0.001d0)
  " 0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0226
    (write-format "(F4.1)" -0.001d0)
  "-0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0227
    (write-format "(F4.1)" 1.0d-4)
  " 0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0228
    (write-format "(F4.1)" -1.0d-4)
  "-0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0229
    (write-format "(F4.1)" -1.96d-16)
  "-0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0230
    (write-format "(F4.1)" 3.14159d0)
  " 3.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0231
    (write-format "(F5.1)" 3)
  "  3.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0232
    (write-format "(F5.1)" -3)
  " -3.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0233
    (write-format "(F5.1)" 10)
  " 10.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0234
    (write-format "(F5.1)" -10)
  "-10.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0235
    (write-format "(F5.1)" 100)
  "100.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0236
    (write-format "(F5.1)" -100)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0237
    (write-format "(F5.1)" 1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0238
    (write-format "(F5.1)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0239
    (write-format "(F5.1)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0240
    (write-format "(F5.1)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0241
    (write-format "(F5.1)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0242
    (write-format "(F5.1)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0243
    (write-format "(F5.1)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0244
    (write-format "(F5.1)" 0.1d0)
  "  0.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0245
    (write-format "(F5.1)" -0.1d0)
  " -0.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0246
    (write-format "(F5.1)" 0.01d0)
  "  0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0247
    (write-format "(F5.1)" -0.01d0)
  " -0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0248
    (write-format "(F5.1)" 0.001d0)
  "  0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0249
    (write-format "(F5.1)" -0.001d0)
  " -0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0250
    (write-format "(F5.1)" 1.0d-4)
  "  0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0251
    (write-format "(F5.1)" -1.0d-4)
  " -0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0252
    (write-format "(F5.1)" -1.96d-16)
  " -0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0253
    (write-format "(F5.1)" 3.14159d0)
  "  3.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0254
    (write-format "(F10.1)" 3)
  "       3.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0255
    (write-format "(F10.1)" -3)
  "      -3.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0256
    (write-format "(F10.1)" 10)
  "      10.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0257
    (write-format "(F10.1)" -10)
  "     -10.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0258
    (write-format "(F10.1)" 100)
  "     100.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0259
    (write-format "(F10.1)" -100)
  "    -100.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0260
    (write-format "(F10.1)" 1000)
  "    1000.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0261
    (write-format "(F10.1)" -1000)
  "   -1000.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0262
    (write-format "(F10.1)" 10000)
  "   10000.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0263
    (write-format "(F10.1)" -10000)
  "  -10000.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0264
    (write-format "(F10.1)" 100000)
  "  100000.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0265
    (write-format "(F10.1)" -100000)
  " -100000.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0266
    (write-format "(F10.1)" 123456789)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0267
    (write-format "(F10.1)" 0.1d0)
  "       0.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0268
    (write-format "(F10.1)" -0.1d0)
  "      -0.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0269
    (write-format "(F10.1)" 0.01d0)
  "       0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0270
    (write-format "(F10.1)" -0.01d0)
  "      -0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0271
    (write-format "(F10.1)" 0.001d0)
  "       0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0272
    (write-format "(F10.1)" -0.001d0)
  "      -0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0273
    (write-format "(F10.1)" 1.0d-4)
  "       0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0274
    (write-format "(F10.1)" -1.0d-4)
  "      -0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0275
    (write-format "(F10.1)" -1.96d-16)
  "      -0.0")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0276
    (write-format "(F10.1)" 3.14159d0)
  "       3.1")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0277
    (write-format "(F2.2)" 3)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0278
    (write-format "(F2.2)" -3)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0279
    (write-format "(F2.2)" 10)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0280
    (write-format "(F2.2)" -10)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0281
    (write-format "(F2.2)" 100)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0282
    (write-format "(F2.2)" -100)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0283
    (write-format "(F2.2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0284
    (write-format "(F2.2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0285
    (write-format "(F2.2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0286
    (write-format "(F2.2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0287
    (write-format "(F2.2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0288
    (write-format "(F2.2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0289
    (write-format "(F2.2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0290
    (write-format "(F2.2)" 0.1d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0291
    (write-format "(F2.2)" -0.1d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0292
    (write-format "(F2.2)" 0.01d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0293
    (write-format "(F2.2)" -0.01d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0294
    (write-format "(F2.2)" 0.001d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0295
    (write-format "(F2.2)" -0.001d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0296
    (write-format "(F2.2)" 1.0d-4)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0297
    (write-format "(F2.2)" -1.0d-4)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0298
    (write-format "(F2.2)" -1.96d-16)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0299
    (write-format "(F2.2)" 3.14159d0)
  "**")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0300
    (write-format "(F3.2)" 3)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0301
    (write-format "(F3.2)" -3)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0302
    (write-format "(F3.2)" 10)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0303
    (write-format "(F3.2)" -10)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0304
    (write-format "(F3.2)" 100)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0305
    (write-format "(F3.2)" -100)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0306
    (write-format "(F3.2)" 1000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0307
    (write-format "(F3.2)" -1000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0308
    (write-format "(F3.2)" 10000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0309
    (write-format "(F3.2)" -10000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0310
    (write-format "(F3.2)" 100000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0311
    (write-format "(F3.2)" -100000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0312
    (write-format "(F3.2)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0313
    (write-format "(F3.2)" 0.1d0)
  ".10")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0314
    (write-format "(F3.2)" -0.1d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0315
    (write-format "(F3.2)" 0.01d0)
  ".01")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0316
    (write-format "(F3.2)" -0.01d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0317
    (write-format "(F3.2)" 0.001d0)
  ".00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0318
    (write-format "(F3.2)" -0.001d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0319
    (write-format "(F3.2)" 1.0d-4)
  ".00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0320
    (write-format "(F3.2)" -1.0d-4)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0321
    (write-format "(F3.2)" -1.96d-16)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0322
    (write-format "(F3.2)" 3.14159d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0323
    (write-format "(F4.2)" 3)
  "3.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0324
    (write-format "(F4.2)" -3)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0325
    (write-format "(F4.2)" 10)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0326
    (write-format "(F4.2)" -10)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0327
    (write-format "(F4.2)" 100)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0328
    (write-format "(F4.2)" -100)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0329
    (write-format "(F4.2)" 1000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0330
    (write-format "(F4.2)" -1000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0331
    (write-format "(F4.2)" 10000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0332
    (write-format "(F4.2)" -10000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0333
    (write-format "(F4.2)" 100000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0334
    (write-format "(F4.2)" -100000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0335
    (write-format "(F4.2)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0336
    (write-format "(F4.2)" 0.1d0)
  "0.10")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0337
    (write-format "(F4.2)" -0.1d0)
  "-.10")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0338
    (write-format "(F4.2)" 0.01d0)
  "0.01")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0339
    (write-format "(F4.2)" -0.01d0)
  "-.01")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0340
    (write-format "(F4.2)" 0.001d0)
  "0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0341
    (write-format "(F4.2)" -0.001d0)
  "-.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0342
    (write-format "(F4.2)" 1.0d-4)
  "0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0343
    (write-format "(F4.2)" -1.0d-4)
  "-.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0344
    (write-format "(F4.2)" -1.96d-16)
  "-.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0345
    (write-format "(F4.2)" 3.14159d0)
  "3.14")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0346
    (write-format "(F5.2)" 3)
  " 3.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0347
    (write-format "(F5.2)" -3)
  "-3.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0348
    (write-format "(F5.2)" 10)
  "10.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0349
    (write-format "(F5.2)" -10)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0350
    (write-format "(F5.2)" 100)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0351
    (write-format "(F5.2)" -100)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0352
    (write-format "(F5.2)" 1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0353
    (write-format "(F5.2)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0354
    (write-format "(F5.2)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0355
    (write-format "(F5.2)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0356
    (write-format "(F5.2)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0357
    (write-format "(F5.2)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0358
    (write-format "(F5.2)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0359
    (write-format "(F5.2)" 0.1d0)
  " 0.10")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0360
    (write-format "(F5.2)" -0.1d0)
  "-0.10")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0361
    (write-format "(F5.2)" 0.01d0)
  " 0.01")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0362
    (write-format "(F5.2)" -0.01d0)
  "-0.01")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0363
    (write-format "(F5.2)" 0.001d0)
  " 0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0364
    (write-format "(F5.2)" -0.001d0)
  "-0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0365
    (write-format "(F5.2)" 1.0d-4)
  " 0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0366
    (write-format "(F5.2)" -1.0d-4)
  "-0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0367
    (write-format "(F5.2)" -1.96d-16)
  "-0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0368
    (write-format "(F5.2)" 3.14159d0)
  " 3.14")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0369
    (write-format "(F10.2)" 3)
  "      3.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0370
    (write-format "(F10.2)" -3)
  "     -3.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0371
    (write-format "(F10.2)" 10)
  "     10.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0372
    (write-format "(F10.2)" -10)
  "    -10.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0373
    (write-format "(F10.2)" 100)
  "    100.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0374
    (write-format "(F10.2)" -100)
  "   -100.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0375
    (write-format "(F10.2)" 1000)
  "   1000.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0376
    (write-format "(F10.2)" -1000)
  "  -1000.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0377
    (write-format "(F10.2)" 10000)
  "  10000.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0378
    (write-format "(F10.2)" -10000)
  " -10000.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0379
    (write-format "(F10.2)" 100000)
  " 100000.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0380
    (write-format "(F10.2)" -100000)
  "-100000.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0381
    (write-format "(F10.2)" 123456789)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0382
    (write-format "(F10.2)" 0.1d0)
  "      0.10")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0383
    (write-format "(F10.2)" -0.1d0)
  "     -0.10")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0384
    (write-format "(F10.2)" 0.01d0)
  "      0.01")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0385
    (write-format "(F10.2)" -0.01d0)
  "     -0.01")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0386
    (write-format "(F10.2)" 0.001d0)
  "      0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0387
    (write-format "(F10.2)" -0.001d0)
  "     -0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0388
    (write-format "(F10.2)" 1.0d-4)
  "      0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0389
    (write-format "(F10.2)" -1.0d-4)
  "     -0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0390
    (write-format "(F10.2)" -1.96d-16)
  "     -0.00")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0391
    (write-format "(F10.2)" 3.14159d0)
  "      3.14")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0392
    (write-format "(F3.3)" 3)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0393
    (write-format "(F3.3)" -3)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0394
    (write-format "(F3.3)" 10)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0395
    (write-format "(F3.3)" -10)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0396
    (write-format "(F3.3)" 100)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0397
    (write-format "(F3.3)" -100)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0398
    (write-format "(F3.3)" 1000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0399
    (write-format "(F3.3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0400
    (write-format "(F3.3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0401
    (write-format "(F3.3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0402
    (write-format "(F3.3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0403
    (write-format "(F3.3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0404
    (write-format "(F3.3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0405
    (write-format "(F3.3)" 0.1d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0406
    (write-format "(F3.3)" -0.1d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0407
    (write-format "(F3.3)" 0.01d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0408
    (write-format "(F3.3)" -0.01d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0409
    (write-format "(F3.3)" 0.001d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0410
    (write-format "(F3.3)" -0.001d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0411
    (write-format "(F3.3)" 1.0d-4)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0412
    (write-format "(F3.3)" -1.0d-4)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0413
    (write-format "(F3.3)" -1.96d-16)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0414
    (write-format "(F3.3)" 3.14159d0)
  "***")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0415
    (write-format "(F4.3)" 3)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0416
    (write-format "(F4.3)" -3)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0417
    (write-format "(F4.3)" 10)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0418
    (write-format "(F4.3)" -10)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0419
    (write-format "(F4.3)" 100)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0420
    (write-format "(F4.3)" -100)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0421
    (write-format "(F4.3)" 1000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0422
    (write-format "(F4.3)" -1000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0423
    (write-format "(F4.3)" 10000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0424
    (write-format "(F4.3)" -10000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0425
    (write-format "(F4.3)" 100000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0426
    (write-format "(F4.3)" -100000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0427
    (write-format "(F4.3)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0428
    (write-format "(F4.3)" 0.1d0)
  ".100")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0429
    (write-format "(F4.3)" -0.1d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0430
    (write-format "(F4.3)" 0.01d0)
  ".010")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0431
    (write-format "(F4.3)" -0.01d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0432
    (write-format "(F4.3)" 0.001d0)
  ".001")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0433
    (write-format "(F4.3)" -0.001d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0434
    (write-format "(F4.3)" 1.0d-4)
  ".000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0435
    (write-format "(F4.3)" -1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0436
    (write-format "(F4.3)" -1.96d-16)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0437
    (write-format "(F4.3)" 3.14159d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0438
    (write-format "(F5.3)" 3)
  "3.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0439
    (write-format "(F5.3)" -3)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0440
    (write-format "(F5.3)" 10)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0441
    (write-format "(F5.3)" -10)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0442
    (write-format "(F5.3)" 100)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0443
    (write-format "(F5.3)" -100)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0444
    (write-format "(F5.3)" 1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0445
    (write-format "(F5.3)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0446
    (write-format "(F5.3)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0447
    (write-format "(F5.3)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0448
    (write-format "(F5.3)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0449
    (write-format "(F5.3)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0450
    (write-format "(F5.3)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0451
    (write-format "(F5.3)" 0.1d0)
  "0.100")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0452
    (write-format "(F5.3)" -0.1d0)
  "-.100")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0453
    (write-format "(F5.3)" 0.01d0)
  "0.010")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0454
    (write-format "(F5.3)" -0.01d0)
  "-.010")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0455
    (write-format "(F5.3)" 0.001d0)
  "0.001")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0456
    (write-format "(F5.3)" -0.001d0)
  "-.001")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0457
    (write-format "(F5.3)" 1.0d-4)
  "0.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0458
    (write-format "(F5.3)" -1.0d-4)
  "-.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0459
    (write-format "(F5.3)" -1.96d-16)
  "-.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0460
    (write-format "(F5.3)" 3.14159d0)
  "3.142")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0461
    (write-format "(F10.3)" 3)
  "     3.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0462
    (write-format "(F10.3)" -3)
  "    -3.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0463
    (write-format "(F10.3)" 10)
  "    10.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0464
    (write-format "(F10.3)" -10)
  "   -10.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0465
    (write-format "(F10.3)" 100)
  "   100.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0466
    (write-format "(F10.3)" -100)
  "  -100.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0467
    (write-format "(F10.3)" 1000)
  "  1000.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0468
    (write-format "(F10.3)" -1000)
  " -1000.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0469
    (write-format "(F10.3)" 10000)
  " 10000.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0470
    (write-format "(F10.3)" -10000)
  "-10000.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0471
    (write-format "(F10.3)" 100000)
  "100000.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0472
    (write-format "(F10.3)" -100000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0473
    (write-format "(F10.3)" 123456789)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0474
    (write-format "(F10.3)" 0.1d0)
  "     0.100")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0475
    (write-format "(F10.3)" -0.1d0)
  "    -0.100")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0476
    (write-format "(F10.3)" 0.01d0)
  "     0.010")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0477
    (write-format "(F10.3)" -0.01d0)
  "    -0.010")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0478
    (write-format "(F10.3)" 0.001d0)
  "     0.001")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0479
    (write-format "(F10.3)" -0.001d0)
  "    -0.001")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0480
    (write-format "(F10.3)" 1.0d-4)
  "     0.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0481
    (write-format "(F10.3)" -1.0d-4)
  "    -0.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0482
    (write-format "(F10.3)" -1.96d-16)
  "    -0.000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0483
    (write-format "(F10.3)" 3.14159d0)
  "     3.142")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0484
    (write-format "(F4.4)" 3)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0485
    (write-format "(F4.4)" -3)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0486
    (write-format "(F4.4)" 10)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0487
    (write-format "(F4.4)" -10)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0488
    (write-format "(F4.4)" 100)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0489
    (write-format "(F4.4)" -100)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0490
    (write-format "(F4.4)" 1000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0491
    (write-format "(F4.4)" -1000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0492
    (write-format "(F4.4)" 10000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0493
    (write-format "(F4.4)" -10000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0494
    (write-format "(F4.4)" 100000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0495
    (write-format "(F4.4)" -100000)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0496
    (write-format "(F4.4)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0497
    (write-format "(F4.4)" 0.1d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0498
    (write-format "(F4.4)" -0.1d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0499
    (write-format "(F4.4)" 0.01d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0500
    (write-format "(F4.4)" -0.01d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0501
    (write-format "(F4.4)" 0.001d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0502
    (write-format "(F4.4)" -0.001d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0503
    (write-format "(F4.4)" 1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0504
    (write-format "(F4.4)" -1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0505
    (write-format "(F4.4)" -1.96d-16)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0506
    (write-format "(F4.4)" 3.14159d0)
  "****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0507
    (write-format "(F5.4)" 3)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0508
    (write-format "(F5.4)" -3)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0509
    (write-format "(F5.4)" 10)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0510
    (write-format "(F5.4)" -10)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0511
    (write-format "(F5.4)" 100)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0512
    (write-format "(F5.4)" -100)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0513
    (write-format "(F5.4)" 1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0514
    (write-format "(F5.4)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0515
    (write-format "(F5.4)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0516
    (write-format "(F5.4)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0517
    (write-format "(F5.4)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0518
    (write-format "(F5.4)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0519
    (write-format "(F5.4)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0520
    (write-format "(F5.4)" 0.1d0)
  ".1000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0521
    (write-format "(F5.4)" -0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0522
    (write-format "(F5.4)" 0.01d0)
  ".0100")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0523
    (write-format "(F5.4)" -0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0524
    (write-format "(F5.4)" 0.001d0)
  ".0010")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0525
    (write-format "(F5.4)" -0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0526
    (write-format "(F5.4)" 1.0d-4)
  ".0001")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0527
    (write-format "(F5.4)" -1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0528
    (write-format "(F5.4)" -1.96d-16)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0529
    (write-format "(F5.4)" 3.14159d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0530
    (write-format "(F10.4)" 3)
  "    3.0000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0531
    (write-format "(F10.4)" -3)
  "   -3.0000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0532
    (write-format "(F10.4)" 10)
  "   10.0000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0533
    (write-format "(F10.4)" -10)
  "  -10.0000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0534
    (write-format "(F10.4)" 100)
  "  100.0000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0535
    (write-format "(F10.4)" -100)
  " -100.0000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0536
    (write-format "(F10.4)" 1000)
  " 1000.0000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0537
    (write-format "(F10.4)" -1000)
  "-1000.0000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0538
    (write-format "(F10.4)" 10000)
  "10000.0000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0539
    (write-format "(F10.4)" -10000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0540
    (write-format "(F10.4)" 100000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0541
    (write-format "(F10.4)" -100000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0542
    (write-format "(F10.4)" 123456789)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0543
    (write-format "(F10.4)" 0.1d0)
  "    0.1000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0544
    (write-format "(F10.4)" -0.1d0)
  "   -0.1000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0545
    (write-format "(F10.4)" 0.01d0)
  "    0.0100")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0546
    (write-format "(F10.4)" -0.01d0)
  "   -0.0100")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0547
    (write-format "(F10.4)" 0.001d0)
  "    0.0010")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0548
    (write-format "(F10.4)" -0.001d0)
  "   -0.0010")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0549
    (write-format "(F10.4)" 1.0d-4)
  "    0.0001")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0550
    (write-format "(F10.4)" -1.0d-4)
  "   -0.0001")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0551
    (write-format "(F10.4)" -1.96d-16)
  "   -0.0000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0552
    (write-format "(F10.4)" 3.14159d0)
  "    3.1416")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0553
    (write-format "(F5.5)" 3)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0554
    (write-format "(F5.5)" -3)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0555
    (write-format "(F5.5)" 10)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0556
    (write-format "(F5.5)" -10)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0557
    (write-format "(F5.5)" 100)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0558
    (write-format "(F5.5)" -100)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0559
    (write-format "(F5.5)" 1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0560
    (write-format "(F5.5)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0561
    (write-format "(F5.5)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0562
    (write-format "(F5.5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0563
    (write-format "(F5.5)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0564
    (write-format "(F5.5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0565
    (write-format "(F5.5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0566
    (write-format "(F5.5)" 0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0567
    (write-format "(F5.5)" -0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0568
    (write-format "(F5.5)" 0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0569
    (write-format "(F5.5)" -0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0570
    (write-format "(F5.5)" 0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0571
    (write-format "(F5.5)" -0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0572
    (write-format "(F5.5)" 1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0573
    (write-format "(F5.5)" -1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0574
    (write-format "(F5.5)" -1.96d-16)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0575
    (write-format "(F5.5)" 3.14159d0)
  "*****")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0576
    (write-format "(F10.5)" 3)
  "   3.00000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0577
    (write-format "(F10.5)" -3)
  "  -3.00000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0578
    (write-format "(F10.5)" 10)
  "  10.00000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0579
    (write-format "(F10.5)" -10)
  " -10.00000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0580
    (write-format "(F10.5)" 100)
  " 100.00000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0581
    (write-format "(F10.5)" -100)
  "-100.00000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0582
    (write-format "(F10.5)" 1000)
  "1000.00000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0583
    (write-format "(F10.5)" -1000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0584
    (write-format "(F10.5)" 10000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0585
    (write-format "(F10.5)" -10000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0586
    (write-format "(F10.5)" 100000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0587
    (write-format "(F10.5)" -100000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0588
    (write-format "(F10.5)" 123456789)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0589
    (write-format "(F10.5)" 0.1d0)
  "   0.10000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0590
    (write-format "(F10.5)" -0.1d0)
  "  -0.10000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0591
    (write-format "(F10.5)" 0.01d0)
  "   0.01000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0592
    (write-format "(F10.5)" -0.01d0)
  "  -0.01000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0593
    (write-format "(F10.5)" 0.001d0)
  "   0.00100")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0594
    (write-format "(F10.5)" -0.001d0)
  "  -0.00100")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0595
    (write-format "(F10.5)" 1.0d-4)
  "   0.00010")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0596
    (write-format "(F10.5)" -1.0d-4)
  "  -0.00010")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0597
    (write-format "(F10.5)" -1.96d-16)
  "  -0.00000")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0598
    (write-format "(F10.5)" 3.14159d0)
  "   3.14159")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0599
    (write-format "(F10.10)" 3)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0600
    (write-format "(F10.10)" -3)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0601
    (write-format "(F10.10)" 10)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0602
    (write-format "(F10.10)" -10)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0603
    (write-format "(F10.10)" 100)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0604
    (write-format "(F10.10)" -100)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0605
    (write-format "(F10.10)" 1000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0606
    (write-format "(F10.10)" -1000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0607
    (write-format "(F10.10)" 10000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0608
    (write-format "(F10.10)" -10000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0609
    (write-format "(F10.10)" 100000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0610
    (write-format "(F10.10)" -100000)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0611
    (write-format "(F10.10)" 123456789)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0612
    (write-format "(F10.10)" 0.1d0)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0613
    (write-format "(F10.10)" -0.1d0)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0614
    (write-format "(F10.10)" 0.01d0)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0615
    (write-format "(F10.10)" -0.01d0)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0616
    (write-format "(F10.10)" 0.001d0)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0617
    (write-format "(F10.10)" -0.001d0)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0618
    (write-format "(F10.10)" 1.0d-4)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0619
    (write-format "(F10.10)" -1.0d-4)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0620
    (write-format "(F10.10)" -1.96d-16)
  "**********")

(rt:deftest FMT.CORPUS.F-ED-OUTPUT.0621
    (write-format "(F10.10)" 3.14159d0)
  "**********")

