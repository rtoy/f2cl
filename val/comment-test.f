C =====================================================================
C Test file for f2cl comment-handling fixes.  Translate with
C
C   (f2cl:f2cl "comment-test.f" :include-comments t)
C
C and inspect the resulting comment-test.lisp.
C
C Behaviour expected after the fixes:
C
C * Comments OUTSIDE any subprogram (these here at the top of the
C   file, gaps between subprograms, and any trailing comments after
C   the last END) are silently DROPPED.  None of them must appear in
C   the generated .lisp file.
C * Comments INSIDE a subprogram are emitted as fortran_comment forms
C   (i.e., quoted strings in the translated body).  Their original
C   character case is preserved, and lines longer than column 72 are
C   not truncated.
C =====================================================================
      SUBROUTINE FOO(X, IFLAG)
      REAL X
      INTEGER IFLAG
C
C Bug 3: Case preservation.  The mixed-case tokens IFLAG, TODO and
C MYSUB below must appear unchanged in the generated comment string.
C
C   TODO: set IFLAG=1 when X is negative.  See routine MYSUB.
C
C Bug 2: column-72 truncation of comment lines.  The next comment
C line is intentionally longer than 72 columns; the trailing token
C END-OF-LINE-MARKER must survive intact.
C
C 23456789012345678901234567890123456789012345678901234567890123456789012XXX-END-OF-LINE-MARKER
C
C Quote handling.  The next comment lines contain ASCII quote
C characters that have to survive translation cleanly:
C
C   single quote 'foo' and apostrophes don't break things
C   double quote "bar" must be properly escaped in the .lisp file
C   mixed: he said "it's fine" - both kinds in one line
C   tricky: "''" "" "'\"'" - empty/adjacent quotes, escapes, etc.
C
      IF (X .LT. 0.0) THEN
         IFLAG = 1
      ELSE
         IFLAG = 0
      ENDIF
      RETURN
      END
C
C This block of comments lives between two subprograms.  None of these
C lines should appear in the generated .lisp file.  It also contains
C "double" and 'single' quotes that should not confuse the dropper.
C
      SUBROUTINE BAR(Y)
      REAL Y
C This in-subprogram comment in BAR with "quotes" and 'apostrophes'
C must appear in the translation, with the quotes intact.
      Y = Y + 1.0
      RETURN
      END
C
C Trailing comments at end-of-file.  These come after the last END of
C the last subprogram and must NOT appear in the generated .lisp file.
C They contain "double" and 'single' quotes too, just to be sure.
C
C   --- LAST LINE OF THE FILE; MUST NOT APPEAR IN THE LISP OUTPUT ---
