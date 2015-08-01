      SUBROUTINE BRATIO (A, B, X, Y, W, W1, IERR) 
C-----------------------------------------------------------------------
C
C            EVALUATION OF THE INCOMPLETE BETA FUNCTION IX(A,B)
C
C                     --------------------
C
C     IT IS ASSUMED THAT A AND B ARE NONNEGATIVE, AND THAT X .LE. 1
C     AND Y = 1 - X.  BRATIO ASSIGNS W AND W1 THE VALUES
C
C                      W  = IX(A,B)
C                      W1 = 1 - IX(A,B) 
C
C     IERR IS A VARIABLE THAT REPORTS THE STATUS OF THE RESULTS.
C     IF NO INPUT ERRORS ARE DETECTED THEN IERR IS SET TO 0 AND
C     W AND W1 ARE COMPUTED. OTHERWISE, IF AN ERROR IS DETECTED,
C     THEN W AND W1 ARE ASSIGNED THE VALUE 0 AND IERR IS SET TO
C     ONE OF THE FOLLOWING VALUES ...
C
C        IERR = 1  IF A OR B IS NEGATIVE
C        IERR = 2  IF A = B = 0
C        IERR = 3  IF X .LT. 0 OR X .GT. 1
C        IERR = 4  IF Y .LT. 0 OR Y .GT. 1
C        IERR = 5  IF X + Y .NE. 1
C        IERR = 6  IF X = A = 0
C        IERR = 7  IF Y = B = 0
C
C--------------------
C     WRITTEN BY ALFRED H. MORRIS, JR.
C        NAVAL SURFACE WARFARE CENTER
C        DAHLGREN, VIRGINIA
C     REVISED ... NOV 1991
C-----------------------------------------------------------------------
      REAL LAMBDA
C-----------------------------------------------------------------------
C
C     ****** EPS IS A MACHINE DEPENDENT CONSTANT. EPS IS THE SMALLEST 
C            FLOATING POINT NUMBER FOR WHICH 1.0 + EPS .GT. 1.0
C
                       EPS = SPMPAR(1)
C
C-----------------------------------------------------------------------
      W = 0.0
      W1 = 0.0
      IF (A .LT. 0.0 .OR. B .LT. 0.0) GO TO 300
      IF (A .EQ. 0.0 .AND. B .EQ. 0.0) GO TO 310
      IF (X .LT. 0.0 .OR. X .GT. 1.0) GO TO 320
      IF (Y .LT. 0.0 .OR. Y .GT. 1.0) GO TO 330
      Z = ((X + Y) - 0.5) - 0.5
      IF (ABS(Z) .GT. 3.0*EPS) GO TO 340
C
      IERR = 0
      IF (X .EQ. 0.0) GO TO 200
      IF (Y .EQ. 0.0) GO TO 210
      IF (A .EQ. 0.0) GO TO 211
      IF (B .EQ. 0.0) GO TO 201
C
      EPS = AMAX1(EPS, 1.E-15)
      IF (AMAX1(A,B) .LT. 1.E-3*EPS) GO TO 230
C
      IND = 0
      A0 = A
      B0 = B
      X0 = X
      Y0 = Y
      IF (AMIN1(A0, B0) .GT. 1.0) GO TO 30
C
C             PROCEDURE FOR A0 .LE. 1 OR B0 .LE. 1
C
      IF (X .LE. 0.5) GO TO 10
      IND = 1
      A0 = B
      B0 = A
      X0 = Y
      Y0 = X
C
   10 IF (B0 .LT. AMIN1(EPS,EPS*A0)) GO TO 80
      IF (A0 .LT. AMIN1(EPS,EPS*B0) .AND. B0*X0 .LE. 1.0) GO TO 90
      IF (AMAX1(A0, B0) .GT. 1.0) GO TO 20
      IF (A0 .GE. AMIN1(0.2, B0)) GO TO 100
      IF (X0**A0 .LE. 0.9) GO TO 100
      IF (X0 .GE. 0.3) GO TO 110
      N = 20
      GO TO 130
C
   20 IF (B0 .LE. 1.0) GO TO 100
      IF (X0 .GE. 0.3) GO TO 110
      IF (X0 .GE. 0.1) GO TO 21
      IF ((X0*B0)**A0 .LE. 0.7) GO TO 100
   21 IF (B0 .GT. 15.0) GO TO 131
      N = 20
      GO TO 130
C
C             PROCEDURE FOR A0 .GT. 1 AND B0 .GT. 1
C
   30 IF (A .GT. B) GO TO 31
         LAMBDA = A - (A + B)*X
         GO TO 32
   31 LAMBDA = (A + B)*Y - B
   32 IF (LAMBDA .GE. 0.0) GO TO 40
      IND = 1
      A0 = B
      B0 = A
      X0 = Y
      Y0 = X
      LAMBDA = ABS(LAMBDA)
C
   40 IF (B0 .LT. 40.0 .AND. B0*X0 .LE. 0.7) GO TO 100
      IF (B0 .LT. 40.0) GO TO 140
      IF (A0 .GT. B0) GO TO 50
         IF (A0 .LE. 100.0) GO TO 120
         IF (LAMBDA .GT. 0.03*A0) GO TO 120
         GO TO 180
   50 IF (B0 .LE. 100.0) GO TO 120
      IF (LAMBDA .GT. 0.03*B0) GO TO 120
      GO TO 180
C
C            EVALUATION OF THE APPROPRIATE ALGORITHM
C
   80 W = FPSER(A0, B0, X0, EPS)
      W1 = 0.5 + (0.5 - W)
      GO TO 220
C
   90 W1 = APSER(A0, B0, X0, EPS)
      W = 0.5 + (0.5 - W1)
      GO TO 220
C
  100 W = BPSER(A0, B0, X0, EPS)
      W1 = 0.5 + (0.5 - W)
      GO TO 220
C
  110 W1 = BPSER(B0, A0, Y0, EPS)
      W = 0.5 + (0.5 - W1)
      GO TO 220
C
  120 W = BFRAC(A0, B0, X0, Y0, LAMBDA, 15.0*EPS) 
      W1 = 0.5 + (0.5 - W)
      GO TO 220
C
  130 W1 = BUP(B0, A0, Y0, X0, N, EPS)
      B0 = B0 + N
  131 CALL BGRAT(B0, A0, Y0, X0, W1, 15.0*EPS, IERR1)
      W = 0.5 + (0.5 - W1)
      GO TO 220
C
  140 N = B0
      B0 = B0 - N
      IF (B0 .NE. 0.0) GO TO 141
         N = N - 1
         B0 = 1.0
  141 W = BUP(B0, A0, Y0, X0, N, EPS)
      IF (X0 .GT. 0.7) GO TO 150
      W = W + BPSER(A0, B0, X0, EPS)
      W1 = 0.5 + (0.5 - W)
      GO TO 220
C
  150 IF (A0 .GT. 15.0) GO TO 151
         N = 20
         W = W + BUP(A0, B0, X0, Y0, N, EPS)
         A0 = A0 + N
  151 CALL BGRAT(A0, B0, X0, Y0, W, 15.0*EPS, IERR1)
      W1 = 0.5 + (0.5 - W)
      GO TO 220
C
  180 W = BASYM(A0, B0, LAMBDA, 100.0*EPS)
      W1 = 0.5 + (0.5 - W)
      GO TO 220
C
C               TERMINATION OF THE PROCEDURE
C
  200 IF (A .EQ. 0.0) GO TO 350
  201 W = 0.0
      W1 = 1.0
      RETURN
C
  210 IF (B .EQ. 0.0) GO TO 360
  211 W = 1.0
      W1 = 0.0
      RETURN
C
  220 IF (IND .EQ. 0) RETURN
      T = W
      W = W1
      W1 = T
      RETURN
C
C           PROCEDURE FOR A AND B .LT. 1.E-3*EPS
C
  230 W = B/(A + B) 
      W1 = A/(A + B)
      RETURN
C
C                       ERROR RETURN
C
  300 IERR = 1
      RETURN
  310 IERR = 2
      RETURN
  320 IERR = 3
      RETURN
  330 IERR = 4
      RETURN
  340 IERR = 5
      RETURN
  350 IERR = 6
      RETURN
  360 IERR = 7
      RETURN
      END 
