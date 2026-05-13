;;;; d-ed-input-1.tests.lisp
;;;;
;;;; AUTO-GENERATED from d-ed-input-1.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-input-corpus-tests
;;;;     #P"...d-ed-input-1.test")
;;;;
;;;; 609 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0001
    (read-format "(D1.1)" "3.")
  (0.3d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0002
    (read-format "(D1.1)" "-3.")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0003
    (read-format "(D1.1)" "10.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0004
    (read-format "(D1.1)" "-10.")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0005
    (read-format "(D1.1)" "100.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0006
    (read-format "(D1.1)" "-100.")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0007
    (read-format "(D1.1)" "1000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0008
    (read-format "(D1.1)" "-1000.")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0009
    (read-format "(D1.1)" "10000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0010
    (read-format "(D1.1)" "-10000.")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0011
    (read-format "(D1.1)" "100000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0012
    (read-format "(D1.1)" "-100000.")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0013
    (read-format "(D1.1)" "123456789.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0014
    (read-format "(D1.1)" "0.1")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0015
    (read-format "(D1.1)" "-0.1")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0016
    (read-format "(D1.1)" "0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0017
    (read-format "(D1.1)" "-0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0018
    (read-format "(D1.1)" "0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0019
    (read-format "(D1.1)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0020
    (read-format "(D1.1)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0021
    (read-format "(D1.1)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0022
    (read-format "(D1.1)" "-1.96e-16")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0023
    (read-format "(D1.1)" "3.14159-    1.0")
  (0.3d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0024
    (read-format "(D1.1)" "1d12")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0025
    (read-format "(D1.1)" "1D12")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0026
    (read-format "(D1.1)" "-1   d12")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0027
    (read-format "(D1.1)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0028
    (read-format "(D1.1)" ".1")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0029
    (read-format "(D1.1)" "0.1E+200")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0030
    (read-format "(D2.1)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0031
    (read-format "(D2.1)" "-3.")
  (-0.3d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0032
    (read-format "(D2.1)" "10.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0033
    (read-format "(D2.1)" "-10.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0034
    (read-format "(D2.1)" "100.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0035
    (read-format "(D2.1)" "-100.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0036
    (read-format "(D2.1)" "1000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0037
    (read-format "(D2.1)" "-1000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0038
    (read-format "(D2.1)" "10000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0039
    (read-format "(D2.1)" "-10000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0040
    (read-format "(D2.1)" "100000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0041
    (read-format "(D2.1)" "-100000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0042
    (read-format "(D2.1)" "123456789.")
  (1.2d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0043
    (read-format "(D2.1)" "0.1")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0044
    (read-format "(D2.1)" "-0.1")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0045
    (read-format "(D2.1)" "0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0046
    (read-format "(D2.1)" "-0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0047
    (read-format "(D2.1)" "0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0048
    (read-format "(D2.1)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0049
    (read-format "(D2.1)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0050
    (read-format "(D2.1)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0051
    (read-format "(D2.1)" "-1.96e-16")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0052
    (read-format "(D2.1)" "3.14159-    1.0")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0053
    (handler-case (progn (read-format "(D2.1)" "1d12") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0054
    (handler-case (progn (read-format "(D2.1)" "1D12") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0055
    (read-format "(D2.1)" "-1   d12")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0056
    (read-format "(D2.1)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0057
    (read-format "(D2.1)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0058
    (read-format "(D2.1)" "0.1E+200")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0059
    (read-format "(D3.1)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0060
    (read-format "(D3.1)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0061
    (read-format "(D3.1)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0062
    (read-format "(D3.1)" "-10.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0063
    (read-format "(D3.1)" "100.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0064
    (read-format "(D3.1)" "-100.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0065
    (read-format "(D3.1)" "1000.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0066
    (read-format "(D3.1)" "-1000.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0067
    (read-format "(D3.1)" "10000.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0068
    (read-format "(D3.1)" "-10000.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0069
    (read-format "(D3.1)" "100000.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0070
    (read-format "(D3.1)" "-100000.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0071
    (read-format "(D3.1)" "123456789.")
  (12.3d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0072
    (read-format "(D3.1)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0073
    (read-format "(D3.1)" "-0.1")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0074
    (read-format "(D3.1)" "0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0075
    (read-format "(D3.1)" "-0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0076
    (read-format "(D3.1)" "0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0077
    (read-format "(D3.1)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0078
    (read-format "(D3.1)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0079
    (read-format "(D3.1)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0080
    (read-format "(D3.1)" "-1.96e-16")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0081
    (read-format "(D3.1)" "3.14159-    1.0")
  (3.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0082
    (read-format "(D3.1)" "1d12")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0083
    (read-format "(D3.1)" "1D12")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0084
    (read-format "(D3.1)" "-1   d12")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0085
    (read-format "(D3.1)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0086
    (read-format "(D3.1)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0087
    (read-format "(D3.1)" "0.1E+200")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0088
    (read-format "(D4.1)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0089
    (read-format "(D4.1)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0090
    (read-format "(D4.1)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0091
    (read-format "(D4.1)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0092
    (read-format "(D4.1)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0093
    (read-format "(D4.1)" "-100.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0094
    (read-format "(D4.1)" "1000.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0095
    (read-format "(D4.1)" "-1000.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0096
    (read-format "(D4.1)" "10000.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0097
    (read-format "(D4.1)" "-10000.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0098
    (read-format "(D4.1)" "100000.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0099
    (read-format "(D4.1)" "-100000.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0100
    (read-format "(D4.1)" "123456789.")
  (123.4d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0101
    (read-format "(D4.1)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0102
    (read-format "(D4.1)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0103
    (read-format "(D4.1)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0104
    (read-format "(D4.1)" "-0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0105
    (read-format "(D4.1)" "0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0106
    (read-format "(D4.1)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0107
    (read-format "(D4.1)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0108
    (read-format "(D4.1)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0109
    (read-format "(D4.1)" "-1.96e-16")
  (-1.9d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0110
    (read-format "(D4.1)" "3.14159-    1.0")
  (3.14d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0111
    (read-format "(D4.1)" "1d12")
  (1.0d11))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0112
    (read-format "(D4.1)" "1D12")
  (1.0d11))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0113
    (read-format "(D4.1)" "-1   d12")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0114
    (read-format "(D4.1)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0115
    (read-format "(D4.1)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0116
    (handler-case (progn (read-format "(D4.1)" "0.1E+200") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0117
    (read-format "(D5.1)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0118
    (read-format "(D5.1)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0119
    (read-format "(D5.1)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0120
    (read-format "(D5.1)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0121
    (read-format "(D5.1)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0122
    (read-format "(D5.1)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0123
    (read-format "(D5.1)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0124
    (read-format "(D5.1)" "-1000.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0125
    (read-format "(D5.1)" "10000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0126
    (read-format "(D5.1)" "-10000.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0127
    (read-format "(D5.1)" "100000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0128
    (read-format "(D5.1)" "-100000.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0129
    (read-format "(D5.1)" "123456789.")
  (1234.5d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0130
    (read-format "(D5.1)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0131
    (read-format "(D5.1)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0132
    (read-format "(D5.1)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0133
    (read-format "(D5.1)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0134
    (read-format "(D5.1)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0135
    (read-format "(D5.1)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0136
    (read-format "(D5.1)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0137
    (read-format "(D5.1)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0138
    (read-format "(D5.1)" "-1.96e-16")
  (-1.96d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0139
    (read-format "(D5.1)" "3.14159-    1.0")
  (3.141d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0140
    (read-format "(D5.1)" "1d12")
  (1.0d11))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0141
    (read-format "(D5.1)" "1D12")
  (1.0d11))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0142
    (read-format "(D5.1)" "-1   d12")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0143
    (read-format "(D5.1)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0144
    (read-format "(D5.1)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0145
    (handler-case (progn (read-format "(D5.1)" "0.1E+200") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0146
    (read-format "(D10.1)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0147
    (read-format "(D10.1)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0148
    (read-format "(D10.1)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0149
    (read-format "(D10.1)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0150
    (read-format "(D10.1)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0151
    (read-format "(D10.1)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0152
    (read-format "(D10.1)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0153
    (read-format "(D10.1)" "-1000.")
  (-1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0154
    (read-format "(D10.1)" "10000.")
  (10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0155
    (read-format "(D10.1)" "-10000.")
  (-10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0156
    (read-format "(D10.1)" "100000.")
  (100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0157
    (read-format "(D10.1)" "-100000.")
  (-100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0158
    (read-format "(D10.1)" "123456789.")
  (1.23456789d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0159
    (read-format "(D10.1)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0160
    (read-format "(D10.1)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0161
    (read-format "(D10.1)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0162
    (read-format "(D10.1)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0163
    (read-format "(D10.1)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0164
    (read-format "(D10.1)" "-0.001")
  (-0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0165
    (read-format "(D10.1)" "0.0001")
  (1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0166
    (read-format "(D10.1)" "-0.0001")
  (-1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0167
    (read-format "(D10.1)" "-1.96e-16")
  (-1.96d-16))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0168
    (handler-case (progn (read-format "(D10.1)" "3.14159-    1.0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0169
    (read-format "(D10.1)" "1d12")
  (1.0d11))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0170
    (read-format "(D10.1)" "1D12")
  (1.0d11))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0171
    (read-format "(D10.1)" "-1   d12")
  (-1.0d11))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0172
    (read-format "(D10.1)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0173
    (read-format "(D10.1)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0174
    (read-format "(D10.1)" "0.1E+200")
  (1.0d199))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0175
    (read-format "(D2.2)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0176
    (read-format "(D2.2)" "-3.")
  (-0.03d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0177
    (read-format "(D2.2)" "10.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0178
    (read-format "(D2.2)" "-10.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0179
    (read-format "(D2.2)" "100.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0180
    (read-format "(D2.2)" "-100.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0181
    (read-format "(D2.2)" "1000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0182
    (read-format "(D2.2)" "-1000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0183
    (read-format "(D2.2)" "10000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0184
    (read-format "(D2.2)" "-10000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0185
    (read-format "(D2.2)" "100000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0186
    (read-format "(D2.2)" "-100000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0187
    (read-format "(D2.2)" "123456789.")
  (0.12d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0188
    (read-format "(D2.2)" "0.1")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0189
    (read-format "(D2.2)" "-0.1")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0190
    (read-format "(D2.2)" "0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0191
    (read-format "(D2.2)" "-0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0192
    (read-format "(D2.2)" "0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0193
    (read-format "(D2.2)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0194
    (read-format "(D2.2)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0195
    (read-format "(D2.2)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0196
    (read-format "(D2.2)" "-1.96e-16")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0197
    (read-format "(D2.2)" "3.14159-    1.0")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0198
    (handler-case (progn (read-format "(D2.2)" "1d12") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0199
    (handler-case (progn (read-format "(D2.2)" "1D12") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0200
    (read-format "(D2.2)" "-1   d12")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0201
    (read-format "(D2.2)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0202
    (read-format "(D2.2)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0203
    (read-format "(D2.2)" "0.1E+200")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0204
    (read-format "(D3.2)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0205
    (read-format "(D3.2)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0206
    (read-format "(D3.2)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0207
    (read-format "(D3.2)" "-10.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0208
    (read-format "(D3.2)" "100.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0209
    (read-format "(D3.2)" "-100.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0210
    (read-format "(D3.2)" "1000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0211
    (read-format "(D3.2)" "-1000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0212
    (read-format "(D3.2)" "10000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0213
    (read-format "(D3.2)" "-10000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0214
    (read-format "(D3.2)" "100000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0215
    (read-format "(D3.2)" "-100000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0216
    (read-format "(D3.2)" "123456789.")
  (1.23d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0217
    (read-format "(D3.2)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0218
    (read-format "(D3.2)" "-0.1")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0219
    (read-format "(D3.2)" "0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0220
    (read-format "(D3.2)" "-0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0221
    (read-format "(D3.2)" "0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0222
    (read-format "(D3.2)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0223
    (read-format "(D3.2)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0224
    (read-format "(D3.2)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0225
    (read-format "(D3.2)" "-1.96e-16")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0226
    (read-format "(D3.2)" "3.14159-    1.0")
  (3.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0227
    (read-format "(D3.2)" "1d12")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0228
    (read-format "(D3.2)" "1D12")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0229
    (read-format "(D3.2)" "-1   d12")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0230
    (read-format "(D3.2)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0231
    (read-format "(D3.2)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0232
    (read-format "(D3.2)" "0.1E+200")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0233
    (read-format "(D4.2)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0234
    (read-format "(D4.2)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0235
    (read-format "(D4.2)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0236
    (read-format "(D4.2)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0237
    (read-format "(D4.2)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0238
    (read-format "(D4.2)" "-100.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0239
    (read-format "(D4.2)" "1000.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0240
    (read-format "(D4.2)" "-1000.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0241
    (read-format "(D4.2)" "10000.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0242
    (read-format "(D4.2)" "-10000.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0243
    (read-format "(D4.2)" "100000.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0244
    (read-format "(D4.2)" "-100000.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0245
    (read-format "(D4.2)" "123456789.")
  (12.34d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0246
    (read-format "(D4.2)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0247
    (read-format "(D4.2)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0248
    (read-format "(D4.2)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0249
    (read-format "(D4.2)" "-0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0250
    (read-format "(D4.2)" "0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0251
    (read-format "(D4.2)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0252
    (read-format "(D4.2)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0253
    (read-format "(D4.2)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0254
    (read-format "(D4.2)" "-1.96e-16")
  (-1.9d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0255
    (read-format "(D4.2)" "3.14159-    1.0")
  (3.14d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0256
    (read-format "(D4.2)" "1d12")
  (1.0d10))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0257
    (read-format "(D4.2)" "1D12")
  (1.0d10))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0258
    (read-format "(D4.2)" "-1   d12")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0259
    (read-format "(D4.2)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0260
    (read-format "(D4.2)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0261
    (handler-case (progn (read-format "(D4.2)" "0.1E+200") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0262
    (read-format "(D5.2)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0263
    (read-format "(D5.2)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0264
    (read-format "(D5.2)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0265
    (read-format "(D5.2)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0266
    (read-format "(D5.2)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0267
    (read-format "(D5.2)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0268
    (read-format "(D5.2)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0269
    (read-format "(D5.2)" "-1000.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0270
    (read-format "(D5.2)" "10000.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0271
    (read-format "(D5.2)" "-10000.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0272
    (read-format "(D5.2)" "100000.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0273
    (read-format "(D5.2)" "-100000.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0274
    (read-format "(D5.2)" "123456789.")
  (123.45d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0275
    (read-format "(D5.2)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0276
    (read-format "(D5.2)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0277
    (read-format "(D5.2)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0278
    (read-format "(D5.2)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0279
    (read-format "(D5.2)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0280
    (read-format "(D5.2)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0281
    (read-format "(D5.2)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0282
    (read-format "(D5.2)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0283
    (read-format "(D5.2)" "-1.96e-16")
  (-1.96d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0284
    (read-format "(D5.2)" "3.14159-    1.0")
  (3.141d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0285
    (read-format "(D5.2)" "1d12")
  (1.0d10))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0286
    (read-format "(D5.2)" "1D12")
  (1.0d10))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0287
    (read-format "(D5.2)" "-1   d12")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0288
    (read-format "(D5.2)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0289
    (read-format "(D5.2)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0290
    (handler-case (progn (read-format "(D5.2)" "0.1E+200") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0291
    (read-format "(D10.2)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0292
    (read-format "(D10.2)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0293
    (read-format "(D10.2)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0294
    (read-format "(D10.2)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0295
    (read-format "(D10.2)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0296
    (read-format "(D10.2)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0297
    (read-format "(D10.2)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0298
    (read-format "(D10.2)" "-1000.")
  (-1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0299
    (read-format "(D10.2)" "10000.")
  (10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0300
    (read-format "(D10.2)" "-10000.")
  (-10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0301
    (read-format "(D10.2)" "100000.")
  (100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0302
    (read-format "(D10.2)" "-100000.")
  (-100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0303
    (read-format "(D10.2)" "123456789.")
  (1.23456789d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0304
    (read-format "(D10.2)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0305
    (read-format "(D10.2)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0306
    (read-format "(D10.2)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0307
    (read-format "(D10.2)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0308
    (read-format "(D10.2)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0309
    (read-format "(D10.2)" "-0.001")
  (-0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0310
    (read-format "(D10.2)" "0.0001")
  (1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0311
    (read-format "(D10.2)" "-0.0001")
  (-1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0312
    (read-format "(D10.2)" "-1.96e-16")
  (-1.96d-16))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0313
    (handler-case (progn (read-format "(D10.2)" "3.14159-    1.0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0314
    (read-format "(D10.2)" "1d12")
  (1.0d10))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0315
    (read-format "(D10.2)" "1D12")
  (1.0d10))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0316
    (read-format "(D10.2)" "-1   d12")
  (-1.0d10))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0317
    (read-format "(D10.2)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0318
    (read-format "(D10.2)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0319
    (read-format "(D10.2)" "0.1E+200")
  (1.0d199))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0320
    (read-format "(D3.3)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0321
    (read-format "(D3.3)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0322
    (read-format "(D3.3)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0323
    (read-format "(D3.3)" "-10.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0324
    (read-format "(D3.3)" "100.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0325
    (read-format "(D3.3)" "-100.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0326
    (read-format "(D3.3)" "1000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0327
    (read-format "(D3.3)" "-1000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0328
    (read-format "(D3.3)" "10000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0329
    (read-format "(D3.3)" "-10000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0330
    (read-format "(D3.3)" "100000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0331
    (read-format "(D3.3)" "-100000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0332
    (read-format "(D3.3)" "123456789.")
  (0.123d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0333
    (read-format "(D3.3)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0334
    (read-format "(D3.3)" "-0.1")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0335
    (read-format "(D3.3)" "0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0336
    (read-format "(D3.3)" "-0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0337
    (read-format "(D3.3)" "0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0338
    (read-format "(D3.3)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0339
    (read-format "(D3.3)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0340
    (read-format "(D3.3)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0341
    (read-format "(D3.3)" "-1.96e-16")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0342
    (read-format "(D3.3)" "3.14159-    1.0")
  (3.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0343
    (read-format "(D3.3)" "1d12")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0344
    (read-format "(D3.3)" "1D12")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0345
    (read-format "(D3.3)" "-1   d12")
  (-0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0346
    (read-format "(D3.3)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0347
    (read-format "(D3.3)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0348
    (read-format "(D3.3)" "0.1E+200")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0349
    (read-format "(D4.3)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0350
    (read-format "(D4.3)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0351
    (read-format "(D4.3)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0352
    (read-format "(D4.3)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0353
    (read-format "(D4.3)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0354
    (read-format "(D4.3)" "-100.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0355
    (read-format "(D4.3)" "1000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0356
    (read-format "(D4.3)" "-1000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0357
    (read-format "(D4.3)" "10000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0358
    (read-format "(D4.3)" "-10000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0359
    (read-format "(D4.3)" "100000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0360
    (read-format "(D4.3)" "-100000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0361
    (read-format "(D4.3)" "123456789.")
  (1.234d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0362
    (read-format "(D4.3)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0363
    (read-format "(D4.3)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0364
    (read-format "(D4.3)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0365
    (read-format "(D4.3)" "-0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0366
    (read-format "(D4.3)" "0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0367
    (read-format "(D4.3)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0368
    (read-format "(D4.3)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0369
    (read-format "(D4.3)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0370
    (read-format "(D4.3)" "-1.96e-16")
  (-1.9d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0371
    (read-format "(D4.3)" "3.14159-    1.0")
  (3.14d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0372
    (read-format "(D4.3)" "1d12")
  (1.0d9))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0373
    (read-format "(D4.3)" "1D12")
  (1.0d9))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0374
    (read-format "(D4.3)" "-1   d12")
  (-0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0375
    (read-format "(D4.3)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0376
    (read-format "(D4.3)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0377
    (handler-case (progn (read-format "(D4.3)" "0.1E+200") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0378
    (read-format "(D5.3)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0379
    (read-format "(D5.3)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0380
    (read-format "(D5.3)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0381
    (read-format "(D5.3)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0382
    (read-format "(D5.3)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0383
    (read-format "(D5.3)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0384
    (read-format "(D5.3)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0385
    (read-format "(D5.3)" "-1000.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0386
    (read-format "(D5.3)" "10000.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0387
    (read-format "(D5.3)" "-10000.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0388
    (read-format "(D5.3)" "100000.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0389
    (read-format "(D5.3)" "-100000.")
  (-1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0390
    (read-format "(D5.3)" "123456789.")
  (12.345d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0391
    (read-format "(D5.3)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0392
    (read-format "(D5.3)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0393
    (read-format "(D5.3)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0394
    (read-format "(D5.3)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0395
    (read-format "(D5.3)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0396
    (read-format "(D5.3)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0397
    (read-format "(D5.3)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0398
    (read-format "(D5.3)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0399
    (read-format "(D5.3)" "-1.96e-16")
  (-1.96d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0400
    (read-format "(D5.3)" "3.14159-    1.0")
  (3.141d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0401
    (read-format "(D5.3)" "1d12")
  (1.0d9))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0402
    (read-format "(D5.3)" "1D12")
  (1.0d9))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0403
    (read-format "(D5.3)" "-1   d12")
  (-0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0404
    (read-format "(D5.3)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0405
    (read-format "(D5.3)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0406
    (handler-case (progn (read-format "(D5.3)" "0.1E+200") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0407
    (read-format "(D10.3)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0408
    (read-format "(D10.3)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0409
    (read-format "(D10.3)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0410
    (read-format "(D10.3)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0411
    (read-format "(D10.3)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0412
    (read-format "(D10.3)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0413
    (read-format "(D10.3)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0414
    (read-format "(D10.3)" "-1000.")
  (-1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0415
    (read-format "(D10.3)" "10000.")
  (10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0416
    (read-format "(D10.3)" "-10000.")
  (-10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0417
    (read-format "(D10.3)" "100000.")
  (100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0418
    (read-format "(D10.3)" "-100000.")
  (-100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0419
    (read-format "(D10.3)" "123456789.")
  (1.23456789d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0420
    (read-format "(D10.3)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0421
    (read-format "(D10.3)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0422
    (read-format "(D10.3)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0423
    (read-format "(D10.3)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0424
    (read-format "(D10.3)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0425
    (read-format "(D10.3)" "-0.001")
  (-0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0426
    (read-format "(D10.3)" "0.0001")
  (1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0427
    (read-format "(D10.3)" "-0.0001")
  (-1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0428
    (read-format "(D10.3)" "-1.96e-16")
  (-1.96d-16))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0429
    (handler-case (progn (read-format "(D10.3)" "3.14159-    1.0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0430
    (read-format "(D10.3)" "1d12")
  (1.0d9))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0431
    (read-format "(D10.3)" "1D12")
  (1.0d9))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0432
    (read-format "(D10.3)" "-1   d12")
  (-1.0d9))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0433
    (read-format "(D10.3)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0434
    (read-format "(D10.3)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0435
    (read-format "(D10.3)" "0.1E+200")
  (1.0d199))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0436
    (read-format "(D4.4)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0437
    (read-format "(D4.4)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0438
    (read-format "(D4.4)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0439
    (read-format "(D4.4)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0440
    (read-format "(D4.4)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0441
    (read-format "(D4.4)" "-100.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0442
    (read-format "(D4.4)" "1000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0443
    (read-format "(D4.4)" "-1000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0444
    (read-format "(D4.4)" "10000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0445
    (read-format "(D4.4)" "-10000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0446
    (read-format "(D4.4)" "100000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0447
    (read-format "(D4.4)" "-100000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0448
    (read-format "(D4.4)" "123456789.")
  (0.1234d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0449
    (read-format "(D4.4)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0450
    (read-format "(D4.4)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0451
    (read-format "(D4.4)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0452
    (read-format "(D4.4)" "-0.01")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0453
    (read-format "(D4.4)" "0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0454
    (read-format "(D4.4)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0455
    (read-format "(D4.4)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0456
    (read-format "(D4.4)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0457
    (read-format "(D4.4)" "-1.96e-16")
  (-1.9d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0458
    (read-format "(D4.4)" "3.14159-    1.0")
  (3.14d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0459
    (read-format "(D4.4)" "1d12")
  (1.0d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0460
    (read-format "(D4.4)" "1D12")
  (1.0d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0461
    (read-format "(D4.4)" "-1   d12")
  (-1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0462
    (read-format "(D4.4)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0463
    (read-format "(D4.4)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0464
    (handler-case (progn (read-format "(D4.4)" "0.1E+200") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0465
    (read-format "(D5.4)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0466
    (read-format "(D5.4)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0467
    (read-format "(D5.4)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0468
    (read-format "(D5.4)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0469
    (read-format "(D5.4)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0470
    (read-format "(D5.4)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0471
    (read-format "(D5.4)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0472
    (read-format "(D5.4)" "-1000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0473
    (read-format "(D5.4)" "10000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0474
    (read-format "(D5.4)" "-10000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0475
    (read-format "(D5.4)" "100000.")
  (1.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0476
    (read-format "(D5.4)" "-100000.")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0477
    (read-format "(D5.4)" "123456789.")
  (1.2345d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0478
    (read-format "(D5.4)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0479
    (read-format "(D5.4)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0480
    (read-format "(D5.4)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0481
    (read-format "(D5.4)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0482
    (read-format "(D5.4)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0483
    (read-format "(D5.4)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0484
    (read-format "(D5.4)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0485
    (read-format "(D5.4)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0486
    (read-format "(D5.4)" "-1.96e-16")
  (-1.96d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0487
    (read-format "(D5.4)" "3.14159-    1.0")
  (3.141d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0488
    (read-format "(D5.4)" "1d12")
  (1.0d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0489
    (read-format "(D5.4)" "1D12")
  (1.0d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0490
    (read-format "(D5.4)" "-1   d12")
  (-1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0491
    (read-format "(D5.4)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0492
    (read-format "(D5.4)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0493
    (handler-case (progn (read-format "(D5.4)" "0.1E+200") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0494
    (read-format "(D10.4)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0495
    (read-format "(D10.4)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0496
    (read-format "(D10.4)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0497
    (read-format "(D10.4)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0498
    (read-format "(D10.4)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0499
    (read-format "(D10.4)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0500
    (read-format "(D10.4)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0501
    (read-format "(D10.4)" "-1000.")
  (-1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0502
    (read-format "(D10.4)" "10000.")
  (10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0503
    (read-format "(D10.4)" "-10000.")
  (-10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0504
    (read-format "(D10.4)" "100000.")
  (100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0505
    (read-format "(D10.4)" "-100000.")
  (-100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0506
    (read-format "(D10.4)" "123456789.")
  (1.23456789d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0507
    (read-format "(D10.4)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0508
    (read-format "(D10.4)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0509
    (read-format "(D10.4)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0510
    (read-format "(D10.4)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0511
    (read-format "(D10.4)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0512
    (read-format "(D10.4)" "-0.001")
  (-0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0513
    (read-format "(D10.4)" "0.0001")
  (1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0514
    (read-format "(D10.4)" "-0.0001")
  (-1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0515
    (read-format "(D10.4)" "-1.96e-16")
  (-1.96d-16))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0516
    (handler-case (progn (read-format "(D10.4)" "3.14159-    1.0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0517
    (read-format "(D10.4)" "1d12")
  (1.0d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0518
    (read-format "(D10.4)" "1D12")
  (1.0d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0519
    (read-format "(D10.4)" "-1   d12")
  (-1.0d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0520
    (read-format "(D10.4)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0521
    (read-format "(D10.4)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0522
    (read-format "(D10.4)" "0.1E+200")
  (1.0d199))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0523
    (read-format "(D5.5)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0524
    (read-format "(D5.5)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0525
    (read-format "(D5.5)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0526
    (read-format "(D5.5)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0527
    (read-format "(D5.5)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0528
    (read-format "(D5.5)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0529
    (read-format "(D5.5)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0530
    (read-format "(D5.5)" "-1000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0531
    (read-format "(D5.5)" "10000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0532
    (read-format "(D5.5)" "-10000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0533
    (read-format "(D5.5)" "100000.")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0534
    (read-format "(D5.5)" "-100000.")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0535
    (read-format "(D5.5)" "123456789.")
  (0.12345d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0536
    (read-format "(D5.5)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0537
    (read-format "(D5.5)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0538
    (read-format "(D5.5)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0539
    (read-format "(D5.5)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0540
    (read-format "(D5.5)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0541
    (read-format "(D5.5)" "-0.001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0542
    (read-format "(D5.5)" "0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0543
    (read-format "(D5.5)" "-0.0001")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0544
    (read-format "(D5.5)" "-1.96e-16")
  (-1.96d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0545
    (read-format "(D5.5)" "3.14159-    1.0")
  (3.141d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0546
    (read-format "(D5.5)" "1d12")
  (1.0d7))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0547
    (read-format "(D5.5)" "1D12")
  (1.0d7))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0548
    (read-format "(D5.5)" "-1   d12")
  (-1.0d-5))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0549
    (read-format "(D5.5)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0550
    (read-format "(D5.5)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0551
    (handler-case (progn (read-format "(D5.5)" "0.1E+200") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0552
    (read-format "(D10.5)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0553
    (read-format "(D10.5)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0554
    (read-format "(D10.5)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0555
    (read-format "(D10.5)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0556
    (read-format "(D10.5)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0557
    (read-format "(D10.5)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0558
    (read-format "(D10.5)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0559
    (read-format "(D10.5)" "-1000.")
  (-1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0560
    (read-format "(D10.5)" "10000.")
  (10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0561
    (read-format "(D10.5)" "-10000.")
  (-10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0562
    (read-format "(D10.5)" "100000.")
  (100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0563
    (read-format "(D10.5)" "-100000.")
  (-100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0564
    (read-format "(D10.5)" "123456789.")
  (1.23456789d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0565
    (read-format "(D10.5)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0566
    (read-format "(D10.5)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0567
    (read-format "(D10.5)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0568
    (read-format "(D10.5)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0569
    (read-format "(D10.5)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0570
    (read-format "(D10.5)" "-0.001")
  (-0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0571
    (read-format "(D10.5)" "0.0001")
  (1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0572
    (read-format "(D10.5)" "-0.0001")
  (-1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0573
    (read-format "(D10.5)" "-1.96e-16")
  (-1.96d-16))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0574
    (handler-case (progn (read-format "(D10.5)" "3.14159-    1.0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0575
    (read-format "(D10.5)" "1d12")
  (1.0d7))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0576
    (read-format "(D10.5)" "1D12")
  (1.0d7))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0577
    (read-format "(D10.5)" "-1   d12")
  (-1.0d7))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0578
    (read-format "(D10.5)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0579
    (read-format "(D10.5)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0580
    (read-format "(D10.5)" "0.1E+200")
  (1.0d199))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0581
    (read-format "(D10.10)" "3.")
  (3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0582
    (read-format "(D10.10)" "-3.")
  (-3.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0583
    (read-format "(D10.10)" "10.")
  (10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0584
    (read-format "(D10.10)" "-10.")
  (-10.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0585
    (read-format "(D10.10)" "100.")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0586
    (read-format "(D10.10)" "-100.")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0587
    (read-format "(D10.10)" "1000.")
  (1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0588
    (read-format "(D10.10)" "-1000.")
  (-1000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0589
    (read-format "(D10.10)" "10000.")
  (10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0590
    (read-format "(D10.10)" "-10000.")
  (-10000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0591
    (read-format "(D10.10)" "100000.")
  (100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0592
    (read-format "(D10.10)" "-100000.")
  (-100000.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0593
    (read-format "(D10.10)" "123456789.")
  (1.23456789d8))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0594
    (read-format "(D10.10)" "0.1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0595
    (read-format "(D10.10)" "-0.1")
  (-0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0596
    (read-format "(D10.10)" "0.01")
  (0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0597
    (read-format "(D10.10)" "-0.01")
  (-0.01d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0598
    (read-format "(D10.10)" "0.001")
  (0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0599
    (read-format "(D10.10)" "-0.001")
  (-0.001d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0600
    (read-format "(D10.10)" "0.0001")
  (1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0601
    (read-format "(D10.10)" "-0.0001")
  (-1.0d-4))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0602
    (read-format "(D10.10)" "-1.96e-16")
  (-1.96d-16))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0603
    (handler-case (progn (read-format "(D10.10)" "3.14159-    1.0") :NO-ERR)
      (error () :ERR))
  :ERR)

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0604
    (read-format "(D10.10)" "1d12")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0605
    (read-format "(D10.10)" "1D12")
  (100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0606
    (read-format "(D10.10)" "-1   d12")
  (-100.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0607
    (read-format "(D10.10)" ".")
  (0.0d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0608
    (read-format "(D10.10)" ".1")
  (0.1d0))

(rt:deftest FMT.CORPUS.D-ED-INPUT-1.0609
    (read-format "(D10.10)" "0.1E+200")
  (1.0d199))

