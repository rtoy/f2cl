      PROGRAM RDXLAT
C     ------------------------------------------------------------------
C     READ-translation showcase.  This file is meant to be fed through
C     f2cl so a human can read the resulting Lisp and confirm:
C
C       *  The "READ statement may not be translated correctly" comments
C          DO NOT appear around plain list-directed reads.
C
C       *  UNIT= and FMT= keyword forms produce the right LUN.
C
C       *  END=, ERR= and IOSTAT= produce a HANDLER-CASE that GOes to
C          the right label or sets the right variable.
C
C       *  '(A)' on a CHARACTER variable produces READ-LINE.
C
C       *  Edit-descriptor formats and numeric format-labels produce a
C          targeted warning naming the offending format.
C
C     This program is not intended to be executed.  It exercises the
C     translator only.
C     ------------------------------------------------------------------
      INTEGER N, I, J, IOS, A(10)
      REAL X, Y
      CHARACTER*40 LINE, NAME

C     1) Plain list-directed read.  Should produce no warnings.
      READ(5,*) N, X

C     2) Implied-do list-directed read.  Should produce no warnings.
      READ(5,*) (A(I), I=1,N)

C     3) Keyword-style options.  LUN must come out as 5, not the
C        symbol UNIT.
      READ(UNIT=5, FMT=*) I, J

C     4) END= specifier.  Should wrap in HANDLER-CASE on END-OF-FILE
C        and GO to label 900.
      READ(5,*,END=900) X

C     5) ERR= specifier.  Should wrap in HANDLER-CASE on ERROR and GO
C        to label 800.
      READ(5,*,ERR=800) Y

C     6) IOSTAT= specifier.  Should set IOS to 0/-1/+1.  No GO needed.
      READ(5,*,IOSTAT=IOS) N

C     7) END= and IOSTAT= together.
      READ(5,*,END=900,IOSTAT=IOS) N

C     8) Whole-line read into a CHARACTER variable.  Should produce
C        READ-LINE, not READ.
      READ(5,'(A)') LINE

C     9) Same but with END= so we test READ-LINE inside HANDLER-CASE.
      READ(5,'(A)',END=900) NAME

C    10) Edit-descriptor format.  Should emit
C        "formatted READ with FMT=\"(3I4)\" not fully implemented".
      READ(5,'(3I4)') N, I, J

C    11) Edit-descriptor with END= and IOSTAT=.  Should emit the
C        FMT warning AND wrap in HANDLER-CASE.
      READ(5,'(F10.3)',END=900,IOSTAT=IOS) X

C    12) Numeric format-statement label.  Should emit
C        "formatted READ with FMT=100 not fully implemented".
      READ(5,100) X
 100  FORMAT(F10.3)

C    13) No-parens form, list-directed.  Should produce no warnings.
      READ *, N, X

C    14) No-parens form, '(A)' format on CHARACTER variable.  Should
C        produce READ-LINE, no warnings.
      READ '(A)', LINE

      GO TO 999
 800  WRITE(6,*) 'ERR= branch reached'
      GO TO 999
 900  WRITE(6,*) 'END= branch reached'
 999  STOP
      END
