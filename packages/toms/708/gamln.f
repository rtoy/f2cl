      REAL FUNCTION GAMLN (A) 
C-----------------------------------------------------------------------
C            EVALUATION OF LN(GAMMA(A)) FOR POSITIVE A
C-----------------------------------------------------------------------
C     WRITTEN BY ALFRED H. MORRIS
C          NAVAL SURFACE WARFARE CENTER 
C          DAHLGREN, VIRGINIA 
C--------------------------
C     D = 0.5*(LN(2*PI) - 1)
C--------------------------
      DATA D/.418938533204673/
C--------------------------
      DATA C0/.833333333333333E-01/, C1/-.277777777760991E-02/,
     *     C2/.793650666825390E-03/, C3/-.595202931351870E-03/,
     *     C4/.837308034031215E-03/, C5/-.165322962780713E-02/
C-----------------------------------------------------------------------
      IF (A .GT. 0.8) GO TO 10
         GAMLN = GAMLN1(A) - ALOG(A)
         RETURN
   10 IF (A .GT. 2.25) GO TO 20
         T = (A - 0.5) - 0.5
         GAMLN = GAMLN1(T)
         RETURN
C
   20 IF (A .GE. 10.0) GO TO 30
      N = A - 1.25
      T = A
      W = 1.0
      DO 21 I = 1,N 
         T = T - 1.0
   21    W = T*W
      GAMLN = GAMLN1(T - 1.0) + ALOG(W) 
      RETURN
C
   30 T = (1.0/A)**2
      W = (((((C5*T + C4)*T + C3)*T + C2)*T + C1)*T + C0)/A 
      GAMLN = (D + W) + (A - 0.5)*(ALOG(A) - 1.0) 
      END 
