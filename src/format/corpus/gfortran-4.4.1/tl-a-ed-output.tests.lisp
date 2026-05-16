;;;; tl-a-ed-output.tests.lisp
;;;;
;;;; AUTO-GENERATED from tl-a-ed-output.test.
;;;; Do not edit by hand.  Regenerate with
;;;;
;;;;   (fortran-format::regenerate-corpus-tests
;;;;     #P"...tl-a-ed-output.test")
;;;;
;;;; 546 cases.

(in-package #:fortran-format)

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0001
    (write-format "(TL1, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0002
    (write-format "(TL1, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0003
    (write-format "(TL1, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0004
    (write-format "(TL1, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0005
    (write-format "(TL1, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0006
    (write-format "(TL1, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0007
    (write-format "(TL1, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0008
    (write-format "(TL1, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0009
    (write-format "(TL1, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0010
    (write-format "(TL1, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0011
    (write-format "(TL1, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0012
    (write-format "(TL1, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0013
    (write-format "(TL1, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0014
    (write-format "(TL1, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0015
    (write-format "(TL1, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0016
    (write-format "(TL1, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0017
    (write-format "(TL1, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0018
    (write-format "(TL1, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0019
    (write-format "(TL1, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0020
    (write-format "(TL1, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0021
    (write-format "(TL1, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0022
    (write-format "(TL1, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0023
    (write-format "(TL1, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0024
    (write-format "(TL1, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0025
    (write-format "(TL1, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0026
    (write-format "(TL1, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0027
    (write-format "(TL1, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0028
    (write-format "(TL1, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0029
    (write-format "(TL1, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0030
    (write-format "(TL1, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0031
    (write-format "(TL1, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0032
    (write-format "(TL1, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0033
    (write-format "(TL1, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0034
    (write-format "(TL1, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0035
    (write-format "(TL1, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0036
    (write-format "(TL1, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0037
    (write-format "(TL1, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0038
    (write-format "(TL1, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0039
    (write-format "(TL1, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0040
    (write-format "(TL1, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0041
    (write-format "(TL1, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0042
    (write-format "(TL1, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0043
    (write-format "(TL2, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0044
    (write-format "(TL2, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0045
    (write-format "(TL2, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0046
    (write-format "(TL2, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0047
    (write-format "(TL2, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0048
    (write-format "(TL2, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0049
    (write-format "(TL2, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0050
    (write-format "(TL2, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0051
    (write-format "(TL2, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0052
    (write-format "(TL2, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0053
    (write-format "(TL2, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0054
    (write-format "(TL2, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0055
    (write-format "(TL2, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0056
    (write-format "(TL2, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0057
    (write-format "(TL2, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0058
    (write-format "(TL2, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0059
    (write-format "(TL2, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0060
    (write-format "(TL2, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0061
    (write-format "(TL2, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0062
    (write-format "(TL2, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0063
    (write-format "(TL2, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0064
    (write-format "(TL2, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0065
    (write-format "(TL2, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0066
    (write-format "(TL2, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0067
    (write-format "(TL2, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0068
    (write-format "(TL2, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0069
    (write-format "(TL2, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0070
    (write-format "(TL2, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0071
    (write-format "(TL2, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0072
    (write-format "(TL2, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0073
    (write-format "(TL2, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0074
    (write-format "(TL2, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0075
    (write-format "(TL2, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0076
    (write-format "(TL2, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0077
    (write-format "(TL2, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0078
    (write-format "(TL2, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0079
    (write-format "(TL2, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0080
    (write-format "(TL2, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0081
    (write-format "(TL2, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0082
    (write-format "(TL2, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0083
    (write-format "(TL2, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0084
    (write-format "(TL2, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0085
    (write-format "(TL3, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0086
    (write-format "(TL3, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0087
    (write-format "(TL3, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0088
    (write-format "(TL3, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0089
    (write-format "(TL3, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0090
    (write-format "(TL3, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0091
    (write-format "(TL3, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0092
    (write-format "(TL3, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0093
    (write-format "(TL3, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0094
    (write-format "(TL3, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0095
    (write-format "(TL3, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0096
    (write-format "(TL3, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0097
    (write-format "(TL3, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0098
    (write-format "(TL3, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0099
    (write-format "(TL3, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0100
    (write-format "(TL3, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0101
    (write-format "(TL3, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0102
    (write-format "(TL3, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0103
    (write-format "(TL3, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0104
    (write-format "(TL3, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0105
    (write-format "(TL3, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0106
    (write-format "(TL3, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0107
    (write-format "(TL3, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0108
    (write-format "(TL3, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0109
    (write-format "(TL3, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0110
    (write-format "(TL3, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0111
    (write-format "(TL3, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0112
    (write-format "(TL3, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0113
    (write-format "(TL3, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0114
    (write-format "(TL3, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0115
    (write-format "(TL3, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0116
    (write-format "(TL3, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0117
    (write-format "(TL3, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0118
    (write-format "(TL3, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0119
    (write-format "(TL3, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0120
    (write-format "(TL3, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0121
    (write-format "(TL3, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0122
    (write-format "(TL3, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0123
    (write-format "(TL3, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0124
    (write-format "(TL3, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0125
    (write-format "(TL3, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0126
    (write-format "(TL3, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0127
    (write-format "(TL4, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0128
    (write-format "(TL4, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0129
    (write-format "(TL4, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0130
    (write-format "(TL4, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0131
    (write-format "(TL4, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0132
    (write-format "(TL4, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0133
    (write-format "(TL4, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0134
    (write-format "(TL4, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0135
    (write-format "(TL4, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0136
    (write-format "(TL4, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0137
    (write-format "(TL4, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0138
    (write-format "(TL4, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0139
    (write-format "(TL4, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0140
    (write-format "(TL4, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0141
    (write-format "(TL4, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0142
    (write-format "(TL4, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0143
    (write-format "(TL4, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0144
    (write-format "(TL4, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0145
    (write-format "(TL4, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0146
    (write-format "(TL4, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0147
    (write-format "(TL4, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0148
    (write-format "(TL4, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0149
    (write-format "(TL4, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0150
    (write-format "(TL4, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0151
    (write-format "(TL4, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0152
    (write-format "(TL4, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0153
    (write-format "(TL4, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0154
    (write-format "(TL4, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0155
    (write-format "(TL4, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0156
    (write-format "(TL4, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0157
    (write-format "(TL4, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0158
    (write-format "(TL4, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0159
    (write-format "(TL4, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0160
    (write-format "(TL4, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0161
    (write-format "(TL4, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0162
    (write-format "(TL4, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0163
    (write-format "(TL4, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0164
    (write-format "(TL4, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0165
    (write-format "(TL4, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0166
    (write-format "(TL4, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0167
    (write-format "(TL4, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0168
    (write-format "(TL4, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0169
    (write-format "(TL5, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0170
    (write-format "(TL5, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0171
    (write-format "(TL5, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0172
    (write-format "(TL5, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0173
    (write-format "(TL5, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0174
    (write-format "(TL5, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0175
    (write-format "(TL5, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0176
    (write-format "(TL5, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0177
    (write-format "(TL5, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0178
    (write-format "(TL5, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0179
    (write-format "(TL5, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0180
    (write-format "(TL5, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0181
    (write-format "(TL5, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0182
    (write-format "(TL5, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0183
    (write-format "(TL5, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0184
    (write-format "(TL5, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0185
    (write-format "(TL5, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0186
    (write-format "(TL5, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0187
    (write-format "(TL5, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0188
    (write-format "(TL5, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0189
    (write-format "(TL5, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0190
    (write-format "(TL5, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0191
    (write-format "(TL5, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0192
    (write-format "(TL5, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0193
    (write-format "(TL5, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0194
    (write-format "(TL5, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0195
    (write-format "(TL5, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0196
    (write-format "(TL5, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0197
    (write-format "(TL5, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0198
    (write-format "(TL5, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0199
    (write-format "(TL5, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0200
    (write-format "(TL5, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0201
    (write-format "(TL5, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0202
    (write-format "(TL5, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0203
    (write-format "(TL5, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0204
    (write-format "(TL5, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0205
    (write-format "(TL5, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0206
    (write-format "(TL5, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0207
    (write-format "(TL5, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0208
    (write-format "(TL5, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0209
    (write-format "(TL5, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0210
    (write-format "(TL5, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0211
    (write-format "(TL6, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0212
    (write-format "(TL6, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0213
    (write-format "(TL6, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0214
    (write-format "(TL6, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0215
    (write-format "(TL6, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0216
    (write-format "(TL6, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0217
    (write-format "(TL6, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0218
    (write-format "(TL6, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0219
    (write-format "(TL6, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0220
    (write-format "(TL6, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0221
    (write-format "(TL6, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0222
    (write-format "(TL6, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0223
    (write-format "(TL6, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0224
    (write-format "(TL6, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0225
    (write-format "(TL6, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0226
    (write-format "(TL6, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0227
    (write-format "(TL6, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0228
    (write-format "(TL6, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0229
    (write-format "(TL6, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0230
    (write-format "(TL6, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0231
    (write-format "(TL6, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0232
    (write-format "(TL6, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0233
    (write-format "(TL6, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0234
    (write-format "(TL6, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0235
    (write-format "(TL6, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0236
    (write-format "(TL6, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0237
    (write-format "(TL6, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0238
    (write-format "(TL6, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0239
    (write-format "(TL6, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0240
    (write-format "(TL6, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0241
    (write-format "(TL6, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0242
    (write-format "(TL6, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0243
    (write-format "(TL6, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0244
    (write-format "(TL6, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0245
    (write-format "(TL6, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0246
    (write-format "(TL6, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0247
    (write-format "(TL6, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0248
    (write-format "(TL6, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0249
    (write-format "(TL6, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0250
    (write-format "(TL6, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0251
    (write-format "(TL6, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0252
    (write-format "(TL6, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0253
    (write-format "(TL7, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0254
    (write-format "(TL7, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0255
    (write-format "(TL7, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0256
    (write-format "(TL7, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0257
    (write-format "(TL7, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0258
    (write-format "(TL7, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0259
    (write-format "(TL7, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0260
    (write-format "(TL7, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0261
    (write-format "(TL7, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0262
    (write-format "(TL7, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0263
    (write-format "(TL7, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0264
    (write-format "(TL7, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0265
    (write-format "(TL7, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0266
    (write-format "(TL7, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0267
    (write-format "(TL7, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0268
    (write-format "(TL7, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0269
    (write-format "(TL7, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0270
    (write-format "(TL7, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0271
    (write-format "(TL7, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0272
    (write-format "(TL7, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0273
    (write-format "(TL7, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0274
    (write-format "(TL7, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0275
    (write-format "(TL7, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0276
    (write-format "(TL7, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0277
    (write-format "(TL7, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0278
    (write-format "(TL7, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0279
    (write-format "(TL7, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0280
    (write-format "(TL7, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0281
    (write-format "(TL7, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0282
    (write-format "(TL7, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0283
    (write-format "(TL7, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0284
    (write-format "(TL7, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0285
    (write-format "(TL7, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0286
    (write-format "(TL7, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0287
    (write-format "(TL7, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0288
    (write-format "(TL7, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0289
    (write-format "(TL7, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0290
    (write-format "(TL7, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0291
    (write-format "(TL7, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0292
    (write-format "(TL7, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0293
    (write-format "(TL7, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0294
    (write-format "(TL7, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0295
    (write-format "(TL8, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0296
    (write-format "(TL8, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0297
    (write-format "(TL8, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0298
    (write-format "(TL8, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0299
    (write-format "(TL8, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0300
    (write-format "(TL8, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0301
    (write-format "(TL8, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0302
    (write-format "(TL8, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0303
    (write-format "(TL8, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0304
    (write-format "(TL8, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0305
    (write-format "(TL8, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0306
    (write-format "(TL8, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0307
    (write-format "(TL8, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0308
    (write-format "(TL8, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0309
    (write-format "(TL8, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0310
    (write-format "(TL8, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0311
    (write-format "(TL8, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0312
    (write-format "(TL8, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0313
    (write-format "(TL8, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0314
    (write-format "(TL8, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0315
    (write-format "(TL8, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0316
    (write-format "(TL8, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0317
    (write-format "(TL8, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0318
    (write-format "(TL8, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0319
    (write-format "(TL8, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0320
    (write-format "(TL8, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0321
    (write-format "(TL8, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0322
    (write-format "(TL8, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0323
    (write-format "(TL8, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0324
    (write-format "(TL8, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0325
    (write-format "(TL8, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0326
    (write-format "(TL8, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0327
    (write-format "(TL8, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0328
    (write-format "(TL8, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0329
    (write-format "(TL8, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0330
    (write-format "(TL8, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0331
    (write-format "(TL8, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0332
    (write-format "(TL8, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0333
    (write-format "(TL8, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0334
    (write-format "(TL8, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0335
    (write-format "(TL8, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0336
    (write-format "(TL8, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0337
    (write-format "(TL9, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0338
    (write-format "(TL9, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0339
    (write-format "(TL9, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0340
    (write-format "(TL9, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0341
    (write-format "(TL9, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0342
    (write-format "(TL9, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0343
    (write-format "(TL9, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0344
    (write-format "(TL9, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0345
    (write-format "(TL9, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0346
    (write-format "(TL9, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0347
    (write-format "(TL9, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0348
    (write-format "(TL9, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0349
    (write-format "(TL9, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0350
    (write-format "(TL9, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0351
    (write-format "(TL9, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0352
    (write-format "(TL9, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0353
    (write-format "(TL9, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0354
    (write-format "(TL9, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0355
    (write-format "(TL9, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0356
    (write-format "(TL9, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0357
    (write-format "(TL9, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0358
    (write-format "(TL9, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0359
    (write-format "(TL9, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0360
    (write-format "(TL9, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0361
    (write-format "(TL9, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0362
    (write-format "(TL9, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0363
    (write-format "(TL9, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0364
    (write-format "(TL9, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0365
    (write-format "(TL9, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0366
    (write-format "(TL9, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0367
    (write-format "(TL9, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0368
    (write-format "(TL9, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0369
    (write-format "(TL9, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0370
    (write-format "(TL9, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0371
    (write-format "(TL9, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0372
    (write-format "(TL9, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0373
    (write-format "(TL9, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0374
    (write-format "(TL9, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0375
    (write-format "(TL9, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0376
    (write-format "(TL9, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0377
    (write-format "(TL9, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0378
    (write-format "(TL9, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0379
    (write-format "(TL10, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0380
    (write-format "(TL10, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0381
    (write-format "(TL10, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0382
    (write-format "(TL10, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0383
    (write-format "(TL10, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0384
    (write-format "(TL10, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0385
    (write-format "(TL10, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0386
    (write-format "(TL10, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0387
    (write-format "(TL10, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0388
    (write-format "(TL10, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0389
    (write-format "(TL10, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0390
    (write-format "(TL10, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0391
    (write-format "(TL10, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0392
    (write-format "(TL10, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0393
    (write-format "(TL10, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0394
    (write-format "(TL10, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0395
    (write-format "(TL10, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0396
    (write-format "(TL10, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0397
    (write-format "(TL10, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0398
    (write-format "(TL10, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0399
    (write-format "(TL10, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0400
    (write-format "(TL10, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0401
    (write-format "(TL10, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0402
    (write-format "(TL10, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0403
    (write-format "(TL10, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0404
    (write-format "(TL10, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0405
    (write-format "(TL10, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0406
    (write-format "(TL10, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0407
    (write-format "(TL10, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0408
    (write-format "(TL10, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0409
    (write-format "(TL10, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0410
    (write-format "(TL10, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0411
    (write-format "(TL10, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0412
    (write-format "(TL10, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0413
    (write-format "(TL10, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0414
    (write-format "(TL10, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0415
    (write-format "(TL10, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0416
    (write-format "(TL10, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0417
    (write-format "(TL10, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0418
    (write-format "(TL10, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0419
    (write-format "(TL10, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0420
    (write-format "(TL10, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0421
    (write-format "(TL25, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0422
    (write-format "(TL25, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0423
    (write-format "(TL25, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0424
    (write-format "(TL25, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0425
    (write-format "(TL25, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0426
    (write-format "(TL25, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0427
    (write-format "(TL25, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0428
    (write-format "(TL25, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0429
    (write-format "(TL25, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0430
    (write-format "(TL25, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0431
    (write-format "(TL25, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0432
    (write-format "(TL25, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0433
    (write-format "(TL25, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0434
    (write-format "(TL25, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0435
    (write-format "(TL25, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0436
    (write-format "(TL25, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0437
    (write-format "(TL25, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0438
    (write-format "(TL25, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0439
    (write-format "(TL25, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0440
    (write-format "(TL25, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0441
    (write-format "(TL25, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0442
    (write-format "(TL25, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0443
    (write-format "(TL25, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0444
    (write-format "(TL25, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0445
    (write-format "(TL25, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0446
    (write-format "(TL25, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0447
    (write-format "(TL25, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0448
    (write-format "(TL25, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0449
    (write-format "(TL25, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0450
    (write-format "(TL25, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0451
    (write-format "(TL25, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0452
    (write-format "(TL25, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0453
    (write-format "(TL25, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0454
    (write-format "(TL25, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0455
    (write-format "(TL25, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0456
    (write-format "(TL25, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0457
    (write-format "(TL25, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0458
    (write-format "(TL25, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0459
    (write-format "(TL25, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0460
    (write-format "(TL25, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0461
    (write-format "(TL25, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0462
    (write-format "(TL25, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0463
    (write-format "(TL50, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0464
    (write-format "(TL50, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0465
    (write-format "(TL50, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0466
    (write-format "(TL50, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0467
    (write-format "(TL50, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0468
    (write-format "(TL50, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0469
    (write-format "(TL50, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0470
    (write-format "(TL50, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0471
    (write-format "(TL50, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0472
    (write-format "(TL50, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0473
    (write-format "(TL50, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0474
    (write-format "(TL50, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0475
    (write-format "(TL50, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0476
    (write-format "(TL50, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0477
    (write-format "(TL50, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0478
    (write-format "(TL50, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0479
    (write-format "(TL50, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0480
    (write-format "(TL50, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0481
    (write-format "(TL50, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0482
    (write-format "(TL50, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0483
    (write-format "(TL50, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0484
    (write-format "(TL50, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0485
    (write-format "(TL50, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0486
    (write-format "(TL50, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0487
    (write-format "(TL50, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0488
    (write-format "(TL50, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0489
    (write-format "(TL50, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0490
    (write-format "(TL50, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0491
    (write-format "(TL50, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0492
    (write-format "(TL50, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0493
    (write-format "(TL50, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0494
    (write-format "(TL50, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0495
    (write-format "(TL50, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0496
    (write-format "(TL50, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0497
    (write-format "(TL50, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0498
    (write-format "(TL50, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0499
    (write-format "(TL50, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0500
    (write-format "(TL50, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0501
    (write-format "(TL50, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0502
    (write-format "(TL50, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0503
    (write-format "(TL50, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0504
    (write-format "(TL50, A100)" "''")
  "                                                                                                  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0505
    (write-format "(TL100, A)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0506
    (write-format "(TL100, A)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0507
    (write-format "(TL100, A)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0508
    (write-format "(TL100, A1)" "The quick brown fox jumps the lazy dog.")
  "T")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0509
    (write-format "(TL100, A1)" "\"It doesn't matter anyway\" - said Alice")
  "\"")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0510
    (write-format "(TL100, A1)" "''")
  "'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0511
    (write-format "(TL100, A2)" "The quick brown fox jumps the lazy dog.")
  "Th")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0512
    (write-format "(TL100, A2)" "\"It doesn't matter anyway\" - said Alice")
  "\"I")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0513
    (write-format "(TL100, A2)" "''")
  "''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0514
    (write-format "(TL100, A3)" "The quick brown fox jumps the lazy dog.")
  "The")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0515
    (write-format "(TL100, A3)" "\"It doesn't matter anyway\" - said Alice")
  "\"It")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0516
    (write-format "(TL100, A3)" "''")
  " ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0517
    (write-format "(TL100, A4)" "The quick brown fox jumps the lazy dog.")
  "The ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0518
    (write-format "(TL100, A4)" "\"It doesn't matter anyway\" - said Alice")
  "\"It ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0519
    (write-format "(TL100, A4)" "''")
  "  ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0520
    (write-format "(TL100, A5)" "The quick brown fox jumps the lazy dog.")
  "The q")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0521
    (write-format "(TL100, A5)" "\"It doesn't matter anyway\" - said Alice")
  "\"It d")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0522
    (write-format "(TL100, A5)" "''")
  "   ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0523
    (write-format "(TL100, A6)" "The quick brown fox jumps the lazy dog.")
  "The qu")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0524
    (write-format "(TL100, A6)" "\"It doesn't matter anyway\" - said Alice")
  "\"It do")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0525
    (write-format "(TL100, A6)" "''")
  "    ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0526
    (write-format "(TL100, A7)" "The quick brown fox jumps the lazy dog.")
  "The qui")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0527
    (write-format "(TL100, A7)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doe")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0528
    (write-format "(TL100, A7)" "''")
  "     ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0529
    (write-format "(TL100, A8)" "The quick brown fox jumps the lazy dog.")
  "The quic")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0530
    (write-format "(TL100, A8)" "\"It doesn't matter anyway\" - said Alice")
  "\"It does")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0531
    (write-format "(TL100, A8)" "''")
  "      ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0532
    (write-format "(TL100, A9)" "The quick brown fox jumps the lazy dog.")
  "The quick")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0533
    (write-format "(TL100, A9)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0534
    (write-format "(TL100, A9)" "''")
  "       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0535
    (write-format "(TL100, A10)" "The quick brown fox jumps the lazy dog.")
  "The quick ")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0536
    (write-format "(TL100, A10)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn'")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0537
    (write-format "(TL100, A10)" "''")
  "        ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0538
    (write-format "(TL100, A25)" "The quick brown fox jumps the lazy dog.")
  "The quick brown fox jumps")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0539
    (write-format "(TL100, A25)" "\"It doesn't matter anyway\" - said Alice")
  "\"It doesn't matter anyway")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0540
    (write-format "(TL100, A25)" "''")
  "                       ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0541
    (write-format "(TL100, A50)" "The quick brown fox jumps the lazy dog.")
  "           The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0542
    (write-format "(TL100, A50)" "\"It doesn't matter anyway\" - said Alice")
  "           \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0543
    (write-format "(TL100, A50)" "''")
  "                                                ''")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0544
    (write-format "(TL100, A100)" "The quick brown fox jumps the lazy dog.")
  "                                                             The quick brown fox jumps the lazy dog.")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0545
    (write-format "(TL100, A100)" "\"It doesn't matter anyway\" - said Alice")
  "                                                             \"It doesn't matter anyway\" - said Alice")

(rt:deftest FMT.CORPUS.TL-A-ED-OUTPUT.0546
    (write-format "(TL100, A100)" "''")
  "                                                                                                  ''")

