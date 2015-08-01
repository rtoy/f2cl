      REAL FUNCTION BASYM(A, B, LAMBDA, EPS)
C-----------------------------------------------------------------------
C     ASYMPTOTIC EXPANSION FOR IX(A,B) FOR LARGE A AND B.
C     LAMBDA = (A + B)*Y - B  AND EPS IS THE TOLERANCE USED.
C     IT IS ASSUMED THAT LAMBDA IS NONNEGATIVE AND THAT
C     A AND B ARE GREATER THAN OR EQUAL TO 15.
C-----------------------------------------------------------------------
      REAL J0, J1, LAMBDA
      REAL A0(21), B0(21), C(21), D(21) 
C------------------------
C     ****** NUM IS THE MAXIMUM VALUE THAT N CAN TAKE IN THE DO LOOP
C            ENDING AT STATEMENT 50. IT IS REQUIRED THAT NUM BE EVEN. 
C            THE ARRAYS A0, B0, C, D HAVE DIMENSION NUM + 1.
C
                      DATA NUM/20/
C------------------------
C     E0 = 2/SQRT(PI)
C     E1 = 2**(-3/2)
C------------------------
      DATA E0/1.12837916709551/, E1/.353553390593274/
C------------------------
      BASYM = 0.0
      IF (A .GE. B) GO TO 10
         H = A/B
         R0 = 1.0/(1.0 + H)
         R1 = (B - A)/B
         W0 = 1.0/SQRT(A*(1.0 + H))
         GO TO 20
   10 H = B/A
      R0 = 1.0/(1.0 + H)
      R1 = (B - A)/A
      W0 = 1.0/SQRT(B*(1.0 + H))
C
   20 F = A*RLOG1(-LAMBDA/A) + B*RLOG1(LAMBDA/B)
      T = EXP(-F)
      IF (T .EQ. 0.0) RETURN
      Z0 = SQRT(F)
      Z = 0.5*(Z0/E1)
      Z2 = F + F
C
      A0(1) = (2.0/3.0)*R1
      C(1) = - 0.5*A0(1)
      D(1) = - C(1) 
      J0 = (0.5/E0)*ERFC1(1,Z0)
      J1 = E1
      SUM = J0 + D(1)*W0*J1
C
      S = 1.0
      H2 = H*H
      HN = 1.0
      W = W0
      ZNM1 = Z
      ZN = Z2
      DO 50 N = 2, NUM, 2
         HN = H2*HN 
         A0(N) = 2.0*R0*(1.0 + H*HN)/(N + 2.0)
         NP1 = N + 1
         S = S + HN 
         A0(NP1) = 2.0*R1*S/(N + 3.0)
C
         DO 41 I = N, NP1
         R = -0.5*(I + 1.0)
         B0(1) = R*A0(1)
         DO 31 M = 2, I
            BSUM = 0.0
            MM1 = M - 1
            DO 30 J = 1, MM1
               MMJ = M - J
   30          BSUM = BSUM + (J*R - MMJ)*A0(J)*B0(MMJ)
   31       B0(M) = R*A0(M) + BSUM/M
         C(I) = B0(I)/(I + 1.0)
C
         DSUM = 0.0 
         IM1 = I - 1
         DO 40 J = 1, IM1
            IMJ = I - J
   40       DSUM = DSUM + D(IMJ)*C(J)
   41    D(I) = -(DSUM + C(I))
C
         J0 = E1*ZNM1 + (N - 1.0)*J0
         J1 = E1*ZN + N*J1
         ZNM1 = Z2*ZNM1
         ZN = Z2*ZN 
         W = W0*W
         T0 = D(N)*W*J0
         W = W0*W
         T1 = D(NP1)*W*J1
         SUM = SUM + (T0 + T1)
         IF ((ABS(T0) + ABS(T1)) .LE. EPS*SUM) GO TO 60
   50    CONTINUE
C
   60 U = EXP(-BCORR(A,B))
      BASYM = E0*T*U*SUM
      RETURN
      END 
