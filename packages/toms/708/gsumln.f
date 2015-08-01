      REAL FUNCTION GSUMLN (A, B)
C-----------------------------------------------------------------------
C          EVALUATION OF THE FUNCTION LN(GAMMA(A + B))
C          FOR 1 .LE. A .LE. 2  AND  1 .LE. B .LE. 2
C-----------------------------------------------------------------------
      X = DBLE(A) + DBLE(B) - 2.D0
      IF (X .GT. 0.25) GO TO 10
         GSUMLN = GAMLN1(1.0 + X)
         RETURN
   10 IF (X .GT. 1.25) GO TO 20
         GSUMLN = GAMLN1(X) + ALNREL(X) 
         RETURN
   20 GSUMLN = GAMLN1(X - 1.0) + ALOG(X*(1.0 + X))
      RETURN
      END 
