      REAL*8 FUNCTION APSER (A, B, X, EPS)
      implicit double precision (A-H,O-Z)
C-----------------------------------------------------------------------
C     APSER YIELDS THE INCOMPLETE BETA RATIO I(SUB(1-X))(B,A) FOR
C     A .LE. MIN(EPS,EPS*B), B*X .LE. 1, AND X .LE. 0.5. USED WHEN
C     A IS VERY SMALL. USE ONLY IF ABOVE INEQUALITIES ARE SATISFIED.
C-----------------------------------------------------------------------
      REAL J
C--------------------
      DATA G/.577215664901533d0/
C--------------------
      BX = B*X
      T = X - BX
      IF (B*EPS .GT. 2.d-2) GO TO 10
         C = LOG(X) + PSI(B) + G + T
         GO TO 20
   10 C = LOG(BX) + G + T
C
   20 TOL = 5.0*EPS*ABS(C)
      J = 1.0
      S = 0.0
   30    J = J + 1.0
         T = T*(X - BX/J)
         AJ = T/J
         S = S + AJ 
         IF (ABS(AJ) .GT. TOL) GO TO 30 
C
      APSER = -A*(C + S)
      RETURN
      END 
