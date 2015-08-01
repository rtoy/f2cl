      REAL FUNCTION BFRAC(A, B, X, Y, LAMBDA, EPS)
C-----------------------------------------------------------------------
C     CONTINUED FRACTION EXPANSION FOR IX(A,B) WHEN A,B .GT. 1.
C     IT IS ASSUMED THAT  LAMBDA = (A + B)*Y - B. 
C-----------------------------------------------------------------------
      REAL LAMBDA, N
C--------------------
      BFRAC = BRCOMP(A,B,X,Y) 
      IF (BFRAC .EQ. 0.0) RETURN
C
      C = 1.0 + LAMBDA
      C0 = B/A
      C1 = 1.0 + 1.0/A
      YP1 = Y + 1.0 
C
      N = 0.0
      P = 1.0
      S = A + 1.0
      AN = 0.0
      BN = 1.0
      ANP1 = 1.0
      BNP1 = C/C1
      R = C1/C
C
C        CONTINUED FRACTION CALCULATION 
C
   10    N = N + 1.0
         T = N/A
         W = N*(B - N)*X
         E = A/S
         ALPHA = (P*(P + C0)*E*E)*(W*X) 
         E = (1.0 + T)/(C1 + T + T)
         BETA = N + W/S + E*(C + N*YP1) 
         P = 1.0 + T
         S = S + 2.0
C
C        UPDATE AN, BN, ANP1, AND BNP1
C
         T = ALPHA*AN + BETA*ANP1
         AN = ANP1
         ANP1 = T
         T = ALPHA*BN + BETA*BNP1
         BN = BNP1
         BNP1 = T
C
         R0 = R
         R = ANP1/BNP1
         IF (ABS(R - R0) .LE. EPS*R) GO TO 20
C
C        RESCALE AN, BN, ANP1, AND BNP1 
C
         AN = AN/BNP1
         BN = BN/BNP1
         ANP1 = R
         BNP1 = 1.0 
         GO TO 10
C
C                 TERMINATION 
C
   20 BFRAC = BFRAC*R
      RETURN
      END 
