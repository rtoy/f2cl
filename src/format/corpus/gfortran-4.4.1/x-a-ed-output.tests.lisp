;;;; x-a-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from x-a-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...x-a-ed-output.test")
;;;;
;;;; 546 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0001
    (write-format "(1X, A)" "The quick brown fox jumps the lazy dog.")
  " The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0002
    (write-format "(1X, A)" "\"It doesn't matter anyway\" - said Alice")
  " \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0003
    (write-format "(1X, A)" "''")
  " ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0004
    (write-format "(1X, A1)" "The quick brown fox jumps the lazy dog.")
  " T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0005
    (write-format "(1X, A1)" "\"It doesn't matter anyway\" - said Alice")
  " \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0006
    (write-format "(1X, A1)" "''")
  " '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0007
    (write-format "(1X, A2)" "The quick brown fox jumps the lazy dog.")
  " Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0008
    (write-format "(1X, A2)" "\"It doesn't matter anyway\" - said Alice")
  " \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0009
    (write-format "(1X, A2)" "''")
  " ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0010
    (write-format "(1X, A3)" "The quick brown fox jumps the lazy dog.")
  " The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0011
    (write-format "(1X, A3)" "\"It doesn't matter anyway\" - said Alice")
  " \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0012
    (write-format "(1X, A3)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0013
    (write-format "(1X, A4)" "The quick brown fox jumps the lazy dog.")
  " The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0014
    (write-format "(1X, A4)" "\"It doesn't matter anyway\" - said Alice")
  " \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0015
    (write-format "(1X, A4)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0016
    (write-format "(1X, A5)" "The quick brown fox jumps the lazy dog.")
  " The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0017
    (write-format "(1X, A5)" "\"It doesn't matter anyway\" - said Alice")
  " \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0018
    (write-format "(1X, A5)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0019
    (write-format "(1X, A6)" "The quick brown fox jumps the lazy dog.")
  " The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0020
    (write-format "(1X, A6)" "\"It doesn't matter anyway\" - said Alice")
  " \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0021
    (write-format "(1X, A6)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0022
    (write-format "(1X, A7)" "The quick brown fox jumps the lazy dog.")
  " The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0023
    (write-format "(1X, A7)" "\"It doesn't matter anyway\" - said Alice")
  " \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0024
    (write-format "(1X, A7)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0025
    (write-format "(1X, A8)" "The quick brown fox jumps the lazy dog.")
  " The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0026
    (write-format "(1X, A8)" "\"It doesn't matter anyway\" - said Alice")
  " \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0027
    (write-format "(1X, A8)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0028
    (write-format "(1X, A9)" "The quick brown fox jumps the lazy dog.")
  " The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0029
    (write-format "(1X, A9)" "\"It doesn't matter anyway\" - said Alice")
  " \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0030
    (write-format "(1X, A9)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0031
    (write-format "(1X, A10)" "The quick brown fox jumps the lazy dog.")
  " The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0032
    (write-format "(1X, A10)" "\"It doesn't matter anyway\" - said Alice")
  " \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0033
    (write-format "(1X, A10)" "''")
  "         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0034
    (write-format "(1X, A25)" "The quick brown fox jumps the lazy dog.")
  " The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0035
    (write-format "(1X, A25)" "\"It doesn't matter anyway\" - said Alice")
  " \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0036
    (write-format "(1X, A25)" "''")
  "                        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0037
    (write-format "(1X, A50)" "The quick brown fox jumps the lazy dog.")
  "            The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0038
    (write-format "(1X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "            \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0039
    (write-format "(1X, A50)" "''")
  "                                                 ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0040
    (write-format "(1X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                              The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0041
    (write-format "(1X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                              \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0042
    (write-format "(1X, A100)" "''")
  "                                                                                                   ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0043
    (write-format "(2X, A)" "The quick brown fox jumps the lazy dog.")
  "  The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0044
    (write-format "(2X, A)" "\"It doesn't matter anyway\" - said Alice")
  "  \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0045
    (write-format "(2X, A)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0046
    (write-format "(2X, A1)" "The quick brown fox jumps the lazy dog.")
  "  T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0047
    (write-format "(2X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "  \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0048
    (write-format "(2X, A1)" "''")
  "  '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0049
    (write-format "(2X, A2)" "The quick brown fox jumps the lazy dog.")
  "  Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0050
    (write-format "(2X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "  \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0051
    (write-format "(2X, A2)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0052
    (write-format "(2X, A3)" "The quick brown fox jumps the lazy dog.")
  "  The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0053
    (write-format "(2X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "  \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0054
    (write-format "(2X, A3)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0055
    (write-format "(2X, A4)" "The quick brown fox jumps the lazy dog.")
  "  The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0056
    (write-format "(2X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "  \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0057
    (write-format "(2X, A4)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0058
    (write-format "(2X, A5)" "The quick brown fox jumps the lazy dog.")
  "  The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0059
    (write-format "(2X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "  \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0060
    (write-format "(2X, A5)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0061
    (write-format "(2X, A6)" "The quick brown fox jumps the lazy dog.")
  "  The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0062
    (write-format "(2X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "  \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0063
    (write-format "(2X, A6)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0064
    (write-format "(2X, A7)" "The quick brown fox jumps the lazy dog.")
  "  The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0065
    (write-format "(2X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "  \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0066
    (write-format "(2X, A7)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0067
    (write-format "(2X, A8)" "The quick brown fox jumps the lazy dog.")
  "  The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0068
    (write-format "(2X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "  \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0069
    (write-format "(2X, A8)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0070
    (write-format "(2X, A9)" "The quick brown fox jumps the lazy dog.")
  "  The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0071
    (write-format "(2X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "  \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0072
    (write-format "(2X, A9)" "''")
  "         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0073
    (write-format "(2X, A10)" "The quick brown fox jumps the lazy dog.")
  "  The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0074
    (write-format "(2X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "  \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0075
    (write-format "(2X, A10)" "''")
  "          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0076
    (write-format "(2X, A25)" "The quick brown fox jumps the lazy dog.")
  "  The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0077
    (write-format "(2X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "  \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0078
    (write-format "(2X, A25)" "''")
  "                         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0079
    (write-format "(2X, A50)" "The quick brown fox jumps the lazy dog.")
  "             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0080
    (write-format "(2X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0081
    (write-format "(2X, A50)" "''")
  "                                                  ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0082
    (write-format "(2X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                               The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0083
    (write-format "(2X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                               \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0084
    (write-format "(2X, A100)" "''")
  "                                                                                                    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0085
    (write-format "(3X, A)" "The quick brown fox jumps the lazy dog.")
  "   The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0086
    (write-format "(3X, A)" "\"It doesn't matter anyway\" - said Alice")
  "   \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0087
    (write-format "(3X, A)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0088
    (write-format "(3X, A1)" "The quick brown fox jumps the lazy dog.")
  "   T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0089
    (write-format "(3X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "   \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0090
    (write-format "(3X, A1)" "''")
  "   '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0091
    (write-format "(3X, A2)" "The quick brown fox jumps the lazy dog.")
  "   Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0092
    (write-format "(3X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "   \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0093
    (write-format "(3X, A2)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0094
    (write-format "(3X, A3)" "The quick brown fox jumps the lazy dog.")
  "   The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0095
    (write-format "(3X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "   \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0096
    (write-format "(3X, A3)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0097
    (write-format "(3X, A4)" "The quick brown fox jumps the lazy dog.")
  "   The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0098
    (write-format "(3X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "   \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0099
    (write-format "(3X, A4)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0100
    (write-format "(3X, A5)" "The quick brown fox jumps the lazy dog.")
  "   The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0101
    (write-format "(3X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "   \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0102
    (write-format "(3X, A5)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0103
    (write-format "(3X, A6)" "The quick brown fox jumps the lazy dog.")
  "   The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0104
    (write-format "(3X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "   \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0105
    (write-format "(3X, A6)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0106
    (write-format "(3X, A7)" "The quick brown fox jumps the lazy dog.")
  "   The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0107
    (write-format "(3X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "   \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0108
    (write-format "(3X, A7)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0109
    (write-format "(3X, A8)" "The quick brown fox jumps the lazy dog.")
  "   The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0110
    (write-format "(3X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "   \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0111
    (write-format "(3X, A8)" "''")
  "         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0112
    (write-format "(3X, A9)" "The quick brown fox jumps the lazy dog.")
  "   The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0113
    (write-format "(3X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "   \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0114
    (write-format "(3X, A9)" "''")
  "          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0115
    (write-format "(3X, A10)" "The quick brown fox jumps the lazy dog.")
  "   The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0116
    (write-format "(3X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "   \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0117
    (write-format "(3X, A10)" "''")
  "           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0118
    (write-format "(3X, A25)" "The quick brown fox jumps the lazy dog.")
  "   The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0119
    (write-format "(3X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "   \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0120
    (write-format "(3X, A25)" "''")
  "                          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0121
    (write-format "(3X, A50)" "The quick brown fox jumps the lazy dog.")
  "              The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0122
    (write-format "(3X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "              \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0123
    (write-format "(3X, A50)" "''")
  "                                                   ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0124
    (write-format "(3X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0125
    (write-format "(3X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0126
    (write-format "(3X, A100)" "''")
  "                                                                                                     ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0127
    (write-format "(4X, A)" "The quick brown fox jumps the lazy dog.")
  "    The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0128
    (write-format "(4X, A)" "\"It doesn't matter anyway\" - said Alice")
  "    \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0129
    (write-format "(4X, A)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0130
    (write-format "(4X, A1)" "The quick brown fox jumps the lazy dog.")
  "    T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0131
    (write-format "(4X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "    \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0132
    (write-format "(4X, A1)" "''")
  "    '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0133
    (write-format "(4X, A2)" "The quick brown fox jumps the lazy dog.")
  "    Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0134
    (write-format "(4X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "    \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0135
    (write-format "(4X, A2)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0136
    (write-format "(4X, A3)" "The quick brown fox jumps the lazy dog.")
  "    The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0137
    (write-format "(4X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "    \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0138
    (write-format "(4X, A3)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0139
    (write-format "(4X, A4)" "The quick brown fox jumps the lazy dog.")
  "    The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0140
    (write-format "(4X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "    \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0141
    (write-format "(4X, A4)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0142
    (write-format "(4X, A5)" "The quick brown fox jumps the lazy dog.")
  "    The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0143
    (write-format "(4X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "    \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0144
    (write-format "(4X, A5)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0145
    (write-format "(4X, A6)" "The quick brown fox jumps the lazy dog.")
  "    The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0146
    (write-format "(4X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "    \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0147
    (write-format "(4X, A6)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0148
    (write-format "(4X, A7)" "The quick brown fox jumps the lazy dog.")
  "    The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0149
    (write-format "(4X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "    \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0150
    (write-format "(4X, A7)" "''")
  "         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0151
    (write-format "(4X, A8)" "The quick brown fox jumps the lazy dog.")
  "    The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0152
    (write-format "(4X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "    \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0153
    (write-format "(4X, A8)" "''")
  "          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0154
    (write-format "(4X, A9)" "The quick brown fox jumps the lazy dog.")
  "    The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0155
    (write-format "(4X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "    \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0156
    (write-format "(4X, A9)" "''")
  "           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0157
    (write-format "(4X, A10)" "The quick brown fox jumps the lazy dog.")
  "    The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0158
    (write-format "(4X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "    \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0159
    (write-format "(4X, A10)" "''")
  "            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0160
    (write-format "(4X, A25)" "The quick brown fox jumps the lazy dog.")
  "    The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0161
    (write-format "(4X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "    \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0162
    (write-format "(4X, A25)" "''")
  "                           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0163
    (write-format "(4X, A50)" "The quick brown fox jumps the lazy dog.")
  "               The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0164
    (write-format "(4X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "               \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0165
    (write-format "(4X, A50)" "''")
  "                                                    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0166
    (write-format "(4X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                 The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0167
    (write-format "(4X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                 \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0168
    (write-format "(4X, A100)" "''")
  "                                                                                                      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0169
    (write-format "(5X, A)" "The quick brown fox jumps the lazy dog.")
  "     The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0170
    (write-format "(5X, A)" "\"It doesn't matter anyway\" - said Alice")
  "     \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0171
    (write-format "(5X, A)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0172
    (write-format "(5X, A1)" "The quick brown fox jumps the lazy dog.")
  "     T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0173
    (write-format "(5X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "     \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0174
    (write-format "(5X, A1)" "''")
  "     '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0175
    (write-format "(5X, A2)" "The quick brown fox jumps the lazy dog.")
  "     Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0176
    (write-format "(5X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "     \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0177
    (write-format "(5X, A2)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0178
    (write-format "(5X, A3)" "The quick brown fox jumps the lazy dog.")
  "     The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0179
    (write-format "(5X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "     \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0180
    (write-format "(5X, A3)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0181
    (write-format "(5X, A4)" "The quick brown fox jumps the lazy dog.")
  "     The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0182
    (write-format "(5X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "     \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0183
    (write-format "(5X, A4)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0184
    (write-format "(5X, A5)" "The quick brown fox jumps the lazy dog.")
  "     The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0185
    (write-format "(5X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "     \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0186
    (write-format "(5X, A5)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0187
    (write-format "(5X, A6)" "The quick brown fox jumps the lazy dog.")
  "     The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0188
    (write-format "(5X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "     \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0189
    (write-format "(5X, A6)" "''")
  "         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0190
    (write-format "(5X, A7)" "The quick brown fox jumps the lazy dog.")
  "     The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0191
    (write-format "(5X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "     \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0192
    (write-format "(5X, A7)" "''")
  "          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0193
    (write-format "(5X, A8)" "The quick brown fox jumps the lazy dog.")
  "     The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0194
    (write-format "(5X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "     \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0195
    (write-format "(5X, A8)" "''")
  "           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0196
    (write-format "(5X, A9)" "The quick brown fox jumps the lazy dog.")
  "     The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0197
    (write-format "(5X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "     \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0198
    (write-format "(5X, A9)" "''")
  "            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0199
    (write-format "(5X, A10)" "The quick brown fox jumps the lazy dog.")
  "     The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0200
    (write-format "(5X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "     \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0201
    (write-format "(5X, A10)" "''")
  "             ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0202
    (write-format "(5X, A25)" "The quick brown fox jumps the lazy dog.")
  "     The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0203
    (write-format "(5X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "     \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0204
    (write-format "(5X, A25)" "''")
  "                            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0205
    (write-format "(5X, A50)" "The quick brown fox jumps the lazy dog.")
  "                The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0206
    (write-format "(5X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "                \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0207
    (write-format "(5X, A50)" "''")
  "                                                     ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0208
    (write-format "(5X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                  The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0209
    (write-format "(5X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                  \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0210
    (write-format "(5X, A100)" "''")
  "                                                                                                       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0211
    (write-format "(6X, A)" "The quick brown fox jumps the lazy dog.")
  "      The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0212
    (write-format "(6X, A)" "\"It doesn't matter anyway\" - said Alice")
  "      \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0213
    (write-format "(6X, A)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0214
    (write-format "(6X, A1)" "The quick brown fox jumps the lazy dog.")
  "      T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0215
    (write-format "(6X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "      \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0216
    (write-format "(6X, A1)" "''")
  "      '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0217
    (write-format "(6X, A2)" "The quick brown fox jumps the lazy dog.")
  "      Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0218
    (write-format "(6X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "      \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0219
    (write-format "(6X, A2)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0220
    (write-format "(6X, A3)" "The quick brown fox jumps the lazy dog.")
  "      The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0221
    (write-format "(6X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "      \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0222
    (write-format "(6X, A3)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0223
    (write-format "(6X, A4)" "The quick brown fox jumps the lazy dog.")
  "      The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0224
    (write-format "(6X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "      \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0225
    (write-format "(6X, A4)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0226
    (write-format "(6X, A5)" "The quick brown fox jumps the lazy dog.")
  "      The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0227
    (write-format "(6X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "      \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0228
    (write-format "(6X, A5)" "''")
  "         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0229
    (write-format "(6X, A6)" "The quick brown fox jumps the lazy dog.")
  "      The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0230
    (write-format "(6X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "      \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0231
    (write-format "(6X, A6)" "''")
  "          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0232
    (write-format "(6X, A7)" "The quick brown fox jumps the lazy dog.")
  "      The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0233
    (write-format "(6X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "      \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0234
    (write-format "(6X, A7)" "''")
  "           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0235
    (write-format "(6X, A8)" "The quick brown fox jumps the lazy dog.")
  "      The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0236
    (write-format "(6X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "      \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0237
    (write-format "(6X, A8)" "''")
  "            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0238
    (write-format "(6X, A9)" "The quick brown fox jumps the lazy dog.")
  "      The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0239
    (write-format "(6X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "      \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0240
    (write-format "(6X, A9)" "''")
  "             ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0241
    (write-format "(6X, A10)" "The quick brown fox jumps the lazy dog.")
  "      The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0242
    (write-format "(6X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "      \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0243
    (write-format "(6X, A10)" "''")
  "              ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0244
    (write-format "(6X, A25)" "The quick brown fox jumps the lazy dog.")
  "      The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0245
    (write-format "(6X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "      \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0246
    (write-format "(6X, A25)" "''")
  "                             ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0247
    (write-format "(6X, A50)" "The quick brown fox jumps the lazy dog.")
  "                 The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0248
    (write-format "(6X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "                 \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0249
    (write-format "(6X, A50)" "''")
  "                                                      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0250
    (write-format "(6X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                   The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0251
    (write-format "(6X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                   \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0252
    (write-format "(6X, A100)" "''")
  "                                                                                                        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0253
    (write-format "(7X, A)" "The quick brown fox jumps the lazy dog.")
  "       The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0254
    (write-format "(7X, A)" "\"It doesn't matter anyway\" - said Alice")
  "       \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0255
    (write-format "(7X, A)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0256
    (write-format "(7X, A1)" "The quick brown fox jumps the lazy dog.")
  "       T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0257
    (write-format "(7X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "       \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0258
    (write-format "(7X, A1)" "''")
  "       '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0259
    (write-format "(7X, A2)" "The quick brown fox jumps the lazy dog.")
  "       Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0260
    (write-format "(7X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "       \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0261
    (write-format "(7X, A2)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0262
    (write-format "(7X, A3)" "The quick brown fox jumps the lazy dog.")
  "       The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0263
    (write-format "(7X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "       \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0264
    (write-format "(7X, A3)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0265
    (write-format "(7X, A4)" "The quick brown fox jumps the lazy dog.")
  "       The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0266
    (write-format "(7X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "       \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0267
    (write-format "(7X, A4)" "''")
  "         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0268
    (write-format "(7X, A5)" "The quick brown fox jumps the lazy dog.")
  "       The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0269
    (write-format "(7X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "       \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0270
    (write-format "(7X, A5)" "''")
  "          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0271
    (write-format "(7X, A6)" "The quick brown fox jumps the lazy dog.")
  "       The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0272
    (write-format "(7X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "       \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0273
    (write-format "(7X, A6)" "''")
  "           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0274
    (write-format "(7X, A7)" "The quick brown fox jumps the lazy dog.")
  "       The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0275
    (write-format "(7X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "       \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0276
    (write-format "(7X, A7)" "''")
  "            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0277
    (write-format "(7X, A8)" "The quick brown fox jumps the lazy dog.")
  "       The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0278
    (write-format "(7X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "       \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0279
    (write-format "(7X, A8)" "''")
  "             ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0280
    (write-format "(7X, A9)" "The quick brown fox jumps the lazy dog.")
  "       The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0281
    (write-format "(7X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "       \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0282
    (write-format "(7X, A9)" "''")
  "              ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0283
    (write-format "(7X, A10)" "The quick brown fox jumps the lazy dog.")
  "       The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0284
    (write-format "(7X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "       \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0285
    (write-format "(7X, A10)" "''")
  "               ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0286
    (write-format "(7X, A25)" "The quick brown fox jumps the lazy dog.")
  "       The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0287
    (write-format "(7X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "       \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0288
    (write-format "(7X, A25)" "''")
  "                              ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0289
    (write-format "(7X, A50)" "The quick brown fox jumps the lazy dog.")
  "                  The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0290
    (write-format "(7X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "                  \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0291
    (write-format "(7X, A50)" "''")
  "                                                       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0292
    (write-format "(7X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                    The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0293
    (write-format "(7X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                    \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0294
    (write-format "(7X, A100)" "''")
  "                                                                                                         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0295
    (write-format "(8X, A)" "The quick brown fox jumps the lazy dog.")
  "        The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0296
    (write-format "(8X, A)" "\"It doesn't matter anyway\" - said Alice")
  "        \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0297
    (write-format "(8X, A)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0298
    (write-format "(8X, A1)" "The quick brown fox jumps the lazy dog.")
  "        T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0299
    (write-format "(8X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "        \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0300
    (write-format "(8X, A1)" "''")
  "        '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0301
    (write-format "(8X, A2)" "The quick brown fox jumps the lazy dog.")
  "        Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0302
    (write-format "(8X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "        \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0303
    (write-format "(8X, A2)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0304
    (write-format "(8X, A3)" "The quick brown fox jumps the lazy dog.")
  "        The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0305
    (write-format "(8X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "        \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0306
    (write-format "(8X, A3)" "''")
  "         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0307
    (write-format "(8X, A4)" "The quick brown fox jumps the lazy dog.")
  "        The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0308
    (write-format "(8X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "        \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0309
    (write-format "(8X, A4)" "''")
  "          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0310
    (write-format "(8X, A5)" "The quick brown fox jumps the lazy dog.")
  "        The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0311
    (write-format "(8X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "        \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0312
    (write-format "(8X, A5)" "''")
  "           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0313
    (write-format "(8X, A6)" "The quick brown fox jumps the lazy dog.")
  "        The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0314
    (write-format "(8X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "        \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0315
    (write-format "(8X, A6)" "''")
  "            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0316
    (write-format "(8X, A7)" "The quick brown fox jumps the lazy dog.")
  "        The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0317
    (write-format "(8X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "        \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0318
    (write-format "(8X, A7)" "''")
  "             ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0319
    (write-format "(8X, A8)" "The quick brown fox jumps the lazy dog.")
  "        The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0320
    (write-format "(8X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "        \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0321
    (write-format "(8X, A8)" "''")
  "              ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0322
    (write-format "(8X, A9)" "The quick brown fox jumps the lazy dog.")
  "        The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0323
    (write-format "(8X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "        \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0324
    (write-format "(8X, A9)" "''")
  "               ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0325
    (write-format "(8X, A10)" "The quick brown fox jumps the lazy dog.")
  "        The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0326
    (write-format "(8X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "        \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0327
    (write-format "(8X, A10)" "''")
  "                ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0328
    (write-format "(8X, A25)" "The quick brown fox jumps the lazy dog.")
  "        The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0329
    (write-format "(8X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "        \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0330
    (write-format "(8X, A25)" "''")
  "                               ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0331
    (write-format "(8X, A50)" "The quick brown fox jumps the lazy dog.")
  "                   The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0332
    (write-format "(8X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "                   \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0333
    (write-format "(8X, A50)" "''")
  "                                                        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0334
    (write-format "(8X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                     The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0335
    (write-format "(8X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                     \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0336
    (write-format "(8X, A100)" "''")
  "                                                                                                          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0337
    (write-format "(9X, A)" "The quick brown fox jumps the lazy dog.")
  "         The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0338
    (write-format "(9X, A)" "\"It doesn't matter anyway\" - said Alice")
  "         \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0339
    (write-format "(9X, A)" "''")
  "         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0340
    (write-format "(9X, A1)" "The quick brown fox jumps the lazy dog.")
  "         T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0341
    (write-format "(9X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "         \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0342
    (write-format "(9X, A1)" "''")
  "         '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0343
    (write-format "(9X, A2)" "The quick brown fox jumps the lazy dog.")
  "         Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0344
    (write-format "(9X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "         \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0345
    (write-format "(9X, A2)" "''")
  "         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0346
    (write-format "(9X, A3)" "The quick brown fox jumps the lazy dog.")
  "         The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0347
    (write-format "(9X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "         \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0348
    (write-format "(9X, A3)" "''")
  "          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0349
    (write-format "(9X, A4)" "The quick brown fox jumps the lazy dog.")
  "         The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0350
    (write-format "(9X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "         \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0351
    (write-format "(9X, A4)" "''")
  "           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0352
    (write-format "(9X, A5)" "The quick brown fox jumps the lazy dog.")
  "         The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0353
    (write-format "(9X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "         \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0354
    (write-format "(9X, A5)" "''")
  "            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0355
    (write-format "(9X, A6)" "The quick brown fox jumps the lazy dog.")
  "         The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0356
    (write-format "(9X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "         \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0357
    (write-format "(9X, A6)" "''")
  "             ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0358
    (write-format "(9X, A7)" "The quick brown fox jumps the lazy dog.")
  "         The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0359
    (write-format "(9X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "         \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0360
    (write-format "(9X, A7)" "''")
  "              ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0361
    (write-format "(9X, A8)" "The quick brown fox jumps the lazy dog.")
  "         The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0362
    (write-format "(9X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "         \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0363
    (write-format "(9X, A8)" "''")
  "               ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0364
    (write-format "(9X, A9)" "The quick brown fox jumps the lazy dog.")
  "         The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0365
    (write-format "(9X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "         \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0366
    (write-format "(9X, A9)" "''")
  "                ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0367
    (write-format "(9X, A10)" "The quick brown fox jumps the lazy dog.")
  "         The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0368
    (write-format "(9X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "         \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0369
    (write-format "(9X, A10)" "''")
  "                 ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0370
    (write-format "(9X, A25)" "The quick brown fox jumps the lazy dog.")
  "         The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0371
    (write-format "(9X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "         \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0372
    (write-format "(9X, A25)" "''")
  "                                ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0373
    (write-format "(9X, A50)" "The quick brown fox jumps the lazy dog.")
  "                    The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0374
    (write-format "(9X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "                    \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0375
    (write-format "(9X, A50)" "''")
  "                                                         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0376
    (write-format "(9X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                      The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0377
    (write-format "(9X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                      \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0378
    (write-format "(9X, A100)" "''")
  "                                                                                                           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0379
    (write-format "(10X, A)" "The quick brown fox jumps the lazy dog.")
  "          The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0380
    (write-format "(10X, A)" "\"It doesn't matter anyway\" - said Alice")
  "          \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0381
    (write-format "(10X, A)" "''")
  "          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0382
    (write-format "(10X, A1)" "The quick brown fox jumps the lazy dog.")
  "          T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0383
    (write-format "(10X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "          \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0384
    (write-format "(10X, A1)" "''")
  "          '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0385
    (write-format "(10X, A2)" "The quick brown fox jumps the lazy dog.")
  "          Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0386
    (write-format "(10X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "          \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0387
    (write-format "(10X, A2)" "''")
  "          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0388
    (write-format "(10X, A3)" "The quick brown fox jumps the lazy dog.")
  "          The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0389
    (write-format "(10X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "          \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0390
    (write-format "(10X, A3)" "''")
  "           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0391
    (write-format "(10X, A4)" "The quick brown fox jumps the lazy dog.")
  "          The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0392
    (write-format "(10X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "          \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0393
    (write-format "(10X, A4)" "''")
  "            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0394
    (write-format "(10X, A5)" "The quick brown fox jumps the lazy dog.")
  "          The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0395
    (write-format "(10X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "          \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0396
    (write-format "(10X, A5)" "''")
  "             ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0397
    (write-format "(10X, A6)" "The quick brown fox jumps the lazy dog.")
  "          The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0398
    (write-format "(10X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "          \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0399
    (write-format "(10X, A6)" "''")
  "              ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0400
    (write-format "(10X, A7)" "The quick brown fox jumps the lazy dog.")
  "          The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0401
    (write-format "(10X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "          \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0402
    (write-format "(10X, A7)" "''")
  "               ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0403
    (write-format "(10X, A8)" "The quick brown fox jumps the lazy dog.")
  "          The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0404
    (write-format "(10X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "          \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0405
    (write-format "(10X, A8)" "''")
  "                ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0406
    (write-format "(10X, A9)" "The quick brown fox jumps the lazy dog.")
  "          The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0407
    (write-format "(10X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "          \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0408
    (write-format "(10X, A9)" "''")
  "                 ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0409
    (write-format "(10X, A10)" "The quick brown fox jumps the lazy dog.")
  "          The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0410
    (write-format "(10X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "          \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0411
    (write-format "(10X, A10)" "''")
  "                  ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0412
    (write-format "(10X, A25)" "The quick brown fox jumps the lazy dog.")
  "          The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0413
    (write-format "(10X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "          \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0414
    (write-format "(10X, A25)" "''")
  "                                 ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0415
    (write-format "(10X, A50)" "The quick brown fox jumps the lazy dog.")
  "                     The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0416
    (write-format "(10X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "                     \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0417
    (write-format "(10X, A50)" "''")
  "                                                          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0418
    (write-format "(10X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                       The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0419
    (write-format "(10X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                       \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0420
    (write-format "(10X, A100)" "''")
  "                                                                                                            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0421
    (write-format "(25X, A)" "The quick brown fox jumps the lazy dog.")
  "                         The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0422
    (write-format "(25X, A)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0423
    (write-format "(25X, A)" "''")
  "                         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0424
    (write-format "(25X, A1)" "The quick brown fox jumps the lazy dog.")
  "                         T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0425
    (write-format "(25X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0426
    (write-format "(25X, A1)" "''")
  "                         '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0427
    (write-format "(25X, A2)" "The quick brown fox jumps the lazy dog.")
  "                         Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0428
    (write-format "(25X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0429
    (write-format "(25X, A2)" "''")
  "                         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0430
    (write-format "(25X, A3)" "The quick brown fox jumps the lazy dog.")
  "                         The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0431
    (write-format "(25X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0432
    (write-format "(25X, A3)" "''")
  "                          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0433
    (write-format "(25X, A4)" "The quick brown fox jumps the lazy dog.")
  "                         The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0434
    (write-format "(25X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0435
    (write-format "(25X, A4)" "''")
  "                           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0436
    (write-format "(25X, A5)" "The quick brown fox jumps the lazy dog.")
  "                         The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0437
    (write-format "(25X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0438
    (write-format "(25X, A5)" "''")
  "                            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0439
    (write-format "(25X, A6)" "The quick brown fox jumps the lazy dog.")
  "                         The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0440
    (write-format "(25X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0441
    (write-format "(25X, A6)" "''")
  "                             ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0442
    (write-format "(25X, A7)" "The quick brown fox jumps the lazy dog.")
  "                         The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0443
    (write-format "(25X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0444
    (write-format "(25X, A7)" "''")
  "                              ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0445
    (write-format "(25X, A8)" "The quick brown fox jumps the lazy dog.")
  "                         The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0446
    (write-format "(25X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0447
    (write-format "(25X, A8)" "''")
  "                               ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0448
    (write-format "(25X, A9)" "The quick brown fox jumps the lazy dog.")
  "                         The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0449
    (write-format "(25X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0450
    (write-format "(25X, A9)" "''")
  "                                ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0451
    (write-format "(25X, A10)" "The quick brown fox jumps the lazy dog.")
  "                         The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0452
    (write-format "(25X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0453
    (write-format "(25X, A10)" "''")
  "                                 ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0454
    (write-format "(25X, A25)" "The quick brown fox jumps the lazy dog.")
  "                         The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0455
    (write-format "(25X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "                         \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0456
    (write-format "(25X, A25)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0457
    (write-format "(25X, A50)" "The quick brown fox jumps the lazy dog.")
  "                                    The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0458
    (write-format "(25X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "                                    \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0459
    (write-format "(25X, A50)" "''")
  "                                                                         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0460
    (write-format "(25X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                                      The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0461
    (write-format "(25X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                      \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0462
    (write-format "(25X, A100)" "''")
  "                                                                                                                           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0463
    (write-format "(50X, A)" "The quick brown fox jumps the lazy dog.")
  "                                                  The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0464
    (write-format "(50X, A)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0465
    (write-format "(50X, A)" "''")
  "                                                  ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0466
    (write-format "(50X, A1)" "The quick brown fox jumps the lazy dog.")
  "                                                  T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0467
    (write-format "(50X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0468
    (write-format "(50X, A1)" "''")
  "                                                  '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0469
    (write-format "(50X, A2)" "The quick brown fox jumps the lazy dog.")
  "                                                  Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0470
    (write-format "(50X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0471
    (write-format "(50X, A2)" "''")
  "                                                  ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0472
    (write-format "(50X, A3)" "The quick brown fox jumps the lazy dog.")
  "                                                  The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0473
    (write-format "(50X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0474
    (write-format "(50X, A3)" "''")
  "                                                   ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0475
    (write-format "(50X, A4)" "The quick brown fox jumps the lazy dog.")
  "                                                  The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0476
    (write-format "(50X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0477
    (write-format "(50X, A4)" "''")
  "                                                    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0478
    (write-format "(50X, A5)" "The quick brown fox jumps the lazy dog.")
  "                                                  The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0479
    (write-format "(50X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0480
    (write-format "(50X, A5)" "''")
  "                                                     ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0481
    (write-format "(50X, A6)" "The quick brown fox jumps the lazy dog.")
  "                                                  The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0482
    (write-format "(50X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0483
    (write-format "(50X, A6)" "''")
  "                                                      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0484
    (write-format "(50X, A7)" "The quick brown fox jumps the lazy dog.")
  "                                                  The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0485
    (write-format "(50X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0486
    (write-format "(50X, A7)" "''")
  "                                                       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0487
    (write-format "(50X, A8)" "The quick brown fox jumps the lazy dog.")
  "                                                  The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0488
    (write-format "(50X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0489
    (write-format "(50X, A8)" "''")
  "                                                        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0490
    (write-format "(50X, A9)" "The quick brown fox jumps the lazy dog.")
  "                                                  The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0491
    (write-format "(50X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0492
    (write-format "(50X, A9)" "''")
  "                                                         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0493
    (write-format "(50X, A10)" "The quick brown fox jumps the lazy dog.")
  "                                                  The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0494
    (write-format "(50X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0495
    (write-format "(50X, A10)" "''")
  "                                                          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0496
    (write-format "(50X, A25)" "The quick brown fox jumps the lazy dog.")
  "                                                  The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0497
    (write-format "(50X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "                                                  \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0498
    (write-format "(50X, A25)" "''")
  "                                                                         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0499
    (write-format "(50X, A50)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0500
    (write-format "(50X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0501
    (write-format "(50X, A50)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0502
    (write-format "(50X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                               The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0503
    (write-format "(50X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                               \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0504
    (write-format "(50X, A100)" "''")
  "                                                                                                                                                    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0505
    (write-format "(100X, A)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0506
    (write-format "(100X, A)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0507
    (write-format "(100X, A)" "''")
  "                                                                                                    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0508
    (write-format "(100X, A1)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    T")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0509
    (write-format "(100X, A1)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0510
    (write-format "(100X, A1)" "''")
  "                                                                                                    '")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0511
    (write-format "(100X, A2)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    Th")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0512
    (write-format "(100X, A2)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"I")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0513
    (write-format "(100X, A2)" "''")
  "                                                                                                    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0514
    (write-format "(100X, A3)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    The")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0515
    (write-format "(100X, A3)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"It")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0516
    (write-format "(100X, A3)" "''")
  "                                                                                                     ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0517
    (write-format "(100X, A4)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    The ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0518
    (write-format "(100X, A4)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"It ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0519
    (write-format "(100X, A4)" "''")
  "                                                                                                      ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0520
    (write-format "(100X, A5)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    The q")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0521
    (write-format "(100X, A5)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"It d")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0522
    (write-format "(100X, A5)" "''")
  "                                                                                                       ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0523
    (write-format "(100X, A6)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    The qu")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0524
    (write-format "(100X, A6)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"It do")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0525
    (write-format "(100X, A6)" "''")
  "                                                                                                        ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0526
    (write-format "(100X, A7)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    The qui")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0527
    (write-format "(100X, A7)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"It doe")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0528
    (write-format "(100X, A7)" "''")
  "                                                                                                         ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0529
    (write-format "(100X, A8)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    The quic")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0530
    (write-format "(100X, A8)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"It does")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0531
    (write-format "(100X, A8)" "''")
  "                                                                                                          ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0532
    (write-format "(100X, A9)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    The quick")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0533
    (write-format "(100X, A9)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"It doesn")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0534
    (write-format "(100X, A9)" "''")
  "                                                                                                           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0535
    (write-format "(100X, A10)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    The quick ")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0536
    (write-format "(100X, A10)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"It doesn'")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0537
    (write-format "(100X, A10)" "''")
  "                                                                                                            ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0538
    (write-format "(100X, A25)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                    The quick brown fox jumps")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0539
    (write-format "(100X, A25)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                    \"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0540
    (write-format "(100X, A25)" "''")
  "                                                                                                                           ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0541
    (write-format "(100X, A50)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                               The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0542
    (write-format "(100X, A50)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                               \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0543
    (write-format "(100X, A50)" "''")
  "                                                                                                                                                    ''")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0544
    (write-format "(100X, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                                                                                                                                 The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0545
    (write-format "(100X, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                                                                                                                                 \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.X-A-ED-OUTPUT.0546
    (write-format "(100X, A100)" "''")
  "                                                                                                                                                                                                      ''")

