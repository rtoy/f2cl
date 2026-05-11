      PROGRAM RDRUN
C     ------------------------------------------------------------------
C     Runnable end-to-end test of f2cl's READ translation.
C
C     Phase 1 OPENs unit 10 (fort10.dat), reads (integer, real) pairs
C     until END=, summing.  Exercises END= and IOSTAT= routing.
C
C     Phase 2 OPENs unit 11 (fort11.dat), reads a count M then M
C     integers via implied-do.  Exercises (B(K), K=1,M) READ.
C
C     With the inputs:
C         fort10.dat:
C             1  1.5
C             2  2.5
C             3  3.5
C             4  4.0
C         fort11.dat:
C             5
C             10 20 30 40 50
C
C     the expected output is:
C         COUNT =  4
C         ISUM  =  10
C         RSUM  =  11.5
C         IOS   =  -1     (IOSTAT= set when END= fired)
C         M     =  5
C         B(1..M) =  10 20 30 40 50
C         BSUM  =  150
C
C     The deliberate omission of a CHARACTER field is to keep the
C     test from depending on f2cl's list-directed-string approximation
C     -- Lisp's READ doesn't recognise single-quoted Fortran strings,
C     so 'foo' in the data file would parse as (QUOTE FOO) and the
C     subsequent F2CL-SET-STRING would misbehave.  That's a separate
C     limitation worth its own test once we decide how to handle it.
C     ------------------------------------------------------------------
      INTEGER COUNT, ISUM, IVAL, IOS, M, K, BSUM, B(10)
      REAL    RSUM, RVAL

      COUNT = 0
      ISUM  = 0
      RSUM  = 0.0
      IOS   = 0

C     Phase 1: list-directed READ until EOF.
      OPEN(UNIT=10, FILE='fort10.dat', STATUS='OLD')

 10   READ(10,*,END=900,IOSTAT=IOS) IVAL, RVAL
      COUNT = COUNT + 1
      ISUM  = ISUM + IVAL
      RSUM  = RSUM + RVAL
      GO TO 10

 900  CONTINUE
      CLOSE(UNIT=10)

C     Phase 2: count + implied-do array read.
      OPEN(UNIT=11, FILE='fort11.dat', STATUS='OLD')
      READ(11,*) M
      READ(11,*) (B(K), K=1,M)
      CLOSE(UNIT=11)

      BSUM = 0
      DO 30 K = 1, M
         BSUM = BSUM + B(K)
 30   CONTINUE

      WRITE(6,*) 'COUNT = ', COUNT
      WRITE(6,*) 'ISUM  = ', ISUM
      WRITE(6,*) 'RSUM  = ', RSUM
      WRITE(6,*) 'IOS   = ', IOS
      WRITE(6,*) 'M     = ', M
      WRITE(6,*) 'B(1..M) = ', (B(K), K=1,M)
      WRITE(6,*) 'BSUM  = ', BSUM

      STOP
      END
