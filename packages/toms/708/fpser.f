      REAL FUNCTION FPSER (A, B, X, EPS)
C-----------------------------------------------------------------------
C
C                 EVALUATION OF I (A,B) 
C                                X
C
C          FOR B .LT. MIN(EPS,EPS*A) AND X .LE. 0.5.
C
C-----------------------------------------------------------------------
C
C                  SET  FPSER = X**A
C
      FPSER = 1.0
      IF (A .LE. 1.E-3*EPS) GO TO 10
      FPSER = 0.0
      T = A*ALOG(X) 
      IF (T .LT. EXPARG(1)) RETURN
      FPSER = EXP(T)
C
C                NOTE THAT 1/B(A,B) = B 
C
   10 FPSER = (B/A)*FPSER
      TOL = EPS/A
      AN = A + 1.0
      T = X
      S = T/AN
   20    AN = AN + 1.0
         T = X*T
         C = T/AN
         S = S + C
         IF (ABS(C) .GT. TOL) GO TO 20
C
      FPSER = FPSER*(1.0 + A*S)
      RETURN
      END 
