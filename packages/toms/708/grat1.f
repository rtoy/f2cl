      SUBROUTINE GRAT1 (A,X,R,P,Q,EPS)
      REAL J, L
C-----------------------------------------------------------------------
C        EVALUATION OF THE INCOMPLETE GAMMA RATIO FUNCTIONS 
C                      P(A,X) AND Q(A,X)
C
C     IT IS ASSUMED THAT A .LE. 1.  EPS IS THE TOLERANCE TO BE USED.
C     THE INPUT ARGUMENT R HAS THE VALUE E**(-X)*X**A/GAMMA(A).
C-----------------------------------------------------------------------
      IF (A*X .EQ. 0.0) GO TO 130
      IF (A .EQ. 0.5) GO TO 120
      IF (X .LT. 1.1) GO TO 10
      GO TO 50
C
C             TAYLOR SERIES FOR P(A,X)/X**A
C
   10 AN = 3.0
      C = X
      SUM = X/(A + 3.0)
      TOL = 0.1*EPS/(A + 1.0) 
   11    AN = AN + 1.0
         C = -C*(X/AN)
         T = C/(A + AN)
         SUM = SUM + T
         IF (ABS(T) .GT. TOL) GO TO 11
      J = A*X*((SUM/6.0 - 0.5/(A + 2.0))*X + 1.0/(A + 1.0)) 
C
      Z = A*ALOG(X) 
      H = GAM1(A)
      G = 1.0 + H
      IF (X .LT. 0.25) GO TO 20
         IF (A .LT. X/2.59) GO TO 40
         GO TO 30
   20 IF (Z .GT. -.13394) GO TO 40
C
   30 W = EXP(Z)
      P = W*G*(0.5 + (0.5 - J))
      Q = 0.5 + (0.5 - P)
      RETURN
C
   40 L = REXP(Z)
      W = 0.5 + (0.5 + L)
      Q = (W*J - L)*G - H
      IF (Q .LT. 0.0) GO TO 110
      P = 0.5 + (0.5 - Q)
      RETURN
C
C              CONTINUED FRACTION EXPANSION
C
   50 A2NM1 = 1.0
      A2N = 1.0
      B2NM1 = X
      B2N = X + (1.0 - A)
      C = 1.0
   51    A2NM1 = X*A2N + C*A2NM1
         B2NM1 = X*B2N + C*B2NM1
         AM0 = A2NM1/B2NM1
         C = C + 1.0
         CMA = C - A
         A2N = A2NM1 + CMA*A2N
         B2N = B2NM1 + CMA*B2N
         AN0 = A2N/B2N
         IF (ABS(AN0 - AM0) .GE. EPS*AN0) GO TO 51
      Q = R*AN0
      P = 0.5 + (0.5 - Q)
      RETURN
C
C                SPECIAL CASES
C
  100 P = 0.0
      Q = 1.0
      RETURN
C
  110 P = 1.0
      Q = 0.0
      RETURN
C
  120 IF (X .GE. 0.25) GO TO 121
      P = ERF(SQRT(X))
      Q = 0.5 + (0.5 - P)
      RETURN
  121 Q = ERFC1(0,SQRT(X))
      P = 0.5 + (0.5 - Q)
      RETURN
C
  130 IF (X .LE. A) GO TO 100 
      GO TO 110
      END 
