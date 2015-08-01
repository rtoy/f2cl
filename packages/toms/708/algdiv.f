      REAL FUNCTION ALGDIV (A, B)
C-----------------------------------------------------------------------
C
C     COMPUTATION OF LN(GAMMA(B)/GAMMA(A+B)) WHEN B .GE. 8
C
C                         --------
C
C     IN THIS ALGORITHM, DEL(X) IS THE FUNCTION DEFINED BY
C     LN(GAMMA(X)) = (X - 0.5)*LN(X) - X + 0.5*LN(2*PI) + DEL(X).
C
C-----------------------------------------------------------------------
      DATA C0/.833333333333333E-01/, C1/-.277777777760991E-02/,
     *     C2/.793650666825390E-03/, C3/-.595202931351870E-03/,
     *     C4/.837308034031215E-03/, C5/-.165322962780713E-02/
C------------------------
      IF (A .LE. B) GO TO 10
         H = B/A
         C = 1.0/(1.0 + H)
         X = H/(1.0 + H)
         D = A + (B - 0.5)
         GO TO 20
   10 H = A/B
      C = H/(1.0 + H)
      X = 1.0/(1.0 + H)
      D = B + (A - 0.5)
C
C                SET SN = (1 - X**N)/(1 - X)
C
   20 X2 = X*X
      S3 = 1.0 + (X + X2)
      S5 = 1.0 + (X + X2*S3)
      S7 = 1.0 + (X + X2*S5)
      S9 = 1.0 + (X + X2*S7)
      S11 = 1.0 + (X + X2*S9) 
C
C                SET W = DEL(B) - DEL(A + B)
C
      T = (1.0/B)**2
      W = ((((C5*S11*T + C4*S9)*T + C3*S7)*T + C2*S5)*T + C1*S3)*T + C0
      W = W*(C/B)
C
C                    COMBINE THE RESULTS
C
      U = D*ALNREL(A/B)
      V = A*(ALOG(B) - 1.0)
      IF (U .LE. V) GO TO 30
         ALGDIV = (W - V) - U 
         RETURN
   30 ALGDIV = (W - U) - V
      RETURN
      END 
