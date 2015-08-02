      REAL*8 FUNCTION BCORR (A0, B0)
      implicit double precision (A-H,O-Z)
C-----------------------------------------------------------------------
C
C     EVALUATION OF  DEL(A0) + DEL(B0) - DEL(A0 + B0)  WHERE
C     LN(GAMMA(A)) = (A - 0.5)*LN(A) - A + 0.5*LN(2*PI) + DEL(A).
C     IT IS ASSUMED THAT A0 .GE. 8 AND B0 .GE. 8. 
C
C-----------------------------------------------------------------------
      DATA C0/.833333333333333D-01/, C1/-.277777777760991D-02/,
     *     C2/.793650666825390D-03/, C3/-.595202931351870D-03/,
     *     C4/.837308034031215D-03/, C5/-.165322962780713D-02/
C------------------------
      A = AMIN1(A0, B0)
      B = AMAX1(A0, B0)
C
      H = A/B
      C = H/(1.0 + H)
      X = 1.0/(1.0 + H)
      X2 = X*X
C
C                SET SN = (1 - X**N)/(1 - X)
C
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
C                   COMPUTE  DEL(A) + W 
C
      T = (1.0/A)**2
      BCORR = (((((C5*T + C4)*T + C3)*T + C2)*T + C1)*T + C0)/A + W
      RETURN
      END 
