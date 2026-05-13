;;;; x-l-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from x-l-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...x-l-ed-output.test")
;;;;
;;;; 260 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0001
    (write-format "(1X, L1)" T)
  " T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0002
    (write-format "(1X, L1)" NIL)
  " F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0003
    (write-format "(1X, L2)" T)
  "  T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0004
    (write-format "(1X, L2)" NIL)
  "  F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0005
    (write-format "(1X, L3)" T)
  "   T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0006
    (write-format "(1X, L3)" NIL)
  "   F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0007
    (write-format "(1X, L4)" T)
  "    T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0008
    (write-format "(1X, L4)" NIL)
  "    F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0009
    (write-format "(1X, L5)" T)
  "     T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0010
    (write-format "(1X, L5)" NIL)
  "     F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0011
    (write-format "(1X, L6)" T)
  "      T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0012
    (write-format "(1X, L6)" NIL)
  "      F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0013
    (write-format "(1X, L7)" T)
  "       T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0014
    (write-format "(1X, L7)" NIL)
  "       F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0015
    (write-format "(1X, L8)" T)
  "        T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0016
    (write-format "(1X, L8)" NIL)
  "        F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0017
    (write-format "(1X, L9)" T)
  "         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0018
    (write-format "(1X, L9)" NIL)
  "         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0019
    (write-format "(1X, L10)" T)
  "          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0020
    (write-format "(1X, L10)" NIL)
  "          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0021
    (write-format "(2X, L1)" T)
  "  T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0022
    (write-format "(2X, L1)" NIL)
  "  F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0023
    (write-format "(2X, L2)" T)
  "   T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0024
    (write-format "(2X, L2)" NIL)
  "   F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0025
    (write-format "(2X, L3)" T)
  "    T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0026
    (write-format "(2X, L3)" NIL)
  "    F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0027
    (write-format "(2X, L4)" T)
  "     T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0028
    (write-format "(2X, L4)" NIL)
  "     F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0029
    (write-format "(2X, L5)" T)
  "      T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0030
    (write-format "(2X, L5)" NIL)
  "      F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0031
    (write-format "(2X, L6)" T)
  "       T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0032
    (write-format "(2X, L6)" NIL)
  "       F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0033
    (write-format "(2X, L7)" T)
  "        T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0034
    (write-format "(2X, L7)" NIL)
  "        F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0035
    (write-format "(2X, L8)" T)
  "         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0036
    (write-format "(2X, L8)" NIL)
  "         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0037
    (write-format "(2X, L9)" T)
  "          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0038
    (write-format "(2X, L9)" NIL)
  "          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0039
    (write-format "(2X, L10)" T)
  "           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0040
    (write-format "(2X, L10)" NIL)
  "           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0041
    (write-format "(3X, L1)" T)
  "   T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0042
    (write-format "(3X, L1)" NIL)
  "   F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0043
    (write-format "(3X, L2)" T)
  "    T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0044
    (write-format "(3X, L2)" NIL)
  "    F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0045
    (write-format "(3X, L3)" T)
  "     T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0046
    (write-format "(3X, L3)" NIL)
  "     F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0047
    (write-format "(3X, L4)" T)
  "      T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0048
    (write-format "(3X, L4)" NIL)
  "      F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0049
    (write-format "(3X, L5)" T)
  "       T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0050
    (write-format "(3X, L5)" NIL)
  "       F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0051
    (write-format "(3X, L6)" T)
  "        T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0052
    (write-format "(3X, L6)" NIL)
  "        F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0053
    (write-format "(3X, L7)" T)
  "         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0054
    (write-format "(3X, L7)" NIL)
  "         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0055
    (write-format "(3X, L8)" T)
  "          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0056
    (write-format "(3X, L8)" NIL)
  "          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0057
    (write-format "(3X, L9)" T)
  "           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0058
    (write-format "(3X, L9)" NIL)
  "           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0059
    (write-format "(3X, L10)" T)
  "            T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0060
    (write-format "(3X, L10)" NIL)
  "            F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0061
    (write-format "(4X, L1)" T)
  "    T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0062
    (write-format "(4X, L1)" NIL)
  "    F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0063
    (write-format "(4X, L2)" T)
  "     T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0064
    (write-format "(4X, L2)" NIL)
  "     F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0065
    (write-format "(4X, L3)" T)
  "      T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0066
    (write-format "(4X, L3)" NIL)
  "      F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0067
    (write-format "(4X, L4)" T)
  "       T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0068
    (write-format "(4X, L4)" NIL)
  "       F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0069
    (write-format "(4X, L5)" T)
  "        T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0070
    (write-format "(4X, L5)" NIL)
  "        F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0071
    (write-format "(4X, L6)" T)
  "         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0072
    (write-format "(4X, L6)" NIL)
  "         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0073
    (write-format "(4X, L7)" T)
  "          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0074
    (write-format "(4X, L7)" NIL)
  "          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0075
    (write-format "(4X, L8)" T)
  "           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0076
    (write-format "(4X, L8)" NIL)
  "           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0077
    (write-format "(4X, L9)" T)
  "            T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0078
    (write-format "(4X, L9)" NIL)
  "            F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0079
    (write-format "(4X, L10)" T)
  "             T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0080
    (write-format "(4X, L10)" NIL)
  "             F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0081
    (write-format "(5X, L1)" T)
  "     T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0082
    (write-format "(5X, L1)" NIL)
  "     F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0083
    (write-format "(5X, L2)" T)
  "      T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0084
    (write-format "(5X, L2)" NIL)
  "      F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0085
    (write-format "(5X, L3)" T)
  "       T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0086
    (write-format "(5X, L3)" NIL)
  "       F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0087
    (write-format "(5X, L4)" T)
  "        T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0088
    (write-format "(5X, L4)" NIL)
  "        F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0089
    (write-format "(5X, L5)" T)
  "         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0090
    (write-format "(5X, L5)" NIL)
  "         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0091
    (write-format "(5X, L6)" T)
  "          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0092
    (write-format "(5X, L6)" NIL)
  "          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0093
    (write-format "(5X, L7)" T)
  "           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0094
    (write-format "(5X, L7)" NIL)
  "           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0095
    (write-format "(5X, L8)" T)
  "            T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0096
    (write-format "(5X, L8)" NIL)
  "            F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0097
    (write-format "(5X, L9)" T)
  "             T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0098
    (write-format "(5X, L9)" NIL)
  "             F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0099
    (write-format "(5X, L10)" T)
  "              T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0100
    (write-format "(5X, L10)" NIL)
  "              F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0101
    (write-format "(6X, L1)" T)
  "      T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0102
    (write-format "(6X, L1)" NIL)
  "      F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0103
    (write-format "(6X, L2)" T)
  "       T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0104
    (write-format "(6X, L2)" NIL)
  "       F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0105
    (write-format "(6X, L3)" T)
  "        T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0106
    (write-format "(6X, L3)" NIL)
  "        F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0107
    (write-format "(6X, L4)" T)
  "         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0108
    (write-format "(6X, L4)" NIL)
  "         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0109
    (write-format "(6X, L5)" T)
  "          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0110
    (write-format "(6X, L5)" NIL)
  "          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0111
    (write-format "(6X, L6)" T)
  "           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0112
    (write-format "(6X, L6)" NIL)
  "           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0113
    (write-format "(6X, L7)" T)
  "            T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0114
    (write-format "(6X, L7)" NIL)
  "            F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0115
    (write-format "(6X, L8)" T)
  "             T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0116
    (write-format "(6X, L8)" NIL)
  "             F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0117
    (write-format "(6X, L9)" T)
  "              T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0118
    (write-format "(6X, L9)" NIL)
  "              F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0119
    (write-format "(6X, L10)" T)
  "               T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0120
    (write-format "(6X, L10)" NIL)
  "               F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0121
    (write-format "(7X, L1)" T)
  "       T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0122
    (write-format "(7X, L1)" NIL)
  "       F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0123
    (write-format "(7X, L2)" T)
  "        T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0124
    (write-format "(7X, L2)" NIL)
  "        F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0125
    (write-format "(7X, L3)" T)
  "         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0126
    (write-format "(7X, L3)" NIL)
  "         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0127
    (write-format "(7X, L4)" T)
  "          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0128
    (write-format "(7X, L4)" NIL)
  "          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0129
    (write-format "(7X, L5)" T)
  "           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0130
    (write-format "(7X, L5)" NIL)
  "           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0131
    (write-format "(7X, L6)" T)
  "            T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0132
    (write-format "(7X, L6)" NIL)
  "            F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0133
    (write-format "(7X, L7)" T)
  "             T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0134
    (write-format "(7X, L7)" NIL)
  "             F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0135
    (write-format "(7X, L8)" T)
  "              T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0136
    (write-format "(7X, L8)" NIL)
  "              F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0137
    (write-format "(7X, L9)" T)
  "               T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0138
    (write-format "(7X, L9)" NIL)
  "               F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0139
    (write-format "(7X, L10)" T)
  "                T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0140
    (write-format "(7X, L10)" NIL)
  "                F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0141
    (write-format "(8X, L1)" T)
  "        T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0142
    (write-format "(8X, L1)" NIL)
  "        F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0143
    (write-format "(8X, L2)" T)
  "         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0144
    (write-format "(8X, L2)" NIL)
  "         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0145
    (write-format "(8X, L3)" T)
  "          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0146
    (write-format "(8X, L3)" NIL)
  "          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0147
    (write-format "(8X, L4)" T)
  "           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0148
    (write-format "(8X, L4)" NIL)
  "           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0149
    (write-format "(8X, L5)" T)
  "            T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0150
    (write-format "(8X, L5)" NIL)
  "            F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0151
    (write-format "(8X, L6)" T)
  "             T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0152
    (write-format "(8X, L6)" NIL)
  "             F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0153
    (write-format "(8X, L7)" T)
  "              T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0154
    (write-format "(8X, L7)" NIL)
  "              F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0155
    (write-format "(8X, L8)" T)
  "               T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0156
    (write-format "(8X, L8)" NIL)
  "               F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0157
    (write-format "(8X, L9)" T)
  "                T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0158
    (write-format "(8X, L9)" NIL)
  "                F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0159
    (write-format "(8X, L10)" T)
  "                 T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0160
    (write-format "(8X, L10)" NIL)
  "                 F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0161
    (write-format "(9X, L1)" T)
  "         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0162
    (write-format "(9X, L1)" NIL)
  "         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0163
    (write-format "(9X, L2)" T)
  "          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0164
    (write-format "(9X, L2)" NIL)
  "          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0165
    (write-format "(9X, L3)" T)
  "           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0166
    (write-format "(9X, L3)" NIL)
  "           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0167
    (write-format "(9X, L4)" T)
  "            T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0168
    (write-format "(9X, L4)" NIL)
  "            F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0169
    (write-format "(9X, L5)" T)
  "             T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0170
    (write-format "(9X, L5)" NIL)
  "             F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0171
    (write-format "(9X, L6)" T)
  "              T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0172
    (write-format "(9X, L6)" NIL)
  "              F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0173
    (write-format "(9X, L7)" T)
  "               T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0174
    (write-format "(9X, L7)" NIL)
  "               F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0175
    (write-format "(9X, L8)" T)
  "                T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0176
    (write-format "(9X, L8)" NIL)
  "                F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0177
    (write-format "(9X, L9)" T)
  "                 T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0178
    (write-format "(9X, L9)" NIL)
  "                 F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0179
    (write-format "(9X, L10)" T)
  "                  T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0180
    (write-format "(9X, L10)" NIL)
  "                  F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0181
    (write-format "(10X, L1)" T)
  "          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0182
    (write-format "(10X, L1)" NIL)
  "          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0183
    (write-format "(10X, L2)" T)
  "           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0184
    (write-format "(10X, L2)" NIL)
  "           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0185
    (write-format "(10X, L3)" T)
  "            T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0186
    (write-format "(10X, L3)" NIL)
  "            F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0187
    (write-format "(10X, L4)" T)
  "             T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0188
    (write-format "(10X, L4)" NIL)
  "             F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0189
    (write-format "(10X, L5)" T)
  "              T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0190
    (write-format "(10X, L5)" NIL)
  "              F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0191
    (write-format "(10X, L6)" T)
  "               T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0192
    (write-format "(10X, L6)" NIL)
  "               F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0193
    (write-format "(10X, L7)" T)
  "                T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0194
    (write-format "(10X, L7)" NIL)
  "                F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0195
    (write-format "(10X, L8)" T)
  "                 T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0196
    (write-format "(10X, L8)" NIL)
  "                 F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0197
    (write-format "(10X, L9)" T)
  "                  T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0198
    (write-format "(10X, L9)" NIL)
  "                  F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0199
    (write-format "(10X, L10)" T)
  "                   T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0200
    (write-format "(10X, L10)" NIL)
  "                   F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0201
    (write-format "(25X, L1)" T)
  "                         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0202
    (write-format "(25X, L1)" NIL)
  "                         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0203
    (write-format "(25X, L2)" T)
  "                          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0204
    (write-format "(25X, L2)" NIL)
  "                          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0205
    (write-format "(25X, L3)" T)
  "                           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0206
    (write-format "(25X, L3)" NIL)
  "                           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0207
    (write-format "(25X, L4)" T)
  "                            T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0208
    (write-format "(25X, L4)" NIL)
  "                            F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0209
    (write-format "(25X, L5)" T)
  "                             T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0210
    (write-format "(25X, L5)" NIL)
  "                             F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0211
    (write-format "(25X, L6)" T)
  "                              T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0212
    (write-format "(25X, L6)" NIL)
  "                              F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0213
    (write-format "(25X, L7)" T)
  "                               T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0214
    (write-format "(25X, L7)" NIL)
  "                               F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0215
    (write-format "(25X, L8)" T)
  "                                T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0216
    (write-format "(25X, L8)" NIL)
  "                                F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0217
    (write-format "(25X, L9)" T)
  "                                 T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0218
    (write-format "(25X, L9)" NIL)
  "                                 F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0219
    (write-format "(25X, L10)" T)
  "                                  T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0220
    (write-format "(25X, L10)" NIL)
  "                                  F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0221
    (write-format "(50X, L1)" T)
  "                                                  T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0222
    (write-format "(50X, L1)" NIL)
  "                                                  F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0223
    (write-format "(50X, L2)" T)
  "                                                   T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0224
    (write-format "(50X, L2)" NIL)
  "                                                   F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0225
    (write-format "(50X, L3)" T)
  "                                                    T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0226
    (write-format "(50X, L3)" NIL)
  "                                                    F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0227
    (write-format "(50X, L4)" T)
  "                                                     T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0228
    (write-format "(50X, L4)" NIL)
  "                                                     F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0229
    (write-format "(50X, L5)" T)
  "                                                      T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0230
    (write-format "(50X, L5)" NIL)
  "                                                      F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0231
    (write-format "(50X, L6)" T)
  "                                                       T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0232
    (write-format "(50X, L6)" NIL)
  "                                                       F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0233
    (write-format "(50X, L7)" T)
  "                                                        T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0234
    (write-format "(50X, L7)" NIL)
  "                                                        F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0235
    (write-format "(50X, L8)" T)
  "                                                         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0236
    (write-format "(50X, L8)" NIL)
  "                                                         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0237
    (write-format "(50X, L9)" T)
  "                                                          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0238
    (write-format "(50X, L9)" NIL)
  "                                                          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0239
    (write-format "(50X, L10)" T)
  "                                                           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0240
    (write-format "(50X, L10)" NIL)
  "                                                           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0241
    (write-format "(100X, L1)" T)
  "                                                                                                    T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0242
    (write-format "(100X, L1)" NIL)
  "                                                                                                    F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0243
    (write-format "(100X, L2)" T)
  "                                                                                                     T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0244
    (write-format "(100X, L2)" NIL)
  "                                                                                                     F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0245
    (write-format "(100X, L3)" T)
  "                                                                                                      T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0246
    (write-format "(100X, L3)" NIL)
  "                                                                                                      F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0247
    (write-format "(100X, L4)" T)
  "                                                                                                       T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0248
    (write-format "(100X, L4)" NIL)
  "                                                                                                       F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0249
    (write-format "(100X, L5)" T)
  "                                                                                                        T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0250
    (write-format "(100X, L5)" NIL)
  "                                                                                                        F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0251
    (write-format "(100X, L6)" T)
  "                                                                                                         T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0252
    (write-format "(100X, L6)" NIL)
  "                                                                                                         F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0253
    (write-format "(100X, L7)" T)
  "                                                                                                          T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0254
    (write-format "(100X, L7)" NIL)
  "                                                                                                          F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0255
    (write-format "(100X, L8)" T)
  "                                                                                                           T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0256
    (write-format "(100X, L8)" NIL)
  "                                                                                                           F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0257
    (write-format "(100X, L9)" T)
  "                                                                                                            T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0258
    (write-format "(100X, L9)" NIL)
  "                                                                                                            F")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0259
    (write-format "(100X, L10)" T)
  "                                                                                                             T")

(rt:deftest FMT.CORPUS.X-L-ED-OUTPUT.0260
    (write-format "(100X, L10)" NIL)
  "                                                                                                             F")

