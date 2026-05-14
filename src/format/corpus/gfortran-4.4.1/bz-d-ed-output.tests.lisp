;;;; bz-d-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from bz-d-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...bz-d-ed-output.test")
;;;;
;;;; 483 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0001
    (write-format "(BZ, D1.1)" 3)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0002
    (write-format "(BZ, D1.1)" -3)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0003
    (write-format "(BZ, D1.1)" 10)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0004
    (write-format "(BZ, D1.1)" -10)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0005
    (write-format "(BZ, D1.1)" 100)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0006
    (write-format "(BZ, D1.1)" -100)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0007
    (write-format "(BZ, D1.1)" 1000)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0008
    (write-format "(BZ, D1.1)" -1000)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0009
    (write-format "(BZ, D1.1)" 10000)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0010
    (write-format "(BZ, D1.1)" -10000)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0011
    (write-format "(BZ, D1.1)" 100000)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0012
    (write-format "(BZ, D1.1)" -100000)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0013
    (write-format "(BZ, D1.1)" 123456789)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0014
    (write-format "(BZ, D1.1)" 0.1d0)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0015
    (write-format "(BZ, D1.1)" -0.1d0)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0016
    (write-format "(BZ, D1.1)" 0.01d0)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0017
    (write-format "(BZ, D1.1)" -0.01d0)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0018
    (write-format "(BZ, D1.1)" 0.001d0)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0019
    (write-format "(BZ, D1.1)" -0.001d0)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0020
    (write-format "(BZ, D1.1)" 1.0d-4)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0021
    (write-format "(BZ, D1.1)" -1.0d-4)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0022
    (write-format "(BZ, D1.1)" -1.96d-16)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0023
    (write-format "(BZ, D1.1)" 3.14159d0)
  "*")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0024
    (write-format "(BZ, D2.1)" 3)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0025
    (write-format "(BZ, D2.1)" -3)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0026
    (write-format "(BZ, D2.1)" 10)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0027
    (write-format "(BZ, D2.1)" -10)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0028
    (write-format "(BZ, D2.1)" 100)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0029
    (write-format "(BZ, D2.1)" -100)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0030
    (write-format "(BZ, D2.1)" 1000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0031
    (write-format "(BZ, D2.1)" -1000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0032
    (write-format "(BZ, D2.1)" 10000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0033
    (write-format "(BZ, D2.1)" -10000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0034
    (write-format "(BZ, D2.1)" 100000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0035
    (write-format "(BZ, D2.1)" -100000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0036
    (write-format "(BZ, D2.1)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0037
    (write-format "(BZ, D2.1)" 0.1d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0038
    (write-format "(BZ, D2.1)" -0.1d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0039
    (write-format "(BZ, D2.1)" 0.01d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0040
    (write-format "(BZ, D2.1)" -0.01d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0041
    (write-format "(BZ, D2.1)" 0.001d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0042
    (write-format "(BZ, D2.1)" -0.001d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0043
    (write-format "(BZ, D2.1)" 1.0d-4)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0044
    (write-format "(BZ, D2.1)" -1.0d-4)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0045
    (write-format "(BZ, D2.1)" -1.96d-16)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0046
    (write-format "(BZ, D2.1)" 3.14159d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0047
    (write-format "(BZ, D3.1)" 3)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0048
    (write-format "(BZ, D3.1)" -3)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0049
    (write-format "(BZ, D3.1)" 10)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0050
    (write-format "(BZ, D3.1)" -10)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0051
    (write-format "(BZ, D3.1)" 100)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0052
    (write-format "(BZ, D3.1)" -100)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0053
    (write-format "(BZ, D3.1)" 1000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0054
    (write-format "(BZ, D3.1)" -1000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0055
    (write-format "(BZ, D3.1)" 10000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0056
    (write-format "(BZ, D3.1)" -10000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0057
    (write-format "(BZ, D3.1)" 100000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0058
    (write-format "(BZ, D3.1)" -100000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0059
    (write-format "(BZ, D3.1)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0060
    (write-format "(BZ, D3.1)" 0.1d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0061
    (write-format "(BZ, D3.1)" -0.1d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0062
    (write-format "(BZ, D3.1)" 0.01d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0063
    (write-format "(BZ, D3.1)" -0.01d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0064
    (write-format "(BZ, D3.1)" 0.001d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0065
    (write-format "(BZ, D3.1)" -0.001d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0066
    (write-format "(BZ, D3.1)" 1.0d-4)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0067
    (write-format "(BZ, D3.1)" -1.0d-4)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0068
    (write-format "(BZ, D3.1)" -1.96d-16)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0069
    (write-format "(BZ, D3.1)" 3.14159d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0070
    (write-format "(BZ, D4.1)" 3)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0071
    (write-format "(BZ, D4.1)" -3)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0072
    (write-format "(BZ, D4.1)" 10)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0073
    (write-format "(BZ, D4.1)" -10)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0074
    (write-format "(BZ, D4.1)" 100)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0075
    (write-format "(BZ, D4.1)" -100)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0076
    (write-format "(BZ, D4.1)" 1000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0077
    (write-format "(BZ, D4.1)" -1000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0078
    (write-format "(BZ, D4.1)" 10000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0079
    (write-format "(BZ, D4.1)" -10000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0080
    (write-format "(BZ, D4.1)" 100000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0081
    (write-format "(BZ, D4.1)" -100000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0082
    (write-format "(BZ, D4.1)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0083
    (write-format "(BZ, D4.1)" 0.1d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0084
    (write-format "(BZ, D4.1)" -0.1d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0085
    (write-format "(BZ, D4.1)" 0.01d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0086
    (write-format "(BZ, D4.1)" -0.01d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0087
    (write-format "(BZ, D4.1)" 0.001d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0088
    (write-format "(BZ, D4.1)" -0.001d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0089
    (write-format "(BZ, D4.1)" 1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0090
    (write-format "(BZ, D4.1)" -1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0091
    (write-format "(BZ, D4.1)" -1.96d-16)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0092
    (write-format "(BZ, D4.1)" 3.14159d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0093
    (write-format "(BZ, D5.1)" 3)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0094
    (write-format "(BZ, D5.1)" -3)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0095
    (write-format "(BZ, D5.1)" 10)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0096
    (write-format "(BZ, D5.1)" -10)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0097
    (write-format "(BZ, D5.1)" 100)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0098
    (write-format "(BZ, D5.1)" -100)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0099
    (write-format "(BZ, D5.1)" 1000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0100
    (write-format "(BZ, D5.1)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0101
    (write-format "(BZ, D5.1)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0102
    (write-format "(BZ, D5.1)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0103
    (write-format "(BZ, D5.1)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0104
    (write-format "(BZ, D5.1)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0105
    (write-format "(BZ, D5.1)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0106
    (write-format "(BZ, D5.1)" 0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0107
    (write-format "(BZ, D5.1)" -0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0108
    (write-format "(BZ, D5.1)" 0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0109
    (write-format "(BZ, D5.1)" -0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0110
    (write-format "(BZ, D5.1)" 0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0111
    (write-format "(BZ, D5.1)" -0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0112
    (write-format "(BZ, D5.1)" 1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0113
    (write-format "(BZ, D5.1)" -1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0114
    (write-format "(BZ, D5.1)" -1.96d-16)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0115
    (write-format "(BZ, D5.1)" 3.14159d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0116
    (write-format "(BZ, D10.1)" 3)
  "   0.3D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0117
    (write-format "(BZ, D10.1)" -3)
  "  -0.3D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0118
    (write-format "(BZ, D10.1)" 10)
  "   0.1D+02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0119
    (write-format "(BZ, D10.1)" -10)
  "  -0.1D+02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0120
    (write-format "(BZ, D10.1)" 100)
  "   0.1D+03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0121
    (write-format "(BZ, D10.1)" -100)
  "  -0.1D+03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0122
    (write-format "(BZ, D10.1)" 1000)
  "   0.1D+04")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0123
    (write-format "(BZ, D10.1)" -1000)
  "  -0.1D+04")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0124
    (write-format "(BZ, D10.1)" 10000)
  "   0.1D+05")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0125
    (write-format "(BZ, D10.1)" -10000)
  "  -0.1D+05")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0126
    (write-format "(BZ, D10.1)" 100000)
  "   0.1D+06")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0127
    (write-format "(BZ, D10.1)" -100000)
  "  -0.1D+06")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0128
    (write-format "(BZ, D10.1)" 123456789)
  "   0.1D+09")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0129
    (write-format "(BZ, D10.1)" 0.1d0)
  "   0.1D+00")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0130
    (write-format "(BZ, D10.1)" -0.1d0)
  "  -0.1D+00")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0131
    (write-format "(BZ, D10.1)" 0.01d0)
  "   0.1D-01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0132
    (write-format "(BZ, D10.1)" -0.01d0)
  "  -0.1D-01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0133
    (write-format "(BZ, D10.1)" 0.001d0)
  "   0.1D-02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0134
    (write-format "(BZ, D10.1)" -0.001d0)
  "  -0.1D-02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0135
    (write-format "(BZ, D10.1)" 1.0d-4)
  "   0.1D-03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0136
    (write-format "(BZ, D10.1)" -1.0d-4)
  "  -0.1D-03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0137
    (write-format "(BZ, D10.1)" -1.96d-16)
  "  -0.2D-15")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0138
    (write-format "(BZ, D10.1)" 3.14159d0)
  "   0.3D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0139
    (write-format "(BZ, D2.2)" 3)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0140
    (write-format "(BZ, D2.2)" -3)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0141
    (write-format "(BZ, D2.2)" 10)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0142
    (write-format "(BZ, D2.2)" -10)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0143
    (write-format "(BZ, D2.2)" 100)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0144
    (write-format "(BZ, D2.2)" -100)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0145
    (write-format "(BZ, D2.2)" 1000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0146
    (write-format "(BZ, D2.2)" -1000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0147
    (write-format "(BZ, D2.2)" 10000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0148
    (write-format "(BZ, D2.2)" -10000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0149
    (write-format "(BZ, D2.2)" 100000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0150
    (write-format "(BZ, D2.2)" -100000)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0151
    (write-format "(BZ, D2.2)" 123456789)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0152
    (write-format "(BZ, D2.2)" 0.1d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0153
    (write-format "(BZ, D2.2)" -0.1d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0154
    (write-format "(BZ, D2.2)" 0.01d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0155
    (write-format "(BZ, D2.2)" -0.01d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0156
    (write-format "(BZ, D2.2)" 0.001d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0157
    (write-format "(BZ, D2.2)" -0.001d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0158
    (write-format "(BZ, D2.2)" 1.0d-4)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0159
    (write-format "(BZ, D2.2)" -1.0d-4)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0160
    (write-format "(BZ, D2.2)" -1.96d-16)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0161
    (write-format "(BZ, D2.2)" 3.14159d0)
  "**")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0162
    (write-format "(BZ, D3.2)" 3)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0163
    (write-format "(BZ, D3.2)" -3)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0164
    (write-format "(BZ, D3.2)" 10)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0165
    (write-format "(BZ, D3.2)" -10)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0166
    (write-format "(BZ, D3.2)" 100)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0167
    (write-format "(BZ, D3.2)" -100)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0168
    (write-format "(BZ, D3.2)" 1000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0169
    (write-format "(BZ, D3.2)" -1000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0170
    (write-format "(BZ, D3.2)" 10000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0171
    (write-format "(BZ, D3.2)" -10000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0172
    (write-format "(BZ, D3.2)" 100000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0173
    (write-format "(BZ, D3.2)" -100000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0174
    (write-format "(BZ, D3.2)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0175
    (write-format "(BZ, D3.2)" 0.1d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0176
    (write-format "(BZ, D3.2)" -0.1d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0177
    (write-format "(BZ, D3.2)" 0.01d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0178
    (write-format "(BZ, D3.2)" -0.01d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0179
    (write-format "(BZ, D3.2)" 0.001d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0180
    (write-format "(BZ, D3.2)" -0.001d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0181
    (write-format "(BZ, D3.2)" 1.0d-4)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0182
    (write-format "(BZ, D3.2)" -1.0d-4)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0183
    (write-format "(BZ, D3.2)" -1.96d-16)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0184
    (write-format "(BZ, D3.2)" 3.14159d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0185
    (write-format "(BZ, D4.2)" 3)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0186
    (write-format "(BZ, D4.2)" -3)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0187
    (write-format "(BZ, D4.2)" 10)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0188
    (write-format "(BZ, D4.2)" -10)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0189
    (write-format "(BZ, D4.2)" 100)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0190
    (write-format "(BZ, D4.2)" -100)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0191
    (write-format "(BZ, D4.2)" 1000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0192
    (write-format "(BZ, D4.2)" -1000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0193
    (write-format "(BZ, D4.2)" 10000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0194
    (write-format "(BZ, D4.2)" -10000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0195
    (write-format "(BZ, D4.2)" 100000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0196
    (write-format "(BZ, D4.2)" -100000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0197
    (write-format "(BZ, D4.2)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0198
    (write-format "(BZ, D4.2)" 0.1d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0199
    (write-format "(BZ, D4.2)" -0.1d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0200
    (write-format "(BZ, D4.2)" 0.01d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0201
    (write-format "(BZ, D4.2)" -0.01d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0202
    (write-format "(BZ, D4.2)" 0.001d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0203
    (write-format "(BZ, D4.2)" -0.001d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0204
    (write-format "(BZ, D4.2)" 1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0205
    (write-format "(BZ, D4.2)" -1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0206
    (write-format "(BZ, D4.2)" -1.96d-16)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0207
    (write-format "(BZ, D4.2)" 3.14159d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0208
    (write-format "(BZ, D5.2)" 3)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0209
    (write-format "(BZ, D5.2)" -3)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0210
    (write-format "(BZ, D5.2)" 10)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0211
    (write-format "(BZ, D5.2)" -10)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0212
    (write-format "(BZ, D5.2)" 100)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0213
    (write-format "(BZ, D5.2)" -100)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0214
    (write-format "(BZ, D5.2)" 1000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0215
    (write-format "(BZ, D5.2)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0216
    (write-format "(BZ, D5.2)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0217
    (write-format "(BZ, D5.2)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0218
    (write-format "(BZ, D5.2)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0219
    (write-format "(BZ, D5.2)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0220
    (write-format "(BZ, D5.2)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0221
    (write-format "(BZ, D5.2)" 0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0222
    (write-format "(BZ, D5.2)" -0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0223
    (write-format "(BZ, D5.2)" 0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0224
    (write-format "(BZ, D5.2)" -0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0225
    (write-format "(BZ, D5.2)" 0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0226
    (write-format "(BZ, D5.2)" -0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0227
    (write-format "(BZ, D5.2)" 1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0228
    (write-format "(BZ, D5.2)" -1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0229
    (write-format "(BZ, D5.2)" -1.96d-16)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0230
    (write-format "(BZ, D5.2)" 3.14159d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0231
    (write-format "(BZ, D10.2)" 3)
  "  0.30D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0232
    (write-format "(BZ, D10.2)" -3)
  " -0.30D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0233
    (write-format "(BZ, D10.2)" 10)
  "  0.10D+02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0234
    (write-format "(BZ, D10.2)" -10)
  " -0.10D+02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0235
    (write-format "(BZ, D10.2)" 100)
  "  0.10D+03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0236
    (write-format "(BZ, D10.2)" -100)
  " -0.10D+03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0237
    (write-format "(BZ, D10.2)" 1000)
  "  0.10D+04")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0238
    (write-format "(BZ, D10.2)" -1000)
  " -0.10D+04")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0239
    (write-format "(BZ, D10.2)" 10000)
  "  0.10D+05")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0240
    (write-format "(BZ, D10.2)" -10000)
  " -0.10D+05")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0241
    (write-format "(BZ, D10.2)" 100000)
  "  0.10D+06")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0242
    (write-format "(BZ, D10.2)" -100000)
  " -0.10D+06")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0243
    (write-format "(BZ, D10.2)" 123456789)
  "  0.12D+09")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0244
    (write-format "(BZ, D10.2)" 0.1d0)
  "  0.10D+00")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0245
    (write-format "(BZ, D10.2)" -0.1d0)
  " -0.10D+00")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0246
    (write-format "(BZ, D10.2)" 0.01d0)
  "  0.10D-01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0247
    (write-format "(BZ, D10.2)" -0.01d0)
  " -0.10D-01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0248
    (write-format "(BZ, D10.2)" 0.001d0)
  "  0.10D-02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0249
    (write-format "(BZ, D10.2)" -0.001d0)
  " -0.10D-02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0250
    (write-format "(BZ, D10.2)" 1.0d-4)
  "  0.10D-03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0251
    (write-format "(BZ, D10.2)" -1.0d-4)
  " -0.10D-03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0252
    (write-format "(BZ, D10.2)" -1.96d-16)
  " -0.20D-15")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0253
    (write-format "(BZ, D10.2)" 3.14159d0)
  "  0.31D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0254
    (write-format "(BZ, D3.3)" 3)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0255
    (write-format "(BZ, D3.3)" -3)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0256
    (write-format "(BZ, D3.3)" 10)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0257
    (write-format "(BZ, D3.3)" -10)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0258
    (write-format "(BZ, D3.3)" 100)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0259
    (write-format "(BZ, D3.3)" -100)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0260
    (write-format "(BZ, D3.3)" 1000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0261
    (write-format "(BZ, D3.3)" -1000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0262
    (write-format "(BZ, D3.3)" 10000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0263
    (write-format "(BZ, D3.3)" -10000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0264
    (write-format "(BZ, D3.3)" 100000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0265
    (write-format "(BZ, D3.3)" -100000)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0266
    (write-format "(BZ, D3.3)" 123456789)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0267
    (write-format "(BZ, D3.3)" 0.1d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0268
    (write-format "(BZ, D3.3)" -0.1d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0269
    (write-format "(BZ, D3.3)" 0.01d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0270
    (write-format "(BZ, D3.3)" -0.01d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0271
    (write-format "(BZ, D3.3)" 0.001d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0272
    (write-format "(BZ, D3.3)" -0.001d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0273
    (write-format "(BZ, D3.3)" 1.0d-4)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0274
    (write-format "(BZ, D3.3)" -1.0d-4)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0275
    (write-format "(BZ, D3.3)" -1.96d-16)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0276
    (write-format "(BZ, D3.3)" 3.14159d0)
  "***")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0277
    (write-format "(BZ, D4.3)" 3)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0278
    (write-format "(BZ, D4.3)" -3)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0279
    (write-format "(BZ, D4.3)" 10)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0280
    (write-format "(BZ, D4.3)" -10)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0281
    (write-format "(BZ, D4.3)" 100)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0282
    (write-format "(BZ, D4.3)" -100)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0283
    (write-format "(BZ, D4.3)" 1000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0284
    (write-format "(BZ, D4.3)" -1000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0285
    (write-format "(BZ, D4.3)" 10000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0286
    (write-format "(BZ, D4.3)" -10000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0287
    (write-format "(BZ, D4.3)" 100000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0288
    (write-format "(BZ, D4.3)" -100000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0289
    (write-format "(BZ, D4.3)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0290
    (write-format "(BZ, D4.3)" 0.1d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0291
    (write-format "(BZ, D4.3)" -0.1d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0292
    (write-format "(BZ, D4.3)" 0.01d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0293
    (write-format "(BZ, D4.3)" -0.01d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0294
    (write-format "(BZ, D4.3)" 0.001d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0295
    (write-format "(BZ, D4.3)" -0.001d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0296
    (write-format "(BZ, D4.3)" 1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0297
    (write-format "(BZ, D4.3)" -1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0298
    (write-format "(BZ, D4.3)" -1.96d-16)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0299
    (write-format "(BZ, D4.3)" 3.14159d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0300
    (write-format "(BZ, D5.3)" 3)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0301
    (write-format "(BZ, D5.3)" -3)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0302
    (write-format "(BZ, D5.3)" 10)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0303
    (write-format "(BZ, D5.3)" -10)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0304
    (write-format "(BZ, D5.3)" 100)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0305
    (write-format "(BZ, D5.3)" -100)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0306
    (write-format "(BZ, D5.3)" 1000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0307
    (write-format "(BZ, D5.3)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0308
    (write-format "(BZ, D5.3)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0309
    (write-format "(BZ, D5.3)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0310
    (write-format "(BZ, D5.3)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0311
    (write-format "(BZ, D5.3)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0312
    (write-format "(BZ, D5.3)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0313
    (write-format "(BZ, D5.3)" 0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0314
    (write-format "(BZ, D5.3)" -0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0315
    (write-format "(BZ, D5.3)" 0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0316
    (write-format "(BZ, D5.3)" -0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0317
    (write-format "(BZ, D5.3)" 0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0318
    (write-format "(BZ, D5.3)" -0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0319
    (write-format "(BZ, D5.3)" 1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0320
    (write-format "(BZ, D5.3)" -1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0321
    (write-format "(BZ, D5.3)" -1.96d-16)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0322
    (write-format "(BZ, D5.3)" 3.14159d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0323
    (write-format "(BZ, D10.3)" 3)
  " 0.300D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0324
    (write-format "(BZ, D10.3)" -3)
  "-0.300D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0325
    (write-format "(BZ, D10.3)" 10)
  " 0.100D+02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0326
    (write-format "(BZ, D10.3)" -10)
  "-0.100D+02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0327
    (write-format "(BZ, D10.3)" 100)
  " 0.100D+03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0328
    (write-format "(BZ, D10.3)" -100)
  "-0.100D+03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0329
    (write-format "(BZ, D10.3)" 1000)
  " 0.100D+04")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0330
    (write-format "(BZ, D10.3)" -1000)
  "-0.100D+04")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0331
    (write-format "(BZ, D10.3)" 10000)
  " 0.100D+05")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0332
    (write-format "(BZ, D10.3)" -10000)
  "-0.100D+05")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0333
    (write-format "(BZ, D10.3)" 100000)
  " 0.100D+06")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0334
    (write-format "(BZ, D10.3)" -100000)
  "-0.100D+06")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0335
    (write-format "(BZ, D10.3)" 123456789)
  " 0.123D+09")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0336
    (write-format "(BZ, D10.3)" 0.1d0)
  " 0.100D+00")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0337
    (write-format "(BZ, D10.3)" -0.1d0)
  "-0.100D+00")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0338
    (write-format "(BZ, D10.3)" 0.01d0)
  " 0.100D-01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0339
    (write-format "(BZ, D10.3)" -0.01d0)
  "-0.100D-01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0340
    (write-format "(BZ, D10.3)" 0.001d0)
  " 0.100D-02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0341
    (write-format "(BZ, D10.3)" -0.001d0)
  "-0.100D-02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0342
    (write-format "(BZ, D10.3)" 1.0d-4)
  " 0.100D-03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0343
    (write-format "(BZ, D10.3)" -1.0d-4)
  "-0.100D-03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0344
    (write-format "(BZ, D10.3)" -1.96d-16)
  "-0.196D-15")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0345
    (write-format "(BZ, D10.3)" 3.14159d0)
  " 0.314D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0346
    (write-format "(BZ, D4.4)" 3)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0347
    (write-format "(BZ, D4.4)" -3)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0348
    (write-format "(BZ, D4.4)" 10)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0349
    (write-format "(BZ, D4.4)" -10)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0350
    (write-format "(BZ, D4.4)" 100)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0351
    (write-format "(BZ, D4.4)" -100)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0352
    (write-format "(BZ, D4.4)" 1000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0353
    (write-format "(BZ, D4.4)" -1000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0354
    (write-format "(BZ, D4.4)" 10000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0355
    (write-format "(BZ, D4.4)" -10000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0356
    (write-format "(BZ, D4.4)" 100000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0357
    (write-format "(BZ, D4.4)" -100000)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0358
    (write-format "(BZ, D4.4)" 123456789)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0359
    (write-format "(BZ, D4.4)" 0.1d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0360
    (write-format "(BZ, D4.4)" -0.1d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0361
    (write-format "(BZ, D4.4)" 0.01d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0362
    (write-format "(BZ, D4.4)" -0.01d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0363
    (write-format "(BZ, D4.4)" 0.001d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0364
    (write-format "(BZ, D4.4)" -0.001d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0365
    (write-format "(BZ, D4.4)" 1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0366
    (write-format "(BZ, D4.4)" -1.0d-4)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0367
    (write-format "(BZ, D4.4)" -1.96d-16)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0368
    (write-format "(BZ, D4.4)" 3.14159d0)
  "****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0369
    (write-format "(BZ, D5.4)" 3)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0370
    (write-format "(BZ, D5.4)" -3)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0371
    (write-format "(BZ, D5.4)" 10)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0372
    (write-format "(BZ, D5.4)" -10)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0373
    (write-format "(BZ, D5.4)" 100)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0374
    (write-format "(BZ, D5.4)" -100)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0375
    (write-format "(BZ, D5.4)" 1000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0376
    (write-format "(BZ, D5.4)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0377
    (write-format "(BZ, D5.4)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0378
    (write-format "(BZ, D5.4)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0379
    (write-format "(BZ, D5.4)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0380
    (write-format "(BZ, D5.4)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0381
    (write-format "(BZ, D5.4)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0382
    (write-format "(BZ, D5.4)" 0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0383
    (write-format "(BZ, D5.4)" -0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0384
    (write-format "(BZ, D5.4)" 0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0385
    (write-format "(BZ, D5.4)" -0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0386
    (write-format "(BZ, D5.4)" 0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0387
    (write-format "(BZ, D5.4)" -0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0388
    (write-format "(BZ, D5.4)" 1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0389
    (write-format "(BZ, D5.4)" -1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0390
    (write-format "(BZ, D5.4)" -1.96d-16)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0391
    (write-format "(BZ, D5.4)" 3.14159d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0392
    (write-format "(BZ, D10.4)" 3)
  "0.3000D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0393
    (write-format "(BZ, D10.4)" -3)
  "-.3000D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0394
    (write-format "(BZ, D10.4)" 10)
  "0.1000D+02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0395
    (write-format "(BZ, D10.4)" -10)
  "-.1000D+02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0396
    (write-format "(BZ, D10.4)" 100)
  "0.1000D+03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0397
    (write-format "(BZ, D10.4)" -100)
  "-.1000D+03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0398
    (write-format "(BZ, D10.4)" 1000)
  "0.1000D+04")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0399
    (write-format "(BZ, D10.4)" -1000)
  "-.1000D+04")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0400
    (write-format "(BZ, D10.4)" 10000)
  "0.1000D+05")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0401
    (write-format "(BZ, D10.4)" -10000)
  "-.1000D+05")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0402
    (write-format "(BZ, D10.4)" 100000)
  "0.1000D+06")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0403
    (write-format "(BZ, D10.4)" -100000)
  "-.1000D+06")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0404
    (write-format "(BZ, D10.4)" 123456789)
  "0.1235D+09")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0405
    (write-format "(BZ, D10.4)" 0.1d0)
  "0.1000D+00")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0406
    (write-format "(BZ, D10.4)" -0.1d0)
  "-.1000D+00")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0407
    (write-format "(BZ, D10.4)" 0.01d0)
  "0.1000D-01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0408
    (write-format "(BZ, D10.4)" -0.01d0)
  "-.1000D-01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0409
    (write-format "(BZ, D10.4)" 0.001d0)
  "0.1000D-02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0410
    (write-format "(BZ, D10.4)" -0.001d0)
  "-.1000D-02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0411
    (write-format "(BZ, D10.4)" 1.0d-4)
  "0.1000D-03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0412
    (write-format "(BZ, D10.4)" -1.0d-4)
  "-.1000D-03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0413
    (write-format "(BZ, D10.4)" -1.96d-16)
  "-.1960D-15")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0414
    (write-format "(BZ, D10.4)" 3.14159d0)
  "0.3142D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0415
    (write-format "(BZ, D5.5)" 3)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0416
    (write-format "(BZ, D5.5)" -3)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0417
    (write-format "(BZ, D5.5)" 10)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0418
    (write-format "(BZ, D5.5)" -10)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0419
    (write-format "(BZ, D5.5)" 100)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0420
    (write-format "(BZ, D5.5)" -100)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0421
    (write-format "(BZ, D5.5)" 1000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0422
    (write-format "(BZ, D5.5)" -1000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0423
    (write-format "(BZ, D5.5)" 10000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0424
    (write-format "(BZ, D5.5)" -10000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0425
    (write-format "(BZ, D5.5)" 100000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0426
    (write-format "(BZ, D5.5)" -100000)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0427
    (write-format "(BZ, D5.5)" 123456789)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0428
    (write-format "(BZ, D5.5)" 0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0429
    (write-format "(BZ, D5.5)" -0.1d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0430
    (write-format "(BZ, D5.5)" 0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0431
    (write-format "(BZ, D5.5)" -0.01d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0432
    (write-format "(BZ, D5.5)" 0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0433
    (write-format "(BZ, D5.5)" -0.001d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0434
    (write-format "(BZ, D5.5)" 1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0435
    (write-format "(BZ, D5.5)" -1.0d-4)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0436
    (write-format "(BZ, D5.5)" -1.96d-16)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0437
    (write-format "(BZ, D5.5)" 3.14159d0)
  "*****")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0438
    (write-format "(BZ, D10.5)" 3)
  ".30000D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0439
    (write-format "(BZ, D10.5)" -3)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0440
    (write-format "(BZ, D10.5)" 10)
  ".10000D+02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0441
    (write-format "(BZ, D10.5)" -10)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0442
    (write-format "(BZ, D10.5)" 100)
  ".10000D+03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0443
    (write-format "(BZ, D10.5)" -100)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0444
    (write-format "(BZ, D10.5)" 1000)
  ".10000D+04")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0445
    (write-format "(BZ, D10.5)" -1000)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0446
    (write-format "(BZ, D10.5)" 10000)
  ".10000D+05")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0447
    (write-format "(BZ, D10.5)" -10000)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0448
    (write-format "(BZ, D10.5)" 100000)
  ".10000D+06")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0449
    (write-format "(BZ, D10.5)" -100000)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0450
    (write-format "(BZ, D10.5)" 123456789)
  ".12346D+09")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0451
    (write-format "(BZ, D10.5)" 0.1d0)
  ".10000D+00")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0452
    (write-format "(BZ, D10.5)" -0.1d0)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0453
    (write-format "(BZ, D10.5)" 0.01d0)
  ".10000D-01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0454
    (write-format "(BZ, D10.5)" -0.01d0)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0455
    (write-format "(BZ, D10.5)" 0.001d0)
  ".10000D-02")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0456
    (write-format "(BZ, D10.5)" -0.001d0)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0457
    (write-format "(BZ, D10.5)" 1.0d-4)
  ".10000D-03")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0458
    (write-format "(BZ, D10.5)" -1.0d-4)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0459
    (write-format "(BZ, D10.5)" -1.96d-16)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0460
    (write-format "(BZ, D10.5)" 3.14159d0)
  ".31416D+01")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0461
    (write-format "(BZ, D10.10)" 3)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0462
    (write-format "(BZ, D10.10)" -3)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0463
    (write-format "(BZ, D10.10)" 10)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0464
    (write-format "(BZ, D10.10)" -10)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0465
    (write-format "(BZ, D10.10)" 100)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0466
    (write-format "(BZ, D10.10)" -100)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0467
    (write-format "(BZ, D10.10)" 1000)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0468
    (write-format "(BZ, D10.10)" -1000)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0469
    (write-format "(BZ, D10.10)" 10000)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0470
    (write-format "(BZ, D10.10)" -10000)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0471
    (write-format "(BZ, D10.10)" 100000)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0472
    (write-format "(BZ, D10.10)" -100000)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0473
    (write-format "(BZ, D10.10)" 123456789)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0474
    (write-format "(BZ, D10.10)" 0.1d0)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0475
    (write-format "(BZ, D10.10)" -0.1d0)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0476
    (write-format "(BZ, D10.10)" 0.01d0)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0477
    (write-format "(BZ, D10.10)" -0.01d0)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0478
    (write-format "(BZ, D10.10)" 0.001d0)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0479
    (write-format "(BZ, D10.10)" -0.001d0)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0480
    (write-format "(BZ, D10.10)" 1.0d-4)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0481
    (write-format "(BZ, D10.10)" -1.0d-4)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0482
    (write-format "(BZ, D10.10)" -1.96d-16)
  "**********")

(rt:deftest FMT.CORPUS.BZ-D-ED-OUTPUT.0483
    (write-format "(BZ, D10.10)" 3.14159d0)
  "**********")

