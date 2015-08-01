      SUBROUTINE BGRAT(A, B, X, Y, W, EPS, IERR)
C-----------------------------------------------------------------------
C     ASYMPTOTIC EXPANSION FOR IX(A,B) WHEN A IS LARGER THAN B.
C     THE RESULT OF THE EXPANSION IS ADDED TO W. IT IS ASSUMED
C     THAT A .GE. 15 AND B .LE. 1.  EPS IS THE TOLERANCE USED.
C     IERR IS A VARIABLE THAT REPORTS THE STATUS OF THE RESULTS.
C-----------------------------------------------------------------------
      REAL J, L, LNX, NU, N2
      REAL C(30), D(30)
C
      BM1 = (B - 0.5) - 0.5
      NU = A + 0.5*BM1
      IF (Y .GT. 0.375) GO TO 10
         LNX = ALNREL(-Y)
         GO TO 11
   10 LNX = ALOG(X) 
   11 Z = -NU*LNX
      IF (B*Z .EQ. 0.0) GO TO 100
C
C                 COMPUTATION OF THE EXPANSION
C                 SET R = EXP(-Z)*Z**B/GAMMA(B)
C
      R = B*(1.0 + GAM1(B))*EXP(B*ALOG(Z))
      R = R*EXP(A*LNX)*EXP(0.5*BM1*LNX) 
      U = ALGDIV(B,A) + B*ALOG(NU)
      U = R*EXP(-U) 
      IF (U .EQ. 0.0) GO TO 100
      CALL GRAT1(B,Z,R,P,Q,EPS)
C
      V = 0.25*(1.0/NU)**2
      T2 = 0.25*LNX*LNX
      L = W/U
      J = Q/R
      SUM = J
      T = 1.0
      CN = 1.0
      N2 = 0.0
      DO 22 N = 1,30
         BP2N = B + N2
         J = (BP2N*(BP2N + 1.0)*J + (Z + BP2N + 1.0)*T)*V
         N2 = N2 + 2.0
         T = T*T2
         CN = CN/(N2*(N2 + 1.0))
         C(N) = CN
         S = 0.0
         IF (N .EQ. 1) GO TO 21
            NM1 = N - 1
            COEF = B - N
            DO 20 I = 1,NM1
               S = S + COEF*C(I)*D(N-I) 
   20          COEF = COEF + B
   21    D(N) = BM1*CN + S/N
         DJ = D(N)*J
         SUM = SUM + DJ
         IF (SUM .LE. 0.0) GO TO 100
         IF (ABS(DJ) .LE. EPS*(SUM + L)) GO TO 30 
   22 CONTINUE
C
C                    ADD THE RESULTS TO W
C
   30 IERR = 0
      W = W + U*SUM 
      RETURN
C
C               THE EXPANSION CANNOT BE COMPUTED
C
  100 IERR = 1
      RETURN
      END 
