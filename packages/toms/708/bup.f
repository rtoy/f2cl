      REAL FUNCTION BUP(A, B, X, Y, N, EPS)
C-----------------------------------------------------------------------
C     EVALUATION OF IX(A,B) - IX(A+N,B) WHERE N IS A POSITIVE INTEGER.
C     EPS IS THE TOLERANCE USED.
C-----------------------------------------------------------------------
      REAL L
C
C          OBTAIN THE SCALING FACTOR EXP(-MU) AND 
C             EXP(MU)*(X**A*Y**B/BETA(A,B))/A
C
      APB = A + B
      AP1 = A + 1.0 
      MU = 0
      D = 1.0
      IF (N .EQ. 1 .OR. A .LT. 1.0) GO TO 10
      IF (APB .LT. 1.1*AP1) GO TO 10
         MU = ABS(EXPARG(1))
         K = EXPARG(0)
         IF (K .LT. MU) MU = K
         T = MU
         D = EXP(-T)
C
   10 BUP = BRCMP1(MU,A,B,X,Y)/A
      IF (N .EQ. 1 .OR. BUP .EQ. 0.0) RETURN
      NM1 = N - 1
      W = D
C
C          LET K BE THE INDEX OF THE MAXIMUM TERM 
C
      K = 0
      IF (B .LE. 1.0) GO TO 40
      IF (Y .GT. 1.E-4) GO TO 20
         K = NM1
         GO TO 30
   20 R = (B - 1.0)*X/Y - A
      IF (R .LT. 1.0) GO TO 40
      K = NM1
      T = NM1
      IF (R .LT. T) K = R
C
C          ADD THE INCREASING TERMS OF THE SERIES 
C
   30 DO 31 I = 1,K 
         L = I - 1
         D = ((APB + L)/(AP1 + L))*X*D
         W = W + D
   31 CONTINUE
      IF (K .EQ. NM1) GO TO 50
C
C          ADD THE REMAINING TERMS OF THE SERIES
C
   40 KP1 = K + 1
      DO 41 I = KP1,NM1
         L = I - 1
         D = ((APB + L)/(AP1 + L))*X*D
         W = W + D
         IF (D .LE. EPS*W) GO TO 50
   41 CONTINUE
C
C               TERMINATE THE PROCEDURE 
C
   50 BUP = BUP*W
      RETURN
      END 
