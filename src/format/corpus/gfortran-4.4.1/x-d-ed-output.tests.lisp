;;;; x-d-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from x-d-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...x-d-ed-output.test")
;;;;
;;;; 6279 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0001
    (write-format "(1X, D1.1)" 3)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0002
    (write-format "(1X, D1.1)" -3)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0003
    (write-format "(1X, D1.1)" 10)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0004
    (write-format "(1X, D1.1)" -10)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0005
    (write-format "(1X, D1.1)" 100)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0006
    (write-format "(1X, D1.1)" -100)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0007
    (write-format "(1X, D1.1)" 1000)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0008
    (write-format "(1X, D1.1)" -1000)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0009
    (write-format "(1X, D1.1)" 10000)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0010
    (write-format "(1X, D1.1)" -10000)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0011
    (write-format "(1X, D1.1)" 100000)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0012
    (write-format "(1X, D1.1)" -100000)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0013
    (write-format "(1X, D1.1)" 123456789)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0014
    (write-format "(1X, D1.1)" 0.1d0)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0015
    (write-format "(1X, D1.1)" -0.1d0)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0016
    (write-format "(1X, D1.1)" 0.01d0)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0017
    (write-format "(1X, D1.1)" -0.01d0)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0018
    (write-format "(1X, D1.1)" 0.001d0)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0019
    (write-format "(1X, D1.1)" -0.001d0)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0020
    (write-format "(1X, D1.1)" 1.0d-4)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0021
    (write-format "(1X, D1.1)" -1.0d-4)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0022
    (write-format "(1X, D1.1)" -1.96d-16)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0023
    (write-format "(1X, D1.1)" 3.14159d0)
  " *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0024
    (write-format "(1X, D2.1)" 3)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0025
    (write-format "(1X, D2.1)" -3)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0026
    (write-format "(1X, D2.1)" 10)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0027
    (write-format "(1X, D2.1)" -10)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0028
    (write-format "(1X, D2.1)" 100)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0029
    (write-format "(1X, D2.1)" -100)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0030
    (write-format "(1X, D2.1)" 1000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0031
    (write-format "(1X, D2.1)" -1000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0032
    (write-format "(1X, D2.1)" 10000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0033
    (write-format "(1X, D2.1)" -10000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0034
    (write-format "(1X, D2.1)" 100000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0035
    (write-format "(1X, D2.1)" -100000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0036
    (write-format "(1X, D2.1)" 123456789)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0037
    (write-format "(1X, D2.1)" 0.1d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0038
    (write-format "(1X, D2.1)" -0.1d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0039
    (write-format "(1X, D2.1)" 0.01d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0040
    (write-format "(1X, D2.1)" -0.01d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0041
    (write-format "(1X, D2.1)" 0.001d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0042
    (write-format "(1X, D2.1)" -0.001d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0043
    (write-format "(1X, D2.1)" 1.0d-4)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0044
    (write-format "(1X, D2.1)" -1.0d-4)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0045
    (write-format "(1X, D2.1)" -1.96d-16)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0046
    (write-format "(1X, D2.1)" 3.14159d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0047
    (write-format "(1X, D3.1)" 3)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0048
    (write-format "(1X, D3.1)" -3)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0049
    (write-format "(1X, D3.1)" 10)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0050
    (write-format "(1X, D3.1)" -10)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0051
    (write-format "(1X, D3.1)" 100)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0052
    (write-format "(1X, D3.1)" -100)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0053
    (write-format "(1X, D3.1)" 1000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0054
    (write-format "(1X, D3.1)" -1000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0055
    (write-format "(1X, D3.1)" 10000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0056
    (write-format "(1X, D3.1)" -10000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0057
    (write-format "(1X, D3.1)" 100000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0058
    (write-format "(1X, D3.1)" -100000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0059
    (write-format "(1X, D3.1)" 123456789)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0060
    (write-format "(1X, D3.1)" 0.1d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0061
    (write-format "(1X, D3.1)" -0.1d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0062
    (write-format "(1X, D3.1)" 0.01d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0063
    (write-format "(1X, D3.1)" -0.01d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0064
    (write-format "(1X, D3.1)" 0.001d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0065
    (write-format "(1X, D3.1)" -0.001d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0066
    (write-format "(1X, D3.1)" 1.0d-4)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0067
    (write-format "(1X, D3.1)" -1.0d-4)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0068
    (write-format "(1X, D3.1)" -1.96d-16)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0069
    (write-format "(1X, D3.1)" 3.14159d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0070
    (write-format "(1X, D4.1)" 3)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0071
    (write-format "(1X, D4.1)" -3)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0072
    (write-format "(1X, D4.1)" 10)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0073
    (write-format "(1X, D4.1)" -10)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0074
    (write-format "(1X, D4.1)" 100)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0075
    (write-format "(1X, D4.1)" -100)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0076
    (write-format "(1X, D4.1)" 1000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0077
    (write-format "(1X, D4.1)" -1000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0078
    (write-format "(1X, D4.1)" 10000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0079
    (write-format "(1X, D4.1)" -10000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0080
    (write-format "(1X, D4.1)" 100000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0081
    (write-format "(1X, D4.1)" -100000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0082
    (write-format "(1X, D4.1)" 123456789)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0083
    (write-format "(1X, D4.1)" 0.1d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0084
    (write-format "(1X, D4.1)" -0.1d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0085
    (write-format "(1X, D4.1)" 0.01d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0086
    (write-format "(1X, D4.1)" -0.01d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0087
    (write-format "(1X, D4.1)" 0.001d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0088
    (write-format "(1X, D4.1)" -0.001d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0089
    (write-format "(1X, D4.1)" 1.0d-4)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0090
    (write-format "(1X, D4.1)" -1.0d-4)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0091
    (write-format "(1X, D4.1)" -1.96d-16)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0092
    (write-format "(1X, D4.1)" 3.14159d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0093
    (write-format "(1X, D5.1)" 3)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0094
    (write-format "(1X, D5.1)" -3)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0095
    (write-format "(1X, D5.1)" 10)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0096
    (write-format "(1X, D5.1)" -10)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0097
    (write-format "(1X, D5.1)" 100)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0098
    (write-format "(1X, D5.1)" -100)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0099
    (write-format "(1X, D5.1)" 1000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0100
    (write-format "(1X, D5.1)" -1000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0101
    (write-format "(1X, D5.1)" 10000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0102
    (write-format "(1X, D5.1)" -10000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0103
    (write-format "(1X, D5.1)" 100000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0104
    (write-format "(1X, D5.1)" -100000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0105
    (write-format "(1X, D5.1)" 123456789)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0106
    (write-format "(1X, D5.1)" 0.1d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0107
    (write-format "(1X, D5.1)" -0.1d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0108
    (write-format "(1X, D5.1)" 0.01d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0109
    (write-format "(1X, D5.1)" -0.01d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0110
    (write-format "(1X, D5.1)" 0.001d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0111
    (write-format "(1X, D5.1)" -0.001d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0112
    (write-format "(1X, D5.1)" 1.0d-4)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0113
    (write-format "(1X, D5.1)" -1.0d-4)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0114
    (write-format "(1X, D5.1)" -1.96d-16)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0115
    (write-format "(1X, D5.1)" 3.14159d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0116
    (write-format "(1X, D10.1)" 3)
  "    0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0117
    (write-format "(1X, D10.1)" -3)
  "   -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0118
    (write-format "(1X, D10.1)" 10)
  "    0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0119
    (write-format "(1X, D10.1)" -10)
  "   -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0120
    (write-format "(1X, D10.1)" 100)
  "    0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0121
    (write-format "(1X, D10.1)" -100)
  "   -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0122
    (write-format "(1X, D10.1)" 1000)
  "    0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0123
    (write-format "(1X, D10.1)" -1000)
  "   -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0124
    (write-format "(1X, D10.1)" 10000)
  "    0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0125
    (write-format "(1X, D10.1)" -10000)
  "   -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0126
    (write-format "(1X, D10.1)" 100000)
  "    0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0127
    (write-format "(1X, D10.1)" -100000)
  "   -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0128
    (write-format "(1X, D10.1)" 123456789)
  "    0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0129
    (write-format "(1X, D10.1)" 0.1d0)
  "    0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0130
    (write-format "(1X, D10.1)" -0.1d0)
  "   -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0131
    (write-format "(1X, D10.1)" 0.01d0)
  "    0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0132
    (write-format "(1X, D10.1)" -0.01d0)
  "   -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0133
    (write-format "(1X, D10.1)" 0.001d0)
  "    0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0134
    (write-format "(1X, D10.1)" -0.001d0)
  "   -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0135
    (write-format "(1X, D10.1)" 1.0d-4)
  "    0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0136
    (write-format "(1X, D10.1)" -1.0d-4)
  "   -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0137
    (write-format "(1X, D10.1)" -1.96d-16)
  "   -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0138
    (write-format "(1X, D10.1)" 3.14159d0)
  "    0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0139
    (write-format "(1X, D2.2)" 3)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0140
    (write-format "(1X, D2.2)" -3)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0141
    (write-format "(1X, D2.2)" 10)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0142
    (write-format "(1X, D2.2)" -10)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0143
    (write-format "(1X, D2.2)" 100)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0144
    (write-format "(1X, D2.2)" -100)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0145
    (write-format "(1X, D2.2)" 1000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0146
    (write-format "(1X, D2.2)" -1000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0147
    (write-format "(1X, D2.2)" 10000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0148
    (write-format "(1X, D2.2)" -10000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0149
    (write-format "(1X, D2.2)" 100000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0150
    (write-format "(1X, D2.2)" -100000)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0151
    (write-format "(1X, D2.2)" 123456789)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0152
    (write-format "(1X, D2.2)" 0.1d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0153
    (write-format "(1X, D2.2)" -0.1d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0154
    (write-format "(1X, D2.2)" 0.01d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0155
    (write-format "(1X, D2.2)" -0.01d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0156
    (write-format "(1X, D2.2)" 0.001d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0157
    (write-format "(1X, D2.2)" -0.001d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0158
    (write-format "(1X, D2.2)" 1.0d-4)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0159
    (write-format "(1X, D2.2)" -1.0d-4)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0160
    (write-format "(1X, D2.2)" -1.96d-16)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0161
    (write-format "(1X, D2.2)" 3.14159d0)
  " **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0162
    (write-format "(1X, D3.2)" 3)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0163
    (write-format "(1X, D3.2)" -3)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0164
    (write-format "(1X, D3.2)" 10)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0165
    (write-format "(1X, D3.2)" -10)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0166
    (write-format "(1X, D3.2)" 100)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0167
    (write-format "(1X, D3.2)" -100)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0168
    (write-format "(1X, D3.2)" 1000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0169
    (write-format "(1X, D3.2)" -1000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0170
    (write-format "(1X, D3.2)" 10000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0171
    (write-format "(1X, D3.2)" -10000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0172
    (write-format "(1X, D3.2)" 100000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0173
    (write-format "(1X, D3.2)" -100000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0174
    (write-format "(1X, D3.2)" 123456789)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0175
    (write-format "(1X, D3.2)" 0.1d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0176
    (write-format "(1X, D3.2)" -0.1d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0177
    (write-format "(1X, D3.2)" 0.01d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0178
    (write-format "(1X, D3.2)" -0.01d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0179
    (write-format "(1X, D3.2)" 0.001d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0180
    (write-format "(1X, D3.2)" -0.001d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0181
    (write-format "(1X, D3.2)" 1.0d-4)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0182
    (write-format "(1X, D3.2)" -1.0d-4)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0183
    (write-format "(1X, D3.2)" -1.96d-16)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0184
    (write-format "(1X, D3.2)" 3.14159d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0185
    (write-format "(1X, D4.2)" 3)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0186
    (write-format "(1X, D4.2)" -3)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0187
    (write-format "(1X, D4.2)" 10)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0188
    (write-format "(1X, D4.2)" -10)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0189
    (write-format "(1X, D4.2)" 100)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0190
    (write-format "(1X, D4.2)" -100)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0191
    (write-format "(1X, D4.2)" 1000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0192
    (write-format "(1X, D4.2)" -1000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0193
    (write-format "(1X, D4.2)" 10000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0194
    (write-format "(1X, D4.2)" -10000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0195
    (write-format "(1X, D4.2)" 100000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0196
    (write-format "(1X, D4.2)" -100000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0197
    (write-format "(1X, D4.2)" 123456789)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0198
    (write-format "(1X, D4.2)" 0.1d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0199
    (write-format "(1X, D4.2)" -0.1d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0200
    (write-format "(1X, D4.2)" 0.01d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0201
    (write-format "(1X, D4.2)" -0.01d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0202
    (write-format "(1X, D4.2)" 0.001d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0203
    (write-format "(1X, D4.2)" -0.001d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0204
    (write-format "(1X, D4.2)" 1.0d-4)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0205
    (write-format "(1X, D4.2)" -1.0d-4)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0206
    (write-format "(1X, D4.2)" -1.96d-16)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0207
    (write-format "(1X, D4.2)" 3.14159d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0208
    (write-format "(1X, D5.2)" 3)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0209
    (write-format "(1X, D5.2)" -3)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0210
    (write-format "(1X, D5.2)" 10)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0211
    (write-format "(1X, D5.2)" -10)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0212
    (write-format "(1X, D5.2)" 100)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0213
    (write-format "(1X, D5.2)" -100)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0214
    (write-format "(1X, D5.2)" 1000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0215
    (write-format "(1X, D5.2)" -1000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0216
    (write-format "(1X, D5.2)" 10000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0217
    (write-format "(1X, D5.2)" -10000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0218
    (write-format "(1X, D5.2)" 100000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0219
    (write-format "(1X, D5.2)" -100000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0220
    (write-format "(1X, D5.2)" 123456789)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0221
    (write-format "(1X, D5.2)" 0.1d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0222
    (write-format "(1X, D5.2)" -0.1d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0223
    (write-format "(1X, D5.2)" 0.01d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0224
    (write-format "(1X, D5.2)" -0.01d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0225
    (write-format "(1X, D5.2)" 0.001d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0226
    (write-format "(1X, D5.2)" -0.001d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0227
    (write-format "(1X, D5.2)" 1.0d-4)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0228
    (write-format "(1X, D5.2)" -1.0d-4)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0229
    (write-format "(1X, D5.2)" -1.96d-16)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0230
    (write-format "(1X, D5.2)" 3.14159d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0231
    (write-format "(1X, D10.2)" 3)
  "   0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0232
    (write-format "(1X, D10.2)" -3)
  "  -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0233
    (write-format "(1X, D10.2)" 10)
  "   0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0234
    (write-format "(1X, D10.2)" -10)
  "  -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0235
    (write-format "(1X, D10.2)" 100)
  "   0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0236
    (write-format "(1X, D10.2)" -100)
  "  -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0237
    (write-format "(1X, D10.2)" 1000)
  "   0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0238
    (write-format "(1X, D10.2)" -1000)
  "  -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0239
    (write-format "(1X, D10.2)" 10000)
  "   0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0240
    (write-format "(1X, D10.2)" -10000)
  "  -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0241
    (write-format "(1X, D10.2)" 100000)
  "   0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0242
    (write-format "(1X, D10.2)" -100000)
  "  -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0243
    (write-format "(1X, D10.2)" 123456789)
  "   0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0244
    (write-format "(1X, D10.2)" 0.1d0)
  "   0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0245
    (write-format "(1X, D10.2)" -0.1d0)
  "  -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0246
    (write-format "(1X, D10.2)" 0.01d0)
  "   0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0247
    (write-format "(1X, D10.2)" -0.01d0)
  "  -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0248
    (write-format "(1X, D10.2)" 0.001d0)
  "   0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0249
    (write-format "(1X, D10.2)" -0.001d0)
  "  -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0250
    (write-format "(1X, D10.2)" 1.0d-4)
  "   0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0251
    (write-format "(1X, D10.2)" -1.0d-4)
  "  -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0252
    (write-format "(1X, D10.2)" -1.96d-16)
  "  -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0253
    (write-format "(1X, D10.2)" 3.14159d0)
  "   0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0254
    (write-format "(1X, D3.3)" 3)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0255
    (write-format "(1X, D3.3)" -3)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0256
    (write-format "(1X, D3.3)" 10)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0257
    (write-format "(1X, D3.3)" -10)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0258
    (write-format "(1X, D3.3)" 100)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0259
    (write-format "(1X, D3.3)" -100)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0260
    (write-format "(1X, D3.3)" 1000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0261
    (write-format "(1X, D3.3)" -1000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0262
    (write-format "(1X, D3.3)" 10000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0263
    (write-format "(1X, D3.3)" -10000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0264
    (write-format "(1X, D3.3)" 100000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0265
    (write-format "(1X, D3.3)" -100000)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0266
    (write-format "(1X, D3.3)" 123456789)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0267
    (write-format "(1X, D3.3)" 0.1d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0268
    (write-format "(1X, D3.3)" -0.1d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0269
    (write-format "(1X, D3.3)" 0.01d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0270
    (write-format "(1X, D3.3)" -0.01d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0271
    (write-format "(1X, D3.3)" 0.001d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0272
    (write-format "(1X, D3.3)" -0.001d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0273
    (write-format "(1X, D3.3)" 1.0d-4)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0274
    (write-format "(1X, D3.3)" -1.0d-4)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0275
    (write-format "(1X, D3.3)" -1.96d-16)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0276
    (write-format "(1X, D3.3)" 3.14159d0)
  " ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0277
    (write-format "(1X, D4.3)" 3)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0278
    (write-format "(1X, D4.3)" -3)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0279
    (write-format "(1X, D4.3)" 10)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0280
    (write-format "(1X, D4.3)" -10)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0281
    (write-format "(1X, D4.3)" 100)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0282
    (write-format "(1X, D4.3)" -100)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0283
    (write-format "(1X, D4.3)" 1000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0284
    (write-format "(1X, D4.3)" -1000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0285
    (write-format "(1X, D4.3)" 10000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0286
    (write-format "(1X, D4.3)" -10000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0287
    (write-format "(1X, D4.3)" 100000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0288
    (write-format "(1X, D4.3)" -100000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0289
    (write-format "(1X, D4.3)" 123456789)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0290
    (write-format "(1X, D4.3)" 0.1d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0291
    (write-format "(1X, D4.3)" -0.1d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0292
    (write-format "(1X, D4.3)" 0.01d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0293
    (write-format "(1X, D4.3)" -0.01d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0294
    (write-format "(1X, D4.3)" 0.001d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0295
    (write-format "(1X, D4.3)" -0.001d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0296
    (write-format "(1X, D4.3)" 1.0d-4)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0297
    (write-format "(1X, D4.3)" -1.0d-4)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0298
    (write-format "(1X, D4.3)" -1.96d-16)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0299
    (write-format "(1X, D4.3)" 3.14159d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0300
    (write-format "(1X, D5.3)" 3)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0301
    (write-format "(1X, D5.3)" -3)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0302
    (write-format "(1X, D5.3)" 10)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0303
    (write-format "(1X, D5.3)" -10)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0304
    (write-format "(1X, D5.3)" 100)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0305
    (write-format "(1X, D5.3)" -100)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0306
    (write-format "(1X, D5.3)" 1000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0307
    (write-format "(1X, D5.3)" -1000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0308
    (write-format "(1X, D5.3)" 10000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0309
    (write-format "(1X, D5.3)" -10000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0310
    (write-format "(1X, D5.3)" 100000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0311
    (write-format "(1X, D5.3)" -100000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0312
    (write-format "(1X, D5.3)" 123456789)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0313
    (write-format "(1X, D5.3)" 0.1d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0314
    (write-format "(1X, D5.3)" -0.1d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0315
    (write-format "(1X, D5.3)" 0.01d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0316
    (write-format "(1X, D5.3)" -0.01d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0317
    (write-format "(1X, D5.3)" 0.001d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0318
    (write-format "(1X, D5.3)" -0.001d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0319
    (write-format "(1X, D5.3)" 1.0d-4)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0320
    (write-format "(1X, D5.3)" -1.0d-4)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0321
    (write-format "(1X, D5.3)" -1.96d-16)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0322
    (write-format "(1X, D5.3)" 3.14159d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0323
    (write-format "(1X, D10.3)" 3)
  "  0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0324
    (write-format "(1X, D10.3)" -3)
  " -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0325
    (write-format "(1X, D10.3)" 10)
  "  0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0326
    (write-format "(1X, D10.3)" -10)
  " -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0327
    (write-format "(1X, D10.3)" 100)
  "  0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0328
    (write-format "(1X, D10.3)" -100)
  " -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0329
    (write-format "(1X, D10.3)" 1000)
  "  0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0330
    (write-format "(1X, D10.3)" -1000)
  " -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0331
    (write-format "(1X, D10.3)" 10000)
  "  0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0332
    (write-format "(1X, D10.3)" -10000)
  " -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0333
    (write-format "(1X, D10.3)" 100000)
  "  0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0334
    (write-format "(1X, D10.3)" -100000)
  " -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0335
    (write-format "(1X, D10.3)" 123456789)
  "  0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0336
    (write-format "(1X, D10.3)" 0.1d0)
  "  0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0337
    (write-format "(1X, D10.3)" -0.1d0)
  " -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0338
    (write-format "(1X, D10.3)" 0.01d0)
  "  0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0339
    (write-format "(1X, D10.3)" -0.01d0)
  " -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0340
    (write-format "(1X, D10.3)" 0.001d0)
  "  0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0341
    (write-format "(1X, D10.3)" -0.001d0)
  " -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0342
    (write-format "(1X, D10.3)" 1.0d-4)
  "  0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0343
    (write-format "(1X, D10.3)" -1.0d-4)
  " -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0344
    (write-format "(1X, D10.3)" -1.96d-16)
  " -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0345
    (write-format "(1X, D10.3)" 3.14159d0)
  "  0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0346
    (write-format "(1X, D4.4)" 3)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0347
    (write-format "(1X, D4.4)" -3)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0348
    (write-format "(1X, D4.4)" 10)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0349
    (write-format "(1X, D4.4)" -10)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0350
    (write-format "(1X, D4.4)" 100)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0351
    (write-format "(1X, D4.4)" -100)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0352
    (write-format "(1X, D4.4)" 1000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0353
    (write-format "(1X, D4.4)" -1000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0354
    (write-format "(1X, D4.4)" 10000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0355
    (write-format "(1X, D4.4)" -10000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0356
    (write-format "(1X, D4.4)" 100000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0357
    (write-format "(1X, D4.4)" -100000)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0358
    (write-format "(1X, D4.4)" 123456789)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0359
    (write-format "(1X, D4.4)" 0.1d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0360
    (write-format "(1X, D4.4)" -0.1d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0361
    (write-format "(1X, D4.4)" 0.01d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0362
    (write-format "(1X, D4.4)" -0.01d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0363
    (write-format "(1X, D4.4)" 0.001d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0364
    (write-format "(1X, D4.4)" -0.001d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0365
    (write-format "(1X, D4.4)" 1.0d-4)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0366
    (write-format "(1X, D4.4)" -1.0d-4)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0367
    (write-format "(1X, D4.4)" -1.96d-16)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0368
    (write-format "(1X, D4.4)" 3.14159d0)
  " ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0369
    (write-format "(1X, D5.4)" 3)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0370
    (write-format "(1X, D5.4)" -3)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0371
    (write-format "(1X, D5.4)" 10)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0372
    (write-format "(1X, D5.4)" -10)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0373
    (write-format "(1X, D5.4)" 100)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0374
    (write-format "(1X, D5.4)" -100)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0375
    (write-format "(1X, D5.4)" 1000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0376
    (write-format "(1X, D5.4)" -1000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0377
    (write-format "(1X, D5.4)" 10000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0378
    (write-format "(1X, D5.4)" -10000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0379
    (write-format "(1X, D5.4)" 100000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0380
    (write-format "(1X, D5.4)" -100000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0381
    (write-format "(1X, D5.4)" 123456789)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0382
    (write-format "(1X, D5.4)" 0.1d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0383
    (write-format "(1X, D5.4)" -0.1d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0384
    (write-format "(1X, D5.4)" 0.01d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0385
    (write-format "(1X, D5.4)" -0.01d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0386
    (write-format "(1X, D5.4)" 0.001d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0387
    (write-format "(1X, D5.4)" -0.001d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0388
    (write-format "(1X, D5.4)" 1.0d-4)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0389
    (write-format "(1X, D5.4)" -1.0d-4)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0390
    (write-format "(1X, D5.4)" -1.96d-16)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0391
    (write-format "(1X, D5.4)" 3.14159d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0392
    (write-format "(1X, D10.4)" 3)
  " 0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0393
    (write-format "(1X, D10.4)" -3)
  " -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0394
    (write-format "(1X, D10.4)" 10)
  " 0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0395
    (write-format "(1X, D10.4)" -10)
  " -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0396
    (write-format "(1X, D10.4)" 100)
  " 0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0397
    (write-format "(1X, D10.4)" -100)
  " -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0398
    (write-format "(1X, D10.4)" 1000)
  " 0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0399
    (write-format "(1X, D10.4)" -1000)
  " -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0400
    (write-format "(1X, D10.4)" 10000)
  " 0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0401
    (write-format "(1X, D10.4)" -10000)
  " -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0402
    (write-format "(1X, D10.4)" 100000)
  " 0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0403
    (write-format "(1X, D10.4)" -100000)
  " -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0404
    (write-format "(1X, D10.4)" 123456789)
  " 0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0405
    (write-format "(1X, D10.4)" 0.1d0)
  " 0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0406
    (write-format "(1X, D10.4)" -0.1d0)
  " -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0407
    (write-format "(1X, D10.4)" 0.01d0)
  " 0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0408
    (write-format "(1X, D10.4)" -0.01d0)
  " -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0409
    (write-format "(1X, D10.4)" 0.001d0)
  " 0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0410
    (write-format "(1X, D10.4)" -0.001d0)
  " -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0411
    (write-format "(1X, D10.4)" 1.0d-4)
  " 0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0412
    (write-format "(1X, D10.4)" -1.0d-4)
  " -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0413
    (write-format "(1X, D10.4)" -1.96d-16)
  " -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0414
    (write-format "(1X, D10.4)" 3.14159d0)
  " 0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0415
    (write-format "(1X, D5.5)" 3)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0416
    (write-format "(1X, D5.5)" -3)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0417
    (write-format "(1X, D5.5)" 10)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0418
    (write-format "(1X, D5.5)" -10)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0419
    (write-format "(1X, D5.5)" 100)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0420
    (write-format "(1X, D5.5)" -100)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0421
    (write-format "(1X, D5.5)" 1000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0422
    (write-format "(1X, D5.5)" -1000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0423
    (write-format "(1X, D5.5)" 10000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0424
    (write-format "(1X, D5.5)" -10000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0425
    (write-format "(1X, D5.5)" 100000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0426
    (write-format "(1X, D5.5)" -100000)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0427
    (write-format "(1X, D5.5)" 123456789)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0428
    (write-format "(1X, D5.5)" 0.1d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0429
    (write-format "(1X, D5.5)" -0.1d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0430
    (write-format "(1X, D5.5)" 0.01d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0431
    (write-format "(1X, D5.5)" -0.01d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0432
    (write-format "(1X, D5.5)" 0.001d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0433
    (write-format "(1X, D5.5)" -0.001d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0434
    (write-format "(1X, D5.5)" 1.0d-4)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0435
    (write-format "(1X, D5.5)" -1.0d-4)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0436
    (write-format "(1X, D5.5)" -1.96d-16)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0437
    (write-format "(1X, D5.5)" 3.14159d0)
  " *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0438
    (write-format "(1X, D10.5)" 3)
  " .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0439
    (write-format "(1X, D10.5)" -3)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0440
    (write-format "(1X, D10.5)" 10)
  " .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0441
    (write-format "(1X, D10.5)" -10)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0442
    (write-format "(1X, D10.5)" 100)
  " .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0443
    (write-format "(1X, D10.5)" -100)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0444
    (write-format "(1X, D10.5)" 1000)
  " .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0445
    (write-format "(1X, D10.5)" -1000)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0446
    (write-format "(1X, D10.5)" 10000)
  " .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0447
    (write-format "(1X, D10.5)" -10000)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0448
    (write-format "(1X, D10.5)" 100000)
  " .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0449
    (write-format "(1X, D10.5)" -100000)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0450
    (write-format "(1X, D10.5)" 123456789)
  " .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0451
    (write-format "(1X, D10.5)" 0.1d0)
  " .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0452
    (write-format "(1X, D10.5)" -0.1d0)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0453
    (write-format "(1X, D10.5)" 0.01d0)
  " .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0454
    (write-format "(1X, D10.5)" -0.01d0)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0455
    (write-format "(1X, D10.5)" 0.001d0)
  " .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0456
    (write-format "(1X, D10.5)" -0.001d0)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0457
    (write-format "(1X, D10.5)" 1.0d-4)
  " .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0458
    (write-format "(1X, D10.5)" -1.0d-4)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0459
    (write-format "(1X, D10.5)" -1.96d-16)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0460
    (write-format "(1X, D10.5)" 3.14159d0)
  " .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0461
    (write-format "(1X, D10.10)" 3)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0462
    (write-format "(1X, D10.10)" -3)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0463
    (write-format "(1X, D10.10)" 10)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0464
    (write-format "(1X, D10.10)" -10)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0465
    (write-format "(1X, D10.10)" 100)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0466
    (write-format "(1X, D10.10)" -100)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0467
    (write-format "(1X, D10.10)" 1000)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0468
    (write-format "(1X, D10.10)" -1000)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0469
    (write-format "(1X, D10.10)" 10000)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0470
    (write-format "(1X, D10.10)" -10000)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0471
    (write-format "(1X, D10.10)" 100000)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0472
    (write-format "(1X, D10.10)" -100000)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0473
    (write-format "(1X, D10.10)" 123456789)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0474
    (write-format "(1X, D10.10)" 0.1d0)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0475
    (write-format "(1X, D10.10)" -0.1d0)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0476
    (write-format "(1X, D10.10)" 0.01d0)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0477
    (write-format "(1X, D10.10)" -0.01d0)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0478
    (write-format "(1X, D10.10)" 0.001d0)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0479
    (write-format "(1X, D10.10)" -0.001d0)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0480
    (write-format "(1X, D10.10)" 1.0d-4)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0481
    (write-format "(1X, D10.10)" -1.0d-4)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0482
    (write-format "(1X, D10.10)" -1.96d-16)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0483
    (write-format "(1X, D10.10)" 3.14159d0)
  " **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0484
    (write-format "(2X, D1.1)" 3)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0485
    (write-format "(2X, D1.1)" -3)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0486
    (write-format "(2X, D1.1)" 10)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0487
    (write-format "(2X, D1.1)" -10)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0488
    (write-format "(2X, D1.1)" 100)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0489
    (write-format "(2X, D1.1)" -100)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0490
    (write-format "(2X, D1.1)" 1000)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0491
    (write-format "(2X, D1.1)" -1000)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0492
    (write-format "(2X, D1.1)" 10000)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0493
    (write-format "(2X, D1.1)" -10000)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0494
    (write-format "(2X, D1.1)" 100000)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0495
    (write-format "(2X, D1.1)" -100000)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0496
    (write-format "(2X, D1.1)" 123456789)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0497
    (write-format "(2X, D1.1)" 0.1d0)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0498
    (write-format "(2X, D1.1)" -0.1d0)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0499
    (write-format "(2X, D1.1)" 0.01d0)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0500
    (write-format "(2X, D1.1)" -0.01d0)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0501
    (write-format "(2X, D1.1)" 0.001d0)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0502
    (write-format "(2X, D1.1)" -0.001d0)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0503
    (write-format "(2X, D1.1)" 1.0d-4)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0504
    (write-format "(2X, D1.1)" -1.0d-4)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0505
    (write-format "(2X, D1.1)" -1.96d-16)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0506
    (write-format "(2X, D1.1)" 3.14159d0)
  "  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0507
    (write-format "(2X, D2.1)" 3)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0508
    (write-format "(2X, D2.1)" -3)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0509
    (write-format "(2X, D2.1)" 10)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0510
    (write-format "(2X, D2.1)" -10)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0511
    (write-format "(2X, D2.1)" 100)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0512
    (write-format "(2X, D2.1)" -100)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0513
    (write-format "(2X, D2.1)" 1000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0514
    (write-format "(2X, D2.1)" -1000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0515
    (write-format "(2X, D2.1)" 10000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0516
    (write-format "(2X, D2.1)" -10000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0517
    (write-format "(2X, D2.1)" 100000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0518
    (write-format "(2X, D2.1)" -100000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0519
    (write-format "(2X, D2.1)" 123456789)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0520
    (write-format "(2X, D2.1)" 0.1d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0521
    (write-format "(2X, D2.1)" -0.1d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0522
    (write-format "(2X, D2.1)" 0.01d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0523
    (write-format "(2X, D2.1)" -0.01d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0524
    (write-format "(2X, D2.1)" 0.001d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0525
    (write-format "(2X, D2.1)" -0.001d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0526
    (write-format "(2X, D2.1)" 1.0d-4)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0527
    (write-format "(2X, D2.1)" -1.0d-4)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0528
    (write-format "(2X, D2.1)" -1.96d-16)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0529
    (write-format "(2X, D2.1)" 3.14159d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0530
    (write-format "(2X, D3.1)" 3)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0531
    (write-format "(2X, D3.1)" -3)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0532
    (write-format "(2X, D3.1)" 10)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0533
    (write-format "(2X, D3.1)" -10)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0534
    (write-format "(2X, D3.1)" 100)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0535
    (write-format "(2X, D3.1)" -100)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0536
    (write-format "(2X, D3.1)" 1000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0537
    (write-format "(2X, D3.1)" -1000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0538
    (write-format "(2X, D3.1)" 10000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0539
    (write-format "(2X, D3.1)" -10000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0540
    (write-format "(2X, D3.1)" 100000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0541
    (write-format "(2X, D3.1)" -100000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0542
    (write-format "(2X, D3.1)" 123456789)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0543
    (write-format "(2X, D3.1)" 0.1d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0544
    (write-format "(2X, D3.1)" -0.1d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0545
    (write-format "(2X, D3.1)" 0.01d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0546
    (write-format "(2X, D3.1)" -0.01d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0547
    (write-format "(2X, D3.1)" 0.001d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0548
    (write-format "(2X, D3.1)" -0.001d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0549
    (write-format "(2X, D3.1)" 1.0d-4)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0550
    (write-format "(2X, D3.1)" -1.0d-4)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0551
    (write-format "(2X, D3.1)" -1.96d-16)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0552
    (write-format "(2X, D3.1)" 3.14159d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0553
    (write-format "(2X, D4.1)" 3)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0554
    (write-format "(2X, D4.1)" -3)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0555
    (write-format "(2X, D4.1)" 10)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0556
    (write-format "(2X, D4.1)" -10)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0557
    (write-format "(2X, D4.1)" 100)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0558
    (write-format "(2X, D4.1)" -100)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0559
    (write-format "(2X, D4.1)" 1000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0560
    (write-format "(2X, D4.1)" -1000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0561
    (write-format "(2X, D4.1)" 10000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0562
    (write-format "(2X, D4.1)" -10000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0563
    (write-format "(2X, D4.1)" 100000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0564
    (write-format "(2X, D4.1)" -100000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0565
    (write-format "(2X, D4.1)" 123456789)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0566
    (write-format "(2X, D4.1)" 0.1d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0567
    (write-format "(2X, D4.1)" -0.1d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0568
    (write-format "(2X, D4.1)" 0.01d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0569
    (write-format "(2X, D4.1)" -0.01d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0570
    (write-format "(2X, D4.1)" 0.001d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0571
    (write-format "(2X, D4.1)" -0.001d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0572
    (write-format "(2X, D4.1)" 1.0d-4)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0573
    (write-format "(2X, D4.1)" -1.0d-4)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0574
    (write-format "(2X, D4.1)" -1.96d-16)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0575
    (write-format "(2X, D4.1)" 3.14159d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0576
    (write-format "(2X, D5.1)" 3)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0577
    (write-format "(2X, D5.1)" -3)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0578
    (write-format "(2X, D5.1)" 10)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0579
    (write-format "(2X, D5.1)" -10)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0580
    (write-format "(2X, D5.1)" 100)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0581
    (write-format "(2X, D5.1)" -100)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0582
    (write-format "(2X, D5.1)" 1000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0583
    (write-format "(2X, D5.1)" -1000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0584
    (write-format "(2X, D5.1)" 10000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0585
    (write-format "(2X, D5.1)" -10000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0586
    (write-format "(2X, D5.1)" 100000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0587
    (write-format "(2X, D5.1)" -100000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0588
    (write-format "(2X, D5.1)" 123456789)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0589
    (write-format "(2X, D5.1)" 0.1d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0590
    (write-format "(2X, D5.1)" -0.1d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0591
    (write-format "(2X, D5.1)" 0.01d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0592
    (write-format "(2X, D5.1)" -0.01d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0593
    (write-format "(2X, D5.1)" 0.001d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0594
    (write-format "(2X, D5.1)" -0.001d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0595
    (write-format "(2X, D5.1)" 1.0d-4)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0596
    (write-format "(2X, D5.1)" -1.0d-4)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0597
    (write-format "(2X, D5.1)" -1.96d-16)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0598
    (write-format "(2X, D5.1)" 3.14159d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0599
    (write-format "(2X, D10.1)" 3)
  "     0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0600
    (write-format "(2X, D10.1)" -3)
  "    -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0601
    (write-format "(2X, D10.1)" 10)
  "     0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0602
    (write-format "(2X, D10.1)" -10)
  "    -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0603
    (write-format "(2X, D10.1)" 100)
  "     0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0604
    (write-format "(2X, D10.1)" -100)
  "    -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0605
    (write-format "(2X, D10.1)" 1000)
  "     0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0606
    (write-format "(2X, D10.1)" -1000)
  "    -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0607
    (write-format "(2X, D10.1)" 10000)
  "     0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0608
    (write-format "(2X, D10.1)" -10000)
  "    -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0609
    (write-format "(2X, D10.1)" 100000)
  "     0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0610
    (write-format "(2X, D10.1)" -100000)
  "    -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0611
    (write-format "(2X, D10.1)" 123456789)
  "     0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0612
    (write-format "(2X, D10.1)" 0.1d0)
  "     0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0613
    (write-format "(2X, D10.1)" -0.1d0)
  "    -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0614
    (write-format "(2X, D10.1)" 0.01d0)
  "     0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0615
    (write-format "(2X, D10.1)" -0.01d0)
  "    -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0616
    (write-format "(2X, D10.1)" 0.001d0)
  "     0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0617
    (write-format "(2X, D10.1)" -0.001d0)
  "    -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0618
    (write-format "(2X, D10.1)" 1.0d-4)
  "     0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0619
    (write-format "(2X, D10.1)" -1.0d-4)
  "    -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0620
    (write-format "(2X, D10.1)" -1.96d-16)
  "    -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0621
    (write-format "(2X, D10.1)" 3.14159d0)
  "     0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0622
    (write-format "(2X, D2.2)" 3)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0623
    (write-format "(2X, D2.2)" -3)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0624
    (write-format "(2X, D2.2)" 10)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0625
    (write-format "(2X, D2.2)" -10)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0626
    (write-format "(2X, D2.2)" 100)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0627
    (write-format "(2X, D2.2)" -100)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0628
    (write-format "(2X, D2.2)" 1000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0629
    (write-format "(2X, D2.2)" -1000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0630
    (write-format "(2X, D2.2)" 10000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0631
    (write-format "(2X, D2.2)" -10000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0632
    (write-format "(2X, D2.2)" 100000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0633
    (write-format "(2X, D2.2)" -100000)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0634
    (write-format "(2X, D2.2)" 123456789)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0635
    (write-format "(2X, D2.2)" 0.1d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0636
    (write-format "(2X, D2.2)" -0.1d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0637
    (write-format "(2X, D2.2)" 0.01d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0638
    (write-format "(2X, D2.2)" -0.01d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0639
    (write-format "(2X, D2.2)" 0.001d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0640
    (write-format "(2X, D2.2)" -0.001d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0641
    (write-format "(2X, D2.2)" 1.0d-4)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0642
    (write-format "(2X, D2.2)" -1.0d-4)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0643
    (write-format "(2X, D2.2)" -1.96d-16)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0644
    (write-format "(2X, D2.2)" 3.14159d0)
  "  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0645
    (write-format "(2X, D3.2)" 3)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0646
    (write-format "(2X, D3.2)" -3)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0647
    (write-format "(2X, D3.2)" 10)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0648
    (write-format "(2X, D3.2)" -10)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0649
    (write-format "(2X, D3.2)" 100)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0650
    (write-format "(2X, D3.2)" -100)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0651
    (write-format "(2X, D3.2)" 1000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0652
    (write-format "(2X, D3.2)" -1000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0653
    (write-format "(2X, D3.2)" 10000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0654
    (write-format "(2X, D3.2)" -10000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0655
    (write-format "(2X, D3.2)" 100000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0656
    (write-format "(2X, D3.2)" -100000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0657
    (write-format "(2X, D3.2)" 123456789)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0658
    (write-format "(2X, D3.2)" 0.1d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0659
    (write-format "(2X, D3.2)" -0.1d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0660
    (write-format "(2X, D3.2)" 0.01d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0661
    (write-format "(2X, D3.2)" -0.01d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0662
    (write-format "(2X, D3.2)" 0.001d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0663
    (write-format "(2X, D3.2)" -0.001d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0664
    (write-format "(2X, D3.2)" 1.0d-4)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0665
    (write-format "(2X, D3.2)" -1.0d-4)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0666
    (write-format "(2X, D3.2)" -1.96d-16)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0667
    (write-format "(2X, D3.2)" 3.14159d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0668
    (write-format "(2X, D4.2)" 3)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0669
    (write-format "(2X, D4.2)" -3)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0670
    (write-format "(2X, D4.2)" 10)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0671
    (write-format "(2X, D4.2)" -10)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0672
    (write-format "(2X, D4.2)" 100)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0673
    (write-format "(2X, D4.2)" -100)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0674
    (write-format "(2X, D4.2)" 1000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0675
    (write-format "(2X, D4.2)" -1000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0676
    (write-format "(2X, D4.2)" 10000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0677
    (write-format "(2X, D4.2)" -10000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0678
    (write-format "(2X, D4.2)" 100000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0679
    (write-format "(2X, D4.2)" -100000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0680
    (write-format "(2X, D4.2)" 123456789)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0681
    (write-format "(2X, D4.2)" 0.1d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0682
    (write-format "(2X, D4.2)" -0.1d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0683
    (write-format "(2X, D4.2)" 0.01d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0684
    (write-format "(2X, D4.2)" -0.01d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0685
    (write-format "(2X, D4.2)" 0.001d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0686
    (write-format "(2X, D4.2)" -0.001d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0687
    (write-format "(2X, D4.2)" 1.0d-4)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0688
    (write-format "(2X, D4.2)" -1.0d-4)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0689
    (write-format "(2X, D4.2)" -1.96d-16)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0690
    (write-format "(2X, D4.2)" 3.14159d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0691
    (write-format "(2X, D5.2)" 3)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0692
    (write-format "(2X, D5.2)" -3)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0693
    (write-format "(2X, D5.2)" 10)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0694
    (write-format "(2X, D5.2)" -10)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0695
    (write-format "(2X, D5.2)" 100)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0696
    (write-format "(2X, D5.2)" -100)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0697
    (write-format "(2X, D5.2)" 1000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0698
    (write-format "(2X, D5.2)" -1000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0699
    (write-format "(2X, D5.2)" 10000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0700
    (write-format "(2X, D5.2)" -10000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0701
    (write-format "(2X, D5.2)" 100000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0702
    (write-format "(2X, D5.2)" -100000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0703
    (write-format "(2X, D5.2)" 123456789)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0704
    (write-format "(2X, D5.2)" 0.1d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0705
    (write-format "(2X, D5.2)" -0.1d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0706
    (write-format "(2X, D5.2)" 0.01d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0707
    (write-format "(2X, D5.2)" -0.01d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0708
    (write-format "(2X, D5.2)" 0.001d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0709
    (write-format "(2X, D5.2)" -0.001d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0710
    (write-format "(2X, D5.2)" 1.0d-4)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0711
    (write-format "(2X, D5.2)" -1.0d-4)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0712
    (write-format "(2X, D5.2)" -1.96d-16)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0713
    (write-format "(2X, D5.2)" 3.14159d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0714
    (write-format "(2X, D10.2)" 3)
  "    0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0715
    (write-format "(2X, D10.2)" -3)
  "   -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0716
    (write-format "(2X, D10.2)" 10)
  "    0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0717
    (write-format "(2X, D10.2)" -10)
  "   -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0718
    (write-format "(2X, D10.2)" 100)
  "    0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0719
    (write-format "(2X, D10.2)" -100)
  "   -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0720
    (write-format "(2X, D10.2)" 1000)
  "    0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0721
    (write-format "(2X, D10.2)" -1000)
  "   -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0722
    (write-format "(2X, D10.2)" 10000)
  "    0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0723
    (write-format "(2X, D10.2)" -10000)
  "   -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0724
    (write-format "(2X, D10.2)" 100000)
  "    0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0725
    (write-format "(2X, D10.2)" -100000)
  "   -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0726
    (write-format "(2X, D10.2)" 123456789)
  "    0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0727
    (write-format "(2X, D10.2)" 0.1d0)
  "    0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0728
    (write-format "(2X, D10.2)" -0.1d0)
  "   -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0729
    (write-format "(2X, D10.2)" 0.01d0)
  "    0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0730
    (write-format "(2X, D10.2)" -0.01d0)
  "   -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0731
    (write-format "(2X, D10.2)" 0.001d0)
  "    0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0732
    (write-format "(2X, D10.2)" -0.001d0)
  "   -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0733
    (write-format "(2X, D10.2)" 1.0d-4)
  "    0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0734
    (write-format "(2X, D10.2)" -1.0d-4)
  "   -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0735
    (write-format "(2X, D10.2)" -1.96d-16)
  "   -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0736
    (write-format "(2X, D10.2)" 3.14159d0)
  "    0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0737
    (write-format "(2X, D3.3)" 3)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0738
    (write-format "(2X, D3.3)" -3)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0739
    (write-format "(2X, D3.3)" 10)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0740
    (write-format "(2X, D3.3)" -10)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0741
    (write-format "(2X, D3.3)" 100)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0742
    (write-format "(2X, D3.3)" -100)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0743
    (write-format "(2X, D3.3)" 1000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0744
    (write-format "(2X, D3.3)" -1000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0745
    (write-format "(2X, D3.3)" 10000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0746
    (write-format "(2X, D3.3)" -10000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0747
    (write-format "(2X, D3.3)" 100000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0748
    (write-format "(2X, D3.3)" -100000)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0749
    (write-format "(2X, D3.3)" 123456789)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0750
    (write-format "(2X, D3.3)" 0.1d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0751
    (write-format "(2X, D3.3)" -0.1d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0752
    (write-format "(2X, D3.3)" 0.01d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0753
    (write-format "(2X, D3.3)" -0.01d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0754
    (write-format "(2X, D3.3)" 0.001d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0755
    (write-format "(2X, D3.3)" -0.001d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0756
    (write-format "(2X, D3.3)" 1.0d-4)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0757
    (write-format "(2X, D3.3)" -1.0d-4)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0758
    (write-format "(2X, D3.3)" -1.96d-16)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0759
    (write-format "(2X, D3.3)" 3.14159d0)
  "  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0760
    (write-format "(2X, D4.3)" 3)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0761
    (write-format "(2X, D4.3)" -3)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0762
    (write-format "(2X, D4.3)" 10)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0763
    (write-format "(2X, D4.3)" -10)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0764
    (write-format "(2X, D4.3)" 100)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0765
    (write-format "(2X, D4.3)" -100)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0766
    (write-format "(2X, D4.3)" 1000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0767
    (write-format "(2X, D4.3)" -1000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0768
    (write-format "(2X, D4.3)" 10000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0769
    (write-format "(2X, D4.3)" -10000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0770
    (write-format "(2X, D4.3)" 100000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0771
    (write-format "(2X, D4.3)" -100000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0772
    (write-format "(2X, D4.3)" 123456789)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0773
    (write-format "(2X, D4.3)" 0.1d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0774
    (write-format "(2X, D4.3)" -0.1d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0775
    (write-format "(2X, D4.3)" 0.01d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0776
    (write-format "(2X, D4.3)" -0.01d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0777
    (write-format "(2X, D4.3)" 0.001d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0778
    (write-format "(2X, D4.3)" -0.001d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0779
    (write-format "(2X, D4.3)" 1.0d-4)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0780
    (write-format "(2X, D4.3)" -1.0d-4)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0781
    (write-format "(2X, D4.3)" -1.96d-16)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0782
    (write-format "(2X, D4.3)" 3.14159d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0783
    (write-format "(2X, D5.3)" 3)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0784
    (write-format "(2X, D5.3)" -3)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0785
    (write-format "(2X, D5.3)" 10)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0786
    (write-format "(2X, D5.3)" -10)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0787
    (write-format "(2X, D5.3)" 100)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0788
    (write-format "(2X, D5.3)" -100)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0789
    (write-format "(2X, D5.3)" 1000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0790
    (write-format "(2X, D5.3)" -1000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0791
    (write-format "(2X, D5.3)" 10000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0792
    (write-format "(2X, D5.3)" -10000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0793
    (write-format "(2X, D5.3)" 100000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0794
    (write-format "(2X, D5.3)" -100000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0795
    (write-format "(2X, D5.3)" 123456789)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0796
    (write-format "(2X, D5.3)" 0.1d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0797
    (write-format "(2X, D5.3)" -0.1d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0798
    (write-format "(2X, D5.3)" 0.01d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0799
    (write-format "(2X, D5.3)" -0.01d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0800
    (write-format "(2X, D5.3)" 0.001d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0801
    (write-format "(2X, D5.3)" -0.001d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0802
    (write-format "(2X, D5.3)" 1.0d-4)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0803
    (write-format "(2X, D5.3)" -1.0d-4)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0804
    (write-format "(2X, D5.3)" -1.96d-16)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0805
    (write-format "(2X, D5.3)" 3.14159d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0806
    (write-format "(2X, D10.3)" 3)
  "   0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0807
    (write-format "(2X, D10.3)" -3)
  "  -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0808
    (write-format "(2X, D10.3)" 10)
  "   0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0809
    (write-format "(2X, D10.3)" -10)
  "  -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0810
    (write-format "(2X, D10.3)" 100)
  "   0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0811
    (write-format "(2X, D10.3)" -100)
  "  -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0812
    (write-format "(2X, D10.3)" 1000)
  "   0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0813
    (write-format "(2X, D10.3)" -1000)
  "  -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0814
    (write-format "(2X, D10.3)" 10000)
  "   0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0815
    (write-format "(2X, D10.3)" -10000)
  "  -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0816
    (write-format "(2X, D10.3)" 100000)
  "   0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0817
    (write-format "(2X, D10.3)" -100000)
  "  -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0818
    (write-format "(2X, D10.3)" 123456789)
  "   0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0819
    (write-format "(2X, D10.3)" 0.1d0)
  "   0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0820
    (write-format "(2X, D10.3)" -0.1d0)
  "  -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0821
    (write-format "(2X, D10.3)" 0.01d0)
  "   0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0822
    (write-format "(2X, D10.3)" -0.01d0)
  "  -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0823
    (write-format "(2X, D10.3)" 0.001d0)
  "   0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0824
    (write-format "(2X, D10.3)" -0.001d0)
  "  -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0825
    (write-format "(2X, D10.3)" 1.0d-4)
  "   0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0826
    (write-format "(2X, D10.3)" -1.0d-4)
  "  -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0827
    (write-format "(2X, D10.3)" -1.96d-16)
  "  -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0828
    (write-format "(2X, D10.3)" 3.14159d0)
  "   0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0829
    (write-format "(2X, D4.4)" 3)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0830
    (write-format "(2X, D4.4)" -3)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0831
    (write-format "(2X, D4.4)" 10)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0832
    (write-format "(2X, D4.4)" -10)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0833
    (write-format "(2X, D4.4)" 100)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0834
    (write-format "(2X, D4.4)" -100)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0835
    (write-format "(2X, D4.4)" 1000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0836
    (write-format "(2X, D4.4)" -1000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0837
    (write-format "(2X, D4.4)" 10000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0838
    (write-format "(2X, D4.4)" -10000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0839
    (write-format "(2X, D4.4)" 100000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0840
    (write-format "(2X, D4.4)" -100000)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0841
    (write-format "(2X, D4.4)" 123456789)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0842
    (write-format "(2X, D4.4)" 0.1d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0843
    (write-format "(2X, D4.4)" -0.1d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0844
    (write-format "(2X, D4.4)" 0.01d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0845
    (write-format "(2X, D4.4)" -0.01d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0846
    (write-format "(2X, D4.4)" 0.001d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0847
    (write-format "(2X, D4.4)" -0.001d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0848
    (write-format "(2X, D4.4)" 1.0d-4)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0849
    (write-format "(2X, D4.4)" -1.0d-4)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0850
    (write-format "(2X, D4.4)" -1.96d-16)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0851
    (write-format "(2X, D4.4)" 3.14159d0)
  "  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0852
    (write-format "(2X, D5.4)" 3)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0853
    (write-format "(2X, D5.4)" -3)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0854
    (write-format "(2X, D5.4)" 10)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0855
    (write-format "(2X, D5.4)" -10)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0856
    (write-format "(2X, D5.4)" 100)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0857
    (write-format "(2X, D5.4)" -100)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0858
    (write-format "(2X, D5.4)" 1000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0859
    (write-format "(2X, D5.4)" -1000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0860
    (write-format "(2X, D5.4)" 10000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0861
    (write-format "(2X, D5.4)" -10000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0862
    (write-format "(2X, D5.4)" 100000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0863
    (write-format "(2X, D5.4)" -100000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0864
    (write-format "(2X, D5.4)" 123456789)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0865
    (write-format "(2X, D5.4)" 0.1d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0866
    (write-format "(2X, D5.4)" -0.1d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0867
    (write-format "(2X, D5.4)" 0.01d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0868
    (write-format "(2X, D5.4)" -0.01d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0869
    (write-format "(2X, D5.4)" 0.001d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0870
    (write-format "(2X, D5.4)" -0.001d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0871
    (write-format "(2X, D5.4)" 1.0d-4)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0872
    (write-format "(2X, D5.4)" -1.0d-4)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0873
    (write-format "(2X, D5.4)" -1.96d-16)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0874
    (write-format "(2X, D5.4)" 3.14159d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0875
    (write-format "(2X, D10.4)" 3)
  "  0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0876
    (write-format "(2X, D10.4)" -3)
  "  -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0877
    (write-format "(2X, D10.4)" 10)
  "  0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0878
    (write-format "(2X, D10.4)" -10)
  "  -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0879
    (write-format "(2X, D10.4)" 100)
  "  0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0880
    (write-format "(2X, D10.4)" -100)
  "  -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0881
    (write-format "(2X, D10.4)" 1000)
  "  0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0882
    (write-format "(2X, D10.4)" -1000)
  "  -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0883
    (write-format "(2X, D10.4)" 10000)
  "  0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0884
    (write-format "(2X, D10.4)" -10000)
  "  -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0885
    (write-format "(2X, D10.4)" 100000)
  "  0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0886
    (write-format "(2X, D10.4)" -100000)
  "  -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0887
    (write-format "(2X, D10.4)" 123456789)
  "  0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0888
    (write-format "(2X, D10.4)" 0.1d0)
  "  0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0889
    (write-format "(2X, D10.4)" -0.1d0)
  "  -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0890
    (write-format "(2X, D10.4)" 0.01d0)
  "  0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0891
    (write-format "(2X, D10.4)" -0.01d0)
  "  -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0892
    (write-format "(2X, D10.4)" 0.001d0)
  "  0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0893
    (write-format "(2X, D10.4)" -0.001d0)
  "  -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0894
    (write-format "(2X, D10.4)" 1.0d-4)
  "  0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0895
    (write-format "(2X, D10.4)" -1.0d-4)
  "  -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0896
    (write-format "(2X, D10.4)" -1.96d-16)
  "  -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0897
    (write-format "(2X, D10.4)" 3.14159d0)
  "  0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0898
    (write-format "(2X, D5.5)" 3)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0899
    (write-format "(2X, D5.5)" -3)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0900
    (write-format "(2X, D5.5)" 10)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0901
    (write-format "(2X, D5.5)" -10)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0902
    (write-format "(2X, D5.5)" 100)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0903
    (write-format "(2X, D5.5)" -100)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0904
    (write-format "(2X, D5.5)" 1000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0905
    (write-format "(2X, D5.5)" -1000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0906
    (write-format "(2X, D5.5)" 10000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0907
    (write-format "(2X, D5.5)" -10000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0908
    (write-format "(2X, D5.5)" 100000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0909
    (write-format "(2X, D5.5)" -100000)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0910
    (write-format "(2X, D5.5)" 123456789)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0911
    (write-format "(2X, D5.5)" 0.1d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0912
    (write-format "(2X, D5.5)" -0.1d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0913
    (write-format "(2X, D5.5)" 0.01d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0914
    (write-format "(2X, D5.5)" -0.01d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0915
    (write-format "(2X, D5.5)" 0.001d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0916
    (write-format "(2X, D5.5)" -0.001d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0917
    (write-format "(2X, D5.5)" 1.0d-4)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0918
    (write-format "(2X, D5.5)" -1.0d-4)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0919
    (write-format "(2X, D5.5)" -1.96d-16)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0920
    (write-format "(2X, D5.5)" 3.14159d0)
  "  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0921
    (write-format "(2X, D10.5)" 3)
  "  .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0922
    (write-format "(2X, D10.5)" -3)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0923
    (write-format "(2X, D10.5)" 10)
  "  .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0924
    (write-format "(2X, D10.5)" -10)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0925
    (write-format "(2X, D10.5)" 100)
  "  .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0926
    (write-format "(2X, D10.5)" -100)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0927
    (write-format "(2X, D10.5)" 1000)
  "  .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0928
    (write-format "(2X, D10.5)" -1000)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0929
    (write-format "(2X, D10.5)" 10000)
  "  .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0930
    (write-format "(2X, D10.5)" -10000)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0931
    (write-format "(2X, D10.5)" 100000)
  "  .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0932
    (write-format "(2X, D10.5)" -100000)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0933
    (write-format "(2X, D10.5)" 123456789)
  "  .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0934
    (write-format "(2X, D10.5)" 0.1d0)
  "  .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0935
    (write-format "(2X, D10.5)" -0.1d0)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0936
    (write-format "(2X, D10.5)" 0.01d0)
  "  .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0937
    (write-format "(2X, D10.5)" -0.01d0)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0938
    (write-format "(2X, D10.5)" 0.001d0)
  "  .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0939
    (write-format "(2X, D10.5)" -0.001d0)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0940
    (write-format "(2X, D10.5)" 1.0d-4)
  "  .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0941
    (write-format "(2X, D10.5)" -1.0d-4)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0942
    (write-format "(2X, D10.5)" -1.96d-16)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0943
    (write-format "(2X, D10.5)" 3.14159d0)
  "  .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0944
    (write-format "(2X, D10.10)" 3)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0945
    (write-format "(2X, D10.10)" -3)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0946
    (write-format "(2X, D10.10)" 10)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0947
    (write-format "(2X, D10.10)" -10)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0948
    (write-format "(2X, D10.10)" 100)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0949
    (write-format "(2X, D10.10)" -100)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0950
    (write-format "(2X, D10.10)" 1000)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0951
    (write-format "(2X, D10.10)" -1000)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0952
    (write-format "(2X, D10.10)" 10000)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0953
    (write-format "(2X, D10.10)" -10000)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0954
    (write-format "(2X, D10.10)" 100000)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0955
    (write-format "(2X, D10.10)" -100000)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0956
    (write-format "(2X, D10.10)" 123456789)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0957
    (write-format "(2X, D10.10)" 0.1d0)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0958
    (write-format "(2X, D10.10)" -0.1d0)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0959
    (write-format "(2X, D10.10)" 0.01d0)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0960
    (write-format "(2X, D10.10)" -0.01d0)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0961
    (write-format "(2X, D10.10)" 0.001d0)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0962
    (write-format "(2X, D10.10)" -0.001d0)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0963
    (write-format "(2X, D10.10)" 1.0d-4)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0964
    (write-format "(2X, D10.10)" -1.0d-4)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0965
    (write-format "(2X, D10.10)" -1.96d-16)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0966
    (write-format "(2X, D10.10)" 3.14159d0)
  "  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0967
    (write-format "(3X, D1.1)" 3)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0968
    (write-format "(3X, D1.1)" -3)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0969
    (write-format "(3X, D1.1)" 10)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0970
    (write-format "(3X, D1.1)" -10)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0971
    (write-format "(3X, D1.1)" 100)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0972
    (write-format "(3X, D1.1)" -100)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0973
    (write-format "(3X, D1.1)" 1000)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0974
    (write-format "(3X, D1.1)" -1000)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0975
    (write-format "(3X, D1.1)" 10000)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0976
    (write-format "(3X, D1.1)" -10000)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0977
    (write-format "(3X, D1.1)" 100000)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0978
    (write-format "(3X, D1.1)" -100000)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0979
    (write-format "(3X, D1.1)" 123456789)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0980
    (write-format "(3X, D1.1)" 0.1d0)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0981
    (write-format "(3X, D1.1)" -0.1d0)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0982
    (write-format "(3X, D1.1)" 0.01d0)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0983
    (write-format "(3X, D1.1)" -0.01d0)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0984
    (write-format "(3X, D1.1)" 0.001d0)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0985
    (write-format "(3X, D1.1)" -0.001d0)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0986
    (write-format "(3X, D1.1)" 1.0d-4)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0987
    (write-format "(3X, D1.1)" -1.0d-4)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0988
    (write-format "(3X, D1.1)" -1.96d-16)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0989
    (write-format "(3X, D1.1)" 3.14159d0)
  "   *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0990
    (write-format "(3X, D2.1)" 3)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0991
    (write-format "(3X, D2.1)" -3)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0992
    (write-format "(3X, D2.1)" 10)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0993
    (write-format "(3X, D2.1)" -10)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0994
    (write-format "(3X, D2.1)" 100)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0995
    (write-format "(3X, D2.1)" -100)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0996
    (write-format "(3X, D2.1)" 1000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0997
    (write-format "(3X, D2.1)" -1000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0998
    (write-format "(3X, D2.1)" 10000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.0999
    (write-format "(3X, D2.1)" -10000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1000
    (write-format "(3X, D2.1)" 100000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1001
    (write-format "(3X, D2.1)" -100000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1002
    (write-format "(3X, D2.1)" 123456789)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1003
    (write-format "(3X, D2.1)" 0.1d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1004
    (write-format "(3X, D2.1)" -0.1d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1005
    (write-format "(3X, D2.1)" 0.01d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1006
    (write-format "(3X, D2.1)" -0.01d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1007
    (write-format "(3X, D2.1)" 0.001d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1008
    (write-format "(3X, D2.1)" -0.001d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1009
    (write-format "(3X, D2.1)" 1.0d-4)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1010
    (write-format "(3X, D2.1)" -1.0d-4)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1011
    (write-format "(3X, D2.1)" -1.96d-16)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1012
    (write-format "(3X, D2.1)" 3.14159d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1013
    (write-format "(3X, D3.1)" 3)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1014
    (write-format "(3X, D3.1)" -3)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1015
    (write-format "(3X, D3.1)" 10)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1016
    (write-format "(3X, D3.1)" -10)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1017
    (write-format "(3X, D3.1)" 100)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1018
    (write-format "(3X, D3.1)" -100)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1019
    (write-format "(3X, D3.1)" 1000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1020
    (write-format "(3X, D3.1)" -1000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1021
    (write-format "(3X, D3.1)" 10000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1022
    (write-format "(3X, D3.1)" -10000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1023
    (write-format "(3X, D3.1)" 100000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1024
    (write-format "(3X, D3.1)" -100000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1025
    (write-format "(3X, D3.1)" 123456789)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1026
    (write-format "(3X, D3.1)" 0.1d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1027
    (write-format "(3X, D3.1)" -0.1d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1028
    (write-format "(3X, D3.1)" 0.01d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1029
    (write-format "(3X, D3.1)" -0.01d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1030
    (write-format "(3X, D3.1)" 0.001d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1031
    (write-format "(3X, D3.1)" -0.001d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1032
    (write-format "(3X, D3.1)" 1.0d-4)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1033
    (write-format "(3X, D3.1)" -1.0d-4)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1034
    (write-format "(3X, D3.1)" -1.96d-16)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1035
    (write-format "(3X, D3.1)" 3.14159d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1036
    (write-format "(3X, D4.1)" 3)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1037
    (write-format "(3X, D4.1)" -3)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1038
    (write-format "(3X, D4.1)" 10)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1039
    (write-format "(3X, D4.1)" -10)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1040
    (write-format "(3X, D4.1)" 100)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1041
    (write-format "(3X, D4.1)" -100)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1042
    (write-format "(3X, D4.1)" 1000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1043
    (write-format "(3X, D4.1)" -1000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1044
    (write-format "(3X, D4.1)" 10000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1045
    (write-format "(3X, D4.1)" -10000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1046
    (write-format "(3X, D4.1)" 100000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1047
    (write-format "(3X, D4.1)" -100000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1048
    (write-format "(3X, D4.1)" 123456789)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1049
    (write-format "(3X, D4.1)" 0.1d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1050
    (write-format "(3X, D4.1)" -0.1d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1051
    (write-format "(3X, D4.1)" 0.01d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1052
    (write-format "(3X, D4.1)" -0.01d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1053
    (write-format "(3X, D4.1)" 0.001d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1054
    (write-format "(3X, D4.1)" -0.001d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1055
    (write-format "(3X, D4.1)" 1.0d-4)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1056
    (write-format "(3X, D4.1)" -1.0d-4)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1057
    (write-format "(3X, D4.1)" -1.96d-16)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1058
    (write-format "(3X, D4.1)" 3.14159d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1059
    (write-format "(3X, D5.1)" 3)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1060
    (write-format "(3X, D5.1)" -3)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1061
    (write-format "(3X, D5.1)" 10)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1062
    (write-format "(3X, D5.1)" -10)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1063
    (write-format "(3X, D5.1)" 100)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1064
    (write-format "(3X, D5.1)" -100)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1065
    (write-format "(3X, D5.1)" 1000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1066
    (write-format "(3X, D5.1)" -1000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1067
    (write-format "(3X, D5.1)" 10000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1068
    (write-format "(3X, D5.1)" -10000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1069
    (write-format "(3X, D5.1)" 100000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1070
    (write-format "(3X, D5.1)" -100000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1071
    (write-format "(3X, D5.1)" 123456789)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1072
    (write-format "(3X, D5.1)" 0.1d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1073
    (write-format "(3X, D5.1)" -0.1d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1074
    (write-format "(3X, D5.1)" 0.01d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1075
    (write-format "(3X, D5.1)" -0.01d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1076
    (write-format "(3X, D5.1)" 0.001d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1077
    (write-format "(3X, D5.1)" -0.001d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1078
    (write-format "(3X, D5.1)" 1.0d-4)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1079
    (write-format "(3X, D5.1)" -1.0d-4)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1080
    (write-format "(3X, D5.1)" -1.96d-16)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1081
    (write-format "(3X, D5.1)" 3.14159d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1082
    (write-format "(3X, D10.1)" 3)
  "      0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1083
    (write-format "(3X, D10.1)" -3)
  "     -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1084
    (write-format "(3X, D10.1)" 10)
  "      0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1085
    (write-format "(3X, D10.1)" -10)
  "     -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1086
    (write-format "(3X, D10.1)" 100)
  "      0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1087
    (write-format "(3X, D10.1)" -100)
  "     -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1088
    (write-format "(3X, D10.1)" 1000)
  "      0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1089
    (write-format "(3X, D10.1)" -1000)
  "     -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1090
    (write-format "(3X, D10.1)" 10000)
  "      0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1091
    (write-format "(3X, D10.1)" -10000)
  "     -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1092
    (write-format "(3X, D10.1)" 100000)
  "      0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1093
    (write-format "(3X, D10.1)" -100000)
  "     -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1094
    (write-format "(3X, D10.1)" 123456789)
  "      0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1095
    (write-format "(3X, D10.1)" 0.1d0)
  "      0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1096
    (write-format "(3X, D10.1)" -0.1d0)
  "     -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1097
    (write-format "(3X, D10.1)" 0.01d0)
  "      0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1098
    (write-format "(3X, D10.1)" -0.01d0)
  "     -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1099
    (write-format "(3X, D10.1)" 0.001d0)
  "      0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1100
    (write-format "(3X, D10.1)" -0.001d0)
  "     -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1101
    (write-format "(3X, D10.1)" 1.0d-4)
  "      0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1102
    (write-format "(3X, D10.1)" -1.0d-4)
  "     -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1103
    (write-format "(3X, D10.1)" -1.96d-16)
  "     -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1104
    (write-format "(3X, D10.1)" 3.14159d0)
  "      0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1105
    (write-format "(3X, D2.2)" 3)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1106
    (write-format "(3X, D2.2)" -3)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1107
    (write-format "(3X, D2.2)" 10)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1108
    (write-format "(3X, D2.2)" -10)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1109
    (write-format "(3X, D2.2)" 100)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1110
    (write-format "(3X, D2.2)" -100)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1111
    (write-format "(3X, D2.2)" 1000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1112
    (write-format "(3X, D2.2)" -1000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1113
    (write-format "(3X, D2.2)" 10000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1114
    (write-format "(3X, D2.2)" -10000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1115
    (write-format "(3X, D2.2)" 100000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1116
    (write-format "(3X, D2.2)" -100000)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1117
    (write-format "(3X, D2.2)" 123456789)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1118
    (write-format "(3X, D2.2)" 0.1d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1119
    (write-format "(3X, D2.2)" -0.1d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1120
    (write-format "(3X, D2.2)" 0.01d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1121
    (write-format "(3X, D2.2)" -0.01d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1122
    (write-format "(3X, D2.2)" 0.001d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1123
    (write-format "(3X, D2.2)" -0.001d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1124
    (write-format "(3X, D2.2)" 1.0d-4)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1125
    (write-format "(3X, D2.2)" -1.0d-4)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1126
    (write-format "(3X, D2.2)" -1.96d-16)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1127
    (write-format "(3X, D2.2)" 3.14159d0)
  "   **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1128
    (write-format "(3X, D3.2)" 3)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1129
    (write-format "(3X, D3.2)" -3)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1130
    (write-format "(3X, D3.2)" 10)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1131
    (write-format "(3X, D3.2)" -10)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1132
    (write-format "(3X, D3.2)" 100)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1133
    (write-format "(3X, D3.2)" -100)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1134
    (write-format "(3X, D3.2)" 1000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1135
    (write-format "(3X, D3.2)" -1000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1136
    (write-format "(3X, D3.2)" 10000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1137
    (write-format "(3X, D3.2)" -10000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1138
    (write-format "(3X, D3.2)" 100000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1139
    (write-format "(3X, D3.2)" -100000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1140
    (write-format "(3X, D3.2)" 123456789)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1141
    (write-format "(3X, D3.2)" 0.1d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1142
    (write-format "(3X, D3.2)" -0.1d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1143
    (write-format "(3X, D3.2)" 0.01d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1144
    (write-format "(3X, D3.2)" -0.01d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1145
    (write-format "(3X, D3.2)" 0.001d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1146
    (write-format "(3X, D3.2)" -0.001d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1147
    (write-format "(3X, D3.2)" 1.0d-4)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1148
    (write-format "(3X, D3.2)" -1.0d-4)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1149
    (write-format "(3X, D3.2)" -1.96d-16)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1150
    (write-format "(3X, D3.2)" 3.14159d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1151
    (write-format "(3X, D4.2)" 3)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1152
    (write-format "(3X, D4.2)" -3)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1153
    (write-format "(3X, D4.2)" 10)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1154
    (write-format "(3X, D4.2)" -10)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1155
    (write-format "(3X, D4.2)" 100)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1156
    (write-format "(3X, D4.2)" -100)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1157
    (write-format "(3X, D4.2)" 1000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1158
    (write-format "(3X, D4.2)" -1000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1159
    (write-format "(3X, D4.2)" 10000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1160
    (write-format "(3X, D4.2)" -10000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1161
    (write-format "(3X, D4.2)" 100000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1162
    (write-format "(3X, D4.2)" -100000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1163
    (write-format "(3X, D4.2)" 123456789)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1164
    (write-format "(3X, D4.2)" 0.1d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1165
    (write-format "(3X, D4.2)" -0.1d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1166
    (write-format "(3X, D4.2)" 0.01d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1167
    (write-format "(3X, D4.2)" -0.01d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1168
    (write-format "(3X, D4.2)" 0.001d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1169
    (write-format "(3X, D4.2)" -0.001d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1170
    (write-format "(3X, D4.2)" 1.0d-4)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1171
    (write-format "(3X, D4.2)" -1.0d-4)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1172
    (write-format "(3X, D4.2)" -1.96d-16)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1173
    (write-format "(3X, D4.2)" 3.14159d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1174
    (write-format "(3X, D5.2)" 3)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1175
    (write-format "(3X, D5.2)" -3)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1176
    (write-format "(3X, D5.2)" 10)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1177
    (write-format "(3X, D5.2)" -10)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1178
    (write-format "(3X, D5.2)" 100)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1179
    (write-format "(3X, D5.2)" -100)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1180
    (write-format "(3X, D5.2)" 1000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1181
    (write-format "(3X, D5.2)" -1000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1182
    (write-format "(3X, D5.2)" 10000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1183
    (write-format "(3X, D5.2)" -10000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1184
    (write-format "(3X, D5.2)" 100000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1185
    (write-format "(3X, D5.2)" -100000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1186
    (write-format "(3X, D5.2)" 123456789)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1187
    (write-format "(3X, D5.2)" 0.1d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1188
    (write-format "(3X, D5.2)" -0.1d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1189
    (write-format "(3X, D5.2)" 0.01d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1190
    (write-format "(3X, D5.2)" -0.01d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1191
    (write-format "(3X, D5.2)" 0.001d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1192
    (write-format "(3X, D5.2)" -0.001d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1193
    (write-format "(3X, D5.2)" 1.0d-4)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1194
    (write-format "(3X, D5.2)" -1.0d-4)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1195
    (write-format "(3X, D5.2)" -1.96d-16)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1196
    (write-format "(3X, D5.2)" 3.14159d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1197
    (write-format "(3X, D10.2)" 3)
  "     0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1198
    (write-format "(3X, D10.2)" -3)
  "    -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1199
    (write-format "(3X, D10.2)" 10)
  "     0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1200
    (write-format "(3X, D10.2)" -10)
  "    -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1201
    (write-format "(3X, D10.2)" 100)
  "     0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1202
    (write-format "(3X, D10.2)" -100)
  "    -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1203
    (write-format "(3X, D10.2)" 1000)
  "     0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1204
    (write-format "(3X, D10.2)" -1000)
  "    -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1205
    (write-format "(3X, D10.2)" 10000)
  "     0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1206
    (write-format "(3X, D10.2)" -10000)
  "    -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1207
    (write-format "(3X, D10.2)" 100000)
  "     0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1208
    (write-format "(3X, D10.2)" -100000)
  "    -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1209
    (write-format "(3X, D10.2)" 123456789)
  "     0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1210
    (write-format "(3X, D10.2)" 0.1d0)
  "     0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1211
    (write-format "(3X, D10.2)" -0.1d0)
  "    -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1212
    (write-format "(3X, D10.2)" 0.01d0)
  "     0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1213
    (write-format "(3X, D10.2)" -0.01d0)
  "    -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1214
    (write-format "(3X, D10.2)" 0.001d0)
  "     0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1215
    (write-format "(3X, D10.2)" -0.001d0)
  "    -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1216
    (write-format "(3X, D10.2)" 1.0d-4)
  "     0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1217
    (write-format "(3X, D10.2)" -1.0d-4)
  "    -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1218
    (write-format "(3X, D10.2)" -1.96d-16)
  "    -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1219
    (write-format "(3X, D10.2)" 3.14159d0)
  "     0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1220
    (write-format "(3X, D3.3)" 3)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1221
    (write-format "(3X, D3.3)" -3)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1222
    (write-format "(3X, D3.3)" 10)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1223
    (write-format "(3X, D3.3)" -10)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1224
    (write-format "(3X, D3.3)" 100)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1225
    (write-format "(3X, D3.3)" -100)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1226
    (write-format "(3X, D3.3)" 1000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1227
    (write-format "(3X, D3.3)" -1000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1228
    (write-format "(3X, D3.3)" 10000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1229
    (write-format "(3X, D3.3)" -10000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1230
    (write-format "(3X, D3.3)" 100000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1231
    (write-format "(3X, D3.3)" -100000)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1232
    (write-format "(3X, D3.3)" 123456789)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1233
    (write-format "(3X, D3.3)" 0.1d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1234
    (write-format "(3X, D3.3)" -0.1d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1235
    (write-format "(3X, D3.3)" 0.01d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1236
    (write-format "(3X, D3.3)" -0.01d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1237
    (write-format "(3X, D3.3)" 0.001d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1238
    (write-format "(3X, D3.3)" -0.001d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1239
    (write-format "(3X, D3.3)" 1.0d-4)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1240
    (write-format "(3X, D3.3)" -1.0d-4)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1241
    (write-format "(3X, D3.3)" -1.96d-16)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1242
    (write-format "(3X, D3.3)" 3.14159d0)
  "   ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1243
    (write-format "(3X, D4.3)" 3)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1244
    (write-format "(3X, D4.3)" -3)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1245
    (write-format "(3X, D4.3)" 10)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1246
    (write-format "(3X, D4.3)" -10)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1247
    (write-format "(3X, D4.3)" 100)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1248
    (write-format "(3X, D4.3)" -100)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1249
    (write-format "(3X, D4.3)" 1000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1250
    (write-format "(3X, D4.3)" -1000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1251
    (write-format "(3X, D4.3)" 10000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1252
    (write-format "(3X, D4.3)" -10000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1253
    (write-format "(3X, D4.3)" 100000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1254
    (write-format "(3X, D4.3)" -100000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1255
    (write-format "(3X, D4.3)" 123456789)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1256
    (write-format "(3X, D4.3)" 0.1d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1257
    (write-format "(3X, D4.3)" -0.1d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1258
    (write-format "(3X, D4.3)" 0.01d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1259
    (write-format "(3X, D4.3)" -0.01d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1260
    (write-format "(3X, D4.3)" 0.001d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1261
    (write-format "(3X, D4.3)" -0.001d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1262
    (write-format "(3X, D4.3)" 1.0d-4)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1263
    (write-format "(3X, D4.3)" -1.0d-4)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1264
    (write-format "(3X, D4.3)" -1.96d-16)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1265
    (write-format "(3X, D4.3)" 3.14159d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1266
    (write-format "(3X, D5.3)" 3)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1267
    (write-format "(3X, D5.3)" -3)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1268
    (write-format "(3X, D5.3)" 10)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1269
    (write-format "(3X, D5.3)" -10)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1270
    (write-format "(3X, D5.3)" 100)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1271
    (write-format "(3X, D5.3)" -100)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1272
    (write-format "(3X, D5.3)" 1000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1273
    (write-format "(3X, D5.3)" -1000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1274
    (write-format "(3X, D5.3)" 10000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1275
    (write-format "(3X, D5.3)" -10000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1276
    (write-format "(3X, D5.3)" 100000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1277
    (write-format "(3X, D5.3)" -100000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1278
    (write-format "(3X, D5.3)" 123456789)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1279
    (write-format "(3X, D5.3)" 0.1d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1280
    (write-format "(3X, D5.3)" -0.1d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1281
    (write-format "(3X, D5.3)" 0.01d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1282
    (write-format "(3X, D5.3)" -0.01d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1283
    (write-format "(3X, D5.3)" 0.001d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1284
    (write-format "(3X, D5.3)" -0.001d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1285
    (write-format "(3X, D5.3)" 1.0d-4)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1286
    (write-format "(3X, D5.3)" -1.0d-4)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1287
    (write-format "(3X, D5.3)" -1.96d-16)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1288
    (write-format "(3X, D5.3)" 3.14159d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1289
    (write-format "(3X, D10.3)" 3)
  "    0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1290
    (write-format "(3X, D10.3)" -3)
  "   -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1291
    (write-format "(3X, D10.3)" 10)
  "    0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1292
    (write-format "(3X, D10.3)" -10)
  "   -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1293
    (write-format "(3X, D10.3)" 100)
  "    0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1294
    (write-format "(3X, D10.3)" -100)
  "   -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1295
    (write-format "(3X, D10.3)" 1000)
  "    0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1296
    (write-format "(3X, D10.3)" -1000)
  "   -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1297
    (write-format "(3X, D10.3)" 10000)
  "    0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1298
    (write-format "(3X, D10.3)" -10000)
  "   -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1299
    (write-format "(3X, D10.3)" 100000)
  "    0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1300
    (write-format "(3X, D10.3)" -100000)
  "   -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1301
    (write-format "(3X, D10.3)" 123456789)
  "    0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1302
    (write-format "(3X, D10.3)" 0.1d0)
  "    0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1303
    (write-format "(3X, D10.3)" -0.1d0)
  "   -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1304
    (write-format "(3X, D10.3)" 0.01d0)
  "    0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1305
    (write-format "(3X, D10.3)" -0.01d0)
  "   -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1306
    (write-format "(3X, D10.3)" 0.001d0)
  "    0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1307
    (write-format "(3X, D10.3)" -0.001d0)
  "   -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1308
    (write-format "(3X, D10.3)" 1.0d-4)
  "    0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1309
    (write-format "(3X, D10.3)" -1.0d-4)
  "   -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1310
    (write-format "(3X, D10.3)" -1.96d-16)
  "   -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1311
    (write-format "(3X, D10.3)" 3.14159d0)
  "    0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1312
    (write-format "(3X, D4.4)" 3)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1313
    (write-format "(3X, D4.4)" -3)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1314
    (write-format "(3X, D4.4)" 10)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1315
    (write-format "(3X, D4.4)" -10)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1316
    (write-format "(3X, D4.4)" 100)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1317
    (write-format "(3X, D4.4)" -100)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1318
    (write-format "(3X, D4.4)" 1000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1319
    (write-format "(3X, D4.4)" -1000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1320
    (write-format "(3X, D4.4)" 10000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1321
    (write-format "(3X, D4.4)" -10000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1322
    (write-format "(3X, D4.4)" 100000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1323
    (write-format "(3X, D4.4)" -100000)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1324
    (write-format "(3X, D4.4)" 123456789)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1325
    (write-format "(3X, D4.4)" 0.1d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1326
    (write-format "(3X, D4.4)" -0.1d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1327
    (write-format "(3X, D4.4)" 0.01d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1328
    (write-format "(3X, D4.4)" -0.01d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1329
    (write-format "(3X, D4.4)" 0.001d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1330
    (write-format "(3X, D4.4)" -0.001d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1331
    (write-format "(3X, D4.4)" 1.0d-4)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1332
    (write-format "(3X, D4.4)" -1.0d-4)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1333
    (write-format "(3X, D4.4)" -1.96d-16)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1334
    (write-format "(3X, D4.4)" 3.14159d0)
  "   ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1335
    (write-format "(3X, D5.4)" 3)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1336
    (write-format "(3X, D5.4)" -3)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1337
    (write-format "(3X, D5.4)" 10)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1338
    (write-format "(3X, D5.4)" -10)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1339
    (write-format "(3X, D5.4)" 100)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1340
    (write-format "(3X, D5.4)" -100)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1341
    (write-format "(3X, D5.4)" 1000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1342
    (write-format "(3X, D5.4)" -1000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1343
    (write-format "(3X, D5.4)" 10000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1344
    (write-format "(3X, D5.4)" -10000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1345
    (write-format "(3X, D5.4)" 100000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1346
    (write-format "(3X, D5.4)" -100000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1347
    (write-format "(3X, D5.4)" 123456789)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1348
    (write-format "(3X, D5.4)" 0.1d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1349
    (write-format "(3X, D5.4)" -0.1d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1350
    (write-format "(3X, D5.4)" 0.01d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1351
    (write-format "(3X, D5.4)" -0.01d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1352
    (write-format "(3X, D5.4)" 0.001d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1353
    (write-format "(3X, D5.4)" -0.001d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1354
    (write-format "(3X, D5.4)" 1.0d-4)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1355
    (write-format "(3X, D5.4)" -1.0d-4)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1356
    (write-format "(3X, D5.4)" -1.96d-16)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1357
    (write-format "(3X, D5.4)" 3.14159d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1358
    (write-format "(3X, D10.4)" 3)
  "   0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1359
    (write-format "(3X, D10.4)" -3)
  "   -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1360
    (write-format "(3X, D10.4)" 10)
  "   0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1361
    (write-format "(3X, D10.4)" -10)
  "   -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1362
    (write-format "(3X, D10.4)" 100)
  "   0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1363
    (write-format "(3X, D10.4)" -100)
  "   -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1364
    (write-format "(3X, D10.4)" 1000)
  "   0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1365
    (write-format "(3X, D10.4)" -1000)
  "   -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1366
    (write-format "(3X, D10.4)" 10000)
  "   0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1367
    (write-format "(3X, D10.4)" -10000)
  "   -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1368
    (write-format "(3X, D10.4)" 100000)
  "   0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1369
    (write-format "(3X, D10.4)" -100000)
  "   -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1370
    (write-format "(3X, D10.4)" 123456789)
  "   0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1371
    (write-format "(3X, D10.4)" 0.1d0)
  "   0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1372
    (write-format "(3X, D10.4)" -0.1d0)
  "   -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1373
    (write-format "(3X, D10.4)" 0.01d0)
  "   0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1374
    (write-format "(3X, D10.4)" -0.01d0)
  "   -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1375
    (write-format "(3X, D10.4)" 0.001d0)
  "   0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1376
    (write-format "(3X, D10.4)" -0.001d0)
  "   -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1377
    (write-format "(3X, D10.4)" 1.0d-4)
  "   0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1378
    (write-format "(3X, D10.4)" -1.0d-4)
  "   -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1379
    (write-format "(3X, D10.4)" -1.96d-16)
  "   -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1380
    (write-format "(3X, D10.4)" 3.14159d0)
  "   0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1381
    (write-format "(3X, D5.5)" 3)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1382
    (write-format "(3X, D5.5)" -3)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1383
    (write-format "(3X, D5.5)" 10)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1384
    (write-format "(3X, D5.5)" -10)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1385
    (write-format "(3X, D5.5)" 100)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1386
    (write-format "(3X, D5.5)" -100)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1387
    (write-format "(3X, D5.5)" 1000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1388
    (write-format "(3X, D5.5)" -1000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1389
    (write-format "(3X, D5.5)" 10000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1390
    (write-format "(3X, D5.5)" -10000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1391
    (write-format "(3X, D5.5)" 100000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1392
    (write-format "(3X, D5.5)" -100000)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1393
    (write-format "(3X, D5.5)" 123456789)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1394
    (write-format "(3X, D5.5)" 0.1d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1395
    (write-format "(3X, D5.5)" -0.1d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1396
    (write-format "(3X, D5.5)" 0.01d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1397
    (write-format "(3X, D5.5)" -0.01d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1398
    (write-format "(3X, D5.5)" 0.001d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1399
    (write-format "(3X, D5.5)" -0.001d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1400
    (write-format "(3X, D5.5)" 1.0d-4)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1401
    (write-format "(3X, D5.5)" -1.0d-4)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1402
    (write-format "(3X, D5.5)" -1.96d-16)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1403
    (write-format "(3X, D5.5)" 3.14159d0)
  "   *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1404
    (write-format "(3X, D10.5)" 3)
  "   .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1405
    (write-format "(3X, D10.5)" -3)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1406
    (write-format "(3X, D10.5)" 10)
  "   .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1407
    (write-format "(3X, D10.5)" -10)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1408
    (write-format "(3X, D10.5)" 100)
  "   .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1409
    (write-format "(3X, D10.5)" -100)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1410
    (write-format "(3X, D10.5)" 1000)
  "   .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1411
    (write-format "(3X, D10.5)" -1000)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1412
    (write-format "(3X, D10.5)" 10000)
  "   .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1413
    (write-format "(3X, D10.5)" -10000)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1414
    (write-format "(3X, D10.5)" 100000)
  "   .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1415
    (write-format "(3X, D10.5)" -100000)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1416
    (write-format "(3X, D10.5)" 123456789)
  "   .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1417
    (write-format "(3X, D10.5)" 0.1d0)
  "   .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1418
    (write-format "(3X, D10.5)" -0.1d0)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1419
    (write-format "(3X, D10.5)" 0.01d0)
  "   .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1420
    (write-format "(3X, D10.5)" -0.01d0)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1421
    (write-format "(3X, D10.5)" 0.001d0)
  "   .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1422
    (write-format "(3X, D10.5)" -0.001d0)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1423
    (write-format "(3X, D10.5)" 1.0d-4)
  "   .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1424
    (write-format "(3X, D10.5)" -1.0d-4)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1425
    (write-format "(3X, D10.5)" -1.96d-16)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1426
    (write-format "(3X, D10.5)" 3.14159d0)
  "   .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1427
    (write-format "(3X, D10.10)" 3)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1428
    (write-format "(3X, D10.10)" -3)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1429
    (write-format "(3X, D10.10)" 10)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1430
    (write-format "(3X, D10.10)" -10)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1431
    (write-format "(3X, D10.10)" 100)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1432
    (write-format "(3X, D10.10)" -100)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1433
    (write-format "(3X, D10.10)" 1000)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1434
    (write-format "(3X, D10.10)" -1000)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1435
    (write-format "(3X, D10.10)" 10000)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1436
    (write-format "(3X, D10.10)" -10000)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1437
    (write-format "(3X, D10.10)" 100000)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1438
    (write-format "(3X, D10.10)" -100000)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1439
    (write-format "(3X, D10.10)" 123456789)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1440
    (write-format "(3X, D10.10)" 0.1d0)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1441
    (write-format "(3X, D10.10)" -0.1d0)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1442
    (write-format "(3X, D10.10)" 0.01d0)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1443
    (write-format "(3X, D10.10)" -0.01d0)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1444
    (write-format "(3X, D10.10)" 0.001d0)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1445
    (write-format "(3X, D10.10)" -0.001d0)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1446
    (write-format "(3X, D10.10)" 1.0d-4)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1447
    (write-format "(3X, D10.10)" -1.0d-4)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1448
    (write-format "(3X, D10.10)" -1.96d-16)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1449
    (write-format "(3X, D10.10)" 3.14159d0)
  "   **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1450
    (write-format "(4X, D1.1)" 3)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1451
    (write-format "(4X, D1.1)" -3)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1452
    (write-format "(4X, D1.1)" 10)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1453
    (write-format "(4X, D1.1)" -10)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1454
    (write-format "(4X, D1.1)" 100)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1455
    (write-format "(4X, D1.1)" -100)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1456
    (write-format "(4X, D1.1)" 1000)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1457
    (write-format "(4X, D1.1)" -1000)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1458
    (write-format "(4X, D1.1)" 10000)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1459
    (write-format "(4X, D1.1)" -10000)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1460
    (write-format "(4X, D1.1)" 100000)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1461
    (write-format "(4X, D1.1)" -100000)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1462
    (write-format "(4X, D1.1)" 123456789)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1463
    (write-format "(4X, D1.1)" 0.1d0)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1464
    (write-format "(4X, D1.1)" -0.1d0)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1465
    (write-format "(4X, D1.1)" 0.01d0)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1466
    (write-format "(4X, D1.1)" -0.01d0)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1467
    (write-format "(4X, D1.1)" 0.001d0)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1468
    (write-format "(4X, D1.1)" -0.001d0)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1469
    (write-format "(4X, D1.1)" 1.0d-4)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1470
    (write-format "(4X, D1.1)" -1.0d-4)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1471
    (write-format "(4X, D1.1)" -1.96d-16)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1472
    (write-format "(4X, D1.1)" 3.14159d0)
  "    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1473
    (write-format "(4X, D2.1)" 3)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1474
    (write-format "(4X, D2.1)" -3)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1475
    (write-format "(4X, D2.1)" 10)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1476
    (write-format "(4X, D2.1)" -10)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1477
    (write-format "(4X, D2.1)" 100)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1478
    (write-format "(4X, D2.1)" -100)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1479
    (write-format "(4X, D2.1)" 1000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1480
    (write-format "(4X, D2.1)" -1000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1481
    (write-format "(4X, D2.1)" 10000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1482
    (write-format "(4X, D2.1)" -10000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1483
    (write-format "(4X, D2.1)" 100000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1484
    (write-format "(4X, D2.1)" -100000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1485
    (write-format "(4X, D2.1)" 123456789)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1486
    (write-format "(4X, D2.1)" 0.1d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1487
    (write-format "(4X, D2.1)" -0.1d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1488
    (write-format "(4X, D2.1)" 0.01d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1489
    (write-format "(4X, D2.1)" -0.01d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1490
    (write-format "(4X, D2.1)" 0.001d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1491
    (write-format "(4X, D2.1)" -0.001d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1492
    (write-format "(4X, D2.1)" 1.0d-4)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1493
    (write-format "(4X, D2.1)" -1.0d-4)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1494
    (write-format "(4X, D2.1)" -1.96d-16)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1495
    (write-format "(4X, D2.1)" 3.14159d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1496
    (write-format "(4X, D3.1)" 3)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1497
    (write-format "(4X, D3.1)" -3)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1498
    (write-format "(4X, D3.1)" 10)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1499
    (write-format "(4X, D3.1)" -10)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1500
    (write-format "(4X, D3.1)" 100)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1501
    (write-format "(4X, D3.1)" -100)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1502
    (write-format "(4X, D3.1)" 1000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1503
    (write-format "(4X, D3.1)" -1000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1504
    (write-format "(4X, D3.1)" 10000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1505
    (write-format "(4X, D3.1)" -10000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1506
    (write-format "(4X, D3.1)" 100000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1507
    (write-format "(4X, D3.1)" -100000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1508
    (write-format "(4X, D3.1)" 123456789)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1509
    (write-format "(4X, D3.1)" 0.1d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1510
    (write-format "(4X, D3.1)" -0.1d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1511
    (write-format "(4X, D3.1)" 0.01d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1512
    (write-format "(4X, D3.1)" -0.01d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1513
    (write-format "(4X, D3.1)" 0.001d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1514
    (write-format "(4X, D3.1)" -0.001d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1515
    (write-format "(4X, D3.1)" 1.0d-4)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1516
    (write-format "(4X, D3.1)" -1.0d-4)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1517
    (write-format "(4X, D3.1)" -1.96d-16)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1518
    (write-format "(4X, D3.1)" 3.14159d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1519
    (write-format "(4X, D4.1)" 3)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1520
    (write-format "(4X, D4.1)" -3)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1521
    (write-format "(4X, D4.1)" 10)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1522
    (write-format "(4X, D4.1)" -10)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1523
    (write-format "(4X, D4.1)" 100)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1524
    (write-format "(4X, D4.1)" -100)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1525
    (write-format "(4X, D4.1)" 1000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1526
    (write-format "(4X, D4.1)" -1000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1527
    (write-format "(4X, D4.1)" 10000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1528
    (write-format "(4X, D4.1)" -10000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1529
    (write-format "(4X, D4.1)" 100000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1530
    (write-format "(4X, D4.1)" -100000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1531
    (write-format "(4X, D4.1)" 123456789)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1532
    (write-format "(4X, D4.1)" 0.1d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1533
    (write-format "(4X, D4.1)" -0.1d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1534
    (write-format "(4X, D4.1)" 0.01d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1535
    (write-format "(4X, D4.1)" -0.01d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1536
    (write-format "(4X, D4.1)" 0.001d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1537
    (write-format "(4X, D4.1)" -0.001d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1538
    (write-format "(4X, D4.1)" 1.0d-4)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1539
    (write-format "(4X, D4.1)" -1.0d-4)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1540
    (write-format "(4X, D4.1)" -1.96d-16)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1541
    (write-format "(4X, D4.1)" 3.14159d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1542
    (write-format "(4X, D5.1)" 3)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1543
    (write-format "(4X, D5.1)" -3)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1544
    (write-format "(4X, D5.1)" 10)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1545
    (write-format "(4X, D5.1)" -10)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1546
    (write-format "(4X, D5.1)" 100)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1547
    (write-format "(4X, D5.1)" -100)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1548
    (write-format "(4X, D5.1)" 1000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1549
    (write-format "(4X, D5.1)" -1000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1550
    (write-format "(4X, D5.1)" 10000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1551
    (write-format "(4X, D5.1)" -10000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1552
    (write-format "(4X, D5.1)" 100000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1553
    (write-format "(4X, D5.1)" -100000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1554
    (write-format "(4X, D5.1)" 123456789)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1555
    (write-format "(4X, D5.1)" 0.1d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1556
    (write-format "(4X, D5.1)" -0.1d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1557
    (write-format "(4X, D5.1)" 0.01d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1558
    (write-format "(4X, D5.1)" -0.01d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1559
    (write-format "(4X, D5.1)" 0.001d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1560
    (write-format "(4X, D5.1)" -0.001d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1561
    (write-format "(4X, D5.1)" 1.0d-4)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1562
    (write-format "(4X, D5.1)" -1.0d-4)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1563
    (write-format "(4X, D5.1)" -1.96d-16)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1564
    (write-format "(4X, D5.1)" 3.14159d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1565
    (write-format "(4X, D10.1)" 3)
  "       0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1566
    (write-format "(4X, D10.1)" -3)
  "      -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1567
    (write-format "(4X, D10.1)" 10)
  "       0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1568
    (write-format "(4X, D10.1)" -10)
  "      -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1569
    (write-format "(4X, D10.1)" 100)
  "       0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1570
    (write-format "(4X, D10.1)" -100)
  "      -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1571
    (write-format "(4X, D10.1)" 1000)
  "       0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1572
    (write-format "(4X, D10.1)" -1000)
  "      -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1573
    (write-format "(4X, D10.1)" 10000)
  "       0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1574
    (write-format "(4X, D10.1)" -10000)
  "      -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1575
    (write-format "(4X, D10.1)" 100000)
  "       0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1576
    (write-format "(4X, D10.1)" -100000)
  "      -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1577
    (write-format "(4X, D10.1)" 123456789)
  "       0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1578
    (write-format "(4X, D10.1)" 0.1d0)
  "       0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1579
    (write-format "(4X, D10.1)" -0.1d0)
  "      -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1580
    (write-format "(4X, D10.1)" 0.01d0)
  "       0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1581
    (write-format "(4X, D10.1)" -0.01d0)
  "      -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1582
    (write-format "(4X, D10.1)" 0.001d0)
  "       0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1583
    (write-format "(4X, D10.1)" -0.001d0)
  "      -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1584
    (write-format "(4X, D10.1)" 1.0d-4)
  "       0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1585
    (write-format "(4X, D10.1)" -1.0d-4)
  "      -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1586
    (write-format "(4X, D10.1)" -1.96d-16)
  "      -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1587
    (write-format "(4X, D10.1)" 3.14159d0)
  "       0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1588
    (write-format "(4X, D2.2)" 3)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1589
    (write-format "(4X, D2.2)" -3)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1590
    (write-format "(4X, D2.2)" 10)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1591
    (write-format "(4X, D2.2)" -10)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1592
    (write-format "(4X, D2.2)" 100)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1593
    (write-format "(4X, D2.2)" -100)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1594
    (write-format "(4X, D2.2)" 1000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1595
    (write-format "(4X, D2.2)" -1000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1596
    (write-format "(4X, D2.2)" 10000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1597
    (write-format "(4X, D2.2)" -10000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1598
    (write-format "(4X, D2.2)" 100000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1599
    (write-format "(4X, D2.2)" -100000)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1600
    (write-format "(4X, D2.2)" 123456789)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1601
    (write-format "(4X, D2.2)" 0.1d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1602
    (write-format "(4X, D2.2)" -0.1d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1603
    (write-format "(4X, D2.2)" 0.01d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1604
    (write-format "(4X, D2.2)" -0.01d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1605
    (write-format "(4X, D2.2)" 0.001d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1606
    (write-format "(4X, D2.2)" -0.001d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1607
    (write-format "(4X, D2.2)" 1.0d-4)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1608
    (write-format "(4X, D2.2)" -1.0d-4)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1609
    (write-format "(4X, D2.2)" -1.96d-16)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1610
    (write-format "(4X, D2.2)" 3.14159d0)
  "    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1611
    (write-format "(4X, D3.2)" 3)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1612
    (write-format "(4X, D3.2)" -3)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1613
    (write-format "(4X, D3.2)" 10)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1614
    (write-format "(4X, D3.2)" -10)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1615
    (write-format "(4X, D3.2)" 100)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1616
    (write-format "(4X, D3.2)" -100)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1617
    (write-format "(4X, D3.2)" 1000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1618
    (write-format "(4X, D3.2)" -1000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1619
    (write-format "(4X, D3.2)" 10000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1620
    (write-format "(4X, D3.2)" -10000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1621
    (write-format "(4X, D3.2)" 100000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1622
    (write-format "(4X, D3.2)" -100000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1623
    (write-format "(4X, D3.2)" 123456789)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1624
    (write-format "(4X, D3.2)" 0.1d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1625
    (write-format "(4X, D3.2)" -0.1d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1626
    (write-format "(4X, D3.2)" 0.01d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1627
    (write-format "(4X, D3.2)" -0.01d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1628
    (write-format "(4X, D3.2)" 0.001d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1629
    (write-format "(4X, D3.2)" -0.001d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1630
    (write-format "(4X, D3.2)" 1.0d-4)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1631
    (write-format "(4X, D3.2)" -1.0d-4)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1632
    (write-format "(4X, D3.2)" -1.96d-16)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1633
    (write-format "(4X, D3.2)" 3.14159d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1634
    (write-format "(4X, D4.2)" 3)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1635
    (write-format "(4X, D4.2)" -3)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1636
    (write-format "(4X, D4.2)" 10)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1637
    (write-format "(4X, D4.2)" -10)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1638
    (write-format "(4X, D4.2)" 100)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1639
    (write-format "(4X, D4.2)" -100)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1640
    (write-format "(4X, D4.2)" 1000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1641
    (write-format "(4X, D4.2)" -1000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1642
    (write-format "(4X, D4.2)" 10000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1643
    (write-format "(4X, D4.2)" -10000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1644
    (write-format "(4X, D4.2)" 100000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1645
    (write-format "(4X, D4.2)" -100000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1646
    (write-format "(4X, D4.2)" 123456789)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1647
    (write-format "(4X, D4.2)" 0.1d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1648
    (write-format "(4X, D4.2)" -0.1d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1649
    (write-format "(4X, D4.2)" 0.01d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1650
    (write-format "(4X, D4.2)" -0.01d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1651
    (write-format "(4X, D4.2)" 0.001d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1652
    (write-format "(4X, D4.2)" -0.001d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1653
    (write-format "(4X, D4.2)" 1.0d-4)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1654
    (write-format "(4X, D4.2)" -1.0d-4)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1655
    (write-format "(4X, D4.2)" -1.96d-16)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1656
    (write-format "(4X, D4.2)" 3.14159d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1657
    (write-format "(4X, D5.2)" 3)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1658
    (write-format "(4X, D5.2)" -3)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1659
    (write-format "(4X, D5.2)" 10)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1660
    (write-format "(4X, D5.2)" -10)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1661
    (write-format "(4X, D5.2)" 100)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1662
    (write-format "(4X, D5.2)" -100)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1663
    (write-format "(4X, D5.2)" 1000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1664
    (write-format "(4X, D5.2)" -1000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1665
    (write-format "(4X, D5.2)" 10000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1666
    (write-format "(4X, D5.2)" -10000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1667
    (write-format "(4X, D5.2)" 100000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1668
    (write-format "(4X, D5.2)" -100000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1669
    (write-format "(4X, D5.2)" 123456789)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1670
    (write-format "(4X, D5.2)" 0.1d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1671
    (write-format "(4X, D5.2)" -0.1d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1672
    (write-format "(4X, D5.2)" 0.01d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1673
    (write-format "(4X, D5.2)" -0.01d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1674
    (write-format "(4X, D5.2)" 0.001d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1675
    (write-format "(4X, D5.2)" -0.001d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1676
    (write-format "(4X, D5.2)" 1.0d-4)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1677
    (write-format "(4X, D5.2)" -1.0d-4)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1678
    (write-format "(4X, D5.2)" -1.96d-16)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1679
    (write-format "(4X, D5.2)" 3.14159d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1680
    (write-format "(4X, D10.2)" 3)
  "      0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1681
    (write-format "(4X, D10.2)" -3)
  "     -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1682
    (write-format "(4X, D10.2)" 10)
  "      0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1683
    (write-format "(4X, D10.2)" -10)
  "     -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1684
    (write-format "(4X, D10.2)" 100)
  "      0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1685
    (write-format "(4X, D10.2)" -100)
  "     -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1686
    (write-format "(4X, D10.2)" 1000)
  "      0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1687
    (write-format "(4X, D10.2)" -1000)
  "     -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1688
    (write-format "(4X, D10.2)" 10000)
  "      0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1689
    (write-format "(4X, D10.2)" -10000)
  "     -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1690
    (write-format "(4X, D10.2)" 100000)
  "      0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1691
    (write-format "(4X, D10.2)" -100000)
  "     -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1692
    (write-format "(4X, D10.2)" 123456789)
  "      0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1693
    (write-format "(4X, D10.2)" 0.1d0)
  "      0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1694
    (write-format "(4X, D10.2)" -0.1d0)
  "     -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1695
    (write-format "(4X, D10.2)" 0.01d0)
  "      0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1696
    (write-format "(4X, D10.2)" -0.01d0)
  "     -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1697
    (write-format "(4X, D10.2)" 0.001d0)
  "      0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1698
    (write-format "(4X, D10.2)" -0.001d0)
  "     -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1699
    (write-format "(4X, D10.2)" 1.0d-4)
  "      0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1700
    (write-format "(4X, D10.2)" -1.0d-4)
  "     -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1701
    (write-format "(4X, D10.2)" -1.96d-16)
  "     -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1702
    (write-format "(4X, D10.2)" 3.14159d0)
  "      0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1703
    (write-format "(4X, D3.3)" 3)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1704
    (write-format "(4X, D3.3)" -3)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1705
    (write-format "(4X, D3.3)" 10)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1706
    (write-format "(4X, D3.3)" -10)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1707
    (write-format "(4X, D3.3)" 100)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1708
    (write-format "(4X, D3.3)" -100)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1709
    (write-format "(4X, D3.3)" 1000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1710
    (write-format "(4X, D3.3)" -1000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1711
    (write-format "(4X, D3.3)" 10000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1712
    (write-format "(4X, D3.3)" -10000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1713
    (write-format "(4X, D3.3)" 100000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1714
    (write-format "(4X, D3.3)" -100000)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1715
    (write-format "(4X, D3.3)" 123456789)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1716
    (write-format "(4X, D3.3)" 0.1d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1717
    (write-format "(4X, D3.3)" -0.1d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1718
    (write-format "(4X, D3.3)" 0.01d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1719
    (write-format "(4X, D3.3)" -0.01d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1720
    (write-format "(4X, D3.3)" 0.001d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1721
    (write-format "(4X, D3.3)" -0.001d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1722
    (write-format "(4X, D3.3)" 1.0d-4)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1723
    (write-format "(4X, D3.3)" -1.0d-4)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1724
    (write-format "(4X, D3.3)" -1.96d-16)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1725
    (write-format "(4X, D3.3)" 3.14159d0)
  "    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1726
    (write-format "(4X, D4.3)" 3)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1727
    (write-format "(4X, D4.3)" -3)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1728
    (write-format "(4X, D4.3)" 10)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1729
    (write-format "(4X, D4.3)" -10)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1730
    (write-format "(4X, D4.3)" 100)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1731
    (write-format "(4X, D4.3)" -100)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1732
    (write-format "(4X, D4.3)" 1000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1733
    (write-format "(4X, D4.3)" -1000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1734
    (write-format "(4X, D4.3)" 10000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1735
    (write-format "(4X, D4.3)" -10000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1736
    (write-format "(4X, D4.3)" 100000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1737
    (write-format "(4X, D4.3)" -100000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1738
    (write-format "(4X, D4.3)" 123456789)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1739
    (write-format "(4X, D4.3)" 0.1d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1740
    (write-format "(4X, D4.3)" -0.1d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1741
    (write-format "(4X, D4.3)" 0.01d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1742
    (write-format "(4X, D4.3)" -0.01d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1743
    (write-format "(4X, D4.3)" 0.001d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1744
    (write-format "(4X, D4.3)" -0.001d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1745
    (write-format "(4X, D4.3)" 1.0d-4)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1746
    (write-format "(4X, D4.3)" -1.0d-4)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1747
    (write-format "(4X, D4.3)" -1.96d-16)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1748
    (write-format "(4X, D4.3)" 3.14159d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1749
    (write-format "(4X, D5.3)" 3)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1750
    (write-format "(4X, D5.3)" -3)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1751
    (write-format "(4X, D5.3)" 10)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1752
    (write-format "(4X, D5.3)" -10)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1753
    (write-format "(4X, D5.3)" 100)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1754
    (write-format "(4X, D5.3)" -100)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1755
    (write-format "(4X, D5.3)" 1000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1756
    (write-format "(4X, D5.3)" -1000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1757
    (write-format "(4X, D5.3)" 10000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1758
    (write-format "(4X, D5.3)" -10000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1759
    (write-format "(4X, D5.3)" 100000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1760
    (write-format "(4X, D5.3)" -100000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1761
    (write-format "(4X, D5.3)" 123456789)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1762
    (write-format "(4X, D5.3)" 0.1d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1763
    (write-format "(4X, D5.3)" -0.1d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1764
    (write-format "(4X, D5.3)" 0.01d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1765
    (write-format "(4X, D5.3)" -0.01d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1766
    (write-format "(4X, D5.3)" 0.001d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1767
    (write-format "(4X, D5.3)" -0.001d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1768
    (write-format "(4X, D5.3)" 1.0d-4)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1769
    (write-format "(4X, D5.3)" -1.0d-4)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1770
    (write-format "(4X, D5.3)" -1.96d-16)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1771
    (write-format "(4X, D5.3)" 3.14159d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1772
    (write-format "(4X, D10.3)" 3)
  "     0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1773
    (write-format "(4X, D10.3)" -3)
  "    -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1774
    (write-format "(4X, D10.3)" 10)
  "     0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1775
    (write-format "(4X, D10.3)" -10)
  "    -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1776
    (write-format "(4X, D10.3)" 100)
  "     0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1777
    (write-format "(4X, D10.3)" -100)
  "    -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1778
    (write-format "(4X, D10.3)" 1000)
  "     0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1779
    (write-format "(4X, D10.3)" -1000)
  "    -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1780
    (write-format "(4X, D10.3)" 10000)
  "     0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1781
    (write-format "(4X, D10.3)" -10000)
  "    -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1782
    (write-format "(4X, D10.3)" 100000)
  "     0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1783
    (write-format "(4X, D10.3)" -100000)
  "    -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1784
    (write-format "(4X, D10.3)" 123456789)
  "     0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1785
    (write-format "(4X, D10.3)" 0.1d0)
  "     0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1786
    (write-format "(4X, D10.3)" -0.1d0)
  "    -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1787
    (write-format "(4X, D10.3)" 0.01d0)
  "     0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1788
    (write-format "(4X, D10.3)" -0.01d0)
  "    -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1789
    (write-format "(4X, D10.3)" 0.001d0)
  "     0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1790
    (write-format "(4X, D10.3)" -0.001d0)
  "    -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1791
    (write-format "(4X, D10.3)" 1.0d-4)
  "     0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1792
    (write-format "(4X, D10.3)" -1.0d-4)
  "    -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1793
    (write-format "(4X, D10.3)" -1.96d-16)
  "    -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1794
    (write-format "(4X, D10.3)" 3.14159d0)
  "     0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1795
    (write-format "(4X, D4.4)" 3)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1796
    (write-format "(4X, D4.4)" -3)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1797
    (write-format "(4X, D4.4)" 10)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1798
    (write-format "(4X, D4.4)" -10)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1799
    (write-format "(4X, D4.4)" 100)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1800
    (write-format "(4X, D4.4)" -100)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1801
    (write-format "(4X, D4.4)" 1000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1802
    (write-format "(4X, D4.4)" -1000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1803
    (write-format "(4X, D4.4)" 10000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1804
    (write-format "(4X, D4.4)" -10000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1805
    (write-format "(4X, D4.4)" 100000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1806
    (write-format "(4X, D4.4)" -100000)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1807
    (write-format "(4X, D4.4)" 123456789)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1808
    (write-format "(4X, D4.4)" 0.1d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1809
    (write-format "(4X, D4.4)" -0.1d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1810
    (write-format "(4X, D4.4)" 0.01d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1811
    (write-format "(4X, D4.4)" -0.01d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1812
    (write-format "(4X, D4.4)" 0.001d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1813
    (write-format "(4X, D4.4)" -0.001d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1814
    (write-format "(4X, D4.4)" 1.0d-4)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1815
    (write-format "(4X, D4.4)" -1.0d-4)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1816
    (write-format "(4X, D4.4)" -1.96d-16)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1817
    (write-format "(4X, D4.4)" 3.14159d0)
  "    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1818
    (write-format "(4X, D5.4)" 3)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1819
    (write-format "(4X, D5.4)" -3)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1820
    (write-format "(4X, D5.4)" 10)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1821
    (write-format "(4X, D5.4)" -10)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1822
    (write-format "(4X, D5.4)" 100)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1823
    (write-format "(4X, D5.4)" -100)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1824
    (write-format "(4X, D5.4)" 1000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1825
    (write-format "(4X, D5.4)" -1000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1826
    (write-format "(4X, D5.4)" 10000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1827
    (write-format "(4X, D5.4)" -10000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1828
    (write-format "(4X, D5.4)" 100000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1829
    (write-format "(4X, D5.4)" -100000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1830
    (write-format "(4X, D5.4)" 123456789)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1831
    (write-format "(4X, D5.4)" 0.1d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1832
    (write-format "(4X, D5.4)" -0.1d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1833
    (write-format "(4X, D5.4)" 0.01d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1834
    (write-format "(4X, D5.4)" -0.01d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1835
    (write-format "(4X, D5.4)" 0.001d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1836
    (write-format "(4X, D5.4)" -0.001d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1837
    (write-format "(4X, D5.4)" 1.0d-4)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1838
    (write-format "(4X, D5.4)" -1.0d-4)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1839
    (write-format "(4X, D5.4)" -1.96d-16)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1840
    (write-format "(4X, D5.4)" 3.14159d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1841
    (write-format "(4X, D10.4)" 3)
  "    0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1842
    (write-format "(4X, D10.4)" -3)
  "    -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1843
    (write-format "(4X, D10.4)" 10)
  "    0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1844
    (write-format "(4X, D10.4)" -10)
  "    -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1845
    (write-format "(4X, D10.4)" 100)
  "    0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1846
    (write-format "(4X, D10.4)" -100)
  "    -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1847
    (write-format "(4X, D10.4)" 1000)
  "    0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1848
    (write-format "(4X, D10.4)" -1000)
  "    -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1849
    (write-format "(4X, D10.4)" 10000)
  "    0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1850
    (write-format "(4X, D10.4)" -10000)
  "    -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1851
    (write-format "(4X, D10.4)" 100000)
  "    0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1852
    (write-format "(4X, D10.4)" -100000)
  "    -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1853
    (write-format "(4X, D10.4)" 123456789)
  "    0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1854
    (write-format "(4X, D10.4)" 0.1d0)
  "    0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1855
    (write-format "(4X, D10.4)" -0.1d0)
  "    -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1856
    (write-format "(4X, D10.4)" 0.01d0)
  "    0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1857
    (write-format "(4X, D10.4)" -0.01d0)
  "    -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1858
    (write-format "(4X, D10.4)" 0.001d0)
  "    0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1859
    (write-format "(4X, D10.4)" -0.001d0)
  "    -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1860
    (write-format "(4X, D10.4)" 1.0d-4)
  "    0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1861
    (write-format "(4X, D10.4)" -1.0d-4)
  "    -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1862
    (write-format "(4X, D10.4)" -1.96d-16)
  "    -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1863
    (write-format "(4X, D10.4)" 3.14159d0)
  "    0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1864
    (write-format "(4X, D5.5)" 3)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1865
    (write-format "(4X, D5.5)" -3)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1866
    (write-format "(4X, D5.5)" 10)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1867
    (write-format "(4X, D5.5)" -10)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1868
    (write-format "(4X, D5.5)" 100)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1869
    (write-format "(4X, D5.5)" -100)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1870
    (write-format "(4X, D5.5)" 1000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1871
    (write-format "(4X, D5.5)" -1000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1872
    (write-format "(4X, D5.5)" 10000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1873
    (write-format "(4X, D5.5)" -10000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1874
    (write-format "(4X, D5.5)" 100000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1875
    (write-format "(4X, D5.5)" -100000)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1876
    (write-format "(4X, D5.5)" 123456789)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1877
    (write-format "(4X, D5.5)" 0.1d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1878
    (write-format "(4X, D5.5)" -0.1d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1879
    (write-format "(4X, D5.5)" 0.01d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1880
    (write-format "(4X, D5.5)" -0.01d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1881
    (write-format "(4X, D5.5)" 0.001d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1882
    (write-format "(4X, D5.5)" -0.001d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1883
    (write-format "(4X, D5.5)" 1.0d-4)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1884
    (write-format "(4X, D5.5)" -1.0d-4)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1885
    (write-format "(4X, D5.5)" -1.96d-16)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1886
    (write-format "(4X, D5.5)" 3.14159d0)
  "    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1887
    (write-format "(4X, D10.5)" 3)
  "    .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1888
    (write-format "(4X, D10.5)" -3)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1889
    (write-format "(4X, D10.5)" 10)
  "    .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1890
    (write-format "(4X, D10.5)" -10)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1891
    (write-format "(4X, D10.5)" 100)
  "    .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1892
    (write-format "(4X, D10.5)" -100)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1893
    (write-format "(4X, D10.5)" 1000)
  "    .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1894
    (write-format "(4X, D10.5)" -1000)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1895
    (write-format "(4X, D10.5)" 10000)
  "    .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1896
    (write-format "(4X, D10.5)" -10000)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1897
    (write-format "(4X, D10.5)" 100000)
  "    .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1898
    (write-format "(4X, D10.5)" -100000)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1899
    (write-format "(4X, D10.5)" 123456789)
  "    .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1900
    (write-format "(4X, D10.5)" 0.1d0)
  "    .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1901
    (write-format "(4X, D10.5)" -0.1d0)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1902
    (write-format "(4X, D10.5)" 0.01d0)
  "    .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1903
    (write-format "(4X, D10.5)" -0.01d0)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1904
    (write-format "(4X, D10.5)" 0.001d0)
  "    .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1905
    (write-format "(4X, D10.5)" -0.001d0)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1906
    (write-format "(4X, D10.5)" 1.0d-4)
  "    .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1907
    (write-format "(4X, D10.5)" -1.0d-4)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1908
    (write-format "(4X, D10.5)" -1.96d-16)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1909
    (write-format "(4X, D10.5)" 3.14159d0)
  "    .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1910
    (write-format "(4X, D10.10)" 3)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1911
    (write-format "(4X, D10.10)" -3)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1912
    (write-format "(4X, D10.10)" 10)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1913
    (write-format "(4X, D10.10)" -10)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1914
    (write-format "(4X, D10.10)" 100)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1915
    (write-format "(4X, D10.10)" -100)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1916
    (write-format "(4X, D10.10)" 1000)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1917
    (write-format "(4X, D10.10)" -1000)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1918
    (write-format "(4X, D10.10)" 10000)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1919
    (write-format "(4X, D10.10)" -10000)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1920
    (write-format "(4X, D10.10)" 100000)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1921
    (write-format "(4X, D10.10)" -100000)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1922
    (write-format "(4X, D10.10)" 123456789)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1923
    (write-format "(4X, D10.10)" 0.1d0)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1924
    (write-format "(4X, D10.10)" -0.1d0)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1925
    (write-format "(4X, D10.10)" 0.01d0)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1926
    (write-format "(4X, D10.10)" -0.01d0)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1927
    (write-format "(4X, D10.10)" 0.001d0)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1928
    (write-format "(4X, D10.10)" -0.001d0)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1929
    (write-format "(4X, D10.10)" 1.0d-4)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1930
    (write-format "(4X, D10.10)" -1.0d-4)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1931
    (write-format "(4X, D10.10)" -1.96d-16)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1932
    (write-format "(4X, D10.10)" 3.14159d0)
  "    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1933
    (write-format "(5X, D1.1)" 3)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1934
    (write-format "(5X, D1.1)" -3)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1935
    (write-format "(5X, D1.1)" 10)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1936
    (write-format "(5X, D1.1)" -10)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1937
    (write-format "(5X, D1.1)" 100)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1938
    (write-format "(5X, D1.1)" -100)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1939
    (write-format "(5X, D1.1)" 1000)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1940
    (write-format "(5X, D1.1)" -1000)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1941
    (write-format "(5X, D1.1)" 10000)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1942
    (write-format "(5X, D1.1)" -10000)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1943
    (write-format "(5X, D1.1)" 100000)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1944
    (write-format "(5X, D1.1)" -100000)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1945
    (write-format "(5X, D1.1)" 123456789)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1946
    (write-format "(5X, D1.1)" 0.1d0)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1947
    (write-format "(5X, D1.1)" -0.1d0)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1948
    (write-format "(5X, D1.1)" 0.01d0)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1949
    (write-format "(5X, D1.1)" -0.01d0)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1950
    (write-format "(5X, D1.1)" 0.001d0)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1951
    (write-format "(5X, D1.1)" -0.001d0)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1952
    (write-format "(5X, D1.1)" 1.0d-4)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1953
    (write-format "(5X, D1.1)" -1.0d-4)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1954
    (write-format "(5X, D1.1)" -1.96d-16)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1955
    (write-format "(5X, D1.1)" 3.14159d0)
  "     *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1956
    (write-format "(5X, D2.1)" 3)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1957
    (write-format "(5X, D2.1)" -3)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1958
    (write-format "(5X, D2.1)" 10)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1959
    (write-format "(5X, D2.1)" -10)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1960
    (write-format "(5X, D2.1)" 100)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1961
    (write-format "(5X, D2.1)" -100)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1962
    (write-format "(5X, D2.1)" 1000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1963
    (write-format "(5X, D2.1)" -1000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1964
    (write-format "(5X, D2.1)" 10000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1965
    (write-format "(5X, D2.1)" -10000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1966
    (write-format "(5X, D2.1)" 100000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1967
    (write-format "(5X, D2.1)" -100000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1968
    (write-format "(5X, D2.1)" 123456789)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1969
    (write-format "(5X, D2.1)" 0.1d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1970
    (write-format "(5X, D2.1)" -0.1d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1971
    (write-format "(5X, D2.1)" 0.01d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1972
    (write-format "(5X, D2.1)" -0.01d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1973
    (write-format "(5X, D2.1)" 0.001d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1974
    (write-format "(5X, D2.1)" -0.001d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1975
    (write-format "(5X, D2.1)" 1.0d-4)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1976
    (write-format "(5X, D2.1)" -1.0d-4)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1977
    (write-format "(5X, D2.1)" -1.96d-16)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1978
    (write-format "(5X, D2.1)" 3.14159d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1979
    (write-format "(5X, D3.1)" 3)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1980
    (write-format "(5X, D3.1)" -3)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1981
    (write-format "(5X, D3.1)" 10)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1982
    (write-format "(5X, D3.1)" -10)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1983
    (write-format "(5X, D3.1)" 100)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1984
    (write-format "(5X, D3.1)" -100)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1985
    (write-format "(5X, D3.1)" 1000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1986
    (write-format "(5X, D3.1)" -1000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1987
    (write-format "(5X, D3.1)" 10000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1988
    (write-format "(5X, D3.1)" -10000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1989
    (write-format "(5X, D3.1)" 100000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1990
    (write-format "(5X, D3.1)" -100000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1991
    (write-format "(5X, D3.1)" 123456789)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1992
    (write-format "(5X, D3.1)" 0.1d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1993
    (write-format "(5X, D3.1)" -0.1d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1994
    (write-format "(5X, D3.1)" 0.01d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1995
    (write-format "(5X, D3.1)" -0.01d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1996
    (write-format "(5X, D3.1)" 0.001d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1997
    (write-format "(5X, D3.1)" -0.001d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1998
    (write-format "(5X, D3.1)" 1.0d-4)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.1999
    (write-format "(5X, D3.1)" -1.0d-4)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2000
    (write-format "(5X, D3.1)" -1.96d-16)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2001
    (write-format "(5X, D3.1)" 3.14159d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2002
    (write-format "(5X, D4.1)" 3)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2003
    (write-format "(5X, D4.1)" -3)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2004
    (write-format "(5X, D4.1)" 10)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2005
    (write-format "(5X, D4.1)" -10)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2006
    (write-format "(5X, D4.1)" 100)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2007
    (write-format "(5X, D4.1)" -100)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2008
    (write-format "(5X, D4.1)" 1000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2009
    (write-format "(5X, D4.1)" -1000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2010
    (write-format "(5X, D4.1)" 10000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2011
    (write-format "(5X, D4.1)" -10000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2012
    (write-format "(5X, D4.1)" 100000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2013
    (write-format "(5X, D4.1)" -100000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2014
    (write-format "(5X, D4.1)" 123456789)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2015
    (write-format "(5X, D4.1)" 0.1d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2016
    (write-format "(5X, D4.1)" -0.1d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2017
    (write-format "(5X, D4.1)" 0.01d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2018
    (write-format "(5X, D4.1)" -0.01d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2019
    (write-format "(5X, D4.1)" 0.001d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2020
    (write-format "(5X, D4.1)" -0.001d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2021
    (write-format "(5X, D4.1)" 1.0d-4)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2022
    (write-format "(5X, D4.1)" -1.0d-4)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2023
    (write-format "(5X, D4.1)" -1.96d-16)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2024
    (write-format "(5X, D4.1)" 3.14159d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2025
    (write-format "(5X, D5.1)" 3)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2026
    (write-format "(5X, D5.1)" -3)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2027
    (write-format "(5X, D5.1)" 10)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2028
    (write-format "(5X, D5.1)" -10)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2029
    (write-format "(5X, D5.1)" 100)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2030
    (write-format "(5X, D5.1)" -100)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2031
    (write-format "(5X, D5.1)" 1000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2032
    (write-format "(5X, D5.1)" -1000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2033
    (write-format "(5X, D5.1)" 10000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2034
    (write-format "(5X, D5.1)" -10000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2035
    (write-format "(5X, D5.1)" 100000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2036
    (write-format "(5X, D5.1)" -100000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2037
    (write-format "(5X, D5.1)" 123456789)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2038
    (write-format "(5X, D5.1)" 0.1d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2039
    (write-format "(5X, D5.1)" -0.1d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2040
    (write-format "(5X, D5.1)" 0.01d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2041
    (write-format "(5X, D5.1)" -0.01d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2042
    (write-format "(5X, D5.1)" 0.001d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2043
    (write-format "(5X, D5.1)" -0.001d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2044
    (write-format "(5X, D5.1)" 1.0d-4)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2045
    (write-format "(5X, D5.1)" -1.0d-4)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2046
    (write-format "(5X, D5.1)" -1.96d-16)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2047
    (write-format "(5X, D5.1)" 3.14159d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2048
    (write-format "(5X, D10.1)" 3)
  "        0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2049
    (write-format "(5X, D10.1)" -3)
  "       -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2050
    (write-format "(5X, D10.1)" 10)
  "        0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2051
    (write-format "(5X, D10.1)" -10)
  "       -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2052
    (write-format "(5X, D10.1)" 100)
  "        0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2053
    (write-format "(5X, D10.1)" -100)
  "       -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2054
    (write-format "(5X, D10.1)" 1000)
  "        0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2055
    (write-format "(5X, D10.1)" -1000)
  "       -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2056
    (write-format "(5X, D10.1)" 10000)
  "        0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2057
    (write-format "(5X, D10.1)" -10000)
  "       -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2058
    (write-format "(5X, D10.1)" 100000)
  "        0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2059
    (write-format "(5X, D10.1)" -100000)
  "       -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2060
    (write-format "(5X, D10.1)" 123456789)
  "        0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2061
    (write-format "(5X, D10.1)" 0.1d0)
  "        0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2062
    (write-format "(5X, D10.1)" -0.1d0)
  "       -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2063
    (write-format "(5X, D10.1)" 0.01d0)
  "        0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2064
    (write-format "(5X, D10.1)" -0.01d0)
  "       -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2065
    (write-format "(5X, D10.1)" 0.001d0)
  "        0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2066
    (write-format "(5X, D10.1)" -0.001d0)
  "       -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2067
    (write-format "(5X, D10.1)" 1.0d-4)
  "        0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2068
    (write-format "(5X, D10.1)" -1.0d-4)
  "       -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2069
    (write-format "(5X, D10.1)" -1.96d-16)
  "       -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2070
    (write-format "(5X, D10.1)" 3.14159d0)
  "        0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2071
    (write-format "(5X, D2.2)" 3)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2072
    (write-format "(5X, D2.2)" -3)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2073
    (write-format "(5X, D2.2)" 10)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2074
    (write-format "(5X, D2.2)" -10)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2075
    (write-format "(5X, D2.2)" 100)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2076
    (write-format "(5X, D2.2)" -100)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2077
    (write-format "(5X, D2.2)" 1000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2078
    (write-format "(5X, D2.2)" -1000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2079
    (write-format "(5X, D2.2)" 10000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2080
    (write-format "(5X, D2.2)" -10000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2081
    (write-format "(5X, D2.2)" 100000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2082
    (write-format "(5X, D2.2)" -100000)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2083
    (write-format "(5X, D2.2)" 123456789)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2084
    (write-format "(5X, D2.2)" 0.1d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2085
    (write-format "(5X, D2.2)" -0.1d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2086
    (write-format "(5X, D2.2)" 0.01d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2087
    (write-format "(5X, D2.2)" -0.01d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2088
    (write-format "(5X, D2.2)" 0.001d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2089
    (write-format "(5X, D2.2)" -0.001d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2090
    (write-format "(5X, D2.2)" 1.0d-4)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2091
    (write-format "(5X, D2.2)" -1.0d-4)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2092
    (write-format "(5X, D2.2)" -1.96d-16)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2093
    (write-format "(5X, D2.2)" 3.14159d0)
  "     **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2094
    (write-format "(5X, D3.2)" 3)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2095
    (write-format "(5X, D3.2)" -3)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2096
    (write-format "(5X, D3.2)" 10)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2097
    (write-format "(5X, D3.2)" -10)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2098
    (write-format "(5X, D3.2)" 100)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2099
    (write-format "(5X, D3.2)" -100)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2100
    (write-format "(5X, D3.2)" 1000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2101
    (write-format "(5X, D3.2)" -1000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2102
    (write-format "(5X, D3.2)" 10000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2103
    (write-format "(5X, D3.2)" -10000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2104
    (write-format "(5X, D3.2)" 100000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2105
    (write-format "(5X, D3.2)" -100000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2106
    (write-format "(5X, D3.2)" 123456789)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2107
    (write-format "(5X, D3.2)" 0.1d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2108
    (write-format "(5X, D3.2)" -0.1d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2109
    (write-format "(5X, D3.2)" 0.01d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2110
    (write-format "(5X, D3.2)" -0.01d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2111
    (write-format "(5X, D3.2)" 0.001d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2112
    (write-format "(5X, D3.2)" -0.001d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2113
    (write-format "(5X, D3.2)" 1.0d-4)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2114
    (write-format "(5X, D3.2)" -1.0d-4)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2115
    (write-format "(5X, D3.2)" -1.96d-16)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2116
    (write-format "(5X, D3.2)" 3.14159d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2117
    (write-format "(5X, D4.2)" 3)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2118
    (write-format "(5X, D4.2)" -3)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2119
    (write-format "(5X, D4.2)" 10)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2120
    (write-format "(5X, D4.2)" -10)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2121
    (write-format "(5X, D4.2)" 100)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2122
    (write-format "(5X, D4.2)" -100)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2123
    (write-format "(5X, D4.2)" 1000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2124
    (write-format "(5X, D4.2)" -1000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2125
    (write-format "(5X, D4.2)" 10000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2126
    (write-format "(5X, D4.2)" -10000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2127
    (write-format "(5X, D4.2)" 100000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2128
    (write-format "(5X, D4.2)" -100000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2129
    (write-format "(5X, D4.2)" 123456789)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2130
    (write-format "(5X, D4.2)" 0.1d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2131
    (write-format "(5X, D4.2)" -0.1d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2132
    (write-format "(5X, D4.2)" 0.01d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2133
    (write-format "(5X, D4.2)" -0.01d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2134
    (write-format "(5X, D4.2)" 0.001d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2135
    (write-format "(5X, D4.2)" -0.001d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2136
    (write-format "(5X, D4.2)" 1.0d-4)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2137
    (write-format "(5X, D4.2)" -1.0d-4)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2138
    (write-format "(5X, D4.2)" -1.96d-16)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2139
    (write-format "(5X, D4.2)" 3.14159d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2140
    (write-format "(5X, D5.2)" 3)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2141
    (write-format "(5X, D5.2)" -3)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2142
    (write-format "(5X, D5.2)" 10)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2143
    (write-format "(5X, D5.2)" -10)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2144
    (write-format "(5X, D5.2)" 100)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2145
    (write-format "(5X, D5.2)" -100)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2146
    (write-format "(5X, D5.2)" 1000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2147
    (write-format "(5X, D5.2)" -1000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2148
    (write-format "(5X, D5.2)" 10000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2149
    (write-format "(5X, D5.2)" -10000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2150
    (write-format "(5X, D5.2)" 100000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2151
    (write-format "(5X, D5.2)" -100000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2152
    (write-format "(5X, D5.2)" 123456789)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2153
    (write-format "(5X, D5.2)" 0.1d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2154
    (write-format "(5X, D5.2)" -0.1d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2155
    (write-format "(5X, D5.2)" 0.01d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2156
    (write-format "(5X, D5.2)" -0.01d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2157
    (write-format "(5X, D5.2)" 0.001d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2158
    (write-format "(5X, D5.2)" -0.001d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2159
    (write-format "(5X, D5.2)" 1.0d-4)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2160
    (write-format "(5X, D5.2)" -1.0d-4)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2161
    (write-format "(5X, D5.2)" -1.96d-16)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2162
    (write-format "(5X, D5.2)" 3.14159d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2163
    (write-format "(5X, D10.2)" 3)
  "       0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2164
    (write-format "(5X, D10.2)" -3)
  "      -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2165
    (write-format "(5X, D10.2)" 10)
  "       0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2166
    (write-format "(5X, D10.2)" -10)
  "      -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2167
    (write-format "(5X, D10.2)" 100)
  "       0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2168
    (write-format "(5X, D10.2)" -100)
  "      -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2169
    (write-format "(5X, D10.2)" 1000)
  "       0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2170
    (write-format "(5X, D10.2)" -1000)
  "      -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2171
    (write-format "(5X, D10.2)" 10000)
  "       0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2172
    (write-format "(5X, D10.2)" -10000)
  "      -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2173
    (write-format "(5X, D10.2)" 100000)
  "       0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2174
    (write-format "(5X, D10.2)" -100000)
  "      -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2175
    (write-format "(5X, D10.2)" 123456789)
  "       0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2176
    (write-format "(5X, D10.2)" 0.1d0)
  "       0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2177
    (write-format "(5X, D10.2)" -0.1d0)
  "      -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2178
    (write-format "(5X, D10.2)" 0.01d0)
  "       0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2179
    (write-format "(5X, D10.2)" -0.01d0)
  "      -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2180
    (write-format "(5X, D10.2)" 0.001d0)
  "       0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2181
    (write-format "(5X, D10.2)" -0.001d0)
  "      -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2182
    (write-format "(5X, D10.2)" 1.0d-4)
  "       0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2183
    (write-format "(5X, D10.2)" -1.0d-4)
  "      -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2184
    (write-format "(5X, D10.2)" -1.96d-16)
  "      -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2185
    (write-format "(5X, D10.2)" 3.14159d0)
  "       0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2186
    (write-format "(5X, D3.3)" 3)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2187
    (write-format "(5X, D3.3)" -3)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2188
    (write-format "(5X, D3.3)" 10)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2189
    (write-format "(5X, D3.3)" -10)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2190
    (write-format "(5X, D3.3)" 100)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2191
    (write-format "(5X, D3.3)" -100)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2192
    (write-format "(5X, D3.3)" 1000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2193
    (write-format "(5X, D3.3)" -1000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2194
    (write-format "(5X, D3.3)" 10000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2195
    (write-format "(5X, D3.3)" -10000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2196
    (write-format "(5X, D3.3)" 100000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2197
    (write-format "(5X, D3.3)" -100000)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2198
    (write-format "(5X, D3.3)" 123456789)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2199
    (write-format "(5X, D3.3)" 0.1d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2200
    (write-format "(5X, D3.3)" -0.1d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2201
    (write-format "(5X, D3.3)" 0.01d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2202
    (write-format "(5X, D3.3)" -0.01d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2203
    (write-format "(5X, D3.3)" 0.001d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2204
    (write-format "(5X, D3.3)" -0.001d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2205
    (write-format "(5X, D3.3)" 1.0d-4)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2206
    (write-format "(5X, D3.3)" -1.0d-4)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2207
    (write-format "(5X, D3.3)" -1.96d-16)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2208
    (write-format "(5X, D3.3)" 3.14159d0)
  "     ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2209
    (write-format "(5X, D4.3)" 3)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2210
    (write-format "(5X, D4.3)" -3)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2211
    (write-format "(5X, D4.3)" 10)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2212
    (write-format "(5X, D4.3)" -10)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2213
    (write-format "(5X, D4.3)" 100)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2214
    (write-format "(5X, D4.3)" -100)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2215
    (write-format "(5X, D4.3)" 1000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2216
    (write-format "(5X, D4.3)" -1000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2217
    (write-format "(5X, D4.3)" 10000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2218
    (write-format "(5X, D4.3)" -10000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2219
    (write-format "(5X, D4.3)" 100000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2220
    (write-format "(5X, D4.3)" -100000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2221
    (write-format "(5X, D4.3)" 123456789)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2222
    (write-format "(5X, D4.3)" 0.1d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2223
    (write-format "(5X, D4.3)" -0.1d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2224
    (write-format "(5X, D4.3)" 0.01d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2225
    (write-format "(5X, D4.3)" -0.01d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2226
    (write-format "(5X, D4.3)" 0.001d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2227
    (write-format "(5X, D4.3)" -0.001d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2228
    (write-format "(5X, D4.3)" 1.0d-4)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2229
    (write-format "(5X, D4.3)" -1.0d-4)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2230
    (write-format "(5X, D4.3)" -1.96d-16)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2231
    (write-format "(5X, D4.3)" 3.14159d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2232
    (write-format "(5X, D5.3)" 3)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2233
    (write-format "(5X, D5.3)" -3)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2234
    (write-format "(5X, D5.3)" 10)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2235
    (write-format "(5X, D5.3)" -10)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2236
    (write-format "(5X, D5.3)" 100)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2237
    (write-format "(5X, D5.3)" -100)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2238
    (write-format "(5X, D5.3)" 1000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2239
    (write-format "(5X, D5.3)" -1000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2240
    (write-format "(5X, D5.3)" 10000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2241
    (write-format "(5X, D5.3)" -10000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2242
    (write-format "(5X, D5.3)" 100000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2243
    (write-format "(5X, D5.3)" -100000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2244
    (write-format "(5X, D5.3)" 123456789)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2245
    (write-format "(5X, D5.3)" 0.1d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2246
    (write-format "(5X, D5.3)" -0.1d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2247
    (write-format "(5X, D5.3)" 0.01d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2248
    (write-format "(5X, D5.3)" -0.01d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2249
    (write-format "(5X, D5.3)" 0.001d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2250
    (write-format "(5X, D5.3)" -0.001d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2251
    (write-format "(5X, D5.3)" 1.0d-4)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2252
    (write-format "(5X, D5.3)" -1.0d-4)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2253
    (write-format "(5X, D5.3)" -1.96d-16)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2254
    (write-format "(5X, D5.3)" 3.14159d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2255
    (write-format "(5X, D10.3)" 3)
  "      0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2256
    (write-format "(5X, D10.3)" -3)
  "     -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2257
    (write-format "(5X, D10.3)" 10)
  "      0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2258
    (write-format "(5X, D10.3)" -10)
  "     -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2259
    (write-format "(5X, D10.3)" 100)
  "      0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2260
    (write-format "(5X, D10.3)" -100)
  "     -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2261
    (write-format "(5X, D10.3)" 1000)
  "      0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2262
    (write-format "(5X, D10.3)" -1000)
  "     -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2263
    (write-format "(5X, D10.3)" 10000)
  "      0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2264
    (write-format "(5X, D10.3)" -10000)
  "     -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2265
    (write-format "(5X, D10.3)" 100000)
  "      0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2266
    (write-format "(5X, D10.3)" -100000)
  "     -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2267
    (write-format "(5X, D10.3)" 123456789)
  "      0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2268
    (write-format "(5X, D10.3)" 0.1d0)
  "      0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2269
    (write-format "(5X, D10.3)" -0.1d0)
  "     -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2270
    (write-format "(5X, D10.3)" 0.01d0)
  "      0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2271
    (write-format "(5X, D10.3)" -0.01d0)
  "     -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2272
    (write-format "(5X, D10.3)" 0.001d0)
  "      0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2273
    (write-format "(5X, D10.3)" -0.001d0)
  "     -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2274
    (write-format "(5X, D10.3)" 1.0d-4)
  "      0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2275
    (write-format "(5X, D10.3)" -1.0d-4)
  "     -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2276
    (write-format "(5X, D10.3)" -1.96d-16)
  "     -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2277
    (write-format "(5X, D10.3)" 3.14159d0)
  "      0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2278
    (write-format "(5X, D4.4)" 3)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2279
    (write-format "(5X, D4.4)" -3)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2280
    (write-format "(5X, D4.4)" 10)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2281
    (write-format "(5X, D4.4)" -10)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2282
    (write-format "(5X, D4.4)" 100)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2283
    (write-format "(5X, D4.4)" -100)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2284
    (write-format "(5X, D4.4)" 1000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2285
    (write-format "(5X, D4.4)" -1000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2286
    (write-format "(5X, D4.4)" 10000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2287
    (write-format "(5X, D4.4)" -10000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2288
    (write-format "(5X, D4.4)" 100000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2289
    (write-format "(5X, D4.4)" -100000)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2290
    (write-format "(5X, D4.4)" 123456789)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2291
    (write-format "(5X, D4.4)" 0.1d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2292
    (write-format "(5X, D4.4)" -0.1d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2293
    (write-format "(5X, D4.4)" 0.01d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2294
    (write-format "(5X, D4.4)" -0.01d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2295
    (write-format "(5X, D4.4)" 0.001d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2296
    (write-format "(5X, D4.4)" -0.001d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2297
    (write-format "(5X, D4.4)" 1.0d-4)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2298
    (write-format "(5X, D4.4)" -1.0d-4)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2299
    (write-format "(5X, D4.4)" -1.96d-16)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2300
    (write-format "(5X, D4.4)" 3.14159d0)
  "     ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2301
    (write-format "(5X, D5.4)" 3)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2302
    (write-format "(5X, D5.4)" -3)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2303
    (write-format "(5X, D5.4)" 10)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2304
    (write-format "(5X, D5.4)" -10)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2305
    (write-format "(5X, D5.4)" 100)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2306
    (write-format "(5X, D5.4)" -100)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2307
    (write-format "(5X, D5.4)" 1000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2308
    (write-format "(5X, D5.4)" -1000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2309
    (write-format "(5X, D5.4)" 10000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2310
    (write-format "(5X, D5.4)" -10000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2311
    (write-format "(5X, D5.4)" 100000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2312
    (write-format "(5X, D5.4)" -100000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2313
    (write-format "(5X, D5.4)" 123456789)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2314
    (write-format "(5X, D5.4)" 0.1d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2315
    (write-format "(5X, D5.4)" -0.1d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2316
    (write-format "(5X, D5.4)" 0.01d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2317
    (write-format "(5X, D5.4)" -0.01d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2318
    (write-format "(5X, D5.4)" 0.001d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2319
    (write-format "(5X, D5.4)" -0.001d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2320
    (write-format "(5X, D5.4)" 1.0d-4)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2321
    (write-format "(5X, D5.4)" -1.0d-4)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2322
    (write-format "(5X, D5.4)" -1.96d-16)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2323
    (write-format "(5X, D5.4)" 3.14159d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2324
    (write-format "(5X, D10.4)" 3)
  "     0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2325
    (write-format "(5X, D10.4)" -3)
  "     -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2326
    (write-format "(5X, D10.4)" 10)
  "     0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2327
    (write-format "(5X, D10.4)" -10)
  "     -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2328
    (write-format "(5X, D10.4)" 100)
  "     0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2329
    (write-format "(5X, D10.4)" -100)
  "     -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2330
    (write-format "(5X, D10.4)" 1000)
  "     0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2331
    (write-format "(5X, D10.4)" -1000)
  "     -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2332
    (write-format "(5X, D10.4)" 10000)
  "     0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2333
    (write-format "(5X, D10.4)" -10000)
  "     -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2334
    (write-format "(5X, D10.4)" 100000)
  "     0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2335
    (write-format "(5X, D10.4)" -100000)
  "     -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2336
    (write-format "(5X, D10.4)" 123456789)
  "     0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2337
    (write-format "(5X, D10.4)" 0.1d0)
  "     0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2338
    (write-format "(5X, D10.4)" -0.1d0)
  "     -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2339
    (write-format "(5X, D10.4)" 0.01d0)
  "     0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2340
    (write-format "(5X, D10.4)" -0.01d0)
  "     -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2341
    (write-format "(5X, D10.4)" 0.001d0)
  "     0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2342
    (write-format "(5X, D10.4)" -0.001d0)
  "     -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2343
    (write-format "(5X, D10.4)" 1.0d-4)
  "     0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2344
    (write-format "(5X, D10.4)" -1.0d-4)
  "     -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2345
    (write-format "(5X, D10.4)" -1.96d-16)
  "     -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2346
    (write-format "(5X, D10.4)" 3.14159d0)
  "     0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2347
    (write-format "(5X, D5.5)" 3)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2348
    (write-format "(5X, D5.5)" -3)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2349
    (write-format "(5X, D5.5)" 10)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2350
    (write-format "(5X, D5.5)" -10)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2351
    (write-format "(5X, D5.5)" 100)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2352
    (write-format "(5X, D5.5)" -100)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2353
    (write-format "(5X, D5.5)" 1000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2354
    (write-format "(5X, D5.5)" -1000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2355
    (write-format "(5X, D5.5)" 10000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2356
    (write-format "(5X, D5.5)" -10000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2357
    (write-format "(5X, D5.5)" 100000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2358
    (write-format "(5X, D5.5)" -100000)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2359
    (write-format "(5X, D5.5)" 123456789)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2360
    (write-format "(5X, D5.5)" 0.1d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2361
    (write-format "(5X, D5.5)" -0.1d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2362
    (write-format "(5X, D5.5)" 0.01d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2363
    (write-format "(5X, D5.5)" -0.01d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2364
    (write-format "(5X, D5.5)" 0.001d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2365
    (write-format "(5X, D5.5)" -0.001d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2366
    (write-format "(5X, D5.5)" 1.0d-4)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2367
    (write-format "(5X, D5.5)" -1.0d-4)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2368
    (write-format "(5X, D5.5)" -1.96d-16)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2369
    (write-format "(5X, D5.5)" 3.14159d0)
  "     *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2370
    (write-format "(5X, D10.5)" 3)
  "     .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2371
    (write-format "(5X, D10.5)" -3)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2372
    (write-format "(5X, D10.5)" 10)
  "     .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2373
    (write-format "(5X, D10.5)" -10)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2374
    (write-format "(5X, D10.5)" 100)
  "     .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2375
    (write-format "(5X, D10.5)" -100)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2376
    (write-format "(5X, D10.5)" 1000)
  "     .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2377
    (write-format "(5X, D10.5)" -1000)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2378
    (write-format "(5X, D10.5)" 10000)
  "     .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2379
    (write-format "(5X, D10.5)" -10000)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2380
    (write-format "(5X, D10.5)" 100000)
  "     .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2381
    (write-format "(5X, D10.5)" -100000)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2382
    (write-format "(5X, D10.5)" 123456789)
  "     .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2383
    (write-format "(5X, D10.5)" 0.1d0)
  "     .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2384
    (write-format "(5X, D10.5)" -0.1d0)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2385
    (write-format "(5X, D10.5)" 0.01d0)
  "     .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2386
    (write-format "(5X, D10.5)" -0.01d0)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2387
    (write-format "(5X, D10.5)" 0.001d0)
  "     .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2388
    (write-format "(5X, D10.5)" -0.001d0)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2389
    (write-format "(5X, D10.5)" 1.0d-4)
  "     .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2390
    (write-format "(5X, D10.5)" -1.0d-4)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2391
    (write-format "(5X, D10.5)" -1.96d-16)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2392
    (write-format "(5X, D10.5)" 3.14159d0)
  "     .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2393
    (write-format "(5X, D10.10)" 3)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2394
    (write-format "(5X, D10.10)" -3)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2395
    (write-format "(5X, D10.10)" 10)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2396
    (write-format "(5X, D10.10)" -10)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2397
    (write-format "(5X, D10.10)" 100)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2398
    (write-format "(5X, D10.10)" -100)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2399
    (write-format "(5X, D10.10)" 1000)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2400
    (write-format "(5X, D10.10)" -1000)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2401
    (write-format "(5X, D10.10)" 10000)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2402
    (write-format "(5X, D10.10)" -10000)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2403
    (write-format "(5X, D10.10)" 100000)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2404
    (write-format "(5X, D10.10)" -100000)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2405
    (write-format "(5X, D10.10)" 123456789)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2406
    (write-format "(5X, D10.10)" 0.1d0)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2407
    (write-format "(5X, D10.10)" -0.1d0)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2408
    (write-format "(5X, D10.10)" 0.01d0)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2409
    (write-format "(5X, D10.10)" -0.01d0)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2410
    (write-format "(5X, D10.10)" 0.001d0)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2411
    (write-format "(5X, D10.10)" -0.001d0)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2412
    (write-format "(5X, D10.10)" 1.0d-4)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2413
    (write-format "(5X, D10.10)" -1.0d-4)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2414
    (write-format "(5X, D10.10)" -1.96d-16)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2415
    (write-format "(5X, D10.10)" 3.14159d0)
  "     **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2416
    (write-format "(6X, D1.1)" 3)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2417
    (write-format "(6X, D1.1)" -3)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2418
    (write-format "(6X, D1.1)" 10)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2419
    (write-format "(6X, D1.1)" -10)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2420
    (write-format "(6X, D1.1)" 100)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2421
    (write-format "(6X, D1.1)" -100)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2422
    (write-format "(6X, D1.1)" 1000)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2423
    (write-format "(6X, D1.1)" -1000)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2424
    (write-format "(6X, D1.1)" 10000)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2425
    (write-format "(6X, D1.1)" -10000)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2426
    (write-format "(6X, D1.1)" 100000)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2427
    (write-format "(6X, D1.1)" -100000)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2428
    (write-format "(6X, D1.1)" 123456789)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2429
    (write-format "(6X, D1.1)" 0.1d0)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2430
    (write-format "(6X, D1.1)" -0.1d0)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2431
    (write-format "(6X, D1.1)" 0.01d0)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2432
    (write-format "(6X, D1.1)" -0.01d0)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2433
    (write-format "(6X, D1.1)" 0.001d0)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2434
    (write-format "(6X, D1.1)" -0.001d0)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2435
    (write-format "(6X, D1.1)" 1.0d-4)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2436
    (write-format "(6X, D1.1)" -1.0d-4)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2437
    (write-format "(6X, D1.1)" -1.96d-16)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2438
    (write-format "(6X, D1.1)" 3.14159d0)
  "      *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2439
    (write-format "(6X, D2.1)" 3)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2440
    (write-format "(6X, D2.1)" -3)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2441
    (write-format "(6X, D2.1)" 10)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2442
    (write-format "(6X, D2.1)" -10)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2443
    (write-format "(6X, D2.1)" 100)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2444
    (write-format "(6X, D2.1)" -100)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2445
    (write-format "(6X, D2.1)" 1000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2446
    (write-format "(6X, D2.1)" -1000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2447
    (write-format "(6X, D2.1)" 10000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2448
    (write-format "(6X, D2.1)" -10000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2449
    (write-format "(6X, D2.1)" 100000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2450
    (write-format "(6X, D2.1)" -100000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2451
    (write-format "(6X, D2.1)" 123456789)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2452
    (write-format "(6X, D2.1)" 0.1d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2453
    (write-format "(6X, D2.1)" -0.1d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2454
    (write-format "(6X, D2.1)" 0.01d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2455
    (write-format "(6X, D2.1)" -0.01d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2456
    (write-format "(6X, D2.1)" 0.001d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2457
    (write-format "(6X, D2.1)" -0.001d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2458
    (write-format "(6X, D2.1)" 1.0d-4)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2459
    (write-format "(6X, D2.1)" -1.0d-4)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2460
    (write-format "(6X, D2.1)" -1.96d-16)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2461
    (write-format "(6X, D2.1)" 3.14159d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2462
    (write-format "(6X, D3.1)" 3)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2463
    (write-format "(6X, D3.1)" -3)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2464
    (write-format "(6X, D3.1)" 10)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2465
    (write-format "(6X, D3.1)" -10)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2466
    (write-format "(6X, D3.1)" 100)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2467
    (write-format "(6X, D3.1)" -100)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2468
    (write-format "(6X, D3.1)" 1000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2469
    (write-format "(6X, D3.1)" -1000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2470
    (write-format "(6X, D3.1)" 10000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2471
    (write-format "(6X, D3.1)" -10000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2472
    (write-format "(6X, D3.1)" 100000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2473
    (write-format "(6X, D3.1)" -100000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2474
    (write-format "(6X, D3.1)" 123456789)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2475
    (write-format "(6X, D3.1)" 0.1d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2476
    (write-format "(6X, D3.1)" -0.1d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2477
    (write-format "(6X, D3.1)" 0.01d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2478
    (write-format "(6X, D3.1)" -0.01d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2479
    (write-format "(6X, D3.1)" 0.001d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2480
    (write-format "(6X, D3.1)" -0.001d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2481
    (write-format "(6X, D3.1)" 1.0d-4)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2482
    (write-format "(6X, D3.1)" -1.0d-4)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2483
    (write-format "(6X, D3.1)" -1.96d-16)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2484
    (write-format "(6X, D3.1)" 3.14159d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2485
    (write-format "(6X, D4.1)" 3)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2486
    (write-format "(6X, D4.1)" -3)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2487
    (write-format "(6X, D4.1)" 10)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2488
    (write-format "(6X, D4.1)" -10)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2489
    (write-format "(6X, D4.1)" 100)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2490
    (write-format "(6X, D4.1)" -100)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2491
    (write-format "(6X, D4.1)" 1000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2492
    (write-format "(6X, D4.1)" -1000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2493
    (write-format "(6X, D4.1)" 10000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2494
    (write-format "(6X, D4.1)" -10000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2495
    (write-format "(6X, D4.1)" 100000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2496
    (write-format "(6X, D4.1)" -100000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2497
    (write-format "(6X, D4.1)" 123456789)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2498
    (write-format "(6X, D4.1)" 0.1d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2499
    (write-format "(6X, D4.1)" -0.1d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2500
    (write-format "(6X, D4.1)" 0.01d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2501
    (write-format "(6X, D4.1)" -0.01d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2502
    (write-format "(6X, D4.1)" 0.001d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2503
    (write-format "(6X, D4.1)" -0.001d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2504
    (write-format "(6X, D4.1)" 1.0d-4)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2505
    (write-format "(6X, D4.1)" -1.0d-4)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2506
    (write-format "(6X, D4.1)" -1.96d-16)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2507
    (write-format "(6X, D4.1)" 3.14159d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2508
    (write-format "(6X, D5.1)" 3)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2509
    (write-format "(6X, D5.1)" -3)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2510
    (write-format "(6X, D5.1)" 10)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2511
    (write-format "(6X, D5.1)" -10)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2512
    (write-format "(6X, D5.1)" 100)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2513
    (write-format "(6X, D5.1)" -100)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2514
    (write-format "(6X, D5.1)" 1000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2515
    (write-format "(6X, D5.1)" -1000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2516
    (write-format "(6X, D5.1)" 10000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2517
    (write-format "(6X, D5.1)" -10000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2518
    (write-format "(6X, D5.1)" 100000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2519
    (write-format "(6X, D5.1)" -100000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2520
    (write-format "(6X, D5.1)" 123456789)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2521
    (write-format "(6X, D5.1)" 0.1d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2522
    (write-format "(6X, D5.1)" -0.1d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2523
    (write-format "(6X, D5.1)" 0.01d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2524
    (write-format "(6X, D5.1)" -0.01d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2525
    (write-format "(6X, D5.1)" 0.001d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2526
    (write-format "(6X, D5.1)" -0.001d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2527
    (write-format "(6X, D5.1)" 1.0d-4)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2528
    (write-format "(6X, D5.1)" -1.0d-4)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2529
    (write-format "(6X, D5.1)" -1.96d-16)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2530
    (write-format "(6X, D5.1)" 3.14159d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2531
    (write-format "(6X, D10.1)" 3)
  "         0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2532
    (write-format "(6X, D10.1)" -3)
  "        -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2533
    (write-format "(6X, D10.1)" 10)
  "         0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2534
    (write-format "(6X, D10.1)" -10)
  "        -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2535
    (write-format "(6X, D10.1)" 100)
  "         0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2536
    (write-format "(6X, D10.1)" -100)
  "        -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2537
    (write-format "(6X, D10.1)" 1000)
  "         0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2538
    (write-format "(6X, D10.1)" -1000)
  "        -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2539
    (write-format "(6X, D10.1)" 10000)
  "         0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2540
    (write-format "(6X, D10.1)" -10000)
  "        -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2541
    (write-format "(6X, D10.1)" 100000)
  "         0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2542
    (write-format "(6X, D10.1)" -100000)
  "        -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2543
    (write-format "(6X, D10.1)" 123456789)
  "         0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2544
    (write-format "(6X, D10.1)" 0.1d0)
  "         0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2545
    (write-format "(6X, D10.1)" -0.1d0)
  "        -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2546
    (write-format "(6X, D10.1)" 0.01d0)
  "         0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2547
    (write-format "(6X, D10.1)" -0.01d0)
  "        -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2548
    (write-format "(6X, D10.1)" 0.001d0)
  "         0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2549
    (write-format "(6X, D10.1)" -0.001d0)
  "        -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2550
    (write-format "(6X, D10.1)" 1.0d-4)
  "         0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2551
    (write-format "(6X, D10.1)" -1.0d-4)
  "        -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2552
    (write-format "(6X, D10.1)" -1.96d-16)
  "        -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2553
    (write-format "(6X, D10.1)" 3.14159d0)
  "         0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2554
    (write-format "(6X, D2.2)" 3)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2555
    (write-format "(6X, D2.2)" -3)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2556
    (write-format "(6X, D2.2)" 10)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2557
    (write-format "(6X, D2.2)" -10)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2558
    (write-format "(6X, D2.2)" 100)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2559
    (write-format "(6X, D2.2)" -100)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2560
    (write-format "(6X, D2.2)" 1000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2561
    (write-format "(6X, D2.2)" -1000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2562
    (write-format "(6X, D2.2)" 10000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2563
    (write-format "(6X, D2.2)" -10000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2564
    (write-format "(6X, D2.2)" 100000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2565
    (write-format "(6X, D2.2)" -100000)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2566
    (write-format "(6X, D2.2)" 123456789)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2567
    (write-format "(6X, D2.2)" 0.1d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2568
    (write-format "(6X, D2.2)" -0.1d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2569
    (write-format "(6X, D2.2)" 0.01d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2570
    (write-format "(6X, D2.2)" -0.01d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2571
    (write-format "(6X, D2.2)" 0.001d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2572
    (write-format "(6X, D2.2)" -0.001d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2573
    (write-format "(6X, D2.2)" 1.0d-4)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2574
    (write-format "(6X, D2.2)" -1.0d-4)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2575
    (write-format "(6X, D2.2)" -1.96d-16)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2576
    (write-format "(6X, D2.2)" 3.14159d0)
  "      **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2577
    (write-format "(6X, D3.2)" 3)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2578
    (write-format "(6X, D3.2)" -3)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2579
    (write-format "(6X, D3.2)" 10)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2580
    (write-format "(6X, D3.2)" -10)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2581
    (write-format "(6X, D3.2)" 100)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2582
    (write-format "(6X, D3.2)" -100)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2583
    (write-format "(6X, D3.2)" 1000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2584
    (write-format "(6X, D3.2)" -1000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2585
    (write-format "(6X, D3.2)" 10000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2586
    (write-format "(6X, D3.2)" -10000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2587
    (write-format "(6X, D3.2)" 100000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2588
    (write-format "(6X, D3.2)" -100000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2589
    (write-format "(6X, D3.2)" 123456789)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2590
    (write-format "(6X, D3.2)" 0.1d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2591
    (write-format "(6X, D3.2)" -0.1d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2592
    (write-format "(6X, D3.2)" 0.01d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2593
    (write-format "(6X, D3.2)" -0.01d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2594
    (write-format "(6X, D3.2)" 0.001d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2595
    (write-format "(6X, D3.2)" -0.001d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2596
    (write-format "(6X, D3.2)" 1.0d-4)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2597
    (write-format "(6X, D3.2)" -1.0d-4)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2598
    (write-format "(6X, D3.2)" -1.96d-16)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2599
    (write-format "(6X, D3.2)" 3.14159d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2600
    (write-format "(6X, D4.2)" 3)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2601
    (write-format "(6X, D4.2)" -3)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2602
    (write-format "(6X, D4.2)" 10)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2603
    (write-format "(6X, D4.2)" -10)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2604
    (write-format "(6X, D4.2)" 100)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2605
    (write-format "(6X, D4.2)" -100)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2606
    (write-format "(6X, D4.2)" 1000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2607
    (write-format "(6X, D4.2)" -1000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2608
    (write-format "(6X, D4.2)" 10000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2609
    (write-format "(6X, D4.2)" -10000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2610
    (write-format "(6X, D4.2)" 100000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2611
    (write-format "(6X, D4.2)" -100000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2612
    (write-format "(6X, D4.2)" 123456789)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2613
    (write-format "(6X, D4.2)" 0.1d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2614
    (write-format "(6X, D4.2)" -0.1d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2615
    (write-format "(6X, D4.2)" 0.01d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2616
    (write-format "(6X, D4.2)" -0.01d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2617
    (write-format "(6X, D4.2)" 0.001d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2618
    (write-format "(6X, D4.2)" -0.001d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2619
    (write-format "(6X, D4.2)" 1.0d-4)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2620
    (write-format "(6X, D4.2)" -1.0d-4)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2621
    (write-format "(6X, D4.2)" -1.96d-16)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2622
    (write-format "(6X, D4.2)" 3.14159d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2623
    (write-format "(6X, D5.2)" 3)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2624
    (write-format "(6X, D5.2)" -3)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2625
    (write-format "(6X, D5.2)" 10)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2626
    (write-format "(6X, D5.2)" -10)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2627
    (write-format "(6X, D5.2)" 100)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2628
    (write-format "(6X, D5.2)" -100)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2629
    (write-format "(6X, D5.2)" 1000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2630
    (write-format "(6X, D5.2)" -1000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2631
    (write-format "(6X, D5.2)" 10000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2632
    (write-format "(6X, D5.2)" -10000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2633
    (write-format "(6X, D5.2)" 100000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2634
    (write-format "(6X, D5.2)" -100000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2635
    (write-format "(6X, D5.2)" 123456789)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2636
    (write-format "(6X, D5.2)" 0.1d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2637
    (write-format "(6X, D5.2)" -0.1d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2638
    (write-format "(6X, D5.2)" 0.01d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2639
    (write-format "(6X, D5.2)" -0.01d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2640
    (write-format "(6X, D5.2)" 0.001d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2641
    (write-format "(6X, D5.2)" -0.001d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2642
    (write-format "(6X, D5.2)" 1.0d-4)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2643
    (write-format "(6X, D5.2)" -1.0d-4)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2644
    (write-format "(6X, D5.2)" -1.96d-16)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2645
    (write-format "(6X, D5.2)" 3.14159d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2646
    (write-format "(6X, D10.2)" 3)
  "        0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2647
    (write-format "(6X, D10.2)" -3)
  "       -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2648
    (write-format "(6X, D10.2)" 10)
  "        0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2649
    (write-format "(6X, D10.2)" -10)
  "       -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2650
    (write-format "(6X, D10.2)" 100)
  "        0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2651
    (write-format "(6X, D10.2)" -100)
  "       -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2652
    (write-format "(6X, D10.2)" 1000)
  "        0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2653
    (write-format "(6X, D10.2)" -1000)
  "       -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2654
    (write-format "(6X, D10.2)" 10000)
  "        0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2655
    (write-format "(6X, D10.2)" -10000)
  "       -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2656
    (write-format "(6X, D10.2)" 100000)
  "        0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2657
    (write-format "(6X, D10.2)" -100000)
  "       -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2658
    (write-format "(6X, D10.2)" 123456789)
  "        0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2659
    (write-format "(6X, D10.2)" 0.1d0)
  "        0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2660
    (write-format "(6X, D10.2)" -0.1d0)
  "       -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2661
    (write-format "(6X, D10.2)" 0.01d0)
  "        0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2662
    (write-format "(6X, D10.2)" -0.01d0)
  "       -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2663
    (write-format "(6X, D10.2)" 0.001d0)
  "        0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2664
    (write-format "(6X, D10.2)" -0.001d0)
  "       -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2665
    (write-format "(6X, D10.2)" 1.0d-4)
  "        0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2666
    (write-format "(6X, D10.2)" -1.0d-4)
  "       -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2667
    (write-format "(6X, D10.2)" -1.96d-16)
  "       -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2668
    (write-format "(6X, D10.2)" 3.14159d0)
  "        0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2669
    (write-format "(6X, D3.3)" 3)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2670
    (write-format "(6X, D3.3)" -3)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2671
    (write-format "(6X, D3.3)" 10)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2672
    (write-format "(6X, D3.3)" -10)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2673
    (write-format "(6X, D3.3)" 100)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2674
    (write-format "(6X, D3.3)" -100)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2675
    (write-format "(6X, D3.3)" 1000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2676
    (write-format "(6X, D3.3)" -1000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2677
    (write-format "(6X, D3.3)" 10000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2678
    (write-format "(6X, D3.3)" -10000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2679
    (write-format "(6X, D3.3)" 100000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2680
    (write-format "(6X, D3.3)" -100000)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2681
    (write-format "(6X, D3.3)" 123456789)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2682
    (write-format "(6X, D3.3)" 0.1d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2683
    (write-format "(6X, D3.3)" -0.1d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2684
    (write-format "(6X, D3.3)" 0.01d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2685
    (write-format "(6X, D3.3)" -0.01d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2686
    (write-format "(6X, D3.3)" 0.001d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2687
    (write-format "(6X, D3.3)" -0.001d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2688
    (write-format "(6X, D3.3)" 1.0d-4)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2689
    (write-format "(6X, D3.3)" -1.0d-4)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2690
    (write-format "(6X, D3.3)" -1.96d-16)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2691
    (write-format "(6X, D3.3)" 3.14159d0)
  "      ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2692
    (write-format "(6X, D4.3)" 3)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2693
    (write-format "(6X, D4.3)" -3)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2694
    (write-format "(6X, D4.3)" 10)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2695
    (write-format "(6X, D4.3)" -10)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2696
    (write-format "(6X, D4.3)" 100)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2697
    (write-format "(6X, D4.3)" -100)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2698
    (write-format "(6X, D4.3)" 1000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2699
    (write-format "(6X, D4.3)" -1000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2700
    (write-format "(6X, D4.3)" 10000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2701
    (write-format "(6X, D4.3)" -10000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2702
    (write-format "(6X, D4.3)" 100000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2703
    (write-format "(6X, D4.3)" -100000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2704
    (write-format "(6X, D4.3)" 123456789)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2705
    (write-format "(6X, D4.3)" 0.1d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2706
    (write-format "(6X, D4.3)" -0.1d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2707
    (write-format "(6X, D4.3)" 0.01d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2708
    (write-format "(6X, D4.3)" -0.01d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2709
    (write-format "(6X, D4.3)" 0.001d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2710
    (write-format "(6X, D4.3)" -0.001d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2711
    (write-format "(6X, D4.3)" 1.0d-4)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2712
    (write-format "(6X, D4.3)" -1.0d-4)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2713
    (write-format "(6X, D4.3)" -1.96d-16)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2714
    (write-format "(6X, D4.3)" 3.14159d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2715
    (write-format "(6X, D5.3)" 3)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2716
    (write-format "(6X, D5.3)" -3)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2717
    (write-format "(6X, D5.3)" 10)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2718
    (write-format "(6X, D5.3)" -10)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2719
    (write-format "(6X, D5.3)" 100)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2720
    (write-format "(6X, D5.3)" -100)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2721
    (write-format "(6X, D5.3)" 1000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2722
    (write-format "(6X, D5.3)" -1000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2723
    (write-format "(6X, D5.3)" 10000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2724
    (write-format "(6X, D5.3)" -10000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2725
    (write-format "(6X, D5.3)" 100000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2726
    (write-format "(6X, D5.3)" -100000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2727
    (write-format "(6X, D5.3)" 123456789)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2728
    (write-format "(6X, D5.3)" 0.1d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2729
    (write-format "(6X, D5.3)" -0.1d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2730
    (write-format "(6X, D5.3)" 0.01d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2731
    (write-format "(6X, D5.3)" -0.01d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2732
    (write-format "(6X, D5.3)" 0.001d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2733
    (write-format "(6X, D5.3)" -0.001d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2734
    (write-format "(6X, D5.3)" 1.0d-4)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2735
    (write-format "(6X, D5.3)" -1.0d-4)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2736
    (write-format "(6X, D5.3)" -1.96d-16)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2737
    (write-format "(6X, D5.3)" 3.14159d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2738
    (write-format "(6X, D10.3)" 3)
  "       0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2739
    (write-format "(6X, D10.3)" -3)
  "      -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2740
    (write-format "(6X, D10.3)" 10)
  "       0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2741
    (write-format "(6X, D10.3)" -10)
  "      -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2742
    (write-format "(6X, D10.3)" 100)
  "       0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2743
    (write-format "(6X, D10.3)" -100)
  "      -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2744
    (write-format "(6X, D10.3)" 1000)
  "       0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2745
    (write-format "(6X, D10.3)" -1000)
  "      -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2746
    (write-format "(6X, D10.3)" 10000)
  "       0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2747
    (write-format "(6X, D10.3)" -10000)
  "      -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2748
    (write-format "(6X, D10.3)" 100000)
  "       0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2749
    (write-format "(6X, D10.3)" -100000)
  "      -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2750
    (write-format "(6X, D10.3)" 123456789)
  "       0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2751
    (write-format "(6X, D10.3)" 0.1d0)
  "       0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2752
    (write-format "(6X, D10.3)" -0.1d0)
  "      -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2753
    (write-format "(6X, D10.3)" 0.01d0)
  "       0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2754
    (write-format "(6X, D10.3)" -0.01d0)
  "      -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2755
    (write-format "(6X, D10.3)" 0.001d0)
  "       0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2756
    (write-format "(6X, D10.3)" -0.001d0)
  "      -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2757
    (write-format "(6X, D10.3)" 1.0d-4)
  "       0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2758
    (write-format "(6X, D10.3)" -1.0d-4)
  "      -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2759
    (write-format "(6X, D10.3)" -1.96d-16)
  "      -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2760
    (write-format "(6X, D10.3)" 3.14159d0)
  "       0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2761
    (write-format "(6X, D4.4)" 3)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2762
    (write-format "(6X, D4.4)" -3)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2763
    (write-format "(6X, D4.4)" 10)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2764
    (write-format "(6X, D4.4)" -10)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2765
    (write-format "(6X, D4.4)" 100)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2766
    (write-format "(6X, D4.4)" -100)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2767
    (write-format "(6X, D4.4)" 1000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2768
    (write-format "(6X, D4.4)" -1000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2769
    (write-format "(6X, D4.4)" 10000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2770
    (write-format "(6X, D4.4)" -10000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2771
    (write-format "(6X, D4.4)" 100000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2772
    (write-format "(6X, D4.4)" -100000)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2773
    (write-format "(6X, D4.4)" 123456789)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2774
    (write-format "(6X, D4.4)" 0.1d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2775
    (write-format "(6X, D4.4)" -0.1d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2776
    (write-format "(6X, D4.4)" 0.01d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2777
    (write-format "(6X, D4.4)" -0.01d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2778
    (write-format "(6X, D4.4)" 0.001d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2779
    (write-format "(6X, D4.4)" -0.001d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2780
    (write-format "(6X, D4.4)" 1.0d-4)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2781
    (write-format "(6X, D4.4)" -1.0d-4)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2782
    (write-format "(6X, D4.4)" -1.96d-16)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2783
    (write-format "(6X, D4.4)" 3.14159d0)
  "      ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2784
    (write-format "(6X, D5.4)" 3)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2785
    (write-format "(6X, D5.4)" -3)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2786
    (write-format "(6X, D5.4)" 10)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2787
    (write-format "(6X, D5.4)" -10)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2788
    (write-format "(6X, D5.4)" 100)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2789
    (write-format "(6X, D5.4)" -100)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2790
    (write-format "(6X, D5.4)" 1000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2791
    (write-format "(6X, D5.4)" -1000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2792
    (write-format "(6X, D5.4)" 10000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2793
    (write-format "(6X, D5.4)" -10000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2794
    (write-format "(6X, D5.4)" 100000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2795
    (write-format "(6X, D5.4)" -100000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2796
    (write-format "(6X, D5.4)" 123456789)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2797
    (write-format "(6X, D5.4)" 0.1d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2798
    (write-format "(6X, D5.4)" -0.1d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2799
    (write-format "(6X, D5.4)" 0.01d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2800
    (write-format "(6X, D5.4)" -0.01d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2801
    (write-format "(6X, D5.4)" 0.001d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2802
    (write-format "(6X, D5.4)" -0.001d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2803
    (write-format "(6X, D5.4)" 1.0d-4)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2804
    (write-format "(6X, D5.4)" -1.0d-4)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2805
    (write-format "(6X, D5.4)" -1.96d-16)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2806
    (write-format "(6X, D5.4)" 3.14159d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2807
    (write-format "(6X, D10.4)" 3)
  "      0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2808
    (write-format "(6X, D10.4)" -3)
  "      -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2809
    (write-format "(6X, D10.4)" 10)
  "      0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2810
    (write-format "(6X, D10.4)" -10)
  "      -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2811
    (write-format "(6X, D10.4)" 100)
  "      0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2812
    (write-format "(6X, D10.4)" -100)
  "      -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2813
    (write-format "(6X, D10.4)" 1000)
  "      0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2814
    (write-format "(6X, D10.4)" -1000)
  "      -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2815
    (write-format "(6X, D10.4)" 10000)
  "      0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2816
    (write-format "(6X, D10.4)" -10000)
  "      -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2817
    (write-format "(6X, D10.4)" 100000)
  "      0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2818
    (write-format "(6X, D10.4)" -100000)
  "      -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2819
    (write-format "(6X, D10.4)" 123456789)
  "      0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2820
    (write-format "(6X, D10.4)" 0.1d0)
  "      0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2821
    (write-format "(6X, D10.4)" -0.1d0)
  "      -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2822
    (write-format "(6X, D10.4)" 0.01d0)
  "      0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2823
    (write-format "(6X, D10.4)" -0.01d0)
  "      -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2824
    (write-format "(6X, D10.4)" 0.001d0)
  "      0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2825
    (write-format "(6X, D10.4)" -0.001d0)
  "      -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2826
    (write-format "(6X, D10.4)" 1.0d-4)
  "      0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2827
    (write-format "(6X, D10.4)" -1.0d-4)
  "      -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2828
    (write-format "(6X, D10.4)" -1.96d-16)
  "      -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2829
    (write-format "(6X, D10.4)" 3.14159d0)
  "      0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2830
    (write-format "(6X, D5.5)" 3)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2831
    (write-format "(6X, D5.5)" -3)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2832
    (write-format "(6X, D5.5)" 10)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2833
    (write-format "(6X, D5.5)" -10)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2834
    (write-format "(6X, D5.5)" 100)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2835
    (write-format "(6X, D5.5)" -100)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2836
    (write-format "(6X, D5.5)" 1000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2837
    (write-format "(6X, D5.5)" -1000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2838
    (write-format "(6X, D5.5)" 10000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2839
    (write-format "(6X, D5.5)" -10000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2840
    (write-format "(6X, D5.5)" 100000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2841
    (write-format "(6X, D5.5)" -100000)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2842
    (write-format "(6X, D5.5)" 123456789)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2843
    (write-format "(6X, D5.5)" 0.1d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2844
    (write-format "(6X, D5.5)" -0.1d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2845
    (write-format "(6X, D5.5)" 0.01d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2846
    (write-format "(6X, D5.5)" -0.01d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2847
    (write-format "(6X, D5.5)" 0.001d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2848
    (write-format "(6X, D5.5)" -0.001d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2849
    (write-format "(6X, D5.5)" 1.0d-4)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2850
    (write-format "(6X, D5.5)" -1.0d-4)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2851
    (write-format "(6X, D5.5)" -1.96d-16)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2852
    (write-format "(6X, D5.5)" 3.14159d0)
  "      *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2853
    (write-format "(6X, D10.5)" 3)
  "      .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2854
    (write-format "(6X, D10.5)" -3)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2855
    (write-format "(6X, D10.5)" 10)
  "      .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2856
    (write-format "(6X, D10.5)" -10)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2857
    (write-format "(6X, D10.5)" 100)
  "      .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2858
    (write-format "(6X, D10.5)" -100)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2859
    (write-format "(6X, D10.5)" 1000)
  "      .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2860
    (write-format "(6X, D10.5)" -1000)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2861
    (write-format "(6X, D10.5)" 10000)
  "      .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2862
    (write-format "(6X, D10.5)" -10000)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2863
    (write-format "(6X, D10.5)" 100000)
  "      .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2864
    (write-format "(6X, D10.5)" -100000)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2865
    (write-format "(6X, D10.5)" 123456789)
  "      .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2866
    (write-format "(6X, D10.5)" 0.1d0)
  "      .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2867
    (write-format "(6X, D10.5)" -0.1d0)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2868
    (write-format "(6X, D10.5)" 0.01d0)
  "      .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2869
    (write-format "(6X, D10.5)" -0.01d0)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2870
    (write-format "(6X, D10.5)" 0.001d0)
  "      .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2871
    (write-format "(6X, D10.5)" -0.001d0)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2872
    (write-format "(6X, D10.5)" 1.0d-4)
  "      .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2873
    (write-format "(6X, D10.5)" -1.0d-4)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2874
    (write-format "(6X, D10.5)" -1.96d-16)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2875
    (write-format "(6X, D10.5)" 3.14159d0)
  "      .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2876
    (write-format "(6X, D10.10)" 3)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2877
    (write-format "(6X, D10.10)" -3)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2878
    (write-format "(6X, D10.10)" 10)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2879
    (write-format "(6X, D10.10)" -10)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2880
    (write-format "(6X, D10.10)" 100)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2881
    (write-format "(6X, D10.10)" -100)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2882
    (write-format "(6X, D10.10)" 1000)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2883
    (write-format "(6X, D10.10)" -1000)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2884
    (write-format "(6X, D10.10)" 10000)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2885
    (write-format "(6X, D10.10)" -10000)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2886
    (write-format "(6X, D10.10)" 100000)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2887
    (write-format "(6X, D10.10)" -100000)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2888
    (write-format "(6X, D10.10)" 123456789)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2889
    (write-format "(6X, D10.10)" 0.1d0)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2890
    (write-format "(6X, D10.10)" -0.1d0)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2891
    (write-format "(6X, D10.10)" 0.01d0)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2892
    (write-format "(6X, D10.10)" -0.01d0)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2893
    (write-format "(6X, D10.10)" 0.001d0)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2894
    (write-format "(6X, D10.10)" -0.001d0)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2895
    (write-format "(6X, D10.10)" 1.0d-4)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2896
    (write-format "(6X, D10.10)" -1.0d-4)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2897
    (write-format "(6X, D10.10)" -1.96d-16)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2898
    (write-format "(6X, D10.10)" 3.14159d0)
  "      **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2899
    (write-format "(7X, D1.1)" 3)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2900
    (write-format "(7X, D1.1)" -3)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2901
    (write-format "(7X, D1.1)" 10)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2902
    (write-format "(7X, D1.1)" -10)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2903
    (write-format "(7X, D1.1)" 100)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2904
    (write-format "(7X, D1.1)" -100)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2905
    (write-format "(7X, D1.1)" 1000)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2906
    (write-format "(7X, D1.1)" -1000)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2907
    (write-format "(7X, D1.1)" 10000)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2908
    (write-format "(7X, D1.1)" -10000)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2909
    (write-format "(7X, D1.1)" 100000)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2910
    (write-format "(7X, D1.1)" -100000)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2911
    (write-format "(7X, D1.1)" 123456789)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2912
    (write-format "(7X, D1.1)" 0.1d0)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2913
    (write-format "(7X, D1.1)" -0.1d0)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2914
    (write-format "(7X, D1.1)" 0.01d0)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2915
    (write-format "(7X, D1.1)" -0.01d0)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2916
    (write-format "(7X, D1.1)" 0.001d0)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2917
    (write-format "(7X, D1.1)" -0.001d0)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2918
    (write-format "(7X, D1.1)" 1.0d-4)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2919
    (write-format "(7X, D1.1)" -1.0d-4)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2920
    (write-format "(7X, D1.1)" -1.96d-16)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2921
    (write-format "(7X, D1.1)" 3.14159d0)
  "       *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2922
    (write-format "(7X, D2.1)" 3)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2923
    (write-format "(7X, D2.1)" -3)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2924
    (write-format "(7X, D2.1)" 10)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2925
    (write-format "(7X, D2.1)" -10)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2926
    (write-format "(7X, D2.1)" 100)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2927
    (write-format "(7X, D2.1)" -100)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2928
    (write-format "(7X, D2.1)" 1000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2929
    (write-format "(7X, D2.1)" -1000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2930
    (write-format "(7X, D2.1)" 10000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2931
    (write-format "(7X, D2.1)" -10000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2932
    (write-format "(7X, D2.1)" 100000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2933
    (write-format "(7X, D2.1)" -100000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2934
    (write-format "(7X, D2.1)" 123456789)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2935
    (write-format "(7X, D2.1)" 0.1d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2936
    (write-format "(7X, D2.1)" -0.1d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2937
    (write-format "(7X, D2.1)" 0.01d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2938
    (write-format "(7X, D2.1)" -0.01d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2939
    (write-format "(7X, D2.1)" 0.001d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2940
    (write-format "(7X, D2.1)" -0.001d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2941
    (write-format "(7X, D2.1)" 1.0d-4)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2942
    (write-format "(7X, D2.1)" -1.0d-4)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2943
    (write-format "(7X, D2.1)" -1.96d-16)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2944
    (write-format "(7X, D2.1)" 3.14159d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2945
    (write-format "(7X, D3.1)" 3)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2946
    (write-format "(7X, D3.1)" -3)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2947
    (write-format "(7X, D3.1)" 10)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2948
    (write-format "(7X, D3.1)" -10)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2949
    (write-format "(7X, D3.1)" 100)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2950
    (write-format "(7X, D3.1)" -100)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2951
    (write-format "(7X, D3.1)" 1000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2952
    (write-format "(7X, D3.1)" -1000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2953
    (write-format "(7X, D3.1)" 10000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2954
    (write-format "(7X, D3.1)" -10000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2955
    (write-format "(7X, D3.1)" 100000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2956
    (write-format "(7X, D3.1)" -100000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2957
    (write-format "(7X, D3.1)" 123456789)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2958
    (write-format "(7X, D3.1)" 0.1d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2959
    (write-format "(7X, D3.1)" -0.1d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2960
    (write-format "(7X, D3.1)" 0.01d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2961
    (write-format "(7X, D3.1)" -0.01d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2962
    (write-format "(7X, D3.1)" 0.001d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2963
    (write-format "(7X, D3.1)" -0.001d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2964
    (write-format "(7X, D3.1)" 1.0d-4)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2965
    (write-format "(7X, D3.1)" -1.0d-4)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2966
    (write-format "(7X, D3.1)" -1.96d-16)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2967
    (write-format "(7X, D3.1)" 3.14159d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2968
    (write-format "(7X, D4.1)" 3)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2969
    (write-format "(7X, D4.1)" -3)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2970
    (write-format "(7X, D4.1)" 10)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2971
    (write-format "(7X, D4.1)" -10)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2972
    (write-format "(7X, D4.1)" 100)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2973
    (write-format "(7X, D4.1)" -100)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2974
    (write-format "(7X, D4.1)" 1000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2975
    (write-format "(7X, D4.1)" -1000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2976
    (write-format "(7X, D4.1)" 10000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2977
    (write-format "(7X, D4.1)" -10000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2978
    (write-format "(7X, D4.1)" 100000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2979
    (write-format "(7X, D4.1)" -100000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2980
    (write-format "(7X, D4.1)" 123456789)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2981
    (write-format "(7X, D4.1)" 0.1d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2982
    (write-format "(7X, D4.1)" -0.1d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2983
    (write-format "(7X, D4.1)" 0.01d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2984
    (write-format "(7X, D4.1)" -0.01d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2985
    (write-format "(7X, D4.1)" 0.001d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2986
    (write-format "(7X, D4.1)" -0.001d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2987
    (write-format "(7X, D4.1)" 1.0d-4)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2988
    (write-format "(7X, D4.1)" -1.0d-4)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2989
    (write-format "(7X, D4.1)" -1.96d-16)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2990
    (write-format "(7X, D4.1)" 3.14159d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2991
    (write-format "(7X, D5.1)" 3)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2992
    (write-format "(7X, D5.1)" -3)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2993
    (write-format "(7X, D5.1)" 10)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2994
    (write-format "(7X, D5.1)" -10)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2995
    (write-format "(7X, D5.1)" 100)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2996
    (write-format "(7X, D5.1)" -100)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2997
    (write-format "(7X, D5.1)" 1000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2998
    (write-format "(7X, D5.1)" -1000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.2999
    (write-format "(7X, D5.1)" 10000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3000
    (write-format "(7X, D5.1)" -10000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3001
    (write-format "(7X, D5.1)" 100000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3002
    (write-format "(7X, D5.1)" -100000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3003
    (write-format "(7X, D5.1)" 123456789)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3004
    (write-format "(7X, D5.1)" 0.1d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3005
    (write-format "(7X, D5.1)" -0.1d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3006
    (write-format "(7X, D5.1)" 0.01d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3007
    (write-format "(7X, D5.1)" -0.01d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3008
    (write-format "(7X, D5.1)" 0.001d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3009
    (write-format "(7X, D5.1)" -0.001d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3010
    (write-format "(7X, D5.1)" 1.0d-4)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3011
    (write-format "(7X, D5.1)" -1.0d-4)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3012
    (write-format "(7X, D5.1)" -1.96d-16)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3013
    (write-format "(7X, D5.1)" 3.14159d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3014
    (write-format "(7X, D10.1)" 3)
  "          0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3015
    (write-format "(7X, D10.1)" -3)
  "         -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3016
    (write-format "(7X, D10.1)" 10)
  "          0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3017
    (write-format "(7X, D10.1)" -10)
  "         -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3018
    (write-format "(7X, D10.1)" 100)
  "          0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3019
    (write-format "(7X, D10.1)" -100)
  "         -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3020
    (write-format "(7X, D10.1)" 1000)
  "          0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3021
    (write-format "(7X, D10.1)" -1000)
  "         -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3022
    (write-format "(7X, D10.1)" 10000)
  "          0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3023
    (write-format "(7X, D10.1)" -10000)
  "         -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3024
    (write-format "(7X, D10.1)" 100000)
  "          0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3025
    (write-format "(7X, D10.1)" -100000)
  "         -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3026
    (write-format "(7X, D10.1)" 123456789)
  "          0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3027
    (write-format "(7X, D10.1)" 0.1d0)
  "          0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3028
    (write-format "(7X, D10.1)" -0.1d0)
  "         -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3029
    (write-format "(7X, D10.1)" 0.01d0)
  "          0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3030
    (write-format "(7X, D10.1)" -0.01d0)
  "         -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3031
    (write-format "(7X, D10.1)" 0.001d0)
  "          0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3032
    (write-format "(7X, D10.1)" -0.001d0)
  "         -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3033
    (write-format "(7X, D10.1)" 1.0d-4)
  "          0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3034
    (write-format "(7X, D10.1)" -1.0d-4)
  "         -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3035
    (write-format "(7X, D10.1)" -1.96d-16)
  "         -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3036
    (write-format "(7X, D10.1)" 3.14159d0)
  "          0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3037
    (write-format "(7X, D2.2)" 3)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3038
    (write-format "(7X, D2.2)" -3)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3039
    (write-format "(7X, D2.2)" 10)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3040
    (write-format "(7X, D2.2)" -10)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3041
    (write-format "(7X, D2.2)" 100)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3042
    (write-format "(7X, D2.2)" -100)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3043
    (write-format "(7X, D2.2)" 1000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3044
    (write-format "(7X, D2.2)" -1000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3045
    (write-format "(7X, D2.2)" 10000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3046
    (write-format "(7X, D2.2)" -10000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3047
    (write-format "(7X, D2.2)" 100000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3048
    (write-format "(7X, D2.2)" -100000)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3049
    (write-format "(7X, D2.2)" 123456789)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3050
    (write-format "(7X, D2.2)" 0.1d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3051
    (write-format "(7X, D2.2)" -0.1d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3052
    (write-format "(7X, D2.2)" 0.01d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3053
    (write-format "(7X, D2.2)" -0.01d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3054
    (write-format "(7X, D2.2)" 0.001d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3055
    (write-format "(7X, D2.2)" -0.001d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3056
    (write-format "(7X, D2.2)" 1.0d-4)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3057
    (write-format "(7X, D2.2)" -1.0d-4)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3058
    (write-format "(7X, D2.2)" -1.96d-16)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3059
    (write-format "(7X, D2.2)" 3.14159d0)
  "       **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3060
    (write-format "(7X, D3.2)" 3)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3061
    (write-format "(7X, D3.2)" -3)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3062
    (write-format "(7X, D3.2)" 10)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3063
    (write-format "(7X, D3.2)" -10)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3064
    (write-format "(7X, D3.2)" 100)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3065
    (write-format "(7X, D3.2)" -100)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3066
    (write-format "(7X, D3.2)" 1000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3067
    (write-format "(7X, D3.2)" -1000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3068
    (write-format "(7X, D3.2)" 10000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3069
    (write-format "(7X, D3.2)" -10000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3070
    (write-format "(7X, D3.2)" 100000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3071
    (write-format "(7X, D3.2)" -100000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3072
    (write-format "(7X, D3.2)" 123456789)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3073
    (write-format "(7X, D3.2)" 0.1d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3074
    (write-format "(7X, D3.2)" -0.1d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3075
    (write-format "(7X, D3.2)" 0.01d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3076
    (write-format "(7X, D3.2)" -0.01d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3077
    (write-format "(7X, D3.2)" 0.001d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3078
    (write-format "(7X, D3.2)" -0.001d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3079
    (write-format "(7X, D3.2)" 1.0d-4)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3080
    (write-format "(7X, D3.2)" -1.0d-4)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3081
    (write-format "(7X, D3.2)" -1.96d-16)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3082
    (write-format "(7X, D3.2)" 3.14159d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3083
    (write-format "(7X, D4.2)" 3)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3084
    (write-format "(7X, D4.2)" -3)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3085
    (write-format "(7X, D4.2)" 10)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3086
    (write-format "(7X, D4.2)" -10)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3087
    (write-format "(7X, D4.2)" 100)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3088
    (write-format "(7X, D4.2)" -100)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3089
    (write-format "(7X, D4.2)" 1000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3090
    (write-format "(7X, D4.2)" -1000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3091
    (write-format "(7X, D4.2)" 10000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3092
    (write-format "(7X, D4.2)" -10000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3093
    (write-format "(7X, D4.2)" 100000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3094
    (write-format "(7X, D4.2)" -100000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3095
    (write-format "(7X, D4.2)" 123456789)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3096
    (write-format "(7X, D4.2)" 0.1d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3097
    (write-format "(7X, D4.2)" -0.1d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3098
    (write-format "(7X, D4.2)" 0.01d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3099
    (write-format "(7X, D4.2)" -0.01d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3100
    (write-format "(7X, D4.2)" 0.001d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3101
    (write-format "(7X, D4.2)" -0.001d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3102
    (write-format "(7X, D4.2)" 1.0d-4)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3103
    (write-format "(7X, D4.2)" -1.0d-4)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3104
    (write-format "(7X, D4.2)" -1.96d-16)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3105
    (write-format "(7X, D4.2)" 3.14159d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3106
    (write-format "(7X, D5.2)" 3)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3107
    (write-format "(7X, D5.2)" -3)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3108
    (write-format "(7X, D5.2)" 10)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3109
    (write-format "(7X, D5.2)" -10)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3110
    (write-format "(7X, D5.2)" 100)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3111
    (write-format "(7X, D5.2)" -100)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3112
    (write-format "(7X, D5.2)" 1000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3113
    (write-format "(7X, D5.2)" -1000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3114
    (write-format "(7X, D5.2)" 10000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3115
    (write-format "(7X, D5.2)" -10000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3116
    (write-format "(7X, D5.2)" 100000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3117
    (write-format "(7X, D5.2)" -100000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3118
    (write-format "(7X, D5.2)" 123456789)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3119
    (write-format "(7X, D5.2)" 0.1d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3120
    (write-format "(7X, D5.2)" -0.1d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3121
    (write-format "(7X, D5.2)" 0.01d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3122
    (write-format "(7X, D5.2)" -0.01d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3123
    (write-format "(7X, D5.2)" 0.001d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3124
    (write-format "(7X, D5.2)" -0.001d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3125
    (write-format "(7X, D5.2)" 1.0d-4)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3126
    (write-format "(7X, D5.2)" -1.0d-4)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3127
    (write-format "(7X, D5.2)" -1.96d-16)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3128
    (write-format "(7X, D5.2)" 3.14159d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3129
    (write-format "(7X, D10.2)" 3)
  "         0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3130
    (write-format "(7X, D10.2)" -3)
  "        -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3131
    (write-format "(7X, D10.2)" 10)
  "         0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3132
    (write-format "(7X, D10.2)" -10)
  "        -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3133
    (write-format "(7X, D10.2)" 100)
  "         0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3134
    (write-format "(7X, D10.2)" -100)
  "        -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3135
    (write-format "(7X, D10.2)" 1000)
  "         0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3136
    (write-format "(7X, D10.2)" -1000)
  "        -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3137
    (write-format "(7X, D10.2)" 10000)
  "         0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3138
    (write-format "(7X, D10.2)" -10000)
  "        -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3139
    (write-format "(7X, D10.2)" 100000)
  "         0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3140
    (write-format "(7X, D10.2)" -100000)
  "        -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3141
    (write-format "(7X, D10.2)" 123456789)
  "         0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3142
    (write-format "(7X, D10.2)" 0.1d0)
  "         0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3143
    (write-format "(7X, D10.2)" -0.1d0)
  "        -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3144
    (write-format "(7X, D10.2)" 0.01d0)
  "         0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3145
    (write-format "(7X, D10.2)" -0.01d0)
  "        -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3146
    (write-format "(7X, D10.2)" 0.001d0)
  "         0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3147
    (write-format "(7X, D10.2)" -0.001d0)
  "        -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3148
    (write-format "(7X, D10.2)" 1.0d-4)
  "         0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3149
    (write-format "(7X, D10.2)" -1.0d-4)
  "        -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3150
    (write-format "(7X, D10.2)" -1.96d-16)
  "        -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3151
    (write-format "(7X, D10.2)" 3.14159d0)
  "         0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3152
    (write-format "(7X, D3.3)" 3)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3153
    (write-format "(7X, D3.3)" -3)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3154
    (write-format "(7X, D3.3)" 10)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3155
    (write-format "(7X, D3.3)" -10)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3156
    (write-format "(7X, D3.3)" 100)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3157
    (write-format "(7X, D3.3)" -100)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3158
    (write-format "(7X, D3.3)" 1000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3159
    (write-format "(7X, D3.3)" -1000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3160
    (write-format "(7X, D3.3)" 10000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3161
    (write-format "(7X, D3.3)" -10000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3162
    (write-format "(7X, D3.3)" 100000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3163
    (write-format "(7X, D3.3)" -100000)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3164
    (write-format "(7X, D3.3)" 123456789)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3165
    (write-format "(7X, D3.3)" 0.1d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3166
    (write-format "(7X, D3.3)" -0.1d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3167
    (write-format "(7X, D3.3)" 0.01d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3168
    (write-format "(7X, D3.3)" -0.01d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3169
    (write-format "(7X, D3.3)" 0.001d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3170
    (write-format "(7X, D3.3)" -0.001d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3171
    (write-format "(7X, D3.3)" 1.0d-4)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3172
    (write-format "(7X, D3.3)" -1.0d-4)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3173
    (write-format "(7X, D3.3)" -1.96d-16)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3174
    (write-format "(7X, D3.3)" 3.14159d0)
  "       ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3175
    (write-format "(7X, D4.3)" 3)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3176
    (write-format "(7X, D4.3)" -3)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3177
    (write-format "(7X, D4.3)" 10)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3178
    (write-format "(7X, D4.3)" -10)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3179
    (write-format "(7X, D4.3)" 100)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3180
    (write-format "(7X, D4.3)" -100)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3181
    (write-format "(7X, D4.3)" 1000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3182
    (write-format "(7X, D4.3)" -1000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3183
    (write-format "(7X, D4.3)" 10000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3184
    (write-format "(7X, D4.3)" -10000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3185
    (write-format "(7X, D4.3)" 100000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3186
    (write-format "(7X, D4.3)" -100000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3187
    (write-format "(7X, D4.3)" 123456789)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3188
    (write-format "(7X, D4.3)" 0.1d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3189
    (write-format "(7X, D4.3)" -0.1d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3190
    (write-format "(7X, D4.3)" 0.01d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3191
    (write-format "(7X, D4.3)" -0.01d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3192
    (write-format "(7X, D4.3)" 0.001d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3193
    (write-format "(7X, D4.3)" -0.001d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3194
    (write-format "(7X, D4.3)" 1.0d-4)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3195
    (write-format "(7X, D4.3)" -1.0d-4)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3196
    (write-format "(7X, D4.3)" -1.96d-16)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3197
    (write-format "(7X, D4.3)" 3.14159d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3198
    (write-format "(7X, D5.3)" 3)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3199
    (write-format "(7X, D5.3)" -3)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3200
    (write-format "(7X, D5.3)" 10)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3201
    (write-format "(7X, D5.3)" -10)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3202
    (write-format "(7X, D5.3)" 100)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3203
    (write-format "(7X, D5.3)" -100)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3204
    (write-format "(7X, D5.3)" 1000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3205
    (write-format "(7X, D5.3)" -1000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3206
    (write-format "(7X, D5.3)" 10000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3207
    (write-format "(7X, D5.3)" -10000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3208
    (write-format "(7X, D5.3)" 100000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3209
    (write-format "(7X, D5.3)" -100000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3210
    (write-format "(7X, D5.3)" 123456789)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3211
    (write-format "(7X, D5.3)" 0.1d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3212
    (write-format "(7X, D5.3)" -0.1d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3213
    (write-format "(7X, D5.3)" 0.01d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3214
    (write-format "(7X, D5.3)" -0.01d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3215
    (write-format "(7X, D5.3)" 0.001d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3216
    (write-format "(7X, D5.3)" -0.001d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3217
    (write-format "(7X, D5.3)" 1.0d-4)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3218
    (write-format "(7X, D5.3)" -1.0d-4)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3219
    (write-format "(7X, D5.3)" -1.96d-16)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3220
    (write-format "(7X, D5.3)" 3.14159d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3221
    (write-format "(7X, D10.3)" 3)
  "        0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3222
    (write-format "(7X, D10.3)" -3)
  "       -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3223
    (write-format "(7X, D10.3)" 10)
  "        0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3224
    (write-format "(7X, D10.3)" -10)
  "       -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3225
    (write-format "(7X, D10.3)" 100)
  "        0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3226
    (write-format "(7X, D10.3)" -100)
  "       -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3227
    (write-format "(7X, D10.3)" 1000)
  "        0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3228
    (write-format "(7X, D10.3)" -1000)
  "       -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3229
    (write-format "(7X, D10.3)" 10000)
  "        0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3230
    (write-format "(7X, D10.3)" -10000)
  "       -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3231
    (write-format "(7X, D10.3)" 100000)
  "        0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3232
    (write-format "(7X, D10.3)" -100000)
  "       -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3233
    (write-format "(7X, D10.3)" 123456789)
  "        0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3234
    (write-format "(7X, D10.3)" 0.1d0)
  "        0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3235
    (write-format "(7X, D10.3)" -0.1d0)
  "       -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3236
    (write-format "(7X, D10.3)" 0.01d0)
  "        0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3237
    (write-format "(7X, D10.3)" -0.01d0)
  "       -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3238
    (write-format "(7X, D10.3)" 0.001d0)
  "        0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3239
    (write-format "(7X, D10.3)" -0.001d0)
  "       -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3240
    (write-format "(7X, D10.3)" 1.0d-4)
  "        0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3241
    (write-format "(7X, D10.3)" -1.0d-4)
  "       -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3242
    (write-format "(7X, D10.3)" -1.96d-16)
  "       -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3243
    (write-format "(7X, D10.3)" 3.14159d0)
  "        0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3244
    (write-format "(7X, D4.4)" 3)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3245
    (write-format "(7X, D4.4)" -3)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3246
    (write-format "(7X, D4.4)" 10)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3247
    (write-format "(7X, D4.4)" -10)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3248
    (write-format "(7X, D4.4)" 100)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3249
    (write-format "(7X, D4.4)" -100)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3250
    (write-format "(7X, D4.4)" 1000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3251
    (write-format "(7X, D4.4)" -1000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3252
    (write-format "(7X, D4.4)" 10000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3253
    (write-format "(7X, D4.4)" -10000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3254
    (write-format "(7X, D4.4)" 100000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3255
    (write-format "(7X, D4.4)" -100000)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3256
    (write-format "(7X, D4.4)" 123456789)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3257
    (write-format "(7X, D4.4)" 0.1d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3258
    (write-format "(7X, D4.4)" -0.1d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3259
    (write-format "(7X, D4.4)" 0.01d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3260
    (write-format "(7X, D4.4)" -0.01d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3261
    (write-format "(7X, D4.4)" 0.001d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3262
    (write-format "(7X, D4.4)" -0.001d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3263
    (write-format "(7X, D4.4)" 1.0d-4)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3264
    (write-format "(7X, D4.4)" -1.0d-4)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3265
    (write-format "(7X, D4.4)" -1.96d-16)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3266
    (write-format "(7X, D4.4)" 3.14159d0)
  "       ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3267
    (write-format "(7X, D5.4)" 3)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3268
    (write-format "(7X, D5.4)" -3)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3269
    (write-format "(7X, D5.4)" 10)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3270
    (write-format "(7X, D5.4)" -10)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3271
    (write-format "(7X, D5.4)" 100)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3272
    (write-format "(7X, D5.4)" -100)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3273
    (write-format "(7X, D5.4)" 1000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3274
    (write-format "(7X, D5.4)" -1000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3275
    (write-format "(7X, D5.4)" 10000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3276
    (write-format "(7X, D5.4)" -10000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3277
    (write-format "(7X, D5.4)" 100000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3278
    (write-format "(7X, D5.4)" -100000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3279
    (write-format "(7X, D5.4)" 123456789)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3280
    (write-format "(7X, D5.4)" 0.1d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3281
    (write-format "(7X, D5.4)" -0.1d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3282
    (write-format "(7X, D5.4)" 0.01d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3283
    (write-format "(7X, D5.4)" -0.01d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3284
    (write-format "(7X, D5.4)" 0.001d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3285
    (write-format "(7X, D5.4)" -0.001d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3286
    (write-format "(7X, D5.4)" 1.0d-4)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3287
    (write-format "(7X, D5.4)" -1.0d-4)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3288
    (write-format "(7X, D5.4)" -1.96d-16)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3289
    (write-format "(7X, D5.4)" 3.14159d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3290
    (write-format "(7X, D10.4)" 3)
  "       0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3291
    (write-format "(7X, D10.4)" -3)
  "       -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3292
    (write-format "(7X, D10.4)" 10)
  "       0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3293
    (write-format "(7X, D10.4)" -10)
  "       -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3294
    (write-format "(7X, D10.4)" 100)
  "       0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3295
    (write-format "(7X, D10.4)" -100)
  "       -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3296
    (write-format "(7X, D10.4)" 1000)
  "       0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3297
    (write-format "(7X, D10.4)" -1000)
  "       -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3298
    (write-format "(7X, D10.4)" 10000)
  "       0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3299
    (write-format "(7X, D10.4)" -10000)
  "       -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3300
    (write-format "(7X, D10.4)" 100000)
  "       0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3301
    (write-format "(7X, D10.4)" -100000)
  "       -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3302
    (write-format "(7X, D10.4)" 123456789)
  "       0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3303
    (write-format "(7X, D10.4)" 0.1d0)
  "       0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3304
    (write-format "(7X, D10.4)" -0.1d0)
  "       -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3305
    (write-format "(7X, D10.4)" 0.01d0)
  "       0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3306
    (write-format "(7X, D10.4)" -0.01d0)
  "       -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3307
    (write-format "(7X, D10.4)" 0.001d0)
  "       0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3308
    (write-format "(7X, D10.4)" -0.001d0)
  "       -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3309
    (write-format "(7X, D10.4)" 1.0d-4)
  "       0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3310
    (write-format "(7X, D10.4)" -1.0d-4)
  "       -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3311
    (write-format "(7X, D10.4)" -1.96d-16)
  "       -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3312
    (write-format "(7X, D10.4)" 3.14159d0)
  "       0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3313
    (write-format "(7X, D5.5)" 3)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3314
    (write-format "(7X, D5.5)" -3)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3315
    (write-format "(7X, D5.5)" 10)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3316
    (write-format "(7X, D5.5)" -10)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3317
    (write-format "(7X, D5.5)" 100)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3318
    (write-format "(7X, D5.5)" -100)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3319
    (write-format "(7X, D5.5)" 1000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3320
    (write-format "(7X, D5.5)" -1000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3321
    (write-format "(7X, D5.5)" 10000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3322
    (write-format "(7X, D5.5)" -10000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3323
    (write-format "(7X, D5.5)" 100000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3324
    (write-format "(7X, D5.5)" -100000)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3325
    (write-format "(7X, D5.5)" 123456789)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3326
    (write-format "(7X, D5.5)" 0.1d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3327
    (write-format "(7X, D5.5)" -0.1d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3328
    (write-format "(7X, D5.5)" 0.01d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3329
    (write-format "(7X, D5.5)" -0.01d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3330
    (write-format "(7X, D5.5)" 0.001d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3331
    (write-format "(7X, D5.5)" -0.001d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3332
    (write-format "(7X, D5.5)" 1.0d-4)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3333
    (write-format "(7X, D5.5)" -1.0d-4)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3334
    (write-format "(7X, D5.5)" -1.96d-16)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3335
    (write-format "(7X, D5.5)" 3.14159d0)
  "       *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3336
    (write-format "(7X, D10.5)" 3)
  "       .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3337
    (write-format "(7X, D10.5)" -3)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3338
    (write-format "(7X, D10.5)" 10)
  "       .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3339
    (write-format "(7X, D10.5)" -10)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3340
    (write-format "(7X, D10.5)" 100)
  "       .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3341
    (write-format "(7X, D10.5)" -100)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3342
    (write-format "(7X, D10.5)" 1000)
  "       .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3343
    (write-format "(7X, D10.5)" -1000)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3344
    (write-format "(7X, D10.5)" 10000)
  "       .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3345
    (write-format "(7X, D10.5)" -10000)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3346
    (write-format "(7X, D10.5)" 100000)
  "       .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3347
    (write-format "(7X, D10.5)" -100000)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3348
    (write-format "(7X, D10.5)" 123456789)
  "       .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3349
    (write-format "(7X, D10.5)" 0.1d0)
  "       .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3350
    (write-format "(7X, D10.5)" -0.1d0)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3351
    (write-format "(7X, D10.5)" 0.01d0)
  "       .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3352
    (write-format "(7X, D10.5)" -0.01d0)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3353
    (write-format "(7X, D10.5)" 0.001d0)
  "       .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3354
    (write-format "(7X, D10.5)" -0.001d0)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3355
    (write-format "(7X, D10.5)" 1.0d-4)
  "       .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3356
    (write-format "(7X, D10.5)" -1.0d-4)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3357
    (write-format "(7X, D10.5)" -1.96d-16)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3358
    (write-format "(7X, D10.5)" 3.14159d0)
  "       .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3359
    (write-format "(7X, D10.10)" 3)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3360
    (write-format "(7X, D10.10)" -3)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3361
    (write-format "(7X, D10.10)" 10)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3362
    (write-format "(7X, D10.10)" -10)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3363
    (write-format "(7X, D10.10)" 100)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3364
    (write-format "(7X, D10.10)" -100)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3365
    (write-format "(7X, D10.10)" 1000)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3366
    (write-format "(7X, D10.10)" -1000)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3367
    (write-format "(7X, D10.10)" 10000)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3368
    (write-format "(7X, D10.10)" -10000)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3369
    (write-format "(7X, D10.10)" 100000)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3370
    (write-format "(7X, D10.10)" -100000)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3371
    (write-format "(7X, D10.10)" 123456789)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3372
    (write-format "(7X, D10.10)" 0.1d0)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3373
    (write-format "(7X, D10.10)" -0.1d0)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3374
    (write-format "(7X, D10.10)" 0.01d0)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3375
    (write-format "(7X, D10.10)" -0.01d0)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3376
    (write-format "(7X, D10.10)" 0.001d0)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3377
    (write-format "(7X, D10.10)" -0.001d0)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3378
    (write-format "(7X, D10.10)" 1.0d-4)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3379
    (write-format "(7X, D10.10)" -1.0d-4)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3380
    (write-format "(7X, D10.10)" -1.96d-16)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3381
    (write-format "(7X, D10.10)" 3.14159d0)
  "       **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3382
    (write-format "(8X, D1.1)" 3)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3383
    (write-format "(8X, D1.1)" -3)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3384
    (write-format "(8X, D1.1)" 10)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3385
    (write-format "(8X, D1.1)" -10)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3386
    (write-format "(8X, D1.1)" 100)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3387
    (write-format "(8X, D1.1)" -100)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3388
    (write-format "(8X, D1.1)" 1000)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3389
    (write-format "(8X, D1.1)" -1000)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3390
    (write-format "(8X, D1.1)" 10000)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3391
    (write-format "(8X, D1.1)" -10000)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3392
    (write-format "(8X, D1.1)" 100000)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3393
    (write-format "(8X, D1.1)" -100000)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3394
    (write-format "(8X, D1.1)" 123456789)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3395
    (write-format "(8X, D1.1)" 0.1d0)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3396
    (write-format "(8X, D1.1)" -0.1d0)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3397
    (write-format "(8X, D1.1)" 0.01d0)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3398
    (write-format "(8X, D1.1)" -0.01d0)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3399
    (write-format "(8X, D1.1)" 0.001d0)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3400
    (write-format "(8X, D1.1)" -0.001d0)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3401
    (write-format "(8X, D1.1)" 1.0d-4)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3402
    (write-format "(8X, D1.1)" -1.0d-4)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3403
    (write-format "(8X, D1.1)" -1.96d-16)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3404
    (write-format "(8X, D1.1)" 3.14159d0)
  "        *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3405
    (write-format "(8X, D2.1)" 3)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3406
    (write-format "(8X, D2.1)" -3)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3407
    (write-format "(8X, D2.1)" 10)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3408
    (write-format "(8X, D2.1)" -10)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3409
    (write-format "(8X, D2.1)" 100)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3410
    (write-format "(8X, D2.1)" -100)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3411
    (write-format "(8X, D2.1)" 1000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3412
    (write-format "(8X, D2.1)" -1000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3413
    (write-format "(8X, D2.1)" 10000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3414
    (write-format "(8X, D2.1)" -10000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3415
    (write-format "(8X, D2.1)" 100000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3416
    (write-format "(8X, D2.1)" -100000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3417
    (write-format "(8X, D2.1)" 123456789)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3418
    (write-format "(8X, D2.1)" 0.1d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3419
    (write-format "(8X, D2.1)" -0.1d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3420
    (write-format "(8X, D2.1)" 0.01d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3421
    (write-format "(8X, D2.1)" -0.01d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3422
    (write-format "(8X, D2.1)" 0.001d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3423
    (write-format "(8X, D2.1)" -0.001d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3424
    (write-format "(8X, D2.1)" 1.0d-4)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3425
    (write-format "(8X, D2.1)" -1.0d-4)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3426
    (write-format "(8X, D2.1)" -1.96d-16)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3427
    (write-format "(8X, D2.1)" 3.14159d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3428
    (write-format "(8X, D3.1)" 3)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3429
    (write-format "(8X, D3.1)" -3)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3430
    (write-format "(8X, D3.1)" 10)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3431
    (write-format "(8X, D3.1)" -10)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3432
    (write-format "(8X, D3.1)" 100)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3433
    (write-format "(8X, D3.1)" -100)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3434
    (write-format "(8X, D3.1)" 1000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3435
    (write-format "(8X, D3.1)" -1000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3436
    (write-format "(8X, D3.1)" 10000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3437
    (write-format "(8X, D3.1)" -10000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3438
    (write-format "(8X, D3.1)" 100000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3439
    (write-format "(8X, D3.1)" -100000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3440
    (write-format "(8X, D3.1)" 123456789)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3441
    (write-format "(8X, D3.1)" 0.1d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3442
    (write-format "(8X, D3.1)" -0.1d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3443
    (write-format "(8X, D3.1)" 0.01d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3444
    (write-format "(8X, D3.1)" -0.01d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3445
    (write-format "(8X, D3.1)" 0.001d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3446
    (write-format "(8X, D3.1)" -0.001d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3447
    (write-format "(8X, D3.1)" 1.0d-4)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3448
    (write-format "(8X, D3.1)" -1.0d-4)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3449
    (write-format "(8X, D3.1)" -1.96d-16)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3450
    (write-format "(8X, D3.1)" 3.14159d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3451
    (write-format "(8X, D4.1)" 3)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3452
    (write-format "(8X, D4.1)" -3)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3453
    (write-format "(8X, D4.1)" 10)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3454
    (write-format "(8X, D4.1)" -10)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3455
    (write-format "(8X, D4.1)" 100)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3456
    (write-format "(8X, D4.1)" -100)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3457
    (write-format "(8X, D4.1)" 1000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3458
    (write-format "(8X, D4.1)" -1000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3459
    (write-format "(8X, D4.1)" 10000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3460
    (write-format "(8X, D4.1)" -10000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3461
    (write-format "(8X, D4.1)" 100000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3462
    (write-format "(8X, D4.1)" -100000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3463
    (write-format "(8X, D4.1)" 123456789)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3464
    (write-format "(8X, D4.1)" 0.1d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3465
    (write-format "(8X, D4.1)" -0.1d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3466
    (write-format "(8X, D4.1)" 0.01d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3467
    (write-format "(8X, D4.1)" -0.01d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3468
    (write-format "(8X, D4.1)" 0.001d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3469
    (write-format "(8X, D4.1)" -0.001d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3470
    (write-format "(8X, D4.1)" 1.0d-4)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3471
    (write-format "(8X, D4.1)" -1.0d-4)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3472
    (write-format "(8X, D4.1)" -1.96d-16)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3473
    (write-format "(8X, D4.1)" 3.14159d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3474
    (write-format "(8X, D5.1)" 3)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3475
    (write-format "(8X, D5.1)" -3)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3476
    (write-format "(8X, D5.1)" 10)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3477
    (write-format "(8X, D5.1)" -10)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3478
    (write-format "(8X, D5.1)" 100)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3479
    (write-format "(8X, D5.1)" -100)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3480
    (write-format "(8X, D5.1)" 1000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3481
    (write-format "(8X, D5.1)" -1000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3482
    (write-format "(8X, D5.1)" 10000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3483
    (write-format "(8X, D5.1)" -10000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3484
    (write-format "(8X, D5.1)" 100000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3485
    (write-format "(8X, D5.1)" -100000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3486
    (write-format "(8X, D5.1)" 123456789)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3487
    (write-format "(8X, D5.1)" 0.1d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3488
    (write-format "(8X, D5.1)" -0.1d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3489
    (write-format "(8X, D5.1)" 0.01d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3490
    (write-format "(8X, D5.1)" -0.01d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3491
    (write-format "(8X, D5.1)" 0.001d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3492
    (write-format "(8X, D5.1)" -0.001d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3493
    (write-format "(8X, D5.1)" 1.0d-4)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3494
    (write-format "(8X, D5.1)" -1.0d-4)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3495
    (write-format "(8X, D5.1)" -1.96d-16)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3496
    (write-format "(8X, D5.1)" 3.14159d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3497
    (write-format "(8X, D10.1)" 3)
  "           0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3498
    (write-format "(8X, D10.1)" -3)
  "          -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3499
    (write-format "(8X, D10.1)" 10)
  "           0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3500
    (write-format "(8X, D10.1)" -10)
  "          -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3501
    (write-format "(8X, D10.1)" 100)
  "           0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3502
    (write-format "(8X, D10.1)" -100)
  "          -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3503
    (write-format "(8X, D10.1)" 1000)
  "           0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3504
    (write-format "(8X, D10.1)" -1000)
  "          -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3505
    (write-format "(8X, D10.1)" 10000)
  "           0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3506
    (write-format "(8X, D10.1)" -10000)
  "          -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3507
    (write-format "(8X, D10.1)" 100000)
  "           0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3508
    (write-format "(8X, D10.1)" -100000)
  "          -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3509
    (write-format "(8X, D10.1)" 123456789)
  "           0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3510
    (write-format "(8X, D10.1)" 0.1d0)
  "           0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3511
    (write-format "(8X, D10.1)" -0.1d0)
  "          -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3512
    (write-format "(8X, D10.1)" 0.01d0)
  "           0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3513
    (write-format "(8X, D10.1)" -0.01d0)
  "          -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3514
    (write-format "(8X, D10.1)" 0.001d0)
  "           0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3515
    (write-format "(8X, D10.1)" -0.001d0)
  "          -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3516
    (write-format "(8X, D10.1)" 1.0d-4)
  "           0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3517
    (write-format "(8X, D10.1)" -1.0d-4)
  "          -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3518
    (write-format "(8X, D10.1)" -1.96d-16)
  "          -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3519
    (write-format "(8X, D10.1)" 3.14159d0)
  "           0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3520
    (write-format "(8X, D2.2)" 3)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3521
    (write-format "(8X, D2.2)" -3)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3522
    (write-format "(8X, D2.2)" 10)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3523
    (write-format "(8X, D2.2)" -10)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3524
    (write-format "(8X, D2.2)" 100)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3525
    (write-format "(8X, D2.2)" -100)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3526
    (write-format "(8X, D2.2)" 1000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3527
    (write-format "(8X, D2.2)" -1000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3528
    (write-format "(8X, D2.2)" 10000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3529
    (write-format "(8X, D2.2)" -10000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3530
    (write-format "(8X, D2.2)" 100000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3531
    (write-format "(8X, D2.2)" -100000)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3532
    (write-format "(8X, D2.2)" 123456789)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3533
    (write-format "(8X, D2.2)" 0.1d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3534
    (write-format "(8X, D2.2)" -0.1d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3535
    (write-format "(8X, D2.2)" 0.01d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3536
    (write-format "(8X, D2.2)" -0.01d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3537
    (write-format "(8X, D2.2)" 0.001d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3538
    (write-format "(8X, D2.2)" -0.001d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3539
    (write-format "(8X, D2.2)" 1.0d-4)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3540
    (write-format "(8X, D2.2)" -1.0d-4)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3541
    (write-format "(8X, D2.2)" -1.96d-16)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3542
    (write-format "(8X, D2.2)" 3.14159d0)
  "        **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3543
    (write-format "(8X, D3.2)" 3)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3544
    (write-format "(8X, D3.2)" -3)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3545
    (write-format "(8X, D3.2)" 10)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3546
    (write-format "(8X, D3.2)" -10)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3547
    (write-format "(8X, D3.2)" 100)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3548
    (write-format "(8X, D3.2)" -100)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3549
    (write-format "(8X, D3.2)" 1000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3550
    (write-format "(8X, D3.2)" -1000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3551
    (write-format "(8X, D3.2)" 10000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3552
    (write-format "(8X, D3.2)" -10000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3553
    (write-format "(8X, D3.2)" 100000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3554
    (write-format "(8X, D3.2)" -100000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3555
    (write-format "(8X, D3.2)" 123456789)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3556
    (write-format "(8X, D3.2)" 0.1d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3557
    (write-format "(8X, D3.2)" -0.1d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3558
    (write-format "(8X, D3.2)" 0.01d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3559
    (write-format "(8X, D3.2)" -0.01d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3560
    (write-format "(8X, D3.2)" 0.001d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3561
    (write-format "(8X, D3.2)" -0.001d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3562
    (write-format "(8X, D3.2)" 1.0d-4)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3563
    (write-format "(8X, D3.2)" -1.0d-4)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3564
    (write-format "(8X, D3.2)" -1.96d-16)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3565
    (write-format "(8X, D3.2)" 3.14159d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3566
    (write-format "(8X, D4.2)" 3)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3567
    (write-format "(8X, D4.2)" -3)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3568
    (write-format "(8X, D4.2)" 10)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3569
    (write-format "(8X, D4.2)" -10)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3570
    (write-format "(8X, D4.2)" 100)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3571
    (write-format "(8X, D4.2)" -100)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3572
    (write-format "(8X, D4.2)" 1000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3573
    (write-format "(8X, D4.2)" -1000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3574
    (write-format "(8X, D4.2)" 10000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3575
    (write-format "(8X, D4.2)" -10000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3576
    (write-format "(8X, D4.2)" 100000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3577
    (write-format "(8X, D4.2)" -100000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3578
    (write-format "(8X, D4.2)" 123456789)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3579
    (write-format "(8X, D4.2)" 0.1d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3580
    (write-format "(8X, D4.2)" -0.1d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3581
    (write-format "(8X, D4.2)" 0.01d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3582
    (write-format "(8X, D4.2)" -0.01d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3583
    (write-format "(8X, D4.2)" 0.001d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3584
    (write-format "(8X, D4.2)" -0.001d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3585
    (write-format "(8X, D4.2)" 1.0d-4)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3586
    (write-format "(8X, D4.2)" -1.0d-4)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3587
    (write-format "(8X, D4.2)" -1.96d-16)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3588
    (write-format "(8X, D4.2)" 3.14159d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3589
    (write-format "(8X, D5.2)" 3)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3590
    (write-format "(8X, D5.2)" -3)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3591
    (write-format "(8X, D5.2)" 10)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3592
    (write-format "(8X, D5.2)" -10)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3593
    (write-format "(8X, D5.2)" 100)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3594
    (write-format "(8X, D5.2)" -100)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3595
    (write-format "(8X, D5.2)" 1000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3596
    (write-format "(8X, D5.2)" -1000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3597
    (write-format "(8X, D5.2)" 10000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3598
    (write-format "(8X, D5.2)" -10000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3599
    (write-format "(8X, D5.2)" 100000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3600
    (write-format "(8X, D5.2)" -100000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3601
    (write-format "(8X, D5.2)" 123456789)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3602
    (write-format "(8X, D5.2)" 0.1d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3603
    (write-format "(8X, D5.2)" -0.1d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3604
    (write-format "(8X, D5.2)" 0.01d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3605
    (write-format "(8X, D5.2)" -0.01d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3606
    (write-format "(8X, D5.2)" 0.001d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3607
    (write-format "(8X, D5.2)" -0.001d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3608
    (write-format "(8X, D5.2)" 1.0d-4)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3609
    (write-format "(8X, D5.2)" -1.0d-4)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3610
    (write-format "(8X, D5.2)" -1.96d-16)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3611
    (write-format "(8X, D5.2)" 3.14159d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3612
    (write-format "(8X, D10.2)" 3)
  "          0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3613
    (write-format "(8X, D10.2)" -3)
  "         -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3614
    (write-format "(8X, D10.2)" 10)
  "          0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3615
    (write-format "(8X, D10.2)" -10)
  "         -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3616
    (write-format "(8X, D10.2)" 100)
  "          0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3617
    (write-format "(8X, D10.2)" -100)
  "         -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3618
    (write-format "(8X, D10.2)" 1000)
  "          0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3619
    (write-format "(8X, D10.2)" -1000)
  "         -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3620
    (write-format "(8X, D10.2)" 10000)
  "          0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3621
    (write-format "(8X, D10.2)" -10000)
  "         -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3622
    (write-format "(8X, D10.2)" 100000)
  "          0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3623
    (write-format "(8X, D10.2)" -100000)
  "         -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3624
    (write-format "(8X, D10.2)" 123456789)
  "          0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3625
    (write-format "(8X, D10.2)" 0.1d0)
  "          0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3626
    (write-format "(8X, D10.2)" -0.1d0)
  "         -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3627
    (write-format "(8X, D10.2)" 0.01d0)
  "          0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3628
    (write-format "(8X, D10.2)" -0.01d0)
  "         -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3629
    (write-format "(8X, D10.2)" 0.001d0)
  "          0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3630
    (write-format "(8X, D10.2)" -0.001d0)
  "         -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3631
    (write-format "(8X, D10.2)" 1.0d-4)
  "          0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3632
    (write-format "(8X, D10.2)" -1.0d-4)
  "         -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3633
    (write-format "(8X, D10.2)" -1.96d-16)
  "         -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3634
    (write-format "(8X, D10.2)" 3.14159d0)
  "          0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3635
    (write-format "(8X, D3.3)" 3)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3636
    (write-format "(8X, D3.3)" -3)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3637
    (write-format "(8X, D3.3)" 10)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3638
    (write-format "(8X, D3.3)" -10)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3639
    (write-format "(8X, D3.3)" 100)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3640
    (write-format "(8X, D3.3)" -100)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3641
    (write-format "(8X, D3.3)" 1000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3642
    (write-format "(8X, D3.3)" -1000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3643
    (write-format "(8X, D3.3)" 10000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3644
    (write-format "(8X, D3.3)" -10000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3645
    (write-format "(8X, D3.3)" 100000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3646
    (write-format "(8X, D3.3)" -100000)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3647
    (write-format "(8X, D3.3)" 123456789)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3648
    (write-format "(8X, D3.3)" 0.1d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3649
    (write-format "(8X, D3.3)" -0.1d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3650
    (write-format "(8X, D3.3)" 0.01d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3651
    (write-format "(8X, D3.3)" -0.01d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3652
    (write-format "(8X, D3.3)" 0.001d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3653
    (write-format "(8X, D3.3)" -0.001d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3654
    (write-format "(8X, D3.3)" 1.0d-4)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3655
    (write-format "(8X, D3.3)" -1.0d-4)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3656
    (write-format "(8X, D3.3)" -1.96d-16)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3657
    (write-format "(8X, D3.3)" 3.14159d0)
  "        ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3658
    (write-format "(8X, D4.3)" 3)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3659
    (write-format "(8X, D4.3)" -3)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3660
    (write-format "(8X, D4.3)" 10)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3661
    (write-format "(8X, D4.3)" -10)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3662
    (write-format "(8X, D4.3)" 100)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3663
    (write-format "(8X, D4.3)" -100)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3664
    (write-format "(8X, D4.3)" 1000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3665
    (write-format "(8X, D4.3)" -1000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3666
    (write-format "(8X, D4.3)" 10000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3667
    (write-format "(8X, D4.3)" -10000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3668
    (write-format "(8X, D4.3)" 100000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3669
    (write-format "(8X, D4.3)" -100000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3670
    (write-format "(8X, D4.3)" 123456789)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3671
    (write-format "(8X, D4.3)" 0.1d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3672
    (write-format "(8X, D4.3)" -0.1d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3673
    (write-format "(8X, D4.3)" 0.01d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3674
    (write-format "(8X, D4.3)" -0.01d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3675
    (write-format "(8X, D4.3)" 0.001d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3676
    (write-format "(8X, D4.3)" -0.001d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3677
    (write-format "(8X, D4.3)" 1.0d-4)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3678
    (write-format "(8X, D4.3)" -1.0d-4)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3679
    (write-format "(8X, D4.3)" -1.96d-16)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3680
    (write-format "(8X, D4.3)" 3.14159d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3681
    (write-format "(8X, D5.3)" 3)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3682
    (write-format "(8X, D5.3)" -3)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3683
    (write-format "(8X, D5.3)" 10)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3684
    (write-format "(8X, D5.3)" -10)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3685
    (write-format "(8X, D5.3)" 100)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3686
    (write-format "(8X, D5.3)" -100)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3687
    (write-format "(8X, D5.3)" 1000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3688
    (write-format "(8X, D5.3)" -1000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3689
    (write-format "(8X, D5.3)" 10000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3690
    (write-format "(8X, D5.3)" -10000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3691
    (write-format "(8X, D5.3)" 100000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3692
    (write-format "(8X, D5.3)" -100000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3693
    (write-format "(8X, D5.3)" 123456789)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3694
    (write-format "(8X, D5.3)" 0.1d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3695
    (write-format "(8X, D5.3)" -0.1d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3696
    (write-format "(8X, D5.3)" 0.01d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3697
    (write-format "(8X, D5.3)" -0.01d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3698
    (write-format "(8X, D5.3)" 0.001d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3699
    (write-format "(8X, D5.3)" -0.001d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3700
    (write-format "(8X, D5.3)" 1.0d-4)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3701
    (write-format "(8X, D5.3)" -1.0d-4)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3702
    (write-format "(8X, D5.3)" -1.96d-16)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3703
    (write-format "(8X, D5.3)" 3.14159d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3704
    (write-format "(8X, D10.3)" 3)
  "         0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3705
    (write-format "(8X, D10.3)" -3)
  "        -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3706
    (write-format "(8X, D10.3)" 10)
  "         0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3707
    (write-format "(8X, D10.3)" -10)
  "        -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3708
    (write-format "(8X, D10.3)" 100)
  "         0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3709
    (write-format "(8X, D10.3)" -100)
  "        -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3710
    (write-format "(8X, D10.3)" 1000)
  "         0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3711
    (write-format "(8X, D10.3)" -1000)
  "        -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3712
    (write-format "(8X, D10.3)" 10000)
  "         0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3713
    (write-format "(8X, D10.3)" -10000)
  "        -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3714
    (write-format "(8X, D10.3)" 100000)
  "         0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3715
    (write-format "(8X, D10.3)" -100000)
  "        -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3716
    (write-format "(8X, D10.3)" 123456789)
  "         0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3717
    (write-format "(8X, D10.3)" 0.1d0)
  "         0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3718
    (write-format "(8X, D10.3)" -0.1d0)
  "        -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3719
    (write-format "(8X, D10.3)" 0.01d0)
  "         0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3720
    (write-format "(8X, D10.3)" -0.01d0)
  "        -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3721
    (write-format "(8X, D10.3)" 0.001d0)
  "         0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3722
    (write-format "(8X, D10.3)" -0.001d0)
  "        -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3723
    (write-format "(8X, D10.3)" 1.0d-4)
  "         0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3724
    (write-format "(8X, D10.3)" -1.0d-4)
  "        -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3725
    (write-format "(8X, D10.3)" -1.96d-16)
  "        -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3726
    (write-format "(8X, D10.3)" 3.14159d0)
  "         0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3727
    (write-format "(8X, D4.4)" 3)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3728
    (write-format "(8X, D4.4)" -3)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3729
    (write-format "(8X, D4.4)" 10)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3730
    (write-format "(8X, D4.4)" -10)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3731
    (write-format "(8X, D4.4)" 100)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3732
    (write-format "(8X, D4.4)" -100)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3733
    (write-format "(8X, D4.4)" 1000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3734
    (write-format "(8X, D4.4)" -1000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3735
    (write-format "(8X, D4.4)" 10000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3736
    (write-format "(8X, D4.4)" -10000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3737
    (write-format "(8X, D4.4)" 100000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3738
    (write-format "(8X, D4.4)" -100000)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3739
    (write-format "(8X, D4.4)" 123456789)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3740
    (write-format "(8X, D4.4)" 0.1d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3741
    (write-format "(8X, D4.4)" -0.1d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3742
    (write-format "(8X, D4.4)" 0.01d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3743
    (write-format "(8X, D4.4)" -0.01d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3744
    (write-format "(8X, D4.4)" 0.001d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3745
    (write-format "(8X, D4.4)" -0.001d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3746
    (write-format "(8X, D4.4)" 1.0d-4)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3747
    (write-format "(8X, D4.4)" -1.0d-4)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3748
    (write-format "(8X, D4.4)" -1.96d-16)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3749
    (write-format "(8X, D4.4)" 3.14159d0)
  "        ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3750
    (write-format "(8X, D5.4)" 3)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3751
    (write-format "(8X, D5.4)" -3)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3752
    (write-format "(8X, D5.4)" 10)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3753
    (write-format "(8X, D5.4)" -10)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3754
    (write-format "(8X, D5.4)" 100)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3755
    (write-format "(8X, D5.4)" -100)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3756
    (write-format "(8X, D5.4)" 1000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3757
    (write-format "(8X, D5.4)" -1000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3758
    (write-format "(8X, D5.4)" 10000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3759
    (write-format "(8X, D5.4)" -10000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3760
    (write-format "(8X, D5.4)" 100000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3761
    (write-format "(8X, D5.4)" -100000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3762
    (write-format "(8X, D5.4)" 123456789)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3763
    (write-format "(8X, D5.4)" 0.1d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3764
    (write-format "(8X, D5.4)" -0.1d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3765
    (write-format "(8X, D5.4)" 0.01d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3766
    (write-format "(8X, D5.4)" -0.01d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3767
    (write-format "(8X, D5.4)" 0.001d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3768
    (write-format "(8X, D5.4)" -0.001d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3769
    (write-format "(8X, D5.4)" 1.0d-4)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3770
    (write-format "(8X, D5.4)" -1.0d-4)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3771
    (write-format "(8X, D5.4)" -1.96d-16)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3772
    (write-format "(8X, D5.4)" 3.14159d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3773
    (write-format "(8X, D10.4)" 3)
  "        0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3774
    (write-format "(8X, D10.4)" -3)
  "        -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3775
    (write-format "(8X, D10.4)" 10)
  "        0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3776
    (write-format "(8X, D10.4)" -10)
  "        -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3777
    (write-format "(8X, D10.4)" 100)
  "        0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3778
    (write-format "(8X, D10.4)" -100)
  "        -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3779
    (write-format "(8X, D10.4)" 1000)
  "        0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3780
    (write-format "(8X, D10.4)" -1000)
  "        -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3781
    (write-format "(8X, D10.4)" 10000)
  "        0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3782
    (write-format "(8X, D10.4)" -10000)
  "        -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3783
    (write-format "(8X, D10.4)" 100000)
  "        0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3784
    (write-format "(8X, D10.4)" -100000)
  "        -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3785
    (write-format "(8X, D10.4)" 123456789)
  "        0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3786
    (write-format "(8X, D10.4)" 0.1d0)
  "        0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3787
    (write-format "(8X, D10.4)" -0.1d0)
  "        -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3788
    (write-format "(8X, D10.4)" 0.01d0)
  "        0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3789
    (write-format "(8X, D10.4)" -0.01d0)
  "        -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3790
    (write-format "(8X, D10.4)" 0.001d0)
  "        0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3791
    (write-format "(8X, D10.4)" -0.001d0)
  "        -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3792
    (write-format "(8X, D10.4)" 1.0d-4)
  "        0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3793
    (write-format "(8X, D10.4)" -1.0d-4)
  "        -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3794
    (write-format "(8X, D10.4)" -1.96d-16)
  "        -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3795
    (write-format "(8X, D10.4)" 3.14159d0)
  "        0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3796
    (write-format "(8X, D5.5)" 3)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3797
    (write-format "(8X, D5.5)" -3)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3798
    (write-format "(8X, D5.5)" 10)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3799
    (write-format "(8X, D5.5)" -10)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3800
    (write-format "(8X, D5.5)" 100)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3801
    (write-format "(8X, D5.5)" -100)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3802
    (write-format "(8X, D5.5)" 1000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3803
    (write-format "(8X, D5.5)" -1000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3804
    (write-format "(8X, D5.5)" 10000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3805
    (write-format "(8X, D5.5)" -10000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3806
    (write-format "(8X, D5.5)" 100000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3807
    (write-format "(8X, D5.5)" -100000)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3808
    (write-format "(8X, D5.5)" 123456789)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3809
    (write-format "(8X, D5.5)" 0.1d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3810
    (write-format "(8X, D5.5)" -0.1d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3811
    (write-format "(8X, D5.5)" 0.01d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3812
    (write-format "(8X, D5.5)" -0.01d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3813
    (write-format "(8X, D5.5)" 0.001d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3814
    (write-format "(8X, D5.5)" -0.001d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3815
    (write-format "(8X, D5.5)" 1.0d-4)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3816
    (write-format "(8X, D5.5)" -1.0d-4)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3817
    (write-format "(8X, D5.5)" -1.96d-16)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3818
    (write-format "(8X, D5.5)" 3.14159d0)
  "        *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3819
    (write-format "(8X, D10.5)" 3)
  "        .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3820
    (write-format "(8X, D10.5)" -3)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3821
    (write-format "(8X, D10.5)" 10)
  "        .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3822
    (write-format "(8X, D10.5)" -10)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3823
    (write-format "(8X, D10.5)" 100)
  "        .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3824
    (write-format "(8X, D10.5)" -100)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3825
    (write-format "(8X, D10.5)" 1000)
  "        .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3826
    (write-format "(8X, D10.5)" -1000)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3827
    (write-format "(8X, D10.5)" 10000)
  "        .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3828
    (write-format "(8X, D10.5)" -10000)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3829
    (write-format "(8X, D10.5)" 100000)
  "        .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3830
    (write-format "(8X, D10.5)" -100000)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3831
    (write-format "(8X, D10.5)" 123456789)
  "        .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3832
    (write-format "(8X, D10.5)" 0.1d0)
  "        .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3833
    (write-format "(8X, D10.5)" -0.1d0)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3834
    (write-format "(8X, D10.5)" 0.01d0)
  "        .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3835
    (write-format "(8X, D10.5)" -0.01d0)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3836
    (write-format "(8X, D10.5)" 0.001d0)
  "        .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3837
    (write-format "(8X, D10.5)" -0.001d0)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3838
    (write-format "(8X, D10.5)" 1.0d-4)
  "        .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3839
    (write-format "(8X, D10.5)" -1.0d-4)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3840
    (write-format "(8X, D10.5)" -1.96d-16)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3841
    (write-format "(8X, D10.5)" 3.14159d0)
  "        .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3842
    (write-format "(8X, D10.10)" 3)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3843
    (write-format "(8X, D10.10)" -3)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3844
    (write-format "(8X, D10.10)" 10)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3845
    (write-format "(8X, D10.10)" -10)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3846
    (write-format "(8X, D10.10)" 100)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3847
    (write-format "(8X, D10.10)" -100)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3848
    (write-format "(8X, D10.10)" 1000)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3849
    (write-format "(8X, D10.10)" -1000)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3850
    (write-format "(8X, D10.10)" 10000)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3851
    (write-format "(8X, D10.10)" -10000)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3852
    (write-format "(8X, D10.10)" 100000)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3853
    (write-format "(8X, D10.10)" -100000)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3854
    (write-format "(8X, D10.10)" 123456789)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3855
    (write-format "(8X, D10.10)" 0.1d0)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3856
    (write-format "(8X, D10.10)" -0.1d0)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3857
    (write-format "(8X, D10.10)" 0.01d0)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3858
    (write-format "(8X, D10.10)" -0.01d0)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3859
    (write-format "(8X, D10.10)" 0.001d0)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3860
    (write-format "(8X, D10.10)" -0.001d0)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3861
    (write-format "(8X, D10.10)" 1.0d-4)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3862
    (write-format "(8X, D10.10)" -1.0d-4)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3863
    (write-format "(8X, D10.10)" -1.96d-16)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3864
    (write-format "(8X, D10.10)" 3.14159d0)
  "        **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3865
    (write-format "(9X, D1.1)" 3)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3866
    (write-format "(9X, D1.1)" -3)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3867
    (write-format "(9X, D1.1)" 10)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3868
    (write-format "(9X, D1.1)" -10)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3869
    (write-format "(9X, D1.1)" 100)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3870
    (write-format "(9X, D1.1)" -100)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3871
    (write-format "(9X, D1.1)" 1000)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3872
    (write-format "(9X, D1.1)" -1000)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3873
    (write-format "(9X, D1.1)" 10000)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3874
    (write-format "(9X, D1.1)" -10000)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3875
    (write-format "(9X, D1.1)" 100000)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3876
    (write-format "(9X, D1.1)" -100000)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3877
    (write-format "(9X, D1.1)" 123456789)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3878
    (write-format "(9X, D1.1)" 0.1d0)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3879
    (write-format "(9X, D1.1)" -0.1d0)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3880
    (write-format "(9X, D1.1)" 0.01d0)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3881
    (write-format "(9X, D1.1)" -0.01d0)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3882
    (write-format "(9X, D1.1)" 0.001d0)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3883
    (write-format "(9X, D1.1)" -0.001d0)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3884
    (write-format "(9X, D1.1)" 1.0d-4)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3885
    (write-format "(9X, D1.1)" -1.0d-4)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3886
    (write-format "(9X, D1.1)" -1.96d-16)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3887
    (write-format "(9X, D1.1)" 3.14159d0)
  "         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3888
    (write-format "(9X, D2.1)" 3)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3889
    (write-format "(9X, D2.1)" -3)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3890
    (write-format "(9X, D2.1)" 10)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3891
    (write-format "(9X, D2.1)" -10)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3892
    (write-format "(9X, D2.1)" 100)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3893
    (write-format "(9X, D2.1)" -100)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3894
    (write-format "(9X, D2.1)" 1000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3895
    (write-format "(9X, D2.1)" -1000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3896
    (write-format "(9X, D2.1)" 10000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3897
    (write-format "(9X, D2.1)" -10000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3898
    (write-format "(9X, D2.1)" 100000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3899
    (write-format "(9X, D2.1)" -100000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3900
    (write-format "(9X, D2.1)" 123456789)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3901
    (write-format "(9X, D2.1)" 0.1d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3902
    (write-format "(9X, D2.1)" -0.1d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3903
    (write-format "(9X, D2.1)" 0.01d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3904
    (write-format "(9X, D2.1)" -0.01d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3905
    (write-format "(9X, D2.1)" 0.001d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3906
    (write-format "(9X, D2.1)" -0.001d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3907
    (write-format "(9X, D2.1)" 1.0d-4)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3908
    (write-format "(9X, D2.1)" -1.0d-4)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3909
    (write-format "(9X, D2.1)" -1.96d-16)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3910
    (write-format "(9X, D2.1)" 3.14159d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3911
    (write-format "(9X, D3.1)" 3)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3912
    (write-format "(9X, D3.1)" -3)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3913
    (write-format "(9X, D3.1)" 10)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3914
    (write-format "(9X, D3.1)" -10)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3915
    (write-format "(9X, D3.1)" 100)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3916
    (write-format "(9X, D3.1)" -100)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3917
    (write-format "(9X, D3.1)" 1000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3918
    (write-format "(9X, D3.1)" -1000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3919
    (write-format "(9X, D3.1)" 10000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3920
    (write-format "(9X, D3.1)" -10000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3921
    (write-format "(9X, D3.1)" 100000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3922
    (write-format "(9X, D3.1)" -100000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3923
    (write-format "(9X, D3.1)" 123456789)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3924
    (write-format "(9X, D3.1)" 0.1d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3925
    (write-format "(9X, D3.1)" -0.1d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3926
    (write-format "(9X, D3.1)" 0.01d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3927
    (write-format "(9X, D3.1)" -0.01d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3928
    (write-format "(9X, D3.1)" 0.001d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3929
    (write-format "(9X, D3.1)" -0.001d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3930
    (write-format "(9X, D3.1)" 1.0d-4)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3931
    (write-format "(9X, D3.1)" -1.0d-4)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3932
    (write-format "(9X, D3.1)" -1.96d-16)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3933
    (write-format "(9X, D3.1)" 3.14159d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3934
    (write-format "(9X, D4.1)" 3)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3935
    (write-format "(9X, D4.1)" -3)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3936
    (write-format "(9X, D4.1)" 10)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3937
    (write-format "(9X, D4.1)" -10)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3938
    (write-format "(9X, D4.1)" 100)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3939
    (write-format "(9X, D4.1)" -100)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3940
    (write-format "(9X, D4.1)" 1000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3941
    (write-format "(9X, D4.1)" -1000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3942
    (write-format "(9X, D4.1)" 10000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3943
    (write-format "(9X, D4.1)" -10000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3944
    (write-format "(9X, D4.1)" 100000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3945
    (write-format "(9X, D4.1)" -100000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3946
    (write-format "(9X, D4.1)" 123456789)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3947
    (write-format "(9X, D4.1)" 0.1d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3948
    (write-format "(9X, D4.1)" -0.1d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3949
    (write-format "(9X, D4.1)" 0.01d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3950
    (write-format "(9X, D4.1)" -0.01d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3951
    (write-format "(9X, D4.1)" 0.001d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3952
    (write-format "(9X, D4.1)" -0.001d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3953
    (write-format "(9X, D4.1)" 1.0d-4)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3954
    (write-format "(9X, D4.1)" -1.0d-4)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3955
    (write-format "(9X, D4.1)" -1.96d-16)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3956
    (write-format "(9X, D4.1)" 3.14159d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3957
    (write-format "(9X, D5.1)" 3)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3958
    (write-format "(9X, D5.1)" -3)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3959
    (write-format "(9X, D5.1)" 10)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3960
    (write-format "(9X, D5.1)" -10)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3961
    (write-format "(9X, D5.1)" 100)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3962
    (write-format "(9X, D5.1)" -100)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3963
    (write-format "(9X, D5.1)" 1000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3964
    (write-format "(9X, D5.1)" -1000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3965
    (write-format "(9X, D5.1)" 10000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3966
    (write-format "(9X, D5.1)" -10000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3967
    (write-format "(9X, D5.1)" 100000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3968
    (write-format "(9X, D5.1)" -100000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3969
    (write-format "(9X, D5.1)" 123456789)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3970
    (write-format "(9X, D5.1)" 0.1d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3971
    (write-format "(9X, D5.1)" -0.1d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3972
    (write-format "(9X, D5.1)" 0.01d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3973
    (write-format "(9X, D5.1)" -0.01d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3974
    (write-format "(9X, D5.1)" 0.001d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3975
    (write-format "(9X, D5.1)" -0.001d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3976
    (write-format "(9X, D5.1)" 1.0d-4)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3977
    (write-format "(9X, D5.1)" -1.0d-4)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3978
    (write-format "(9X, D5.1)" -1.96d-16)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3979
    (write-format "(9X, D5.1)" 3.14159d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3980
    (write-format "(9X, D10.1)" 3)
  "            0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3981
    (write-format "(9X, D10.1)" -3)
  "           -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3982
    (write-format "(9X, D10.1)" 10)
  "            0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3983
    (write-format "(9X, D10.1)" -10)
  "           -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3984
    (write-format "(9X, D10.1)" 100)
  "            0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3985
    (write-format "(9X, D10.1)" -100)
  "           -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3986
    (write-format "(9X, D10.1)" 1000)
  "            0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3987
    (write-format "(9X, D10.1)" -1000)
  "           -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3988
    (write-format "(9X, D10.1)" 10000)
  "            0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3989
    (write-format "(9X, D10.1)" -10000)
  "           -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3990
    (write-format "(9X, D10.1)" 100000)
  "            0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3991
    (write-format "(9X, D10.1)" -100000)
  "           -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3992
    (write-format "(9X, D10.1)" 123456789)
  "            0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3993
    (write-format "(9X, D10.1)" 0.1d0)
  "            0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3994
    (write-format "(9X, D10.1)" -0.1d0)
  "           -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3995
    (write-format "(9X, D10.1)" 0.01d0)
  "            0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3996
    (write-format "(9X, D10.1)" -0.01d0)
  "           -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3997
    (write-format "(9X, D10.1)" 0.001d0)
  "            0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3998
    (write-format "(9X, D10.1)" -0.001d0)
  "           -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.3999
    (write-format "(9X, D10.1)" 1.0d-4)
  "            0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4000
    (write-format "(9X, D10.1)" -1.0d-4)
  "           -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4001
    (write-format "(9X, D10.1)" -1.96d-16)
  "           -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4002
    (write-format "(9X, D10.1)" 3.14159d0)
  "            0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4003
    (write-format "(9X, D2.2)" 3)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4004
    (write-format "(9X, D2.2)" -3)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4005
    (write-format "(9X, D2.2)" 10)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4006
    (write-format "(9X, D2.2)" -10)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4007
    (write-format "(9X, D2.2)" 100)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4008
    (write-format "(9X, D2.2)" -100)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4009
    (write-format "(9X, D2.2)" 1000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4010
    (write-format "(9X, D2.2)" -1000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4011
    (write-format "(9X, D2.2)" 10000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4012
    (write-format "(9X, D2.2)" -10000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4013
    (write-format "(9X, D2.2)" 100000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4014
    (write-format "(9X, D2.2)" -100000)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4015
    (write-format "(9X, D2.2)" 123456789)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4016
    (write-format "(9X, D2.2)" 0.1d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4017
    (write-format "(9X, D2.2)" -0.1d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4018
    (write-format "(9X, D2.2)" 0.01d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4019
    (write-format "(9X, D2.2)" -0.01d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4020
    (write-format "(9X, D2.2)" 0.001d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4021
    (write-format "(9X, D2.2)" -0.001d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4022
    (write-format "(9X, D2.2)" 1.0d-4)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4023
    (write-format "(9X, D2.2)" -1.0d-4)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4024
    (write-format "(9X, D2.2)" -1.96d-16)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4025
    (write-format "(9X, D2.2)" 3.14159d0)
  "         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4026
    (write-format "(9X, D3.2)" 3)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4027
    (write-format "(9X, D3.2)" -3)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4028
    (write-format "(9X, D3.2)" 10)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4029
    (write-format "(9X, D3.2)" -10)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4030
    (write-format "(9X, D3.2)" 100)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4031
    (write-format "(9X, D3.2)" -100)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4032
    (write-format "(9X, D3.2)" 1000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4033
    (write-format "(9X, D3.2)" -1000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4034
    (write-format "(9X, D3.2)" 10000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4035
    (write-format "(9X, D3.2)" -10000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4036
    (write-format "(9X, D3.2)" 100000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4037
    (write-format "(9X, D3.2)" -100000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4038
    (write-format "(9X, D3.2)" 123456789)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4039
    (write-format "(9X, D3.2)" 0.1d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4040
    (write-format "(9X, D3.2)" -0.1d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4041
    (write-format "(9X, D3.2)" 0.01d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4042
    (write-format "(9X, D3.2)" -0.01d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4043
    (write-format "(9X, D3.2)" 0.001d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4044
    (write-format "(9X, D3.2)" -0.001d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4045
    (write-format "(9X, D3.2)" 1.0d-4)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4046
    (write-format "(9X, D3.2)" -1.0d-4)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4047
    (write-format "(9X, D3.2)" -1.96d-16)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4048
    (write-format "(9X, D3.2)" 3.14159d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4049
    (write-format "(9X, D4.2)" 3)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4050
    (write-format "(9X, D4.2)" -3)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4051
    (write-format "(9X, D4.2)" 10)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4052
    (write-format "(9X, D4.2)" -10)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4053
    (write-format "(9X, D4.2)" 100)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4054
    (write-format "(9X, D4.2)" -100)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4055
    (write-format "(9X, D4.2)" 1000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4056
    (write-format "(9X, D4.2)" -1000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4057
    (write-format "(9X, D4.2)" 10000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4058
    (write-format "(9X, D4.2)" -10000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4059
    (write-format "(9X, D4.2)" 100000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4060
    (write-format "(9X, D4.2)" -100000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4061
    (write-format "(9X, D4.2)" 123456789)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4062
    (write-format "(9X, D4.2)" 0.1d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4063
    (write-format "(9X, D4.2)" -0.1d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4064
    (write-format "(9X, D4.2)" 0.01d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4065
    (write-format "(9X, D4.2)" -0.01d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4066
    (write-format "(9X, D4.2)" 0.001d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4067
    (write-format "(9X, D4.2)" -0.001d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4068
    (write-format "(9X, D4.2)" 1.0d-4)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4069
    (write-format "(9X, D4.2)" -1.0d-4)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4070
    (write-format "(9X, D4.2)" -1.96d-16)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4071
    (write-format "(9X, D4.2)" 3.14159d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4072
    (write-format "(9X, D5.2)" 3)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4073
    (write-format "(9X, D5.2)" -3)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4074
    (write-format "(9X, D5.2)" 10)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4075
    (write-format "(9X, D5.2)" -10)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4076
    (write-format "(9X, D5.2)" 100)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4077
    (write-format "(9X, D5.2)" -100)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4078
    (write-format "(9X, D5.2)" 1000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4079
    (write-format "(9X, D5.2)" -1000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4080
    (write-format "(9X, D5.2)" 10000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4081
    (write-format "(9X, D5.2)" -10000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4082
    (write-format "(9X, D5.2)" 100000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4083
    (write-format "(9X, D5.2)" -100000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4084
    (write-format "(9X, D5.2)" 123456789)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4085
    (write-format "(9X, D5.2)" 0.1d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4086
    (write-format "(9X, D5.2)" -0.1d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4087
    (write-format "(9X, D5.2)" 0.01d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4088
    (write-format "(9X, D5.2)" -0.01d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4089
    (write-format "(9X, D5.2)" 0.001d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4090
    (write-format "(9X, D5.2)" -0.001d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4091
    (write-format "(9X, D5.2)" 1.0d-4)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4092
    (write-format "(9X, D5.2)" -1.0d-4)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4093
    (write-format "(9X, D5.2)" -1.96d-16)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4094
    (write-format "(9X, D5.2)" 3.14159d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4095
    (write-format "(9X, D10.2)" 3)
  "           0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4096
    (write-format "(9X, D10.2)" -3)
  "          -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4097
    (write-format "(9X, D10.2)" 10)
  "           0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4098
    (write-format "(9X, D10.2)" -10)
  "          -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4099
    (write-format "(9X, D10.2)" 100)
  "           0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4100
    (write-format "(9X, D10.2)" -100)
  "          -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4101
    (write-format "(9X, D10.2)" 1000)
  "           0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4102
    (write-format "(9X, D10.2)" -1000)
  "          -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4103
    (write-format "(9X, D10.2)" 10000)
  "           0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4104
    (write-format "(9X, D10.2)" -10000)
  "          -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4105
    (write-format "(9X, D10.2)" 100000)
  "           0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4106
    (write-format "(9X, D10.2)" -100000)
  "          -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4107
    (write-format "(9X, D10.2)" 123456789)
  "           0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4108
    (write-format "(9X, D10.2)" 0.1d0)
  "           0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4109
    (write-format "(9X, D10.2)" -0.1d0)
  "          -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4110
    (write-format "(9X, D10.2)" 0.01d0)
  "           0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4111
    (write-format "(9X, D10.2)" -0.01d0)
  "          -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4112
    (write-format "(9X, D10.2)" 0.001d0)
  "           0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4113
    (write-format "(9X, D10.2)" -0.001d0)
  "          -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4114
    (write-format "(9X, D10.2)" 1.0d-4)
  "           0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4115
    (write-format "(9X, D10.2)" -1.0d-4)
  "          -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4116
    (write-format "(9X, D10.2)" -1.96d-16)
  "          -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4117
    (write-format "(9X, D10.2)" 3.14159d0)
  "           0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4118
    (write-format "(9X, D3.3)" 3)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4119
    (write-format "(9X, D3.3)" -3)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4120
    (write-format "(9X, D3.3)" 10)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4121
    (write-format "(9X, D3.3)" -10)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4122
    (write-format "(9X, D3.3)" 100)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4123
    (write-format "(9X, D3.3)" -100)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4124
    (write-format "(9X, D3.3)" 1000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4125
    (write-format "(9X, D3.3)" -1000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4126
    (write-format "(9X, D3.3)" 10000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4127
    (write-format "(9X, D3.3)" -10000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4128
    (write-format "(9X, D3.3)" 100000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4129
    (write-format "(9X, D3.3)" -100000)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4130
    (write-format "(9X, D3.3)" 123456789)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4131
    (write-format "(9X, D3.3)" 0.1d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4132
    (write-format "(9X, D3.3)" -0.1d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4133
    (write-format "(9X, D3.3)" 0.01d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4134
    (write-format "(9X, D3.3)" -0.01d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4135
    (write-format "(9X, D3.3)" 0.001d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4136
    (write-format "(9X, D3.3)" -0.001d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4137
    (write-format "(9X, D3.3)" 1.0d-4)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4138
    (write-format "(9X, D3.3)" -1.0d-4)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4139
    (write-format "(9X, D3.3)" -1.96d-16)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4140
    (write-format "(9X, D3.3)" 3.14159d0)
  "         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4141
    (write-format "(9X, D4.3)" 3)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4142
    (write-format "(9X, D4.3)" -3)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4143
    (write-format "(9X, D4.3)" 10)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4144
    (write-format "(9X, D4.3)" -10)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4145
    (write-format "(9X, D4.3)" 100)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4146
    (write-format "(9X, D4.3)" -100)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4147
    (write-format "(9X, D4.3)" 1000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4148
    (write-format "(9X, D4.3)" -1000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4149
    (write-format "(9X, D4.3)" 10000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4150
    (write-format "(9X, D4.3)" -10000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4151
    (write-format "(9X, D4.3)" 100000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4152
    (write-format "(9X, D4.3)" -100000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4153
    (write-format "(9X, D4.3)" 123456789)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4154
    (write-format "(9X, D4.3)" 0.1d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4155
    (write-format "(9X, D4.3)" -0.1d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4156
    (write-format "(9X, D4.3)" 0.01d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4157
    (write-format "(9X, D4.3)" -0.01d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4158
    (write-format "(9X, D4.3)" 0.001d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4159
    (write-format "(9X, D4.3)" -0.001d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4160
    (write-format "(9X, D4.3)" 1.0d-4)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4161
    (write-format "(9X, D4.3)" -1.0d-4)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4162
    (write-format "(9X, D4.3)" -1.96d-16)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4163
    (write-format "(9X, D4.3)" 3.14159d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4164
    (write-format "(9X, D5.3)" 3)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4165
    (write-format "(9X, D5.3)" -3)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4166
    (write-format "(9X, D5.3)" 10)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4167
    (write-format "(9X, D5.3)" -10)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4168
    (write-format "(9X, D5.3)" 100)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4169
    (write-format "(9X, D5.3)" -100)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4170
    (write-format "(9X, D5.3)" 1000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4171
    (write-format "(9X, D5.3)" -1000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4172
    (write-format "(9X, D5.3)" 10000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4173
    (write-format "(9X, D5.3)" -10000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4174
    (write-format "(9X, D5.3)" 100000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4175
    (write-format "(9X, D5.3)" -100000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4176
    (write-format "(9X, D5.3)" 123456789)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4177
    (write-format "(9X, D5.3)" 0.1d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4178
    (write-format "(9X, D5.3)" -0.1d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4179
    (write-format "(9X, D5.3)" 0.01d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4180
    (write-format "(9X, D5.3)" -0.01d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4181
    (write-format "(9X, D5.3)" 0.001d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4182
    (write-format "(9X, D5.3)" -0.001d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4183
    (write-format "(9X, D5.3)" 1.0d-4)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4184
    (write-format "(9X, D5.3)" -1.0d-4)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4185
    (write-format "(9X, D5.3)" -1.96d-16)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4186
    (write-format "(9X, D5.3)" 3.14159d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4187
    (write-format "(9X, D10.3)" 3)
  "          0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4188
    (write-format "(9X, D10.3)" -3)
  "         -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4189
    (write-format "(9X, D10.3)" 10)
  "          0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4190
    (write-format "(9X, D10.3)" -10)
  "         -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4191
    (write-format "(9X, D10.3)" 100)
  "          0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4192
    (write-format "(9X, D10.3)" -100)
  "         -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4193
    (write-format "(9X, D10.3)" 1000)
  "          0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4194
    (write-format "(9X, D10.3)" -1000)
  "         -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4195
    (write-format "(9X, D10.3)" 10000)
  "          0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4196
    (write-format "(9X, D10.3)" -10000)
  "         -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4197
    (write-format "(9X, D10.3)" 100000)
  "          0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4198
    (write-format "(9X, D10.3)" -100000)
  "         -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4199
    (write-format "(9X, D10.3)" 123456789)
  "          0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4200
    (write-format "(9X, D10.3)" 0.1d0)
  "          0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4201
    (write-format "(9X, D10.3)" -0.1d0)
  "         -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4202
    (write-format "(9X, D10.3)" 0.01d0)
  "          0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4203
    (write-format "(9X, D10.3)" -0.01d0)
  "         -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4204
    (write-format "(9X, D10.3)" 0.001d0)
  "          0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4205
    (write-format "(9X, D10.3)" -0.001d0)
  "         -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4206
    (write-format "(9X, D10.3)" 1.0d-4)
  "          0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4207
    (write-format "(9X, D10.3)" -1.0d-4)
  "         -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4208
    (write-format "(9X, D10.3)" -1.96d-16)
  "         -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4209
    (write-format "(9X, D10.3)" 3.14159d0)
  "          0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4210
    (write-format "(9X, D4.4)" 3)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4211
    (write-format "(9X, D4.4)" -3)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4212
    (write-format "(9X, D4.4)" 10)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4213
    (write-format "(9X, D4.4)" -10)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4214
    (write-format "(9X, D4.4)" 100)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4215
    (write-format "(9X, D4.4)" -100)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4216
    (write-format "(9X, D4.4)" 1000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4217
    (write-format "(9X, D4.4)" -1000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4218
    (write-format "(9X, D4.4)" 10000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4219
    (write-format "(9X, D4.4)" -10000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4220
    (write-format "(9X, D4.4)" 100000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4221
    (write-format "(9X, D4.4)" -100000)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4222
    (write-format "(9X, D4.4)" 123456789)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4223
    (write-format "(9X, D4.4)" 0.1d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4224
    (write-format "(9X, D4.4)" -0.1d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4225
    (write-format "(9X, D4.4)" 0.01d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4226
    (write-format "(9X, D4.4)" -0.01d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4227
    (write-format "(9X, D4.4)" 0.001d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4228
    (write-format "(9X, D4.4)" -0.001d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4229
    (write-format "(9X, D4.4)" 1.0d-4)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4230
    (write-format "(9X, D4.4)" -1.0d-4)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4231
    (write-format "(9X, D4.4)" -1.96d-16)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4232
    (write-format "(9X, D4.4)" 3.14159d0)
  "         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4233
    (write-format "(9X, D5.4)" 3)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4234
    (write-format "(9X, D5.4)" -3)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4235
    (write-format "(9X, D5.4)" 10)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4236
    (write-format "(9X, D5.4)" -10)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4237
    (write-format "(9X, D5.4)" 100)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4238
    (write-format "(9X, D5.4)" -100)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4239
    (write-format "(9X, D5.4)" 1000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4240
    (write-format "(9X, D5.4)" -1000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4241
    (write-format "(9X, D5.4)" 10000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4242
    (write-format "(9X, D5.4)" -10000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4243
    (write-format "(9X, D5.4)" 100000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4244
    (write-format "(9X, D5.4)" -100000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4245
    (write-format "(9X, D5.4)" 123456789)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4246
    (write-format "(9X, D5.4)" 0.1d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4247
    (write-format "(9X, D5.4)" -0.1d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4248
    (write-format "(9X, D5.4)" 0.01d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4249
    (write-format "(9X, D5.4)" -0.01d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4250
    (write-format "(9X, D5.4)" 0.001d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4251
    (write-format "(9X, D5.4)" -0.001d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4252
    (write-format "(9X, D5.4)" 1.0d-4)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4253
    (write-format "(9X, D5.4)" -1.0d-4)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4254
    (write-format "(9X, D5.4)" -1.96d-16)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4255
    (write-format "(9X, D5.4)" 3.14159d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4256
    (write-format "(9X, D10.4)" 3)
  "         0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4257
    (write-format "(9X, D10.4)" -3)
  "         -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4258
    (write-format "(9X, D10.4)" 10)
  "         0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4259
    (write-format "(9X, D10.4)" -10)
  "         -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4260
    (write-format "(9X, D10.4)" 100)
  "         0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4261
    (write-format "(9X, D10.4)" -100)
  "         -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4262
    (write-format "(9X, D10.4)" 1000)
  "         0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4263
    (write-format "(9X, D10.4)" -1000)
  "         -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4264
    (write-format "(9X, D10.4)" 10000)
  "         0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4265
    (write-format "(9X, D10.4)" -10000)
  "         -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4266
    (write-format "(9X, D10.4)" 100000)
  "         0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4267
    (write-format "(9X, D10.4)" -100000)
  "         -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4268
    (write-format "(9X, D10.4)" 123456789)
  "         0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4269
    (write-format "(9X, D10.4)" 0.1d0)
  "         0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4270
    (write-format "(9X, D10.4)" -0.1d0)
  "         -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4271
    (write-format "(9X, D10.4)" 0.01d0)
  "         0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4272
    (write-format "(9X, D10.4)" -0.01d0)
  "         -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4273
    (write-format "(9X, D10.4)" 0.001d0)
  "         0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4274
    (write-format "(9X, D10.4)" -0.001d0)
  "         -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4275
    (write-format "(9X, D10.4)" 1.0d-4)
  "         0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4276
    (write-format "(9X, D10.4)" -1.0d-4)
  "         -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4277
    (write-format "(9X, D10.4)" -1.96d-16)
  "         -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4278
    (write-format "(9X, D10.4)" 3.14159d0)
  "         0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4279
    (write-format "(9X, D5.5)" 3)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4280
    (write-format "(9X, D5.5)" -3)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4281
    (write-format "(9X, D5.5)" 10)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4282
    (write-format "(9X, D5.5)" -10)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4283
    (write-format "(9X, D5.5)" 100)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4284
    (write-format "(9X, D5.5)" -100)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4285
    (write-format "(9X, D5.5)" 1000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4286
    (write-format "(9X, D5.5)" -1000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4287
    (write-format "(9X, D5.5)" 10000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4288
    (write-format "(9X, D5.5)" -10000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4289
    (write-format "(9X, D5.5)" 100000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4290
    (write-format "(9X, D5.5)" -100000)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4291
    (write-format "(9X, D5.5)" 123456789)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4292
    (write-format "(9X, D5.5)" 0.1d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4293
    (write-format "(9X, D5.5)" -0.1d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4294
    (write-format "(9X, D5.5)" 0.01d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4295
    (write-format "(9X, D5.5)" -0.01d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4296
    (write-format "(9X, D5.5)" 0.001d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4297
    (write-format "(9X, D5.5)" -0.001d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4298
    (write-format "(9X, D5.5)" 1.0d-4)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4299
    (write-format "(9X, D5.5)" -1.0d-4)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4300
    (write-format "(9X, D5.5)" -1.96d-16)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4301
    (write-format "(9X, D5.5)" 3.14159d0)
  "         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4302
    (write-format "(9X, D10.5)" 3)
  "         .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4303
    (write-format "(9X, D10.5)" -3)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4304
    (write-format "(9X, D10.5)" 10)
  "         .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4305
    (write-format "(9X, D10.5)" -10)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4306
    (write-format "(9X, D10.5)" 100)
  "         .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4307
    (write-format "(9X, D10.5)" -100)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4308
    (write-format "(9X, D10.5)" 1000)
  "         .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4309
    (write-format "(9X, D10.5)" -1000)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4310
    (write-format "(9X, D10.5)" 10000)
  "         .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4311
    (write-format "(9X, D10.5)" -10000)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4312
    (write-format "(9X, D10.5)" 100000)
  "         .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4313
    (write-format "(9X, D10.5)" -100000)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4314
    (write-format "(9X, D10.5)" 123456789)
  "         .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4315
    (write-format "(9X, D10.5)" 0.1d0)
  "         .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4316
    (write-format "(9X, D10.5)" -0.1d0)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4317
    (write-format "(9X, D10.5)" 0.01d0)
  "         .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4318
    (write-format "(9X, D10.5)" -0.01d0)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4319
    (write-format "(9X, D10.5)" 0.001d0)
  "         .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4320
    (write-format "(9X, D10.5)" -0.001d0)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4321
    (write-format "(9X, D10.5)" 1.0d-4)
  "         .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4322
    (write-format "(9X, D10.5)" -1.0d-4)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4323
    (write-format "(9X, D10.5)" -1.96d-16)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4324
    (write-format "(9X, D10.5)" 3.14159d0)
  "         .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4325
    (write-format "(9X, D10.10)" 3)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4326
    (write-format "(9X, D10.10)" -3)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4327
    (write-format "(9X, D10.10)" 10)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4328
    (write-format "(9X, D10.10)" -10)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4329
    (write-format "(9X, D10.10)" 100)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4330
    (write-format "(9X, D10.10)" -100)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4331
    (write-format "(9X, D10.10)" 1000)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4332
    (write-format "(9X, D10.10)" -1000)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4333
    (write-format "(9X, D10.10)" 10000)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4334
    (write-format "(9X, D10.10)" -10000)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4335
    (write-format "(9X, D10.10)" 100000)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4336
    (write-format "(9X, D10.10)" -100000)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4337
    (write-format "(9X, D10.10)" 123456789)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4338
    (write-format "(9X, D10.10)" 0.1d0)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4339
    (write-format "(9X, D10.10)" -0.1d0)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4340
    (write-format "(9X, D10.10)" 0.01d0)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4341
    (write-format "(9X, D10.10)" -0.01d0)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4342
    (write-format "(9X, D10.10)" 0.001d0)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4343
    (write-format "(9X, D10.10)" -0.001d0)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4344
    (write-format "(9X, D10.10)" 1.0d-4)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4345
    (write-format "(9X, D10.10)" -1.0d-4)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4346
    (write-format "(9X, D10.10)" -1.96d-16)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4347
    (write-format "(9X, D10.10)" 3.14159d0)
  "         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4348
    (write-format "(10X, D1.1)" 3)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4349
    (write-format "(10X, D1.1)" -3)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4350
    (write-format "(10X, D1.1)" 10)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4351
    (write-format "(10X, D1.1)" -10)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4352
    (write-format "(10X, D1.1)" 100)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4353
    (write-format "(10X, D1.1)" -100)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4354
    (write-format "(10X, D1.1)" 1000)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4355
    (write-format "(10X, D1.1)" -1000)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4356
    (write-format "(10X, D1.1)" 10000)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4357
    (write-format "(10X, D1.1)" -10000)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4358
    (write-format "(10X, D1.1)" 100000)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4359
    (write-format "(10X, D1.1)" -100000)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4360
    (write-format "(10X, D1.1)" 123456789)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4361
    (write-format "(10X, D1.1)" 0.1d0)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4362
    (write-format "(10X, D1.1)" -0.1d0)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4363
    (write-format "(10X, D1.1)" 0.01d0)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4364
    (write-format "(10X, D1.1)" -0.01d0)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4365
    (write-format "(10X, D1.1)" 0.001d0)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4366
    (write-format "(10X, D1.1)" -0.001d0)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4367
    (write-format "(10X, D1.1)" 1.0d-4)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4368
    (write-format "(10X, D1.1)" -1.0d-4)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4369
    (write-format "(10X, D1.1)" -1.96d-16)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4370
    (write-format "(10X, D1.1)" 3.14159d0)
  "          *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4371
    (write-format "(10X, D2.1)" 3)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4372
    (write-format "(10X, D2.1)" -3)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4373
    (write-format "(10X, D2.1)" 10)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4374
    (write-format "(10X, D2.1)" -10)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4375
    (write-format "(10X, D2.1)" 100)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4376
    (write-format "(10X, D2.1)" -100)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4377
    (write-format "(10X, D2.1)" 1000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4378
    (write-format "(10X, D2.1)" -1000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4379
    (write-format "(10X, D2.1)" 10000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4380
    (write-format "(10X, D2.1)" -10000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4381
    (write-format "(10X, D2.1)" 100000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4382
    (write-format "(10X, D2.1)" -100000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4383
    (write-format "(10X, D2.1)" 123456789)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4384
    (write-format "(10X, D2.1)" 0.1d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4385
    (write-format "(10X, D2.1)" -0.1d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4386
    (write-format "(10X, D2.1)" 0.01d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4387
    (write-format "(10X, D2.1)" -0.01d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4388
    (write-format "(10X, D2.1)" 0.001d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4389
    (write-format "(10X, D2.1)" -0.001d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4390
    (write-format "(10X, D2.1)" 1.0d-4)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4391
    (write-format "(10X, D2.1)" -1.0d-4)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4392
    (write-format "(10X, D2.1)" -1.96d-16)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4393
    (write-format "(10X, D2.1)" 3.14159d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4394
    (write-format "(10X, D3.1)" 3)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4395
    (write-format "(10X, D3.1)" -3)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4396
    (write-format "(10X, D3.1)" 10)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4397
    (write-format "(10X, D3.1)" -10)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4398
    (write-format "(10X, D3.1)" 100)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4399
    (write-format "(10X, D3.1)" -100)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4400
    (write-format "(10X, D3.1)" 1000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4401
    (write-format "(10X, D3.1)" -1000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4402
    (write-format "(10X, D3.1)" 10000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4403
    (write-format "(10X, D3.1)" -10000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4404
    (write-format "(10X, D3.1)" 100000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4405
    (write-format "(10X, D3.1)" -100000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4406
    (write-format "(10X, D3.1)" 123456789)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4407
    (write-format "(10X, D3.1)" 0.1d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4408
    (write-format "(10X, D3.1)" -0.1d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4409
    (write-format "(10X, D3.1)" 0.01d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4410
    (write-format "(10X, D3.1)" -0.01d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4411
    (write-format "(10X, D3.1)" 0.001d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4412
    (write-format "(10X, D3.1)" -0.001d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4413
    (write-format "(10X, D3.1)" 1.0d-4)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4414
    (write-format "(10X, D3.1)" -1.0d-4)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4415
    (write-format "(10X, D3.1)" -1.96d-16)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4416
    (write-format "(10X, D3.1)" 3.14159d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4417
    (write-format "(10X, D4.1)" 3)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4418
    (write-format "(10X, D4.1)" -3)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4419
    (write-format "(10X, D4.1)" 10)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4420
    (write-format "(10X, D4.1)" -10)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4421
    (write-format "(10X, D4.1)" 100)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4422
    (write-format "(10X, D4.1)" -100)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4423
    (write-format "(10X, D4.1)" 1000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4424
    (write-format "(10X, D4.1)" -1000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4425
    (write-format "(10X, D4.1)" 10000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4426
    (write-format "(10X, D4.1)" -10000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4427
    (write-format "(10X, D4.1)" 100000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4428
    (write-format "(10X, D4.1)" -100000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4429
    (write-format "(10X, D4.1)" 123456789)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4430
    (write-format "(10X, D4.1)" 0.1d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4431
    (write-format "(10X, D4.1)" -0.1d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4432
    (write-format "(10X, D4.1)" 0.01d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4433
    (write-format "(10X, D4.1)" -0.01d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4434
    (write-format "(10X, D4.1)" 0.001d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4435
    (write-format "(10X, D4.1)" -0.001d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4436
    (write-format "(10X, D4.1)" 1.0d-4)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4437
    (write-format "(10X, D4.1)" -1.0d-4)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4438
    (write-format "(10X, D4.1)" -1.96d-16)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4439
    (write-format "(10X, D4.1)" 3.14159d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4440
    (write-format "(10X, D5.1)" 3)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4441
    (write-format "(10X, D5.1)" -3)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4442
    (write-format "(10X, D5.1)" 10)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4443
    (write-format "(10X, D5.1)" -10)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4444
    (write-format "(10X, D5.1)" 100)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4445
    (write-format "(10X, D5.1)" -100)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4446
    (write-format "(10X, D5.1)" 1000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4447
    (write-format "(10X, D5.1)" -1000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4448
    (write-format "(10X, D5.1)" 10000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4449
    (write-format "(10X, D5.1)" -10000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4450
    (write-format "(10X, D5.1)" 100000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4451
    (write-format "(10X, D5.1)" -100000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4452
    (write-format "(10X, D5.1)" 123456789)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4453
    (write-format "(10X, D5.1)" 0.1d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4454
    (write-format "(10X, D5.1)" -0.1d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4455
    (write-format "(10X, D5.1)" 0.01d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4456
    (write-format "(10X, D5.1)" -0.01d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4457
    (write-format "(10X, D5.1)" 0.001d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4458
    (write-format "(10X, D5.1)" -0.001d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4459
    (write-format "(10X, D5.1)" 1.0d-4)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4460
    (write-format "(10X, D5.1)" -1.0d-4)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4461
    (write-format "(10X, D5.1)" -1.96d-16)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4462
    (write-format "(10X, D5.1)" 3.14159d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4463
    (write-format "(10X, D10.1)" 3)
  "             0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4464
    (write-format "(10X, D10.1)" -3)
  "            -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4465
    (write-format "(10X, D10.1)" 10)
  "             0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4466
    (write-format "(10X, D10.1)" -10)
  "            -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4467
    (write-format "(10X, D10.1)" 100)
  "             0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4468
    (write-format "(10X, D10.1)" -100)
  "            -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4469
    (write-format "(10X, D10.1)" 1000)
  "             0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4470
    (write-format "(10X, D10.1)" -1000)
  "            -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4471
    (write-format "(10X, D10.1)" 10000)
  "             0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4472
    (write-format "(10X, D10.1)" -10000)
  "            -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4473
    (write-format "(10X, D10.1)" 100000)
  "             0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4474
    (write-format "(10X, D10.1)" -100000)
  "            -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4475
    (write-format "(10X, D10.1)" 123456789)
  "             0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4476
    (write-format "(10X, D10.1)" 0.1d0)
  "             0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4477
    (write-format "(10X, D10.1)" -0.1d0)
  "            -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4478
    (write-format "(10X, D10.1)" 0.01d0)
  "             0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4479
    (write-format "(10X, D10.1)" -0.01d0)
  "            -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4480
    (write-format "(10X, D10.1)" 0.001d0)
  "             0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4481
    (write-format "(10X, D10.1)" -0.001d0)
  "            -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4482
    (write-format "(10X, D10.1)" 1.0d-4)
  "             0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4483
    (write-format "(10X, D10.1)" -1.0d-4)
  "            -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4484
    (write-format "(10X, D10.1)" -1.96d-16)
  "            -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4485
    (write-format "(10X, D10.1)" 3.14159d0)
  "             0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4486
    (write-format "(10X, D2.2)" 3)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4487
    (write-format "(10X, D2.2)" -3)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4488
    (write-format "(10X, D2.2)" 10)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4489
    (write-format "(10X, D2.2)" -10)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4490
    (write-format "(10X, D2.2)" 100)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4491
    (write-format "(10X, D2.2)" -100)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4492
    (write-format "(10X, D2.2)" 1000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4493
    (write-format "(10X, D2.2)" -1000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4494
    (write-format "(10X, D2.2)" 10000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4495
    (write-format "(10X, D2.2)" -10000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4496
    (write-format "(10X, D2.2)" 100000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4497
    (write-format "(10X, D2.2)" -100000)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4498
    (write-format "(10X, D2.2)" 123456789)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4499
    (write-format "(10X, D2.2)" 0.1d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4500
    (write-format "(10X, D2.2)" -0.1d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4501
    (write-format "(10X, D2.2)" 0.01d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4502
    (write-format "(10X, D2.2)" -0.01d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4503
    (write-format "(10X, D2.2)" 0.001d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4504
    (write-format "(10X, D2.2)" -0.001d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4505
    (write-format "(10X, D2.2)" 1.0d-4)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4506
    (write-format "(10X, D2.2)" -1.0d-4)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4507
    (write-format "(10X, D2.2)" -1.96d-16)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4508
    (write-format "(10X, D2.2)" 3.14159d0)
  "          **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4509
    (write-format "(10X, D3.2)" 3)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4510
    (write-format "(10X, D3.2)" -3)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4511
    (write-format "(10X, D3.2)" 10)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4512
    (write-format "(10X, D3.2)" -10)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4513
    (write-format "(10X, D3.2)" 100)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4514
    (write-format "(10X, D3.2)" -100)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4515
    (write-format "(10X, D3.2)" 1000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4516
    (write-format "(10X, D3.2)" -1000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4517
    (write-format "(10X, D3.2)" 10000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4518
    (write-format "(10X, D3.2)" -10000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4519
    (write-format "(10X, D3.2)" 100000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4520
    (write-format "(10X, D3.2)" -100000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4521
    (write-format "(10X, D3.2)" 123456789)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4522
    (write-format "(10X, D3.2)" 0.1d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4523
    (write-format "(10X, D3.2)" -0.1d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4524
    (write-format "(10X, D3.2)" 0.01d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4525
    (write-format "(10X, D3.2)" -0.01d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4526
    (write-format "(10X, D3.2)" 0.001d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4527
    (write-format "(10X, D3.2)" -0.001d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4528
    (write-format "(10X, D3.2)" 1.0d-4)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4529
    (write-format "(10X, D3.2)" -1.0d-4)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4530
    (write-format "(10X, D3.2)" -1.96d-16)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4531
    (write-format "(10X, D3.2)" 3.14159d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4532
    (write-format "(10X, D4.2)" 3)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4533
    (write-format "(10X, D4.2)" -3)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4534
    (write-format "(10X, D4.2)" 10)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4535
    (write-format "(10X, D4.2)" -10)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4536
    (write-format "(10X, D4.2)" 100)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4537
    (write-format "(10X, D4.2)" -100)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4538
    (write-format "(10X, D4.2)" 1000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4539
    (write-format "(10X, D4.2)" -1000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4540
    (write-format "(10X, D4.2)" 10000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4541
    (write-format "(10X, D4.2)" -10000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4542
    (write-format "(10X, D4.2)" 100000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4543
    (write-format "(10X, D4.2)" -100000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4544
    (write-format "(10X, D4.2)" 123456789)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4545
    (write-format "(10X, D4.2)" 0.1d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4546
    (write-format "(10X, D4.2)" -0.1d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4547
    (write-format "(10X, D4.2)" 0.01d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4548
    (write-format "(10X, D4.2)" -0.01d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4549
    (write-format "(10X, D4.2)" 0.001d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4550
    (write-format "(10X, D4.2)" -0.001d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4551
    (write-format "(10X, D4.2)" 1.0d-4)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4552
    (write-format "(10X, D4.2)" -1.0d-4)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4553
    (write-format "(10X, D4.2)" -1.96d-16)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4554
    (write-format "(10X, D4.2)" 3.14159d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4555
    (write-format "(10X, D5.2)" 3)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4556
    (write-format "(10X, D5.2)" -3)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4557
    (write-format "(10X, D5.2)" 10)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4558
    (write-format "(10X, D5.2)" -10)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4559
    (write-format "(10X, D5.2)" 100)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4560
    (write-format "(10X, D5.2)" -100)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4561
    (write-format "(10X, D5.2)" 1000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4562
    (write-format "(10X, D5.2)" -1000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4563
    (write-format "(10X, D5.2)" 10000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4564
    (write-format "(10X, D5.2)" -10000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4565
    (write-format "(10X, D5.2)" 100000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4566
    (write-format "(10X, D5.2)" -100000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4567
    (write-format "(10X, D5.2)" 123456789)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4568
    (write-format "(10X, D5.2)" 0.1d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4569
    (write-format "(10X, D5.2)" -0.1d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4570
    (write-format "(10X, D5.2)" 0.01d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4571
    (write-format "(10X, D5.2)" -0.01d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4572
    (write-format "(10X, D5.2)" 0.001d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4573
    (write-format "(10X, D5.2)" -0.001d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4574
    (write-format "(10X, D5.2)" 1.0d-4)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4575
    (write-format "(10X, D5.2)" -1.0d-4)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4576
    (write-format "(10X, D5.2)" -1.96d-16)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4577
    (write-format "(10X, D5.2)" 3.14159d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4578
    (write-format "(10X, D10.2)" 3)
  "            0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4579
    (write-format "(10X, D10.2)" -3)
  "           -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4580
    (write-format "(10X, D10.2)" 10)
  "            0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4581
    (write-format "(10X, D10.2)" -10)
  "           -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4582
    (write-format "(10X, D10.2)" 100)
  "            0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4583
    (write-format "(10X, D10.2)" -100)
  "           -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4584
    (write-format "(10X, D10.2)" 1000)
  "            0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4585
    (write-format "(10X, D10.2)" -1000)
  "           -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4586
    (write-format "(10X, D10.2)" 10000)
  "            0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4587
    (write-format "(10X, D10.2)" -10000)
  "           -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4588
    (write-format "(10X, D10.2)" 100000)
  "            0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4589
    (write-format "(10X, D10.2)" -100000)
  "           -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4590
    (write-format "(10X, D10.2)" 123456789)
  "            0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4591
    (write-format "(10X, D10.2)" 0.1d0)
  "            0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4592
    (write-format "(10X, D10.2)" -0.1d0)
  "           -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4593
    (write-format "(10X, D10.2)" 0.01d0)
  "            0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4594
    (write-format "(10X, D10.2)" -0.01d0)
  "           -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4595
    (write-format "(10X, D10.2)" 0.001d0)
  "            0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4596
    (write-format "(10X, D10.2)" -0.001d0)
  "           -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4597
    (write-format "(10X, D10.2)" 1.0d-4)
  "            0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4598
    (write-format "(10X, D10.2)" -1.0d-4)
  "           -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4599
    (write-format "(10X, D10.2)" -1.96d-16)
  "           -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4600
    (write-format "(10X, D10.2)" 3.14159d0)
  "            0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4601
    (write-format "(10X, D3.3)" 3)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4602
    (write-format "(10X, D3.3)" -3)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4603
    (write-format "(10X, D3.3)" 10)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4604
    (write-format "(10X, D3.3)" -10)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4605
    (write-format "(10X, D3.3)" 100)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4606
    (write-format "(10X, D3.3)" -100)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4607
    (write-format "(10X, D3.3)" 1000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4608
    (write-format "(10X, D3.3)" -1000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4609
    (write-format "(10X, D3.3)" 10000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4610
    (write-format "(10X, D3.3)" -10000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4611
    (write-format "(10X, D3.3)" 100000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4612
    (write-format "(10X, D3.3)" -100000)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4613
    (write-format "(10X, D3.3)" 123456789)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4614
    (write-format "(10X, D3.3)" 0.1d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4615
    (write-format "(10X, D3.3)" -0.1d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4616
    (write-format "(10X, D3.3)" 0.01d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4617
    (write-format "(10X, D3.3)" -0.01d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4618
    (write-format "(10X, D3.3)" 0.001d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4619
    (write-format "(10X, D3.3)" -0.001d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4620
    (write-format "(10X, D3.3)" 1.0d-4)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4621
    (write-format "(10X, D3.3)" -1.0d-4)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4622
    (write-format "(10X, D3.3)" -1.96d-16)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4623
    (write-format "(10X, D3.3)" 3.14159d0)
  "          ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4624
    (write-format "(10X, D4.3)" 3)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4625
    (write-format "(10X, D4.3)" -3)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4626
    (write-format "(10X, D4.3)" 10)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4627
    (write-format "(10X, D4.3)" -10)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4628
    (write-format "(10X, D4.3)" 100)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4629
    (write-format "(10X, D4.3)" -100)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4630
    (write-format "(10X, D4.3)" 1000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4631
    (write-format "(10X, D4.3)" -1000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4632
    (write-format "(10X, D4.3)" 10000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4633
    (write-format "(10X, D4.3)" -10000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4634
    (write-format "(10X, D4.3)" 100000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4635
    (write-format "(10X, D4.3)" -100000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4636
    (write-format "(10X, D4.3)" 123456789)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4637
    (write-format "(10X, D4.3)" 0.1d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4638
    (write-format "(10X, D4.3)" -0.1d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4639
    (write-format "(10X, D4.3)" 0.01d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4640
    (write-format "(10X, D4.3)" -0.01d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4641
    (write-format "(10X, D4.3)" 0.001d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4642
    (write-format "(10X, D4.3)" -0.001d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4643
    (write-format "(10X, D4.3)" 1.0d-4)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4644
    (write-format "(10X, D4.3)" -1.0d-4)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4645
    (write-format "(10X, D4.3)" -1.96d-16)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4646
    (write-format "(10X, D4.3)" 3.14159d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4647
    (write-format "(10X, D5.3)" 3)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4648
    (write-format "(10X, D5.3)" -3)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4649
    (write-format "(10X, D5.3)" 10)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4650
    (write-format "(10X, D5.3)" -10)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4651
    (write-format "(10X, D5.3)" 100)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4652
    (write-format "(10X, D5.3)" -100)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4653
    (write-format "(10X, D5.3)" 1000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4654
    (write-format "(10X, D5.3)" -1000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4655
    (write-format "(10X, D5.3)" 10000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4656
    (write-format "(10X, D5.3)" -10000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4657
    (write-format "(10X, D5.3)" 100000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4658
    (write-format "(10X, D5.3)" -100000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4659
    (write-format "(10X, D5.3)" 123456789)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4660
    (write-format "(10X, D5.3)" 0.1d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4661
    (write-format "(10X, D5.3)" -0.1d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4662
    (write-format "(10X, D5.3)" 0.01d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4663
    (write-format "(10X, D5.3)" -0.01d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4664
    (write-format "(10X, D5.3)" 0.001d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4665
    (write-format "(10X, D5.3)" -0.001d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4666
    (write-format "(10X, D5.3)" 1.0d-4)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4667
    (write-format "(10X, D5.3)" -1.0d-4)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4668
    (write-format "(10X, D5.3)" -1.96d-16)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4669
    (write-format "(10X, D5.3)" 3.14159d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4670
    (write-format "(10X, D10.3)" 3)
  "           0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4671
    (write-format "(10X, D10.3)" -3)
  "          -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4672
    (write-format "(10X, D10.3)" 10)
  "           0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4673
    (write-format "(10X, D10.3)" -10)
  "          -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4674
    (write-format "(10X, D10.3)" 100)
  "           0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4675
    (write-format "(10X, D10.3)" -100)
  "          -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4676
    (write-format "(10X, D10.3)" 1000)
  "           0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4677
    (write-format "(10X, D10.3)" -1000)
  "          -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4678
    (write-format "(10X, D10.3)" 10000)
  "           0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4679
    (write-format "(10X, D10.3)" -10000)
  "          -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4680
    (write-format "(10X, D10.3)" 100000)
  "           0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4681
    (write-format "(10X, D10.3)" -100000)
  "          -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4682
    (write-format "(10X, D10.3)" 123456789)
  "           0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4683
    (write-format "(10X, D10.3)" 0.1d0)
  "           0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4684
    (write-format "(10X, D10.3)" -0.1d0)
  "          -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4685
    (write-format "(10X, D10.3)" 0.01d0)
  "           0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4686
    (write-format "(10X, D10.3)" -0.01d0)
  "          -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4687
    (write-format "(10X, D10.3)" 0.001d0)
  "           0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4688
    (write-format "(10X, D10.3)" -0.001d0)
  "          -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4689
    (write-format "(10X, D10.3)" 1.0d-4)
  "           0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4690
    (write-format "(10X, D10.3)" -1.0d-4)
  "          -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4691
    (write-format "(10X, D10.3)" -1.96d-16)
  "          -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4692
    (write-format "(10X, D10.3)" 3.14159d0)
  "           0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4693
    (write-format "(10X, D4.4)" 3)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4694
    (write-format "(10X, D4.4)" -3)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4695
    (write-format "(10X, D4.4)" 10)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4696
    (write-format "(10X, D4.4)" -10)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4697
    (write-format "(10X, D4.4)" 100)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4698
    (write-format "(10X, D4.4)" -100)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4699
    (write-format "(10X, D4.4)" 1000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4700
    (write-format "(10X, D4.4)" -1000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4701
    (write-format "(10X, D4.4)" 10000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4702
    (write-format "(10X, D4.4)" -10000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4703
    (write-format "(10X, D4.4)" 100000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4704
    (write-format "(10X, D4.4)" -100000)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4705
    (write-format "(10X, D4.4)" 123456789)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4706
    (write-format "(10X, D4.4)" 0.1d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4707
    (write-format "(10X, D4.4)" -0.1d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4708
    (write-format "(10X, D4.4)" 0.01d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4709
    (write-format "(10X, D4.4)" -0.01d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4710
    (write-format "(10X, D4.4)" 0.001d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4711
    (write-format "(10X, D4.4)" -0.001d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4712
    (write-format "(10X, D4.4)" 1.0d-4)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4713
    (write-format "(10X, D4.4)" -1.0d-4)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4714
    (write-format "(10X, D4.4)" -1.96d-16)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4715
    (write-format "(10X, D4.4)" 3.14159d0)
  "          ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4716
    (write-format "(10X, D5.4)" 3)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4717
    (write-format "(10X, D5.4)" -3)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4718
    (write-format "(10X, D5.4)" 10)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4719
    (write-format "(10X, D5.4)" -10)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4720
    (write-format "(10X, D5.4)" 100)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4721
    (write-format "(10X, D5.4)" -100)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4722
    (write-format "(10X, D5.4)" 1000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4723
    (write-format "(10X, D5.4)" -1000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4724
    (write-format "(10X, D5.4)" 10000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4725
    (write-format "(10X, D5.4)" -10000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4726
    (write-format "(10X, D5.4)" 100000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4727
    (write-format "(10X, D5.4)" -100000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4728
    (write-format "(10X, D5.4)" 123456789)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4729
    (write-format "(10X, D5.4)" 0.1d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4730
    (write-format "(10X, D5.4)" -0.1d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4731
    (write-format "(10X, D5.4)" 0.01d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4732
    (write-format "(10X, D5.4)" -0.01d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4733
    (write-format "(10X, D5.4)" 0.001d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4734
    (write-format "(10X, D5.4)" -0.001d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4735
    (write-format "(10X, D5.4)" 1.0d-4)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4736
    (write-format "(10X, D5.4)" -1.0d-4)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4737
    (write-format "(10X, D5.4)" -1.96d-16)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4738
    (write-format "(10X, D5.4)" 3.14159d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4739
    (write-format "(10X, D10.4)" 3)
  "          0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4740
    (write-format "(10X, D10.4)" -3)
  "          -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4741
    (write-format "(10X, D10.4)" 10)
  "          0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4742
    (write-format "(10X, D10.4)" -10)
  "          -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4743
    (write-format "(10X, D10.4)" 100)
  "          0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4744
    (write-format "(10X, D10.4)" -100)
  "          -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4745
    (write-format "(10X, D10.4)" 1000)
  "          0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4746
    (write-format "(10X, D10.4)" -1000)
  "          -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4747
    (write-format "(10X, D10.4)" 10000)
  "          0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4748
    (write-format "(10X, D10.4)" -10000)
  "          -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4749
    (write-format "(10X, D10.4)" 100000)
  "          0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4750
    (write-format "(10X, D10.4)" -100000)
  "          -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4751
    (write-format "(10X, D10.4)" 123456789)
  "          0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4752
    (write-format "(10X, D10.4)" 0.1d0)
  "          0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4753
    (write-format "(10X, D10.4)" -0.1d0)
  "          -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4754
    (write-format "(10X, D10.4)" 0.01d0)
  "          0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4755
    (write-format "(10X, D10.4)" -0.01d0)
  "          -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4756
    (write-format "(10X, D10.4)" 0.001d0)
  "          0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4757
    (write-format "(10X, D10.4)" -0.001d0)
  "          -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4758
    (write-format "(10X, D10.4)" 1.0d-4)
  "          0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4759
    (write-format "(10X, D10.4)" -1.0d-4)
  "          -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4760
    (write-format "(10X, D10.4)" -1.96d-16)
  "          -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4761
    (write-format "(10X, D10.4)" 3.14159d0)
  "          0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4762
    (write-format "(10X, D5.5)" 3)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4763
    (write-format "(10X, D5.5)" -3)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4764
    (write-format "(10X, D5.5)" 10)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4765
    (write-format "(10X, D5.5)" -10)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4766
    (write-format "(10X, D5.5)" 100)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4767
    (write-format "(10X, D5.5)" -100)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4768
    (write-format "(10X, D5.5)" 1000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4769
    (write-format "(10X, D5.5)" -1000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4770
    (write-format "(10X, D5.5)" 10000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4771
    (write-format "(10X, D5.5)" -10000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4772
    (write-format "(10X, D5.5)" 100000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4773
    (write-format "(10X, D5.5)" -100000)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4774
    (write-format "(10X, D5.5)" 123456789)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4775
    (write-format "(10X, D5.5)" 0.1d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4776
    (write-format "(10X, D5.5)" -0.1d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4777
    (write-format "(10X, D5.5)" 0.01d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4778
    (write-format "(10X, D5.5)" -0.01d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4779
    (write-format "(10X, D5.5)" 0.001d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4780
    (write-format "(10X, D5.5)" -0.001d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4781
    (write-format "(10X, D5.5)" 1.0d-4)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4782
    (write-format "(10X, D5.5)" -1.0d-4)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4783
    (write-format "(10X, D5.5)" -1.96d-16)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4784
    (write-format "(10X, D5.5)" 3.14159d0)
  "          *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4785
    (write-format "(10X, D10.5)" 3)
  "          .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4786
    (write-format "(10X, D10.5)" -3)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4787
    (write-format "(10X, D10.5)" 10)
  "          .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4788
    (write-format "(10X, D10.5)" -10)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4789
    (write-format "(10X, D10.5)" 100)
  "          .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4790
    (write-format "(10X, D10.5)" -100)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4791
    (write-format "(10X, D10.5)" 1000)
  "          .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4792
    (write-format "(10X, D10.5)" -1000)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4793
    (write-format "(10X, D10.5)" 10000)
  "          .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4794
    (write-format "(10X, D10.5)" -10000)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4795
    (write-format "(10X, D10.5)" 100000)
  "          .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4796
    (write-format "(10X, D10.5)" -100000)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4797
    (write-format "(10X, D10.5)" 123456789)
  "          .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4798
    (write-format "(10X, D10.5)" 0.1d0)
  "          .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4799
    (write-format "(10X, D10.5)" -0.1d0)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4800
    (write-format "(10X, D10.5)" 0.01d0)
  "          .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4801
    (write-format "(10X, D10.5)" -0.01d0)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4802
    (write-format "(10X, D10.5)" 0.001d0)
  "          .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4803
    (write-format "(10X, D10.5)" -0.001d0)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4804
    (write-format "(10X, D10.5)" 1.0d-4)
  "          .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4805
    (write-format "(10X, D10.5)" -1.0d-4)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4806
    (write-format "(10X, D10.5)" -1.96d-16)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4807
    (write-format "(10X, D10.5)" 3.14159d0)
  "          .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4808
    (write-format "(10X, D10.10)" 3)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4809
    (write-format "(10X, D10.10)" -3)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4810
    (write-format "(10X, D10.10)" 10)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4811
    (write-format "(10X, D10.10)" -10)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4812
    (write-format "(10X, D10.10)" 100)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4813
    (write-format "(10X, D10.10)" -100)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4814
    (write-format "(10X, D10.10)" 1000)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4815
    (write-format "(10X, D10.10)" -1000)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4816
    (write-format "(10X, D10.10)" 10000)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4817
    (write-format "(10X, D10.10)" -10000)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4818
    (write-format "(10X, D10.10)" 100000)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4819
    (write-format "(10X, D10.10)" -100000)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4820
    (write-format "(10X, D10.10)" 123456789)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4821
    (write-format "(10X, D10.10)" 0.1d0)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4822
    (write-format "(10X, D10.10)" -0.1d0)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4823
    (write-format "(10X, D10.10)" 0.01d0)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4824
    (write-format "(10X, D10.10)" -0.01d0)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4825
    (write-format "(10X, D10.10)" 0.001d0)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4826
    (write-format "(10X, D10.10)" -0.001d0)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4827
    (write-format "(10X, D10.10)" 1.0d-4)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4828
    (write-format "(10X, D10.10)" -1.0d-4)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4829
    (write-format "(10X, D10.10)" -1.96d-16)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4830
    (write-format "(10X, D10.10)" 3.14159d0)
  "          **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4831
    (write-format "(25X, D1.1)" 3)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4832
    (write-format "(25X, D1.1)" -3)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4833
    (write-format "(25X, D1.1)" 10)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4834
    (write-format "(25X, D1.1)" -10)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4835
    (write-format "(25X, D1.1)" 100)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4836
    (write-format "(25X, D1.1)" -100)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4837
    (write-format "(25X, D1.1)" 1000)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4838
    (write-format "(25X, D1.1)" -1000)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4839
    (write-format "(25X, D1.1)" 10000)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4840
    (write-format "(25X, D1.1)" -10000)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4841
    (write-format "(25X, D1.1)" 100000)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4842
    (write-format "(25X, D1.1)" -100000)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4843
    (write-format "(25X, D1.1)" 123456789)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4844
    (write-format "(25X, D1.1)" 0.1d0)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4845
    (write-format "(25X, D1.1)" -0.1d0)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4846
    (write-format "(25X, D1.1)" 0.01d0)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4847
    (write-format "(25X, D1.1)" -0.01d0)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4848
    (write-format "(25X, D1.1)" 0.001d0)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4849
    (write-format "(25X, D1.1)" -0.001d0)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4850
    (write-format "(25X, D1.1)" 1.0d-4)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4851
    (write-format "(25X, D1.1)" -1.0d-4)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4852
    (write-format "(25X, D1.1)" -1.96d-16)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4853
    (write-format "(25X, D1.1)" 3.14159d0)
  "                         *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4854
    (write-format "(25X, D2.1)" 3)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4855
    (write-format "(25X, D2.1)" -3)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4856
    (write-format "(25X, D2.1)" 10)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4857
    (write-format "(25X, D2.1)" -10)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4858
    (write-format "(25X, D2.1)" 100)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4859
    (write-format "(25X, D2.1)" -100)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4860
    (write-format "(25X, D2.1)" 1000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4861
    (write-format "(25X, D2.1)" -1000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4862
    (write-format "(25X, D2.1)" 10000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4863
    (write-format "(25X, D2.1)" -10000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4864
    (write-format "(25X, D2.1)" 100000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4865
    (write-format "(25X, D2.1)" -100000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4866
    (write-format "(25X, D2.1)" 123456789)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4867
    (write-format "(25X, D2.1)" 0.1d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4868
    (write-format "(25X, D2.1)" -0.1d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4869
    (write-format "(25X, D2.1)" 0.01d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4870
    (write-format "(25X, D2.1)" -0.01d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4871
    (write-format "(25X, D2.1)" 0.001d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4872
    (write-format "(25X, D2.1)" -0.001d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4873
    (write-format "(25X, D2.1)" 1.0d-4)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4874
    (write-format "(25X, D2.1)" -1.0d-4)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4875
    (write-format "(25X, D2.1)" -1.96d-16)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4876
    (write-format "(25X, D2.1)" 3.14159d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4877
    (write-format "(25X, D3.1)" 3)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4878
    (write-format "(25X, D3.1)" -3)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4879
    (write-format "(25X, D3.1)" 10)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4880
    (write-format "(25X, D3.1)" -10)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4881
    (write-format "(25X, D3.1)" 100)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4882
    (write-format "(25X, D3.1)" -100)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4883
    (write-format "(25X, D3.1)" 1000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4884
    (write-format "(25X, D3.1)" -1000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4885
    (write-format "(25X, D3.1)" 10000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4886
    (write-format "(25X, D3.1)" -10000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4887
    (write-format "(25X, D3.1)" 100000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4888
    (write-format "(25X, D3.1)" -100000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4889
    (write-format "(25X, D3.1)" 123456789)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4890
    (write-format "(25X, D3.1)" 0.1d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4891
    (write-format "(25X, D3.1)" -0.1d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4892
    (write-format "(25X, D3.1)" 0.01d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4893
    (write-format "(25X, D3.1)" -0.01d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4894
    (write-format "(25X, D3.1)" 0.001d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4895
    (write-format "(25X, D3.1)" -0.001d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4896
    (write-format "(25X, D3.1)" 1.0d-4)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4897
    (write-format "(25X, D3.1)" -1.0d-4)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4898
    (write-format "(25X, D3.1)" -1.96d-16)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4899
    (write-format "(25X, D3.1)" 3.14159d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4900
    (write-format "(25X, D4.1)" 3)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4901
    (write-format "(25X, D4.1)" -3)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4902
    (write-format "(25X, D4.1)" 10)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4903
    (write-format "(25X, D4.1)" -10)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4904
    (write-format "(25X, D4.1)" 100)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4905
    (write-format "(25X, D4.1)" -100)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4906
    (write-format "(25X, D4.1)" 1000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4907
    (write-format "(25X, D4.1)" -1000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4908
    (write-format "(25X, D4.1)" 10000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4909
    (write-format "(25X, D4.1)" -10000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4910
    (write-format "(25X, D4.1)" 100000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4911
    (write-format "(25X, D4.1)" -100000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4912
    (write-format "(25X, D4.1)" 123456789)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4913
    (write-format "(25X, D4.1)" 0.1d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4914
    (write-format "(25X, D4.1)" -0.1d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4915
    (write-format "(25X, D4.1)" 0.01d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4916
    (write-format "(25X, D4.1)" -0.01d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4917
    (write-format "(25X, D4.1)" 0.001d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4918
    (write-format "(25X, D4.1)" -0.001d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4919
    (write-format "(25X, D4.1)" 1.0d-4)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4920
    (write-format "(25X, D4.1)" -1.0d-4)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4921
    (write-format "(25X, D4.1)" -1.96d-16)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4922
    (write-format "(25X, D4.1)" 3.14159d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4923
    (write-format "(25X, D5.1)" 3)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4924
    (write-format "(25X, D5.1)" -3)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4925
    (write-format "(25X, D5.1)" 10)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4926
    (write-format "(25X, D5.1)" -10)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4927
    (write-format "(25X, D5.1)" 100)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4928
    (write-format "(25X, D5.1)" -100)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4929
    (write-format "(25X, D5.1)" 1000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4930
    (write-format "(25X, D5.1)" -1000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4931
    (write-format "(25X, D5.1)" 10000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4932
    (write-format "(25X, D5.1)" -10000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4933
    (write-format "(25X, D5.1)" 100000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4934
    (write-format "(25X, D5.1)" -100000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4935
    (write-format "(25X, D5.1)" 123456789)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4936
    (write-format "(25X, D5.1)" 0.1d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4937
    (write-format "(25X, D5.1)" -0.1d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4938
    (write-format "(25X, D5.1)" 0.01d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4939
    (write-format "(25X, D5.1)" -0.01d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4940
    (write-format "(25X, D5.1)" 0.001d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4941
    (write-format "(25X, D5.1)" -0.001d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4942
    (write-format "(25X, D5.1)" 1.0d-4)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4943
    (write-format "(25X, D5.1)" -1.0d-4)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4944
    (write-format "(25X, D5.1)" -1.96d-16)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4945
    (write-format "(25X, D5.1)" 3.14159d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4946
    (write-format "(25X, D10.1)" 3)
  "                            0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4947
    (write-format "(25X, D10.1)" -3)
  "                           -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4948
    (write-format "(25X, D10.1)" 10)
  "                            0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4949
    (write-format "(25X, D10.1)" -10)
  "                           -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4950
    (write-format "(25X, D10.1)" 100)
  "                            0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4951
    (write-format "(25X, D10.1)" -100)
  "                           -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4952
    (write-format "(25X, D10.1)" 1000)
  "                            0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4953
    (write-format "(25X, D10.1)" -1000)
  "                           -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4954
    (write-format "(25X, D10.1)" 10000)
  "                            0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4955
    (write-format "(25X, D10.1)" -10000)
  "                           -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4956
    (write-format "(25X, D10.1)" 100000)
  "                            0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4957
    (write-format "(25X, D10.1)" -100000)
  "                           -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4958
    (write-format "(25X, D10.1)" 123456789)
  "                            0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4959
    (write-format "(25X, D10.1)" 0.1d0)
  "                            0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4960
    (write-format "(25X, D10.1)" -0.1d0)
  "                           -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4961
    (write-format "(25X, D10.1)" 0.01d0)
  "                            0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4962
    (write-format "(25X, D10.1)" -0.01d0)
  "                           -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4963
    (write-format "(25X, D10.1)" 0.001d0)
  "                            0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4964
    (write-format "(25X, D10.1)" -0.001d0)
  "                           -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4965
    (write-format "(25X, D10.1)" 1.0d-4)
  "                            0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4966
    (write-format "(25X, D10.1)" -1.0d-4)
  "                           -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4967
    (write-format "(25X, D10.1)" -1.96d-16)
  "                           -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4968
    (write-format "(25X, D10.1)" 3.14159d0)
  "                            0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4969
    (write-format "(25X, D2.2)" 3)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4970
    (write-format "(25X, D2.2)" -3)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4971
    (write-format "(25X, D2.2)" 10)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4972
    (write-format "(25X, D2.2)" -10)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4973
    (write-format "(25X, D2.2)" 100)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4974
    (write-format "(25X, D2.2)" -100)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4975
    (write-format "(25X, D2.2)" 1000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4976
    (write-format "(25X, D2.2)" -1000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4977
    (write-format "(25X, D2.2)" 10000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4978
    (write-format "(25X, D2.2)" -10000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4979
    (write-format "(25X, D2.2)" 100000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4980
    (write-format "(25X, D2.2)" -100000)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4981
    (write-format "(25X, D2.2)" 123456789)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4982
    (write-format "(25X, D2.2)" 0.1d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4983
    (write-format "(25X, D2.2)" -0.1d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4984
    (write-format "(25X, D2.2)" 0.01d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4985
    (write-format "(25X, D2.2)" -0.01d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4986
    (write-format "(25X, D2.2)" 0.001d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4987
    (write-format "(25X, D2.2)" -0.001d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4988
    (write-format "(25X, D2.2)" 1.0d-4)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4989
    (write-format "(25X, D2.2)" -1.0d-4)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4990
    (write-format "(25X, D2.2)" -1.96d-16)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4991
    (write-format "(25X, D2.2)" 3.14159d0)
  "                         **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4992
    (write-format "(25X, D3.2)" 3)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4993
    (write-format "(25X, D3.2)" -3)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4994
    (write-format "(25X, D3.2)" 10)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4995
    (write-format "(25X, D3.2)" -10)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4996
    (write-format "(25X, D3.2)" 100)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4997
    (write-format "(25X, D3.2)" -100)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4998
    (write-format "(25X, D3.2)" 1000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.4999
    (write-format "(25X, D3.2)" -1000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5000
    (write-format "(25X, D3.2)" 10000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5001
    (write-format "(25X, D3.2)" -10000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5002
    (write-format "(25X, D3.2)" 100000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5003
    (write-format "(25X, D3.2)" -100000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5004
    (write-format "(25X, D3.2)" 123456789)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5005
    (write-format "(25X, D3.2)" 0.1d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5006
    (write-format "(25X, D3.2)" -0.1d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5007
    (write-format "(25X, D3.2)" 0.01d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5008
    (write-format "(25X, D3.2)" -0.01d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5009
    (write-format "(25X, D3.2)" 0.001d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5010
    (write-format "(25X, D3.2)" -0.001d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5011
    (write-format "(25X, D3.2)" 1.0d-4)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5012
    (write-format "(25X, D3.2)" -1.0d-4)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5013
    (write-format "(25X, D3.2)" -1.96d-16)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5014
    (write-format "(25X, D3.2)" 3.14159d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5015
    (write-format "(25X, D4.2)" 3)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5016
    (write-format "(25X, D4.2)" -3)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5017
    (write-format "(25X, D4.2)" 10)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5018
    (write-format "(25X, D4.2)" -10)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5019
    (write-format "(25X, D4.2)" 100)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5020
    (write-format "(25X, D4.2)" -100)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5021
    (write-format "(25X, D4.2)" 1000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5022
    (write-format "(25X, D4.2)" -1000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5023
    (write-format "(25X, D4.2)" 10000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5024
    (write-format "(25X, D4.2)" -10000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5025
    (write-format "(25X, D4.2)" 100000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5026
    (write-format "(25X, D4.2)" -100000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5027
    (write-format "(25X, D4.2)" 123456789)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5028
    (write-format "(25X, D4.2)" 0.1d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5029
    (write-format "(25X, D4.2)" -0.1d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5030
    (write-format "(25X, D4.2)" 0.01d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5031
    (write-format "(25X, D4.2)" -0.01d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5032
    (write-format "(25X, D4.2)" 0.001d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5033
    (write-format "(25X, D4.2)" -0.001d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5034
    (write-format "(25X, D4.2)" 1.0d-4)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5035
    (write-format "(25X, D4.2)" -1.0d-4)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5036
    (write-format "(25X, D4.2)" -1.96d-16)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5037
    (write-format "(25X, D4.2)" 3.14159d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5038
    (write-format "(25X, D5.2)" 3)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5039
    (write-format "(25X, D5.2)" -3)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5040
    (write-format "(25X, D5.2)" 10)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5041
    (write-format "(25X, D5.2)" -10)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5042
    (write-format "(25X, D5.2)" 100)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5043
    (write-format "(25X, D5.2)" -100)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5044
    (write-format "(25X, D5.2)" 1000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5045
    (write-format "(25X, D5.2)" -1000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5046
    (write-format "(25X, D5.2)" 10000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5047
    (write-format "(25X, D5.2)" -10000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5048
    (write-format "(25X, D5.2)" 100000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5049
    (write-format "(25X, D5.2)" -100000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5050
    (write-format "(25X, D5.2)" 123456789)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5051
    (write-format "(25X, D5.2)" 0.1d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5052
    (write-format "(25X, D5.2)" -0.1d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5053
    (write-format "(25X, D5.2)" 0.01d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5054
    (write-format "(25X, D5.2)" -0.01d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5055
    (write-format "(25X, D5.2)" 0.001d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5056
    (write-format "(25X, D5.2)" -0.001d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5057
    (write-format "(25X, D5.2)" 1.0d-4)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5058
    (write-format "(25X, D5.2)" -1.0d-4)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5059
    (write-format "(25X, D5.2)" -1.96d-16)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5060
    (write-format "(25X, D5.2)" 3.14159d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5061
    (write-format "(25X, D10.2)" 3)
  "                           0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5062
    (write-format "(25X, D10.2)" -3)
  "                          -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5063
    (write-format "(25X, D10.2)" 10)
  "                           0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5064
    (write-format "(25X, D10.2)" -10)
  "                          -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5065
    (write-format "(25X, D10.2)" 100)
  "                           0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5066
    (write-format "(25X, D10.2)" -100)
  "                          -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5067
    (write-format "(25X, D10.2)" 1000)
  "                           0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5068
    (write-format "(25X, D10.2)" -1000)
  "                          -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5069
    (write-format "(25X, D10.2)" 10000)
  "                           0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5070
    (write-format "(25X, D10.2)" -10000)
  "                          -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5071
    (write-format "(25X, D10.2)" 100000)
  "                           0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5072
    (write-format "(25X, D10.2)" -100000)
  "                          -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5073
    (write-format "(25X, D10.2)" 123456789)
  "                           0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5074
    (write-format "(25X, D10.2)" 0.1d0)
  "                           0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5075
    (write-format "(25X, D10.2)" -0.1d0)
  "                          -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5076
    (write-format "(25X, D10.2)" 0.01d0)
  "                           0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5077
    (write-format "(25X, D10.2)" -0.01d0)
  "                          -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5078
    (write-format "(25X, D10.2)" 0.001d0)
  "                           0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5079
    (write-format "(25X, D10.2)" -0.001d0)
  "                          -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5080
    (write-format "(25X, D10.2)" 1.0d-4)
  "                           0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5081
    (write-format "(25X, D10.2)" -1.0d-4)
  "                          -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5082
    (write-format "(25X, D10.2)" -1.96d-16)
  "                          -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5083
    (write-format "(25X, D10.2)" 3.14159d0)
  "                           0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5084
    (write-format "(25X, D3.3)" 3)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5085
    (write-format "(25X, D3.3)" -3)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5086
    (write-format "(25X, D3.3)" 10)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5087
    (write-format "(25X, D3.3)" -10)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5088
    (write-format "(25X, D3.3)" 100)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5089
    (write-format "(25X, D3.3)" -100)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5090
    (write-format "(25X, D3.3)" 1000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5091
    (write-format "(25X, D3.3)" -1000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5092
    (write-format "(25X, D3.3)" 10000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5093
    (write-format "(25X, D3.3)" -10000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5094
    (write-format "(25X, D3.3)" 100000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5095
    (write-format "(25X, D3.3)" -100000)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5096
    (write-format "(25X, D3.3)" 123456789)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5097
    (write-format "(25X, D3.3)" 0.1d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5098
    (write-format "(25X, D3.3)" -0.1d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5099
    (write-format "(25X, D3.3)" 0.01d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5100
    (write-format "(25X, D3.3)" -0.01d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5101
    (write-format "(25X, D3.3)" 0.001d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5102
    (write-format "(25X, D3.3)" -0.001d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5103
    (write-format "(25X, D3.3)" 1.0d-4)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5104
    (write-format "(25X, D3.3)" -1.0d-4)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5105
    (write-format "(25X, D3.3)" -1.96d-16)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5106
    (write-format "(25X, D3.3)" 3.14159d0)
  "                         ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5107
    (write-format "(25X, D4.3)" 3)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5108
    (write-format "(25X, D4.3)" -3)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5109
    (write-format "(25X, D4.3)" 10)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5110
    (write-format "(25X, D4.3)" -10)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5111
    (write-format "(25X, D4.3)" 100)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5112
    (write-format "(25X, D4.3)" -100)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5113
    (write-format "(25X, D4.3)" 1000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5114
    (write-format "(25X, D4.3)" -1000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5115
    (write-format "(25X, D4.3)" 10000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5116
    (write-format "(25X, D4.3)" -10000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5117
    (write-format "(25X, D4.3)" 100000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5118
    (write-format "(25X, D4.3)" -100000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5119
    (write-format "(25X, D4.3)" 123456789)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5120
    (write-format "(25X, D4.3)" 0.1d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5121
    (write-format "(25X, D4.3)" -0.1d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5122
    (write-format "(25X, D4.3)" 0.01d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5123
    (write-format "(25X, D4.3)" -0.01d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5124
    (write-format "(25X, D4.3)" 0.001d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5125
    (write-format "(25X, D4.3)" -0.001d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5126
    (write-format "(25X, D4.3)" 1.0d-4)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5127
    (write-format "(25X, D4.3)" -1.0d-4)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5128
    (write-format "(25X, D4.3)" -1.96d-16)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5129
    (write-format "(25X, D4.3)" 3.14159d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5130
    (write-format "(25X, D5.3)" 3)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5131
    (write-format "(25X, D5.3)" -3)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5132
    (write-format "(25X, D5.3)" 10)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5133
    (write-format "(25X, D5.3)" -10)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5134
    (write-format "(25X, D5.3)" 100)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5135
    (write-format "(25X, D5.3)" -100)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5136
    (write-format "(25X, D5.3)" 1000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5137
    (write-format "(25X, D5.3)" -1000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5138
    (write-format "(25X, D5.3)" 10000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5139
    (write-format "(25X, D5.3)" -10000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5140
    (write-format "(25X, D5.3)" 100000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5141
    (write-format "(25X, D5.3)" -100000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5142
    (write-format "(25X, D5.3)" 123456789)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5143
    (write-format "(25X, D5.3)" 0.1d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5144
    (write-format "(25X, D5.3)" -0.1d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5145
    (write-format "(25X, D5.3)" 0.01d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5146
    (write-format "(25X, D5.3)" -0.01d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5147
    (write-format "(25X, D5.3)" 0.001d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5148
    (write-format "(25X, D5.3)" -0.001d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5149
    (write-format "(25X, D5.3)" 1.0d-4)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5150
    (write-format "(25X, D5.3)" -1.0d-4)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5151
    (write-format "(25X, D5.3)" -1.96d-16)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5152
    (write-format "(25X, D5.3)" 3.14159d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5153
    (write-format "(25X, D10.3)" 3)
  "                          0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5154
    (write-format "(25X, D10.3)" -3)
  "                         -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5155
    (write-format "(25X, D10.3)" 10)
  "                          0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5156
    (write-format "(25X, D10.3)" -10)
  "                         -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5157
    (write-format "(25X, D10.3)" 100)
  "                          0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5158
    (write-format "(25X, D10.3)" -100)
  "                         -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5159
    (write-format "(25X, D10.3)" 1000)
  "                          0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5160
    (write-format "(25X, D10.3)" -1000)
  "                         -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5161
    (write-format "(25X, D10.3)" 10000)
  "                          0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5162
    (write-format "(25X, D10.3)" -10000)
  "                         -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5163
    (write-format "(25X, D10.3)" 100000)
  "                          0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5164
    (write-format "(25X, D10.3)" -100000)
  "                         -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5165
    (write-format "(25X, D10.3)" 123456789)
  "                          0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5166
    (write-format "(25X, D10.3)" 0.1d0)
  "                          0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5167
    (write-format "(25X, D10.3)" -0.1d0)
  "                         -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5168
    (write-format "(25X, D10.3)" 0.01d0)
  "                          0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5169
    (write-format "(25X, D10.3)" -0.01d0)
  "                         -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5170
    (write-format "(25X, D10.3)" 0.001d0)
  "                          0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5171
    (write-format "(25X, D10.3)" -0.001d0)
  "                         -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5172
    (write-format "(25X, D10.3)" 1.0d-4)
  "                          0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5173
    (write-format "(25X, D10.3)" -1.0d-4)
  "                         -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5174
    (write-format "(25X, D10.3)" -1.96d-16)
  "                         -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5175
    (write-format "(25X, D10.3)" 3.14159d0)
  "                          0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5176
    (write-format "(25X, D4.4)" 3)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5177
    (write-format "(25X, D4.4)" -3)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5178
    (write-format "(25X, D4.4)" 10)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5179
    (write-format "(25X, D4.4)" -10)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5180
    (write-format "(25X, D4.4)" 100)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5181
    (write-format "(25X, D4.4)" -100)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5182
    (write-format "(25X, D4.4)" 1000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5183
    (write-format "(25X, D4.4)" -1000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5184
    (write-format "(25X, D4.4)" 10000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5185
    (write-format "(25X, D4.4)" -10000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5186
    (write-format "(25X, D4.4)" 100000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5187
    (write-format "(25X, D4.4)" -100000)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5188
    (write-format "(25X, D4.4)" 123456789)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5189
    (write-format "(25X, D4.4)" 0.1d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5190
    (write-format "(25X, D4.4)" -0.1d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5191
    (write-format "(25X, D4.4)" 0.01d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5192
    (write-format "(25X, D4.4)" -0.01d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5193
    (write-format "(25X, D4.4)" 0.001d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5194
    (write-format "(25X, D4.4)" -0.001d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5195
    (write-format "(25X, D4.4)" 1.0d-4)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5196
    (write-format "(25X, D4.4)" -1.0d-4)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5197
    (write-format "(25X, D4.4)" -1.96d-16)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5198
    (write-format "(25X, D4.4)" 3.14159d0)
  "                         ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5199
    (write-format "(25X, D5.4)" 3)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5200
    (write-format "(25X, D5.4)" -3)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5201
    (write-format "(25X, D5.4)" 10)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5202
    (write-format "(25X, D5.4)" -10)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5203
    (write-format "(25X, D5.4)" 100)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5204
    (write-format "(25X, D5.4)" -100)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5205
    (write-format "(25X, D5.4)" 1000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5206
    (write-format "(25X, D5.4)" -1000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5207
    (write-format "(25X, D5.4)" 10000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5208
    (write-format "(25X, D5.4)" -10000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5209
    (write-format "(25X, D5.4)" 100000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5210
    (write-format "(25X, D5.4)" -100000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5211
    (write-format "(25X, D5.4)" 123456789)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5212
    (write-format "(25X, D5.4)" 0.1d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5213
    (write-format "(25X, D5.4)" -0.1d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5214
    (write-format "(25X, D5.4)" 0.01d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5215
    (write-format "(25X, D5.4)" -0.01d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5216
    (write-format "(25X, D5.4)" 0.001d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5217
    (write-format "(25X, D5.4)" -0.001d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5218
    (write-format "(25X, D5.4)" 1.0d-4)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5219
    (write-format "(25X, D5.4)" -1.0d-4)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5220
    (write-format "(25X, D5.4)" -1.96d-16)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5221
    (write-format "(25X, D5.4)" 3.14159d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5222
    (write-format "(25X, D10.4)" 3)
  "                         0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5223
    (write-format "(25X, D10.4)" -3)
  "                         -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5224
    (write-format "(25X, D10.4)" 10)
  "                         0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5225
    (write-format "(25X, D10.4)" -10)
  "                         -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5226
    (write-format "(25X, D10.4)" 100)
  "                         0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5227
    (write-format "(25X, D10.4)" -100)
  "                         -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5228
    (write-format "(25X, D10.4)" 1000)
  "                         0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5229
    (write-format "(25X, D10.4)" -1000)
  "                         -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5230
    (write-format "(25X, D10.4)" 10000)
  "                         0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5231
    (write-format "(25X, D10.4)" -10000)
  "                         -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5232
    (write-format "(25X, D10.4)" 100000)
  "                         0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5233
    (write-format "(25X, D10.4)" -100000)
  "                         -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5234
    (write-format "(25X, D10.4)" 123456789)
  "                         0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5235
    (write-format "(25X, D10.4)" 0.1d0)
  "                         0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5236
    (write-format "(25X, D10.4)" -0.1d0)
  "                         -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5237
    (write-format "(25X, D10.4)" 0.01d0)
  "                         0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5238
    (write-format "(25X, D10.4)" -0.01d0)
  "                         -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5239
    (write-format "(25X, D10.4)" 0.001d0)
  "                         0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5240
    (write-format "(25X, D10.4)" -0.001d0)
  "                         -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5241
    (write-format "(25X, D10.4)" 1.0d-4)
  "                         0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5242
    (write-format "(25X, D10.4)" -1.0d-4)
  "                         -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5243
    (write-format "(25X, D10.4)" -1.96d-16)
  "                         -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5244
    (write-format "(25X, D10.4)" 3.14159d0)
  "                         0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5245
    (write-format "(25X, D5.5)" 3)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5246
    (write-format "(25X, D5.5)" -3)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5247
    (write-format "(25X, D5.5)" 10)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5248
    (write-format "(25X, D5.5)" -10)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5249
    (write-format "(25X, D5.5)" 100)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5250
    (write-format "(25X, D5.5)" -100)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5251
    (write-format "(25X, D5.5)" 1000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5252
    (write-format "(25X, D5.5)" -1000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5253
    (write-format "(25X, D5.5)" 10000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5254
    (write-format "(25X, D5.5)" -10000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5255
    (write-format "(25X, D5.5)" 100000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5256
    (write-format "(25X, D5.5)" -100000)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5257
    (write-format "(25X, D5.5)" 123456789)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5258
    (write-format "(25X, D5.5)" 0.1d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5259
    (write-format "(25X, D5.5)" -0.1d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5260
    (write-format "(25X, D5.5)" 0.01d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5261
    (write-format "(25X, D5.5)" -0.01d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5262
    (write-format "(25X, D5.5)" 0.001d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5263
    (write-format "(25X, D5.5)" -0.001d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5264
    (write-format "(25X, D5.5)" 1.0d-4)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5265
    (write-format "(25X, D5.5)" -1.0d-4)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5266
    (write-format "(25X, D5.5)" -1.96d-16)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5267
    (write-format "(25X, D5.5)" 3.14159d0)
  "                         *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5268
    (write-format "(25X, D10.5)" 3)
  "                         .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5269
    (write-format "(25X, D10.5)" -3)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5270
    (write-format "(25X, D10.5)" 10)
  "                         .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5271
    (write-format "(25X, D10.5)" -10)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5272
    (write-format "(25X, D10.5)" 100)
  "                         .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5273
    (write-format "(25X, D10.5)" -100)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5274
    (write-format "(25X, D10.5)" 1000)
  "                         .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5275
    (write-format "(25X, D10.5)" -1000)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5276
    (write-format "(25X, D10.5)" 10000)
  "                         .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5277
    (write-format "(25X, D10.5)" -10000)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5278
    (write-format "(25X, D10.5)" 100000)
  "                         .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5279
    (write-format "(25X, D10.5)" -100000)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5280
    (write-format "(25X, D10.5)" 123456789)
  "                         .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5281
    (write-format "(25X, D10.5)" 0.1d0)
  "                         .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5282
    (write-format "(25X, D10.5)" -0.1d0)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5283
    (write-format "(25X, D10.5)" 0.01d0)
  "                         .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5284
    (write-format "(25X, D10.5)" -0.01d0)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5285
    (write-format "(25X, D10.5)" 0.001d0)
  "                         .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5286
    (write-format "(25X, D10.5)" -0.001d0)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5287
    (write-format "(25X, D10.5)" 1.0d-4)
  "                         .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5288
    (write-format "(25X, D10.5)" -1.0d-4)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5289
    (write-format "(25X, D10.5)" -1.96d-16)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5290
    (write-format "(25X, D10.5)" 3.14159d0)
  "                         .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5291
    (write-format "(25X, D10.10)" 3)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5292
    (write-format "(25X, D10.10)" -3)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5293
    (write-format "(25X, D10.10)" 10)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5294
    (write-format "(25X, D10.10)" -10)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5295
    (write-format "(25X, D10.10)" 100)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5296
    (write-format "(25X, D10.10)" -100)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5297
    (write-format "(25X, D10.10)" 1000)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5298
    (write-format "(25X, D10.10)" -1000)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5299
    (write-format "(25X, D10.10)" 10000)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5300
    (write-format "(25X, D10.10)" -10000)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5301
    (write-format "(25X, D10.10)" 100000)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5302
    (write-format "(25X, D10.10)" -100000)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5303
    (write-format "(25X, D10.10)" 123456789)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5304
    (write-format "(25X, D10.10)" 0.1d0)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5305
    (write-format "(25X, D10.10)" -0.1d0)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5306
    (write-format "(25X, D10.10)" 0.01d0)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5307
    (write-format "(25X, D10.10)" -0.01d0)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5308
    (write-format "(25X, D10.10)" 0.001d0)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5309
    (write-format "(25X, D10.10)" -0.001d0)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5310
    (write-format "(25X, D10.10)" 1.0d-4)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5311
    (write-format "(25X, D10.10)" -1.0d-4)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5312
    (write-format "(25X, D10.10)" -1.96d-16)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5313
    (write-format "(25X, D10.10)" 3.14159d0)
  "                         **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5314
    (write-format "(50X, D1.1)" 3)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5315
    (write-format "(50X, D1.1)" -3)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5316
    (write-format "(50X, D1.1)" 10)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5317
    (write-format "(50X, D1.1)" -10)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5318
    (write-format "(50X, D1.1)" 100)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5319
    (write-format "(50X, D1.1)" -100)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5320
    (write-format "(50X, D1.1)" 1000)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5321
    (write-format "(50X, D1.1)" -1000)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5322
    (write-format "(50X, D1.1)" 10000)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5323
    (write-format "(50X, D1.1)" -10000)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5324
    (write-format "(50X, D1.1)" 100000)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5325
    (write-format "(50X, D1.1)" -100000)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5326
    (write-format "(50X, D1.1)" 123456789)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5327
    (write-format "(50X, D1.1)" 0.1d0)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5328
    (write-format "(50X, D1.1)" -0.1d0)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5329
    (write-format "(50X, D1.1)" 0.01d0)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5330
    (write-format "(50X, D1.1)" -0.01d0)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5331
    (write-format "(50X, D1.1)" 0.001d0)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5332
    (write-format "(50X, D1.1)" -0.001d0)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5333
    (write-format "(50X, D1.1)" 1.0d-4)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5334
    (write-format "(50X, D1.1)" -1.0d-4)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5335
    (write-format "(50X, D1.1)" -1.96d-16)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5336
    (write-format "(50X, D1.1)" 3.14159d0)
  "                                                  *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5337
    (write-format "(50X, D2.1)" 3)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5338
    (write-format "(50X, D2.1)" -3)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5339
    (write-format "(50X, D2.1)" 10)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5340
    (write-format "(50X, D2.1)" -10)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5341
    (write-format "(50X, D2.1)" 100)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5342
    (write-format "(50X, D2.1)" -100)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5343
    (write-format "(50X, D2.1)" 1000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5344
    (write-format "(50X, D2.1)" -1000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5345
    (write-format "(50X, D2.1)" 10000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5346
    (write-format "(50X, D2.1)" -10000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5347
    (write-format "(50X, D2.1)" 100000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5348
    (write-format "(50X, D2.1)" -100000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5349
    (write-format "(50X, D2.1)" 123456789)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5350
    (write-format "(50X, D2.1)" 0.1d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5351
    (write-format "(50X, D2.1)" -0.1d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5352
    (write-format "(50X, D2.1)" 0.01d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5353
    (write-format "(50X, D2.1)" -0.01d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5354
    (write-format "(50X, D2.1)" 0.001d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5355
    (write-format "(50X, D2.1)" -0.001d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5356
    (write-format "(50X, D2.1)" 1.0d-4)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5357
    (write-format "(50X, D2.1)" -1.0d-4)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5358
    (write-format "(50X, D2.1)" -1.96d-16)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5359
    (write-format "(50X, D2.1)" 3.14159d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5360
    (write-format "(50X, D3.1)" 3)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5361
    (write-format "(50X, D3.1)" -3)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5362
    (write-format "(50X, D3.1)" 10)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5363
    (write-format "(50X, D3.1)" -10)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5364
    (write-format "(50X, D3.1)" 100)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5365
    (write-format "(50X, D3.1)" -100)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5366
    (write-format "(50X, D3.1)" 1000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5367
    (write-format "(50X, D3.1)" -1000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5368
    (write-format "(50X, D3.1)" 10000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5369
    (write-format "(50X, D3.1)" -10000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5370
    (write-format "(50X, D3.1)" 100000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5371
    (write-format "(50X, D3.1)" -100000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5372
    (write-format "(50X, D3.1)" 123456789)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5373
    (write-format "(50X, D3.1)" 0.1d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5374
    (write-format "(50X, D3.1)" -0.1d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5375
    (write-format "(50X, D3.1)" 0.01d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5376
    (write-format "(50X, D3.1)" -0.01d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5377
    (write-format "(50X, D3.1)" 0.001d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5378
    (write-format "(50X, D3.1)" -0.001d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5379
    (write-format "(50X, D3.1)" 1.0d-4)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5380
    (write-format "(50X, D3.1)" -1.0d-4)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5381
    (write-format "(50X, D3.1)" -1.96d-16)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5382
    (write-format "(50X, D3.1)" 3.14159d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5383
    (write-format "(50X, D4.1)" 3)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5384
    (write-format "(50X, D4.1)" -3)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5385
    (write-format "(50X, D4.1)" 10)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5386
    (write-format "(50X, D4.1)" -10)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5387
    (write-format "(50X, D4.1)" 100)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5388
    (write-format "(50X, D4.1)" -100)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5389
    (write-format "(50X, D4.1)" 1000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5390
    (write-format "(50X, D4.1)" -1000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5391
    (write-format "(50X, D4.1)" 10000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5392
    (write-format "(50X, D4.1)" -10000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5393
    (write-format "(50X, D4.1)" 100000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5394
    (write-format "(50X, D4.1)" -100000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5395
    (write-format "(50X, D4.1)" 123456789)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5396
    (write-format "(50X, D4.1)" 0.1d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5397
    (write-format "(50X, D4.1)" -0.1d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5398
    (write-format "(50X, D4.1)" 0.01d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5399
    (write-format "(50X, D4.1)" -0.01d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5400
    (write-format "(50X, D4.1)" 0.001d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5401
    (write-format "(50X, D4.1)" -0.001d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5402
    (write-format "(50X, D4.1)" 1.0d-4)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5403
    (write-format "(50X, D4.1)" -1.0d-4)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5404
    (write-format "(50X, D4.1)" -1.96d-16)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5405
    (write-format "(50X, D4.1)" 3.14159d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5406
    (write-format "(50X, D5.1)" 3)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5407
    (write-format "(50X, D5.1)" -3)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5408
    (write-format "(50X, D5.1)" 10)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5409
    (write-format "(50X, D5.1)" -10)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5410
    (write-format "(50X, D5.1)" 100)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5411
    (write-format "(50X, D5.1)" -100)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5412
    (write-format "(50X, D5.1)" 1000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5413
    (write-format "(50X, D5.1)" -1000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5414
    (write-format "(50X, D5.1)" 10000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5415
    (write-format "(50X, D5.1)" -10000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5416
    (write-format "(50X, D5.1)" 100000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5417
    (write-format "(50X, D5.1)" -100000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5418
    (write-format "(50X, D5.1)" 123456789)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5419
    (write-format "(50X, D5.1)" 0.1d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5420
    (write-format "(50X, D5.1)" -0.1d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5421
    (write-format "(50X, D5.1)" 0.01d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5422
    (write-format "(50X, D5.1)" -0.01d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5423
    (write-format "(50X, D5.1)" 0.001d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5424
    (write-format "(50X, D5.1)" -0.001d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5425
    (write-format "(50X, D5.1)" 1.0d-4)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5426
    (write-format "(50X, D5.1)" -1.0d-4)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5427
    (write-format "(50X, D5.1)" -1.96d-16)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5428
    (write-format "(50X, D5.1)" 3.14159d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5429
    (write-format "(50X, D10.1)" 3)
  "                                                     0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5430
    (write-format "(50X, D10.1)" -3)
  "                                                    -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5431
    (write-format "(50X, D10.1)" 10)
  "                                                     0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5432
    (write-format "(50X, D10.1)" -10)
  "                                                    -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5433
    (write-format "(50X, D10.1)" 100)
  "                                                     0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5434
    (write-format "(50X, D10.1)" -100)
  "                                                    -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5435
    (write-format "(50X, D10.1)" 1000)
  "                                                     0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5436
    (write-format "(50X, D10.1)" -1000)
  "                                                    -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5437
    (write-format "(50X, D10.1)" 10000)
  "                                                     0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5438
    (write-format "(50X, D10.1)" -10000)
  "                                                    -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5439
    (write-format "(50X, D10.1)" 100000)
  "                                                     0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5440
    (write-format "(50X, D10.1)" -100000)
  "                                                    -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5441
    (write-format "(50X, D10.1)" 123456789)
  "                                                     0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5442
    (write-format "(50X, D10.1)" 0.1d0)
  "                                                     0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5443
    (write-format "(50X, D10.1)" -0.1d0)
  "                                                    -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5444
    (write-format "(50X, D10.1)" 0.01d0)
  "                                                     0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5445
    (write-format "(50X, D10.1)" -0.01d0)
  "                                                    -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5446
    (write-format "(50X, D10.1)" 0.001d0)
  "                                                     0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5447
    (write-format "(50X, D10.1)" -0.001d0)
  "                                                    -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5448
    (write-format "(50X, D10.1)" 1.0d-4)
  "                                                     0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5449
    (write-format "(50X, D10.1)" -1.0d-4)
  "                                                    -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5450
    (write-format "(50X, D10.1)" -1.96d-16)
  "                                                    -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5451
    (write-format "(50X, D10.1)" 3.14159d0)
  "                                                     0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5452
    (write-format "(50X, D2.2)" 3)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5453
    (write-format "(50X, D2.2)" -3)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5454
    (write-format "(50X, D2.2)" 10)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5455
    (write-format "(50X, D2.2)" -10)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5456
    (write-format "(50X, D2.2)" 100)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5457
    (write-format "(50X, D2.2)" -100)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5458
    (write-format "(50X, D2.2)" 1000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5459
    (write-format "(50X, D2.2)" -1000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5460
    (write-format "(50X, D2.2)" 10000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5461
    (write-format "(50X, D2.2)" -10000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5462
    (write-format "(50X, D2.2)" 100000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5463
    (write-format "(50X, D2.2)" -100000)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5464
    (write-format "(50X, D2.2)" 123456789)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5465
    (write-format "(50X, D2.2)" 0.1d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5466
    (write-format "(50X, D2.2)" -0.1d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5467
    (write-format "(50X, D2.2)" 0.01d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5468
    (write-format "(50X, D2.2)" -0.01d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5469
    (write-format "(50X, D2.2)" 0.001d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5470
    (write-format "(50X, D2.2)" -0.001d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5471
    (write-format "(50X, D2.2)" 1.0d-4)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5472
    (write-format "(50X, D2.2)" -1.0d-4)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5473
    (write-format "(50X, D2.2)" -1.96d-16)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5474
    (write-format "(50X, D2.2)" 3.14159d0)
  "                                                  **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5475
    (write-format "(50X, D3.2)" 3)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5476
    (write-format "(50X, D3.2)" -3)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5477
    (write-format "(50X, D3.2)" 10)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5478
    (write-format "(50X, D3.2)" -10)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5479
    (write-format "(50X, D3.2)" 100)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5480
    (write-format "(50X, D3.2)" -100)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5481
    (write-format "(50X, D3.2)" 1000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5482
    (write-format "(50X, D3.2)" -1000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5483
    (write-format "(50X, D3.2)" 10000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5484
    (write-format "(50X, D3.2)" -10000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5485
    (write-format "(50X, D3.2)" 100000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5486
    (write-format "(50X, D3.2)" -100000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5487
    (write-format "(50X, D3.2)" 123456789)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5488
    (write-format "(50X, D3.2)" 0.1d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5489
    (write-format "(50X, D3.2)" -0.1d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5490
    (write-format "(50X, D3.2)" 0.01d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5491
    (write-format "(50X, D3.2)" -0.01d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5492
    (write-format "(50X, D3.2)" 0.001d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5493
    (write-format "(50X, D3.2)" -0.001d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5494
    (write-format "(50X, D3.2)" 1.0d-4)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5495
    (write-format "(50X, D3.2)" -1.0d-4)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5496
    (write-format "(50X, D3.2)" -1.96d-16)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5497
    (write-format "(50X, D3.2)" 3.14159d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5498
    (write-format "(50X, D4.2)" 3)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5499
    (write-format "(50X, D4.2)" -3)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5500
    (write-format "(50X, D4.2)" 10)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5501
    (write-format "(50X, D4.2)" -10)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5502
    (write-format "(50X, D4.2)" 100)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5503
    (write-format "(50X, D4.2)" -100)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5504
    (write-format "(50X, D4.2)" 1000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5505
    (write-format "(50X, D4.2)" -1000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5506
    (write-format "(50X, D4.2)" 10000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5507
    (write-format "(50X, D4.2)" -10000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5508
    (write-format "(50X, D4.2)" 100000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5509
    (write-format "(50X, D4.2)" -100000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5510
    (write-format "(50X, D4.2)" 123456789)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5511
    (write-format "(50X, D4.2)" 0.1d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5512
    (write-format "(50X, D4.2)" -0.1d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5513
    (write-format "(50X, D4.2)" 0.01d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5514
    (write-format "(50X, D4.2)" -0.01d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5515
    (write-format "(50X, D4.2)" 0.001d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5516
    (write-format "(50X, D4.2)" -0.001d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5517
    (write-format "(50X, D4.2)" 1.0d-4)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5518
    (write-format "(50X, D4.2)" -1.0d-4)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5519
    (write-format "(50X, D4.2)" -1.96d-16)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5520
    (write-format "(50X, D4.2)" 3.14159d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5521
    (write-format "(50X, D5.2)" 3)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5522
    (write-format "(50X, D5.2)" -3)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5523
    (write-format "(50X, D5.2)" 10)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5524
    (write-format "(50X, D5.2)" -10)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5525
    (write-format "(50X, D5.2)" 100)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5526
    (write-format "(50X, D5.2)" -100)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5527
    (write-format "(50X, D5.2)" 1000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5528
    (write-format "(50X, D5.2)" -1000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5529
    (write-format "(50X, D5.2)" 10000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5530
    (write-format "(50X, D5.2)" -10000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5531
    (write-format "(50X, D5.2)" 100000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5532
    (write-format "(50X, D5.2)" -100000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5533
    (write-format "(50X, D5.2)" 123456789)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5534
    (write-format "(50X, D5.2)" 0.1d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5535
    (write-format "(50X, D5.2)" -0.1d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5536
    (write-format "(50X, D5.2)" 0.01d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5537
    (write-format "(50X, D5.2)" -0.01d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5538
    (write-format "(50X, D5.2)" 0.001d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5539
    (write-format "(50X, D5.2)" -0.001d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5540
    (write-format "(50X, D5.2)" 1.0d-4)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5541
    (write-format "(50X, D5.2)" -1.0d-4)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5542
    (write-format "(50X, D5.2)" -1.96d-16)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5543
    (write-format "(50X, D5.2)" 3.14159d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5544
    (write-format "(50X, D10.2)" 3)
  "                                                    0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5545
    (write-format "(50X, D10.2)" -3)
  "                                                   -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5546
    (write-format "(50X, D10.2)" 10)
  "                                                    0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5547
    (write-format "(50X, D10.2)" -10)
  "                                                   -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5548
    (write-format "(50X, D10.2)" 100)
  "                                                    0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5549
    (write-format "(50X, D10.2)" -100)
  "                                                   -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5550
    (write-format "(50X, D10.2)" 1000)
  "                                                    0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5551
    (write-format "(50X, D10.2)" -1000)
  "                                                   -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5552
    (write-format "(50X, D10.2)" 10000)
  "                                                    0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5553
    (write-format "(50X, D10.2)" -10000)
  "                                                   -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5554
    (write-format "(50X, D10.2)" 100000)
  "                                                    0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5555
    (write-format "(50X, D10.2)" -100000)
  "                                                   -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5556
    (write-format "(50X, D10.2)" 123456789)
  "                                                    0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5557
    (write-format "(50X, D10.2)" 0.1d0)
  "                                                    0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5558
    (write-format "(50X, D10.2)" -0.1d0)
  "                                                   -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5559
    (write-format "(50X, D10.2)" 0.01d0)
  "                                                    0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5560
    (write-format "(50X, D10.2)" -0.01d0)
  "                                                   -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5561
    (write-format "(50X, D10.2)" 0.001d0)
  "                                                    0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5562
    (write-format "(50X, D10.2)" -0.001d0)
  "                                                   -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5563
    (write-format "(50X, D10.2)" 1.0d-4)
  "                                                    0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5564
    (write-format "(50X, D10.2)" -1.0d-4)
  "                                                   -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5565
    (write-format "(50X, D10.2)" -1.96d-16)
  "                                                   -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5566
    (write-format "(50X, D10.2)" 3.14159d0)
  "                                                    0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5567
    (write-format "(50X, D3.3)" 3)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5568
    (write-format "(50X, D3.3)" -3)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5569
    (write-format "(50X, D3.3)" 10)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5570
    (write-format "(50X, D3.3)" -10)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5571
    (write-format "(50X, D3.3)" 100)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5572
    (write-format "(50X, D3.3)" -100)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5573
    (write-format "(50X, D3.3)" 1000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5574
    (write-format "(50X, D3.3)" -1000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5575
    (write-format "(50X, D3.3)" 10000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5576
    (write-format "(50X, D3.3)" -10000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5577
    (write-format "(50X, D3.3)" 100000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5578
    (write-format "(50X, D3.3)" -100000)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5579
    (write-format "(50X, D3.3)" 123456789)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5580
    (write-format "(50X, D3.3)" 0.1d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5581
    (write-format "(50X, D3.3)" -0.1d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5582
    (write-format "(50X, D3.3)" 0.01d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5583
    (write-format "(50X, D3.3)" -0.01d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5584
    (write-format "(50X, D3.3)" 0.001d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5585
    (write-format "(50X, D3.3)" -0.001d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5586
    (write-format "(50X, D3.3)" 1.0d-4)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5587
    (write-format "(50X, D3.3)" -1.0d-4)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5588
    (write-format "(50X, D3.3)" -1.96d-16)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5589
    (write-format "(50X, D3.3)" 3.14159d0)
  "                                                  ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5590
    (write-format "(50X, D4.3)" 3)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5591
    (write-format "(50X, D4.3)" -3)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5592
    (write-format "(50X, D4.3)" 10)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5593
    (write-format "(50X, D4.3)" -10)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5594
    (write-format "(50X, D4.3)" 100)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5595
    (write-format "(50X, D4.3)" -100)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5596
    (write-format "(50X, D4.3)" 1000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5597
    (write-format "(50X, D4.3)" -1000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5598
    (write-format "(50X, D4.3)" 10000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5599
    (write-format "(50X, D4.3)" -10000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5600
    (write-format "(50X, D4.3)" 100000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5601
    (write-format "(50X, D4.3)" -100000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5602
    (write-format "(50X, D4.3)" 123456789)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5603
    (write-format "(50X, D4.3)" 0.1d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5604
    (write-format "(50X, D4.3)" -0.1d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5605
    (write-format "(50X, D4.3)" 0.01d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5606
    (write-format "(50X, D4.3)" -0.01d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5607
    (write-format "(50X, D4.3)" 0.001d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5608
    (write-format "(50X, D4.3)" -0.001d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5609
    (write-format "(50X, D4.3)" 1.0d-4)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5610
    (write-format "(50X, D4.3)" -1.0d-4)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5611
    (write-format "(50X, D4.3)" -1.96d-16)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5612
    (write-format "(50X, D4.3)" 3.14159d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5613
    (write-format "(50X, D5.3)" 3)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5614
    (write-format "(50X, D5.3)" -3)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5615
    (write-format "(50X, D5.3)" 10)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5616
    (write-format "(50X, D5.3)" -10)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5617
    (write-format "(50X, D5.3)" 100)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5618
    (write-format "(50X, D5.3)" -100)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5619
    (write-format "(50X, D5.3)" 1000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5620
    (write-format "(50X, D5.3)" -1000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5621
    (write-format "(50X, D5.3)" 10000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5622
    (write-format "(50X, D5.3)" -10000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5623
    (write-format "(50X, D5.3)" 100000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5624
    (write-format "(50X, D5.3)" -100000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5625
    (write-format "(50X, D5.3)" 123456789)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5626
    (write-format "(50X, D5.3)" 0.1d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5627
    (write-format "(50X, D5.3)" -0.1d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5628
    (write-format "(50X, D5.3)" 0.01d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5629
    (write-format "(50X, D5.3)" -0.01d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5630
    (write-format "(50X, D5.3)" 0.001d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5631
    (write-format "(50X, D5.3)" -0.001d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5632
    (write-format "(50X, D5.3)" 1.0d-4)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5633
    (write-format "(50X, D5.3)" -1.0d-4)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5634
    (write-format "(50X, D5.3)" -1.96d-16)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5635
    (write-format "(50X, D5.3)" 3.14159d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5636
    (write-format "(50X, D10.3)" 3)
  "                                                   0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5637
    (write-format "(50X, D10.3)" -3)
  "                                                  -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5638
    (write-format "(50X, D10.3)" 10)
  "                                                   0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5639
    (write-format "(50X, D10.3)" -10)
  "                                                  -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5640
    (write-format "(50X, D10.3)" 100)
  "                                                   0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5641
    (write-format "(50X, D10.3)" -100)
  "                                                  -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5642
    (write-format "(50X, D10.3)" 1000)
  "                                                   0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5643
    (write-format "(50X, D10.3)" -1000)
  "                                                  -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5644
    (write-format "(50X, D10.3)" 10000)
  "                                                   0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5645
    (write-format "(50X, D10.3)" -10000)
  "                                                  -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5646
    (write-format "(50X, D10.3)" 100000)
  "                                                   0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5647
    (write-format "(50X, D10.3)" -100000)
  "                                                  -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5648
    (write-format "(50X, D10.3)" 123456789)
  "                                                   0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5649
    (write-format "(50X, D10.3)" 0.1d0)
  "                                                   0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5650
    (write-format "(50X, D10.3)" -0.1d0)
  "                                                  -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5651
    (write-format "(50X, D10.3)" 0.01d0)
  "                                                   0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5652
    (write-format "(50X, D10.3)" -0.01d0)
  "                                                  -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5653
    (write-format "(50X, D10.3)" 0.001d0)
  "                                                   0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5654
    (write-format "(50X, D10.3)" -0.001d0)
  "                                                  -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5655
    (write-format "(50X, D10.3)" 1.0d-4)
  "                                                   0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5656
    (write-format "(50X, D10.3)" -1.0d-4)
  "                                                  -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5657
    (write-format "(50X, D10.3)" -1.96d-16)
  "                                                  -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5658
    (write-format "(50X, D10.3)" 3.14159d0)
  "                                                   0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5659
    (write-format "(50X, D4.4)" 3)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5660
    (write-format "(50X, D4.4)" -3)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5661
    (write-format "(50X, D4.4)" 10)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5662
    (write-format "(50X, D4.4)" -10)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5663
    (write-format "(50X, D4.4)" 100)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5664
    (write-format "(50X, D4.4)" -100)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5665
    (write-format "(50X, D4.4)" 1000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5666
    (write-format "(50X, D4.4)" -1000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5667
    (write-format "(50X, D4.4)" 10000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5668
    (write-format "(50X, D4.4)" -10000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5669
    (write-format "(50X, D4.4)" 100000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5670
    (write-format "(50X, D4.4)" -100000)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5671
    (write-format "(50X, D4.4)" 123456789)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5672
    (write-format "(50X, D4.4)" 0.1d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5673
    (write-format "(50X, D4.4)" -0.1d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5674
    (write-format "(50X, D4.4)" 0.01d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5675
    (write-format "(50X, D4.4)" -0.01d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5676
    (write-format "(50X, D4.4)" 0.001d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5677
    (write-format "(50X, D4.4)" -0.001d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5678
    (write-format "(50X, D4.4)" 1.0d-4)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5679
    (write-format "(50X, D4.4)" -1.0d-4)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5680
    (write-format "(50X, D4.4)" -1.96d-16)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5681
    (write-format "(50X, D4.4)" 3.14159d0)
  "                                                  ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5682
    (write-format "(50X, D5.4)" 3)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5683
    (write-format "(50X, D5.4)" -3)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5684
    (write-format "(50X, D5.4)" 10)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5685
    (write-format "(50X, D5.4)" -10)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5686
    (write-format "(50X, D5.4)" 100)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5687
    (write-format "(50X, D5.4)" -100)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5688
    (write-format "(50X, D5.4)" 1000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5689
    (write-format "(50X, D5.4)" -1000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5690
    (write-format "(50X, D5.4)" 10000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5691
    (write-format "(50X, D5.4)" -10000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5692
    (write-format "(50X, D5.4)" 100000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5693
    (write-format "(50X, D5.4)" -100000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5694
    (write-format "(50X, D5.4)" 123456789)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5695
    (write-format "(50X, D5.4)" 0.1d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5696
    (write-format "(50X, D5.4)" -0.1d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5697
    (write-format "(50X, D5.4)" 0.01d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5698
    (write-format "(50X, D5.4)" -0.01d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5699
    (write-format "(50X, D5.4)" 0.001d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5700
    (write-format "(50X, D5.4)" -0.001d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5701
    (write-format "(50X, D5.4)" 1.0d-4)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5702
    (write-format "(50X, D5.4)" -1.0d-4)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5703
    (write-format "(50X, D5.4)" -1.96d-16)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5704
    (write-format "(50X, D5.4)" 3.14159d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5705
    (write-format "(50X, D10.4)" 3)
  "                                                  0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5706
    (write-format "(50X, D10.4)" -3)
  "                                                  -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5707
    (write-format "(50X, D10.4)" 10)
  "                                                  0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5708
    (write-format "(50X, D10.4)" -10)
  "                                                  -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5709
    (write-format "(50X, D10.4)" 100)
  "                                                  0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5710
    (write-format "(50X, D10.4)" -100)
  "                                                  -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5711
    (write-format "(50X, D10.4)" 1000)
  "                                                  0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5712
    (write-format "(50X, D10.4)" -1000)
  "                                                  -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5713
    (write-format "(50X, D10.4)" 10000)
  "                                                  0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5714
    (write-format "(50X, D10.4)" -10000)
  "                                                  -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5715
    (write-format "(50X, D10.4)" 100000)
  "                                                  0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5716
    (write-format "(50X, D10.4)" -100000)
  "                                                  -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5717
    (write-format "(50X, D10.4)" 123456789)
  "                                                  0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5718
    (write-format "(50X, D10.4)" 0.1d0)
  "                                                  0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5719
    (write-format "(50X, D10.4)" -0.1d0)
  "                                                  -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5720
    (write-format "(50X, D10.4)" 0.01d0)
  "                                                  0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5721
    (write-format "(50X, D10.4)" -0.01d0)
  "                                                  -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5722
    (write-format "(50X, D10.4)" 0.001d0)
  "                                                  0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5723
    (write-format "(50X, D10.4)" -0.001d0)
  "                                                  -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5724
    (write-format "(50X, D10.4)" 1.0d-4)
  "                                                  0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5725
    (write-format "(50X, D10.4)" -1.0d-4)
  "                                                  -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5726
    (write-format "(50X, D10.4)" -1.96d-16)
  "                                                  -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5727
    (write-format "(50X, D10.4)" 3.14159d0)
  "                                                  0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5728
    (write-format "(50X, D5.5)" 3)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5729
    (write-format "(50X, D5.5)" -3)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5730
    (write-format "(50X, D5.5)" 10)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5731
    (write-format "(50X, D5.5)" -10)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5732
    (write-format "(50X, D5.5)" 100)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5733
    (write-format "(50X, D5.5)" -100)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5734
    (write-format "(50X, D5.5)" 1000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5735
    (write-format "(50X, D5.5)" -1000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5736
    (write-format "(50X, D5.5)" 10000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5737
    (write-format "(50X, D5.5)" -10000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5738
    (write-format "(50X, D5.5)" 100000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5739
    (write-format "(50X, D5.5)" -100000)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5740
    (write-format "(50X, D5.5)" 123456789)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5741
    (write-format "(50X, D5.5)" 0.1d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5742
    (write-format "(50X, D5.5)" -0.1d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5743
    (write-format "(50X, D5.5)" 0.01d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5744
    (write-format "(50X, D5.5)" -0.01d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5745
    (write-format "(50X, D5.5)" 0.001d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5746
    (write-format "(50X, D5.5)" -0.001d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5747
    (write-format "(50X, D5.5)" 1.0d-4)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5748
    (write-format "(50X, D5.5)" -1.0d-4)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5749
    (write-format "(50X, D5.5)" -1.96d-16)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5750
    (write-format "(50X, D5.5)" 3.14159d0)
  "                                                  *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5751
    (write-format "(50X, D10.5)" 3)
  "                                                  .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5752
    (write-format "(50X, D10.5)" -3)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5753
    (write-format "(50X, D10.5)" 10)
  "                                                  .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5754
    (write-format "(50X, D10.5)" -10)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5755
    (write-format "(50X, D10.5)" 100)
  "                                                  .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5756
    (write-format "(50X, D10.5)" -100)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5757
    (write-format "(50X, D10.5)" 1000)
  "                                                  .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5758
    (write-format "(50X, D10.5)" -1000)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5759
    (write-format "(50X, D10.5)" 10000)
  "                                                  .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5760
    (write-format "(50X, D10.5)" -10000)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5761
    (write-format "(50X, D10.5)" 100000)
  "                                                  .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5762
    (write-format "(50X, D10.5)" -100000)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5763
    (write-format "(50X, D10.5)" 123456789)
  "                                                  .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5764
    (write-format "(50X, D10.5)" 0.1d0)
  "                                                  .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5765
    (write-format "(50X, D10.5)" -0.1d0)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5766
    (write-format "(50X, D10.5)" 0.01d0)
  "                                                  .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5767
    (write-format "(50X, D10.5)" -0.01d0)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5768
    (write-format "(50X, D10.5)" 0.001d0)
  "                                                  .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5769
    (write-format "(50X, D10.5)" -0.001d0)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5770
    (write-format "(50X, D10.5)" 1.0d-4)
  "                                                  .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5771
    (write-format "(50X, D10.5)" -1.0d-4)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5772
    (write-format "(50X, D10.5)" -1.96d-16)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5773
    (write-format "(50X, D10.5)" 3.14159d0)
  "                                                  .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5774
    (write-format "(50X, D10.10)" 3)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5775
    (write-format "(50X, D10.10)" -3)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5776
    (write-format "(50X, D10.10)" 10)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5777
    (write-format "(50X, D10.10)" -10)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5778
    (write-format "(50X, D10.10)" 100)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5779
    (write-format "(50X, D10.10)" -100)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5780
    (write-format "(50X, D10.10)" 1000)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5781
    (write-format "(50X, D10.10)" -1000)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5782
    (write-format "(50X, D10.10)" 10000)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5783
    (write-format "(50X, D10.10)" -10000)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5784
    (write-format "(50X, D10.10)" 100000)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5785
    (write-format "(50X, D10.10)" -100000)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5786
    (write-format "(50X, D10.10)" 123456789)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5787
    (write-format "(50X, D10.10)" 0.1d0)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5788
    (write-format "(50X, D10.10)" -0.1d0)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5789
    (write-format "(50X, D10.10)" 0.01d0)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5790
    (write-format "(50X, D10.10)" -0.01d0)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5791
    (write-format "(50X, D10.10)" 0.001d0)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5792
    (write-format "(50X, D10.10)" -0.001d0)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5793
    (write-format "(50X, D10.10)" 1.0d-4)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5794
    (write-format "(50X, D10.10)" -1.0d-4)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5795
    (write-format "(50X, D10.10)" -1.96d-16)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5796
    (write-format "(50X, D10.10)" 3.14159d0)
  "                                                  **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5797
    (write-format "(100X, D1.1)" 3)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5798
    (write-format "(100X, D1.1)" -3)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5799
    (write-format "(100X, D1.1)" 10)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5800
    (write-format "(100X, D1.1)" -10)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5801
    (write-format "(100X, D1.1)" 100)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5802
    (write-format "(100X, D1.1)" -100)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5803
    (write-format "(100X, D1.1)" 1000)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5804
    (write-format "(100X, D1.1)" -1000)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5805
    (write-format "(100X, D1.1)" 10000)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5806
    (write-format "(100X, D1.1)" -10000)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5807
    (write-format "(100X, D1.1)" 100000)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5808
    (write-format "(100X, D1.1)" -100000)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5809
    (write-format "(100X, D1.1)" 123456789)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5810
    (write-format "(100X, D1.1)" 0.1d0)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5811
    (write-format "(100X, D1.1)" -0.1d0)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5812
    (write-format "(100X, D1.1)" 0.01d0)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5813
    (write-format "(100X, D1.1)" -0.01d0)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5814
    (write-format "(100X, D1.1)" 0.001d0)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5815
    (write-format "(100X, D1.1)" -0.001d0)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5816
    (write-format "(100X, D1.1)" 1.0d-4)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5817
    (write-format "(100X, D1.1)" -1.0d-4)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5818
    (write-format "(100X, D1.1)" -1.96d-16)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5819
    (write-format "(100X, D1.1)" 3.14159d0)
  "                                                                                                    *")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5820
    (write-format "(100X, D2.1)" 3)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5821
    (write-format "(100X, D2.1)" -3)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5822
    (write-format "(100X, D2.1)" 10)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5823
    (write-format "(100X, D2.1)" -10)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5824
    (write-format "(100X, D2.1)" 100)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5825
    (write-format "(100X, D2.1)" -100)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5826
    (write-format "(100X, D2.1)" 1000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5827
    (write-format "(100X, D2.1)" -1000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5828
    (write-format "(100X, D2.1)" 10000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5829
    (write-format "(100X, D2.1)" -10000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5830
    (write-format "(100X, D2.1)" 100000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5831
    (write-format "(100X, D2.1)" -100000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5832
    (write-format "(100X, D2.1)" 123456789)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5833
    (write-format "(100X, D2.1)" 0.1d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5834
    (write-format "(100X, D2.1)" -0.1d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5835
    (write-format "(100X, D2.1)" 0.01d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5836
    (write-format "(100X, D2.1)" -0.01d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5837
    (write-format "(100X, D2.1)" 0.001d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5838
    (write-format "(100X, D2.1)" -0.001d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5839
    (write-format "(100X, D2.1)" 1.0d-4)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5840
    (write-format "(100X, D2.1)" -1.0d-4)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5841
    (write-format "(100X, D2.1)" -1.96d-16)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5842
    (write-format "(100X, D2.1)" 3.14159d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5843
    (write-format "(100X, D3.1)" 3)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5844
    (write-format "(100X, D3.1)" -3)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5845
    (write-format "(100X, D3.1)" 10)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5846
    (write-format "(100X, D3.1)" -10)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5847
    (write-format "(100X, D3.1)" 100)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5848
    (write-format "(100X, D3.1)" -100)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5849
    (write-format "(100X, D3.1)" 1000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5850
    (write-format "(100X, D3.1)" -1000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5851
    (write-format "(100X, D3.1)" 10000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5852
    (write-format "(100X, D3.1)" -10000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5853
    (write-format "(100X, D3.1)" 100000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5854
    (write-format "(100X, D3.1)" -100000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5855
    (write-format "(100X, D3.1)" 123456789)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5856
    (write-format "(100X, D3.1)" 0.1d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5857
    (write-format "(100X, D3.1)" -0.1d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5858
    (write-format "(100X, D3.1)" 0.01d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5859
    (write-format "(100X, D3.1)" -0.01d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5860
    (write-format "(100X, D3.1)" 0.001d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5861
    (write-format "(100X, D3.1)" -0.001d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5862
    (write-format "(100X, D3.1)" 1.0d-4)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5863
    (write-format "(100X, D3.1)" -1.0d-4)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5864
    (write-format "(100X, D3.1)" -1.96d-16)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5865
    (write-format "(100X, D3.1)" 3.14159d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5866
    (write-format "(100X, D4.1)" 3)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5867
    (write-format "(100X, D4.1)" -3)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5868
    (write-format "(100X, D4.1)" 10)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5869
    (write-format "(100X, D4.1)" -10)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5870
    (write-format "(100X, D4.1)" 100)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5871
    (write-format "(100X, D4.1)" -100)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5872
    (write-format "(100X, D4.1)" 1000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5873
    (write-format "(100X, D4.1)" -1000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5874
    (write-format "(100X, D4.1)" 10000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5875
    (write-format "(100X, D4.1)" -10000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5876
    (write-format "(100X, D4.1)" 100000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5877
    (write-format "(100X, D4.1)" -100000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5878
    (write-format "(100X, D4.1)" 123456789)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5879
    (write-format "(100X, D4.1)" 0.1d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5880
    (write-format "(100X, D4.1)" -0.1d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5881
    (write-format "(100X, D4.1)" 0.01d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5882
    (write-format "(100X, D4.1)" -0.01d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5883
    (write-format "(100X, D4.1)" 0.001d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5884
    (write-format "(100X, D4.1)" -0.001d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5885
    (write-format "(100X, D4.1)" 1.0d-4)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5886
    (write-format "(100X, D4.1)" -1.0d-4)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5887
    (write-format "(100X, D4.1)" -1.96d-16)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5888
    (write-format "(100X, D4.1)" 3.14159d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5889
    (write-format "(100X, D5.1)" 3)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5890
    (write-format "(100X, D5.1)" -3)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5891
    (write-format "(100X, D5.1)" 10)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5892
    (write-format "(100X, D5.1)" -10)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5893
    (write-format "(100X, D5.1)" 100)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5894
    (write-format "(100X, D5.1)" -100)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5895
    (write-format "(100X, D5.1)" 1000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5896
    (write-format "(100X, D5.1)" -1000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5897
    (write-format "(100X, D5.1)" 10000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5898
    (write-format "(100X, D5.1)" -10000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5899
    (write-format "(100X, D5.1)" 100000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5900
    (write-format "(100X, D5.1)" -100000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5901
    (write-format "(100X, D5.1)" 123456789)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5902
    (write-format "(100X, D5.1)" 0.1d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5903
    (write-format "(100X, D5.1)" -0.1d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5904
    (write-format "(100X, D5.1)" 0.01d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5905
    (write-format "(100X, D5.1)" -0.01d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5906
    (write-format "(100X, D5.1)" 0.001d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5907
    (write-format "(100X, D5.1)" -0.001d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5908
    (write-format "(100X, D5.1)" 1.0d-4)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5909
    (write-format "(100X, D5.1)" -1.0d-4)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5910
    (write-format "(100X, D5.1)" -1.96d-16)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5911
    (write-format "(100X, D5.1)" 3.14159d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5912
    (write-format "(100X, D10.1)" 3)
  "                                                                                                       0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5913
    (write-format "(100X, D10.1)" -3)
  "                                                                                                      -0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5914
    (write-format "(100X, D10.1)" 10)
  "                                                                                                       0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5915
    (write-format "(100X, D10.1)" -10)
  "                                                                                                      -0.1D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5916
    (write-format "(100X, D10.1)" 100)
  "                                                                                                       0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5917
    (write-format "(100X, D10.1)" -100)
  "                                                                                                      -0.1D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5918
    (write-format "(100X, D10.1)" 1000)
  "                                                                                                       0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5919
    (write-format "(100X, D10.1)" -1000)
  "                                                                                                      -0.1D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5920
    (write-format "(100X, D10.1)" 10000)
  "                                                                                                       0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5921
    (write-format "(100X, D10.1)" -10000)
  "                                                                                                      -0.1D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5922
    (write-format "(100X, D10.1)" 100000)
  "                                                                                                       0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5923
    (write-format "(100X, D10.1)" -100000)
  "                                                                                                      -0.1D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5924
    (write-format "(100X, D10.1)" 123456789)
  "                                                                                                       0.1D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5925
    (write-format "(100X, D10.1)" 0.1d0)
  "                                                                                                       0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5926
    (write-format "(100X, D10.1)" -0.1d0)
  "                                                                                                      -0.1D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5927
    (write-format "(100X, D10.1)" 0.01d0)
  "                                                                                                       0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5928
    (write-format "(100X, D10.1)" -0.01d0)
  "                                                                                                      -0.1D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5929
    (write-format "(100X, D10.1)" 0.001d0)
  "                                                                                                       0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5930
    (write-format "(100X, D10.1)" -0.001d0)
  "                                                                                                      -0.1D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5931
    (write-format "(100X, D10.1)" 1.0d-4)
  "                                                                                                       0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5932
    (write-format "(100X, D10.1)" -1.0d-4)
  "                                                                                                      -0.1D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5933
    (write-format "(100X, D10.1)" -1.96d-16)
  "                                                                                                      -0.2D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5934
    (write-format "(100X, D10.1)" 3.14159d0)
  "                                                                                                       0.3D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5935
    (write-format "(100X, D2.2)" 3)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5936
    (write-format "(100X, D2.2)" -3)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5937
    (write-format "(100X, D2.2)" 10)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5938
    (write-format "(100X, D2.2)" -10)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5939
    (write-format "(100X, D2.2)" 100)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5940
    (write-format "(100X, D2.2)" -100)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5941
    (write-format "(100X, D2.2)" 1000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5942
    (write-format "(100X, D2.2)" -1000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5943
    (write-format "(100X, D2.2)" 10000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5944
    (write-format "(100X, D2.2)" -10000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5945
    (write-format "(100X, D2.2)" 100000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5946
    (write-format "(100X, D2.2)" -100000)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5947
    (write-format "(100X, D2.2)" 123456789)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5948
    (write-format "(100X, D2.2)" 0.1d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5949
    (write-format "(100X, D2.2)" -0.1d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5950
    (write-format "(100X, D2.2)" 0.01d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5951
    (write-format "(100X, D2.2)" -0.01d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5952
    (write-format "(100X, D2.2)" 0.001d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5953
    (write-format "(100X, D2.2)" -0.001d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5954
    (write-format "(100X, D2.2)" 1.0d-4)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5955
    (write-format "(100X, D2.2)" -1.0d-4)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5956
    (write-format "(100X, D2.2)" -1.96d-16)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5957
    (write-format "(100X, D2.2)" 3.14159d0)
  "                                                                                                    **")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5958
    (write-format "(100X, D3.2)" 3)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5959
    (write-format "(100X, D3.2)" -3)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5960
    (write-format "(100X, D3.2)" 10)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5961
    (write-format "(100X, D3.2)" -10)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5962
    (write-format "(100X, D3.2)" 100)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5963
    (write-format "(100X, D3.2)" -100)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5964
    (write-format "(100X, D3.2)" 1000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5965
    (write-format "(100X, D3.2)" -1000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5966
    (write-format "(100X, D3.2)" 10000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5967
    (write-format "(100X, D3.2)" -10000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5968
    (write-format "(100X, D3.2)" 100000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5969
    (write-format "(100X, D3.2)" -100000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5970
    (write-format "(100X, D3.2)" 123456789)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5971
    (write-format "(100X, D3.2)" 0.1d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5972
    (write-format "(100X, D3.2)" -0.1d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5973
    (write-format "(100X, D3.2)" 0.01d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5974
    (write-format "(100X, D3.2)" -0.01d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5975
    (write-format "(100X, D3.2)" 0.001d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5976
    (write-format "(100X, D3.2)" -0.001d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5977
    (write-format "(100X, D3.2)" 1.0d-4)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5978
    (write-format "(100X, D3.2)" -1.0d-4)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5979
    (write-format "(100X, D3.2)" -1.96d-16)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5980
    (write-format "(100X, D3.2)" 3.14159d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5981
    (write-format "(100X, D4.2)" 3)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5982
    (write-format "(100X, D4.2)" -3)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5983
    (write-format "(100X, D4.2)" 10)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5984
    (write-format "(100X, D4.2)" -10)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5985
    (write-format "(100X, D4.2)" 100)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5986
    (write-format "(100X, D4.2)" -100)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5987
    (write-format "(100X, D4.2)" 1000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5988
    (write-format "(100X, D4.2)" -1000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5989
    (write-format "(100X, D4.2)" 10000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5990
    (write-format "(100X, D4.2)" -10000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5991
    (write-format "(100X, D4.2)" 100000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5992
    (write-format "(100X, D4.2)" -100000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5993
    (write-format "(100X, D4.2)" 123456789)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5994
    (write-format "(100X, D4.2)" 0.1d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5995
    (write-format "(100X, D4.2)" -0.1d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5996
    (write-format "(100X, D4.2)" 0.01d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5997
    (write-format "(100X, D4.2)" -0.01d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5998
    (write-format "(100X, D4.2)" 0.001d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.5999
    (write-format "(100X, D4.2)" -0.001d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6000
    (write-format "(100X, D4.2)" 1.0d-4)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6001
    (write-format "(100X, D4.2)" -1.0d-4)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6002
    (write-format "(100X, D4.2)" -1.96d-16)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6003
    (write-format "(100X, D4.2)" 3.14159d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6004
    (write-format "(100X, D5.2)" 3)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6005
    (write-format "(100X, D5.2)" -3)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6006
    (write-format "(100X, D5.2)" 10)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6007
    (write-format "(100X, D5.2)" -10)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6008
    (write-format "(100X, D5.2)" 100)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6009
    (write-format "(100X, D5.2)" -100)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6010
    (write-format "(100X, D5.2)" 1000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6011
    (write-format "(100X, D5.2)" -1000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6012
    (write-format "(100X, D5.2)" 10000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6013
    (write-format "(100X, D5.2)" -10000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6014
    (write-format "(100X, D5.2)" 100000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6015
    (write-format "(100X, D5.2)" -100000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6016
    (write-format "(100X, D5.2)" 123456789)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6017
    (write-format "(100X, D5.2)" 0.1d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6018
    (write-format "(100X, D5.2)" -0.1d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6019
    (write-format "(100X, D5.2)" 0.01d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6020
    (write-format "(100X, D5.2)" -0.01d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6021
    (write-format "(100X, D5.2)" 0.001d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6022
    (write-format "(100X, D5.2)" -0.001d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6023
    (write-format "(100X, D5.2)" 1.0d-4)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6024
    (write-format "(100X, D5.2)" -1.0d-4)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6025
    (write-format "(100X, D5.2)" -1.96d-16)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6026
    (write-format "(100X, D5.2)" 3.14159d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6027
    (write-format "(100X, D10.2)" 3)
  "                                                                                                      0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6028
    (write-format "(100X, D10.2)" -3)
  "                                                                                                     -0.30D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6029
    (write-format "(100X, D10.2)" 10)
  "                                                                                                      0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6030
    (write-format "(100X, D10.2)" -10)
  "                                                                                                     -0.10D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6031
    (write-format "(100X, D10.2)" 100)
  "                                                                                                      0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6032
    (write-format "(100X, D10.2)" -100)
  "                                                                                                     -0.10D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6033
    (write-format "(100X, D10.2)" 1000)
  "                                                                                                      0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6034
    (write-format "(100X, D10.2)" -1000)
  "                                                                                                     -0.10D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6035
    (write-format "(100X, D10.2)" 10000)
  "                                                                                                      0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6036
    (write-format "(100X, D10.2)" -10000)
  "                                                                                                     -0.10D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6037
    (write-format "(100X, D10.2)" 100000)
  "                                                                                                      0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6038
    (write-format "(100X, D10.2)" -100000)
  "                                                                                                     -0.10D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6039
    (write-format "(100X, D10.2)" 123456789)
  "                                                                                                      0.12D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6040
    (write-format "(100X, D10.2)" 0.1d0)
  "                                                                                                      0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6041
    (write-format "(100X, D10.2)" -0.1d0)
  "                                                                                                     -0.10D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6042
    (write-format "(100X, D10.2)" 0.01d0)
  "                                                                                                      0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6043
    (write-format "(100X, D10.2)" -0.01d0)
  "                                                                                                     -0.10D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6044
    (write-format "(100X, D10.2)" 0.001d0)
  "                                                                                                      0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6045
    (write-format "(100X, D10.2)" -0.001d0)
  "                                                                                                     -0.10D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6046
    (write-format "(100X, D10.2)" 1.0d-4)
  "                                                                                                      0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6047
    (write-format "(100X, D10.2)" -1.0d-4)
  "                                                                                                     -0.10D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6048
    (write-format "(100X, D10.2)" -1.96d-16)
  "                                                                                                     -0.20D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6049
    (write-format "(100X, D10.2)" 3.14159d0)
  "                                                                                                      0.31D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6050
    (write-format "(100X, D3.3)" 3)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6051
    (write-format "(100X, D3.3)" -3)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6052
    (write-format "(100X, D3.3)" 10)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6053
    (write-format "(100X, D3.3)" -10)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6054
    (write-format "(100X, D3.3)" 100)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6055
    (write-format "(100X, D3.3)" -100)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6056
    (write-format "(100X, D3.3)" 1000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6057
    (write-format "(100X, D3.3)" -1000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6058
    (write-format "(100X, D3.3)" 10000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6059
    (write-format "(100X, D3.3)" -10000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6060
    (write-format "(100X, D3.3)" 100000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6061
    (write-format "(100X, D3.3)" -100000)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6062
    (write-format "(100X, D3.3)" 123456789)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6063
    (write-format "(100X, D3.3)" 0.1d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6064
    (write-format "(100X, D3.3)" -0.1d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6065
    (write-format "(100X, D3.3)" 0.01d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6066
    (write-format "(100X, D3.3)" -0.01d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6067
    (write-format "(100X, D3.3)" 0.001d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6068
    (write-format "(100X, D3.3)" -0.001d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6069
    (write-format "(100X, D3.3)" 1.0d-4)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6070
    (write-format "(100X, D3.3)" -1.0d-4)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6071
    (write-format "(100X, D3.3)" -1.96d-16)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6072
    (write-format "(100X, D3.3)" 3.14159d0)
  "                                                                                                    ***")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6073
    (write-format "(100X, D4.3)" 3)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6074
    (write-format "(100X, D4.3)" -3)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6075
    (write-format "(100X, D4.3)" 10)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6076
    (write-format "(100X, D4.3)" -10)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6077
    (write-format "(100X, D4.3)" 100)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6078
    (write-format "(100X, D4.3)" -100)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6079
    (write-format "(100X, D4.3)" 1000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6080
    (write-format "(100X, D4.3)" -1000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6081
    (write-format "(100X, D4.3)" 10000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6082
    (write-format "(100X, D4.3)" -10000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6083
    (write-format "(100X, D4.3)" 100000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6084
    (write-format "(100X, D4.3)" -100000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6085
    (write-format "(100X, D4.3)" 123456789)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6086
    (write-format "(100X, D4.3)" 0.1d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6087
    (write-format "(100X, D4.3)" -0.1d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6088
    (write-format "(100X, D4.3)" 0.01d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6089
    (write-format "(100X, D4.3)" -0.01d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6090
    (write-format "(100X, D4.3)" 0.001d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6091
    (write-format "(100X, D4.3)" -0.001d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6092
    (write-format "(100X, D4.3)" 1.0d-4)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6093
    (write-format "(100X, D4.3)" -1.0d-4)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6094
    (write-format "(100X, D4.3)" -1.96d-16)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6095
    (write-format "(100X, D4.3)" 3.14159d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6096
    (write-format "(100X, D5.3)" 3)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6097
    (write-format "(100X, D5.3)" -3)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6098
    (write-format "(100X, D5.3)" 10)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6099
    (write-format "(100X, D5.3)" -10)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6100
    (write-format "(100X, D5.3)" 100)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6101
    (write-format "(100X, D5.3)" -100)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6102
    (write-format "(100X, D5.3)" 1000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6103
    (write-format "(100X, D5.3)" -1000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6104
    (write-format "(100X, D5.3)" 10000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6105
    (write-format "(100X, D5.3)" -10000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6106
    (write-format "(100X, D5.3)" 100000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6107
    (write-format "(100X, D5.3)" -100000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6108
    (write-format "(100X, D5.3)" 123456789)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6109
    (write-format "(100X, D5.3)" 0.1d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6110
    (write-format "(100X, D5.3)" -0.1d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6111
    (write-format "(100X, D5.3)" 0.01d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6112
    (write-format "(100X, D5.3)" -0.01d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6113
    (write-format "(100X, D5.3)" 0.001d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6114
    (write-format "(100X, D5.3)" -0.001d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6115
    (write-format "(100X, D5.3)" 1.0d-4)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6116
    (write-format "(100X, D5.3)" -1.0d-4)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6117
    (write-format "(100X, D5.3)" -1.96d-16)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6118
    (write-format "(100X, D5.3)" 3.14159d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6119
    (write-format "(100X, D10.3)" 3)
  "                                                                                                     0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6120
    (write-format "(100X, D10.3)" -3)
  "                                                                                                    -0.300D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6121
    (write-format "(100X, D10.3)" 10)
  "                                                                                                     0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6122
    (write-format "(100X, D10.3)" -10)
  "                                                                                                    -0.100D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6123
    (write-format "(100X, D10.3)" 100)
  "                                                                                                     0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6124
    (write-format "(100X, D10.3)" -100)
  "                                                                                                    -0.100D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6125
    (write-format "(100X, D10.3)" 1000)
  "                                                                                                     0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6126
    (write-format "(100X, D10.3)" -1000)
  "                                                                                                    -0.100D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6127
    (write-format "(100X, D10.3)" 10000)
  "                                                                                                     0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6128
    (write-format "(100X, D10.3)" -10000)
  "                                                                                                    -0.100D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6129
    (write-format "(100X, D10.3)" 100000)
  "                                                                                                     0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6130
    (write-format "(100X, D10.3)" -100000)
  "                                                                                                    -0.100D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6131
    (write-format "(100X, D10.3)" 123456789)
  "                                                                                                     0.123D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6132
    (write-format "(100X, D10.3)" 0.1d0)
  "                                                                                                     0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6133
    (write-format "(100X, D10.3)" -0.1d0)
  "                                                                                                    -0.100D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6134
    (write-format "(100X, D10.3)" 0.01d0)
  "                                                                                                     0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6135
    (write-format "(100X, D10.3)" -0.01d0)
  "                                                                                                    -0.100D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6136
    (write-format "(100X, D10.3)" 0.001d0)
  "                                                                                                     0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6137
    (write-format "(100X, D10.3)" -0.001d0)
  "                                                                                                    -0.100D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6138
    (write-format "(100X, D10.3)" 1.0d-4)
  "                                                                                                     0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6139
    (write-format "(100X, D10.3)" -1.0d-4)
  "                                                                                                    -0.100D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6140
    (write-format "(100X, D10.3)" -1.96d-16)
  "                                                                                                    -0.196D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6141
    (write-format "(100X, D10.3)" 3.14159d0)
  "                                                                                                     0.314D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6142
    (write-format "(100X, D4.4)" 3)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6143
    (write-format "(100X, D4.4)" -3)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6144
    (write-format "(100X, D4.4)" 10)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6145
    (write-format "(100X, D4.4)" -10)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6146
    (write-format "(100X, D4.4)" 100)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6147
    (write-format "(100X, D4.4)" -100)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6148
    (write-format "(100X, D4.4)" 1000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6149
    (write-format "(100X, D4.4)" -1000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6150
    (write-format "(100X, D4.4)" 10000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6151
    (write-format "(100X, D4.4)" -10000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6152
    (write-format "(100X, D4.4)" 100000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6153
    (write-format "(100X, D4.4)" -100000)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6154
    (write-format "(100X, D4.4)" 123456789)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6155
    (write-format "(100X, D4.4)" 0.1d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6156
    (write-format "(100X, D4.4)" -0.1d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6157
    (write-format "(100X, D4.4)" 0.01d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6158
    (write-format "(100X, D4.4)" -0.01d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6159
    (write-format "(100X, D4.4)" 0.001d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6160
    (write-format "(100X, D4.4)" -0.001d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6161
    (write-format "(100X, D4.4)" 1.0d-4)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6162
    (write-format "(100X, D4.4)" -1.0d-4)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6163
    (write-format "(100X, D4.4)" -1.96d-16)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6164
    (write-format "(100X, D4.4)" 3.14159d0)
  "                                                                                                    ****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6165
    (write-format "(100X, D5.4)" 3)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6166
    (write-format "(100X, D5.4)" -3)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6167
    (write-format "(100X, D5.4)" 10)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6168
    (write-format "(100X, D5.4)" -10)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6169
    (write-format "(100X, D5.4)" 100)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6170
    (write-format "(100X, D5.4)" -100)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6171
    (write-format "(100X, D5.4)" 1000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6172
    (write-format "(100X, D5.4)" -1000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6173
    (write-format "(100X, D5.4)" 10000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6174
    (write-format "(100X, D5.4)" -10000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6175
    (write-format "(100X, D5.4)" 100000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6176
    (write-format "(100X, D5.4)" -100000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6177
    (write-format "(100X, D5.4)" 123456789)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6178
    (write-format "(100X, D5.4)" 0.1d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6179
    (write-format "(100X, D5.4)" -0.1d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6180
    (write-format "(100X, D5.4)" 0.01d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6181
    (write-format "(100X, D5.4)" -0.01d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6182
    (write-format "(100X, D5.4)" 0.001d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6183
    (write-format "(100X, D5.4)" -0.001d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6184
    (write-format "(100X, D5.4)" 1.0d-4)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6185
    (write-format "(100X, D5.4)" -1.0d-4)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6186
    (write-format "(100X, D5.4)" -1.96d-16)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6187
    (write-format "(100X, D5.4)" 3.14159d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6188
    (write-format "(100X, D10.4)" 3)
  "                                                                                                    0.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6189
    (write-format "(100X, D10.4)" -3)
  "                                                                                                    -.3000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6190
    (write-format "(100X, D10.4)" 10)
  "                                                                                                    0.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6191
    (write-format "(100X, D10.4)" -10)
  "                                                                                                    -.1000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6192
    (write-format "(100X, D10.4)" 100)
  "                                                                                                    0.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6193
    (write-format "(100X, D10.4)" -100)
  "                                                                                                    -.1000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6194
    (write-format "(100X, D10.4)" 1000)
  "                                                                                                    0.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6195
    (write-format "(100X, D10.4)" -1000)
  "                                                                                                    -.1000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6196
    (write-format "(100X, D10.4)" 10000)
  "                                                                                                    0.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6197
    (write-format "(100X, D10.4)" -10000)
  "                                                                                                    -.1000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6198
    (write-format "(100X, D10.4)" 100000)
  "                                                                                                    0.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6199
    (write-format "(100X, D10.4)" -100000)
  "                                                                                                    -.1000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6200
    (write-format "(100X, D10.4)" 123456789)
  "                                                                                                    0.1235D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6201
    (write-format "(100X, D10.4)" 0.1d0)
  "                                                                                                    0.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6202
    (write-format "(100X, D10.4)" -0.1d0)
  "                                                                                                    -.1000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6203
    (write-format "(100X, D10.4)" 0.01d0)
  "                                                                                                    0.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6204
    (write-format "(100X, D10.4)" -0.01d0)
  "                                                                                                    -.1000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6205
    (write-format "(100X, D10.4)" 0.001d0)
  "                                                                                                    0.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6206
    (write-format "(100X, D10.4)" -0.001d0)
  "                                                                                                    -.1000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6207
    (write-format "(100X, D10.4)" 1.0d-4)
  "                                                                                                    0.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6208
    (write-format "(100X, D10.4)" -1.0d-4)
  "                                                                                                    -.1000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6209
    (write-format "(100X, D10.4)" -1.96d-16)
  "                                                                                                    -.1960D-15")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6210
    (write-format "(100X, D10.4)" 3.14159d0)
  "                                                                                                    0.3142D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6211
    (write-format "(100X, D5.5)" 3)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6212
    (write-format "(100X, D5.5)" -3)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6213
    (write-format "(100X, D5.5)" 10)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6214
    (write-format "(100X, D5.5)" -10)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6215
    (write-format "(100X, D5.5)" 100)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6216
    (write-format "(100X, D5.5)" -100)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6217
    (write-format "(100X, D5.5)" 1000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6218
    (write-format "(100X, D5.5)" -1000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6219
    (write-format "(100X, D5.5)" 10000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6220
    (write-format "(100X, D5.5)" -10000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6221
    (write-format "(100X, D5.5)" 100000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6222
    (write-format "(100X, D5.5)" -100000)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6223
    (write-format "(100X, D5.5)" 123456789)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6224
    (write-format "(100X, D5.5)" 0.1d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6225
    (write-format "(100X, D5.5)" -0.1d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6226
    (write-format "(100X, D5.5)" 0.01d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6227
    (write-format "(100X, D5.5)" -0.01d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6228
    (write-format "(100X, D5.5)" 0.001d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6229
    (write-format "(100X, D5.5)" -0.001d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6230
    (write-format "(100X, D5.5)" 1.0d-4)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6231
    (write-format "(100X, D5.5)" -1.0d-4)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6232
    (write-format "(100X, D5.5)" -1.96d-16)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6233
    (write-format "(100X, D5.5)" 3.14159d0)
  "                                                                                                    *****")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6234
    (write-format "(100X, D10.5)" 3)
  "                                                                                                    .30000D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6235
    (write-format "(100X, D10.5)" -3)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6236
    (write-format "(100X, D10.5)" 10)
  "                                                                                                    .10000D+02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6237
    (write-format "(100X, D10.5)" -10)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6238
    (write-format "(100X, D10.5)" 100)
  "                                                                                                    .10000D+03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6239
    (write-format "(100X, D10.5)" -100)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6240
    (write-format "(100X, D10.5)" 1000)
  "                                                                                                    .10000D+04")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6241
    (write-format "(100X, D10.5)" -1000)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6242
    (write-format "(100X, D10.5)" 10000)
  "                                                                                                    .10000D+05")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6243
    (write-format "(100X, D10.5)" -10000)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6244
    (write-format "(100X, D10.5)" 100000)
  "                                                                                                    .10000D+06")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6245
    (write-format "(100X, D10.5)" -100000)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6246
    (write-format "(100X, D10.5)" 123456789)
  "                                                                                                    .12346D+09")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6247
    (write-format "(100X, D10.5)" 0.1d0)
  "                                                                                                    .10000D+00")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6248
    (write-format "(100X, D10.5)" -0.1d0)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6249
    (write-format "(100X, D10.5)" 0.01d0)
  "                                                                                                    .10000D-01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6250
    (write-format "(100X, D10.5)" -0.01d0)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6251
    (write-format "(100X, D10.5)" 0.001d0)
  "                                                                                                    .10000D-02")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6252
    (write-format "(100X, D10.5)" -0.001d0)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6253
    (write-format "(100X, D10.5)" 1.0d-4)
  "                                                                                                    .10000D-03")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6254
    (write-format "(100X, D10.5)" -1.0d-4)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6255
    (write-format "(100X, D10.5)" -1.96d-16)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6256
    (write-format "(100X, D10.5)" 3.14159d0)
  "                                                                                                    .31416D+01")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6257
    (write-format "(100X, D10.10)" 3)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6258
    (write-format "(100X, D10.10)" -3)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6259
    (write-format "(100X, D10.10)" 10)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6260
    (write-format "(100X, D10.10)" -10)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6261
    (write-format "(100X, D10.10)" 100)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6262
    (write-format "(100X, D10.10)" -100)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6263
    (write-format "(100X, D10.10)" 1000)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6264
    (write-format "(100X, D10.10)" -1000)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6265
    (write-format "(100X, D10.10)" 10000)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6266
    (write-format "(100X, D10.10)" -10000)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6267
    (write-format "(100X, D10.10)" 100000)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6268
    (write-format "(100X, D10.10)" -100000)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6269
    (write-format "(100X, D10.10)" 123456789)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6270
    (write-format "(100X, D10.10)" 0.1d0)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6271
    (write-format "(100X, D10.10)" -0.1d0)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6272
    (write-format "(100X, D10.10)" 0.01d0)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6273
    (write-format "(100X, D10.10)" -0.01d0)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6274
    (write-format "(100X, D10.10)" 0.001d0)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6275
    (write-format "(100X, D10.10)" -0.001d0)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6276
    (write-format "(100X, D10.10)" 1.0d-4)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6277
    (write-format "(100X, D10.10)" -1.0d-4)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6278
    (write-format "(100X, D10.10)" -1.96d-16)
  "                                                                                                    **********")

(rt:deftest FMT.CORPUS.X-D-ED-OUTPUT.6279
    (write-format "(100X, D10.10)" 3.14159d0)
  "                                                                                                    **********")

