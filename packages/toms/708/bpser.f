      REAL FUNCTION BPSER(A, B, X, EPS) 
C-----------------------------------------------------------------------
C     POWER SERIES EXPANSION FOR EVALUATING IX(A,B) WHEN B .LE. 1
C     OR B*X .LE. 0.7.  EPS IS THE TOLERANCE USED.
C-----------------------------------------------------------------------
      REAL N
C
      BPSER = 0.0
      IF (X .EQ. 0.0) RETURN
C-----------------------------------------------------------------------
C            COMPUTE THE FACTOR X**A/(A*BETA(A,B))
C-----------------------------------------------------------------------
      A0 = AMIN1(A,B)
      IF (A0 .LT. 1.0) GO TO 10
         Z = A*ALOG(X) - BETALN(A,B)
         BPSER = EXP(Z)/A
         GO TO 70
   10 B0 = AMAX1(A,B)
      IF (B0 .GE. 8.0) GO TO 60
      IF (B0 .GT. 1.0) GO TO 40
C
C            PROCEDURE FOR A0 .LT. 1 AND B0 .LE. 1
C
      BPSER = X**A
      IF (BPSER .EQ. 0.0) RETURN
C
      APB = A + B
      IF (APB .GT. 1.0) GO TO 20
         Z = 1.0 + GAM1(APB)
         GO TO 30
   20 U = DBLE(A) + DBLE(B) - 1.D0
      Z = (1.0 + GAM1(U))/APB 
C
   30 C = (1.0 + GAM1(A))*(1.0 + GAM1(B))/Z
      BPSER = BPSER*C*(B/APB) 
      GO TO 70
C
C         PROCEDURE FOR A0 .LT. 1 AND 1 .LT. B0 .LT. 8
C
   40 U = GAMLN1(A0)
      M = B0 - 1.0
      IF (M .LT. 1) GO TO 50
      C = 1.0
      DO 41 I = 1,M 
         B0 = B0 - 1.0
   41    C = C*(B0/(A0 + B0)) 
      U = ALOG(C) + U
C
   50 Z = A*ALOG(X) - U
      B0 = B0 - 1.0 
      APB = A0 + B0 
      IF (APB .GT. 1.0) GO TO 51
         T = 1.0 + GAM1(APB)
         GO TO 52
   51 U = DBLE(A0) + DBLE(B0) - 1.D0
      T = (1.0 + GAM1(U))/APB 
   52 BPSER = EXP(Z)*(A0/A)*(1.0 + GAM1(B0))/T
      GO TO 70
C
C            PROCEDURE FOR A0 .LT. 1 AND B0 .GE. 8
C
   60 U = GAMLN1(A0) + ALGDIV(A0,B0)
      Z = A*ALOG(X) - U
      BPSER = (A0/A)*EXP(Z)
   70 IF (BPSER .EQ. 0.0 .OR. A .LE. 0.1*EPS) RETURN
C-----------------------------------------------------------------------
C                     COMPUTE THE SERIES
C-----------------------------------------------------------------------
      SUM = 0.0
      N = 0.0
      C = 1.0
      TOL = EPS/A
  100    N = N + 1.0
         C = C*(0.5 + (0.5 - B/N))*X
         W = C/(A + N)
         SUM = SUM + W
         IF (ABS(W) .GT. TOL) GO TO 100 
      BPSER = BPSER*(1.0 + A*SUM)
      RETURN
      END 
