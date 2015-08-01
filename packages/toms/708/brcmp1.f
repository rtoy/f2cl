      REAL*8 FUNCTION BRCMP1 (MU, A, B, X, Y)
      implicit double precision (A-H,O-Z)
C-----------------------------------------------------------------------
C          EVALUATION OF  EXP(MU) * (X**A*Y**B/BETA(A,B))
C-----------------------------------------------------------------------
      REAL*8 LAMBDA, LNX, LNY
C-----------------
C     CONST = 1/SQRT(2*PI)
C-----------------
      DATA CONST/.398942280401433d0/
C
      A0 = AMIN1(A,B)
      IF (A0 .GE. 8.0) GO TO 100
C
      IF (X .GT. 0.375) GO TO 10
         LNX = LOG(X)
         LNY = ALNREL(-X)
         GO TO 20
   10 IF (Y .GT. 0.375) GO TO 11
         LNX = ALNREL(-Y)
         LNY = LOG(Y)
         GO TO 20
   11 LNX = LOG(X) 
      LNY = LOG(Y) 
C
   20 Z = A*LNX + B*LNY
      IF (A0 .LT. 1.0) GO TO 30
      Z = Z - BETALN(A,B)
      BRCMP1 = ESUM(MU,Z)
      RETURN
C-----------------------------------------------------------------------
C              PROCEDURE FOR A .LT. 1 OR B .LT. 1 
C-----------------------------------------------------------------------
   30 B0 = AMAX1(A,B)
      IF (B0 .GE. 8.0) GO TO 80
      IF (B0 .GT. 1.0) GO TO 60
C
C                   ALGORITHM FOR B0 .LE. 1
C
      BRCMP1 = ESUM(MU,Z)
      IF (BRCMP1 .EQ. 0.0) RETURN
C
      APB = A + B
      IF (APB .GT. 1.0) GO TO 40
         Z = 1.0 + GAM1(APB)
         GO TO 50
   40 U = DBLE(A) + DBLE(B) - 1.D0
      Z = (1.0 + GAM1(U))/APB 
C
   50 C = (1.0 + GAM1(A))*(1.0 + GAM1(B))/Z
      BRCMP1 = BRCMP1*(A0*C)/(1.0 + A0/B0)
      RETURN
C
C                ALGORITHM FOR 1 .LT. B0 .LT. 8
C
   60 U = GAMLN1(A0)
      N = B0 - 1.0
      IF (N .LT. 1) GO TO 70
      C = 1.0
      DO 61 I = 1,N 
         B0 = B0 - 1.0
         C = C*(B0/(A0 + B0)) 
   61 CONTINUE
      U = LOG(C) + U
C
   70 Z = Z - U
      B0 = B0 - 1.0 
      APB = A0 + B0 
      IF (APB .GT. 1.0) GO TO 71
         T = 1.0 + GAM1(APB)
         GO TO 72
   71 U = DBLE(A0) + DBLE(B0) - 1.D0
      T = (1.0 + GAM1(U))/APB 
   72 BRCMP1 = A0*ESUM(MU,Z)*(1.0 + GAM1(B0))/T
      RETURN
C
C                   ALGORITHM FOR B0 .GE. 8
C
   80 U = GAMLN1(A0) + ALGDIV(A0,B0)
      BRCMP1 = A0*ESUM(MU,Z - U)
      RETURN
C-----------------------------------------------------------------------
C              PROCEDURE FOR A .GE. 8 AND B .GE. 8
C-----------------------------------------------------------------------
  100 IF (A .GT. B) GO TO 101 
         H = A/B
         X0 = H/(1.0 + H)
         Y0 = 1.0/(1.0 + H)
         LAMBDA = A - (A + B)*X
         GO TO 110
  101 H = B/A
      X0 = 1.0/(1.0 + H)
      Y0 = H/(1.0 + H)
      LAMBDA = (A + B)*Y - B
C
  110 E = -LAMBDA/A 
      IF (ABS(E) .GT. 0.6) GO TO 111
         U = RLOG1(E)
         GO TO 120
  111 U = E - LOG(X/X0)
C
  120 E = LAMBDA/B
      IF (ABS(E) .GT. 0.6) GO TO 121
         V = RLOG1(E)
         GO TO 130
  121 V = E - LOG(Y/Y0)
C
  130 Z = ESUM(MU,-(A*U + B*V))
      BRCMP1 = CONST*SQRT(B*X0)*Z*EXP(-BCORR(A,B))
      RETURN
      END 
