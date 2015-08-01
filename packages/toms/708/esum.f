      REAL*8 FUNCTION ESUM (MU, X)
      implicit double precision (A-H,O-Z)
C-----------------------------------------------------------------------
C                    EVALUATION OF EXP(MU + X)
C-----------------------------------------------------------------------
      IF (X .GT. 0.0) GO TO 10
C
      IF (MU .LT. 0) GO TO 20 
         W = MU + X 
         IF (W .GT. 0.0) GO TO 20
         ESUM = EXP(W)
         RETURN
C
   10 IF (MU .GT. 0) GO TO 20 
         W = MU + X 
         IF (W .LT. 0.0) GO TO 20
         ESUM = EXP(W)
         RETURN
C
   20 W = MU
      ESUM = EXP(W)*EXP(X)
      RETURN
      END 
