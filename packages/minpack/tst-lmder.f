      program tlmder
C     **********
C
C     THIS PROGRAM TESTS CODES FOR THE LEAST-SQUARES SOLUTION OF
C     M NONLINEAR EQUATIONS IN N VARIABLES. IT CONSISTS OF A DRIVER
C     AND AN INTERFACE SUBROUTINE FCN. THE DRIVER READS IN DATA,
C     CALLS THE NONLINEAR LEAST-SQUARES SOLVER, AND FINALLY PRINTS
C     OUT INFORMATION ON THE PERFORMANCE OF THE SOLVER. THIS IS
C     ONLY A SAMPLE DRIVER, MANY OTHER DRIVERS ARE POSSIBLE. THE
C     INTERFACE SUBROUTINE FCN IS NECESSARY TO TAKE INTO ACCOUNT THE
C     FORMS OF CALLING SEQUENCES USED BY THE FUNCTION AND JACOBIAN
C     SUBROUTINES IN THE VARIOUS NONLINEAR LEAST-SQUARES SOLVERS.
C
C     SUBPROGRAMS CALLED
C
C       USER-SUPPLIED ...... FCN
C
C       MINPACK-SUPPLIED ... DPMPAR,ENORM,INITPT,LMDER1,SSQFCN
C
C       FORTRAN-SUPPLIED ... DSQRT
C
C     ARGONNE NATIONAL LABORATORY. MINPACK PROJECT. MARCH 1980.
C     BURTON S. GARBOW, KENNETH E. HILLSTROM, JORGE J. MORE
C
C     **********
      INTEGER I,IC,INFO,K,LDFJAC,LWA,M,N,NFEV,NJEV,NPROB,NREAD,NTRIES,
     *        NWRITE
      INTEGER IWA(40),MA(60),NA(60),NF(60),NJ(60),NP(60),NX(60)
      DOUBLE PRECISION FACTOR,FNORM1,FNORM2,ONE,TEN,TOL
      DOUBLE PRECISION FJAC(65,40),FNM(60),FVEC(65),WA(265),X(40)
      DOUBLE PRECISION DPMPAR,ENORM
      EXTERNAL FCNJ
      COMMON /REFNUM/ NPROB,NFEV,NJEV
C
C     LOGICAL INPUT UNIT IS ASSUMED TO BE NUMBER 5.
C     LOGICAL OUTPUT UNIT IS ASSUMED TO BE NUMBER 6.
C
      DATA NREAD,NWRITE /5,6/
C
      DATA ONE,TEN /1.0D0,1.0D1/
      TOL = DSQRT(DPMPAR(1))
      LDFJAC = 65
      LWA = 265
      IC = 0
   10 CONTINUE
c
c     Describe the possible functions
c
      print *, 'Enter prob no, dimensions m, n, and the number of 
     $     tries'
      print *, ' 1: linear function, full rank. m >= n'
      print *, ' 2: linear function, rank 1. m >= n'
      print *, ' 3: linear function, rank 1, zero cols, rows. m >= n'
      print *, ' 4: Rosenbrock, m=2, n=2'
      print *, ' 5: Helical valley, m=3, n=3'
      print *, ' 6: Powell singular, m=4, n=4'
      print *, ' 7: Freudenstein and Roth, m=2, n=2'
      print *, ' 8: Bard, m=15, n=3'
      print *, ' 9: Kowalik and Osborne, m=11, n=4'
      print *, '10: Meyer, m=16, n=3'
      print *, '11: Watson, m=31, n=2-31 (6 or 9 typical)'
      print *, '12: Box 3-D, m>=n, n=3. (m=10 typical)'
      print *, '13: Jennrich and Sampson, m>=n, n=2. (m=10 typical)'
      print *, '14: Brown and Dennis, m>=n, n=4. (m=20 typical)'
      print *, '15: Chebyquad, m>=n'
      print *, '16: Brown almost-linear, m=n'
      print *, '17: Osborne 1 function, m=33, n=5'
      print *, '18: Osborne 2 function, m=65, n=11'
      print *, '-1: exit'

         READ (NREAD,*) NPROB,N,M,NTRIES
         IF (NPROB .LE. 0) GO TO 30
         FACTOR = ONE
         DO 20 K = 1, NTRIES
            IC = IC + 1
            CALL INITPT(N,X,NPROB,FACTOR)
            CALL SSQFCN(M,N,X,FVEC,NPROB)
            FNORM1 = ENORM(M,FVEC)
            WRITE (NWRITE,60) NPROB,N,M
            NFEV = 0
            NJEV = 0
            CALL LMDER1(FCNJ,M,N,X,FVEC,FJAC,LDFJAC,TOL,INFO,IWA,WA,
     *                  LWA)
            CALL SSQFCN(M,N,X,FVEC,NPROB)
            FNORM2 = ENORM(M,FVEC)
            NP(IC) = NPROB
            NA(IC) = N
            MA(IC) = M
            NF(IC) = NFEV
            NJ(IC) = NJEV
            NX(IC) = INFO
            FNM(IC) = FNORM2
            WRITE (NWRITE,70)
     *            FNORM1,FNORM2,NFEV,NJEV,INFO,(X(I), I = 1, N)
            FACTOR = TEN*FACTOR
   20       CONTINUE
         GO TO 10
   30 CONTINUE
      WRITE (NWRITE,80) IC
      WRITE (NWRITE,90)
      DO 40 I = 1, IC
         WRITE (NWRITE,100) NP(I),NA(I),MA(I),NF(I),NJ(I),NX(I),FNM(I)
   40    CONTINUE
      STOP
   50 FORMAT (4I5)
   60 FORMAT ( //// 5X, 8H PROBLEM, I5, 5X, 11H DIMENSIONS, 2I5, 5X //
     *         )
   70 FORMAT (5X, 33H INITIAL L2 NORM OF THE RESIDUALS, D15.7 // 5X,
     *        33H FINAL L2 NORM OF THE RESIDUALS  , D15.7 // 5X,
     *        33H NUMBER OF FUNCTION EVALUATIONS  , I10 // 5X,
     *        33H NUMBER OF JACOBIAN EVALUATIONS  , I10 // 5X,
     *        15H EXIT PARAMETER, 18X, I10 // 5X,
     *        27H FINAL APPROXIMATE SOLUTION // (5X, 5D15.7))
   80 FORMAT (12H1SUMMARY OF , I3, 16H CALLS TO LMDER1 /)
   90 FORMAT (49H NPROB   N    M   NFEV  NJEV  INFO  FINAL L2 NORM /)
  100 FORMAT (3I5, 3I6, 1X, D15.7)
C
C     LAST CARD OF DRIVER.
C
      END
      SUBROUTINE FCNJ(M,N,X,FVEC,FJAC,LDFJAC,IFLAG)
      INTEGER M,N,LDFJAC,IFLAG
      DOUBLE PRECISION X(N),FVEC(M),FJAC(LDFJAC,N)
C     **********
C
C     THE CALLING SEQUENCE OF FCN SHOULD BE IDENTICAL TO THE
C     CALLING SEQUENCE OF THE FUNCTION SUBROUTINE IN THE NONLINEAR
C     LEAST-SQUARES SOLVER. FCN SHOULD ONLY CALL THE TESTING
C     FUNCTION AND JACOBIAN SUBROUTINES SSQFCN AND SSQJAC WITH
C     THE APPROPRIATE VALUE OF PROBLEM NUMBER (NPROB).
C
C     SUBPROGRAMS CALLED
C
C       MINPACK-SUPPLIED ... SSQFCN,SSQJAC
C
C     ARGONNE NATIONAL LABORATORY. MINPACK PROJECT. MARCH 1980.
C     BURTON S. GARBOW, KENNETH E. HILLSTROM, JORGE J. MORE
C
C     **********
      INTEGER NPROB,NFEV,NJEV
      COMMON /REFNUM/ NPROB,NFEV,NJEV
      IF (IFLAG .EQ. 1) CALL SSQFCN(M,N,X,FVEC,NPROB)
      IF (IFLAG .EQ. 2) CALL SSQJAC(M,N,X,FJAC,LDFJAC,NPROB)
      IF (IFLAG .EQ. 1) NFEV = NFEV + 1
      IF (IFLAG .EQ. 2) NJEV = NJEV + 1
      RETURN
C
C     LAST CARD OF INTERFACE SUBROUTINE FCN.
C
      END
      SUBROUTINE SSQJAC(M,N,X,FJAC,LDFJAC,NPROB)
      INTEGER M,N,LDFJAC,NPROB
      DOUBLE PRECISION X(N),FJAC(LDFJAC,N)
C     **********
C
C     SUBROUTINE SSQJAC
C
C     THIS SUBROUTINE DEFINES THE JACOBIAN MATRICES OF EIGHTEEN
C     NONLINEAR LEAST SQUARES PROBLEMS. THE PROBLEM DIMENSIONS ARE
C     AS DESCRIBED IN THE PROLOGUE COMMENTS OF SSQFCN.
C
C     THE SUBROUTINE STATEMENT IS
C
C       SUBROUTINE SSQJAC(M,N,X,FJAC,LDFJAC,NPROB)
C
C     WHERE
C
C       M AND N ARE POSITIVE INTEGER INPUT VARIABLES. N MUST NOT
C         EXCEED M.
C
C       X IS AN INPUT ARRAY OF LENGTH N.
C
C       FJAC IS AN M BY N OUTPUT ARRAY WHICH CONTAINS THE JACOBIAN
C         MATRIX OF THE NPROB FUNCTION EVALUATED AT X.
C
C       LDFJAC IS A POSITIVE INTEGER INPUT VARIABLE NOT LESS THAN M
C         WHICH SPECIFIES THE LEADING DIMENSION OF THE ARRAY FJAC.
C
C       NPROB IS A POSITIVE INTEGER VARIABLE WHICH DEFINES THE
C         NUMBER OF THE PROBLEM. NPROB MUST NOT EXCEED 18.
C
C     SUBPROGRAMS CALLED
C
C       FORTRAN-SUPPLIED ... DATAN,DCOS,DEXP,DSIN,DSQRT
C
C     ARGONNE NATIONAL LABORATORY. MINPACK PROJECT. MARCH 1980.
C     BURTON S. GARBOW, KENNETH E. HILLSTROM, JORGE J. MORE
C
C     **********
      INTEGER I,IVAR,J,K,MM1,NM1
      DOUBLE PRECISION C14,C20,C29,C45,C100,DIV,DX,EIGHT,FIVE,FOUR,
     *                 ONE,PROD,S2,TEMP,TEN,THREE,TI,TMP1,TMP2,TMP3,
     *                 TMP4,TPI,TWO,ZERO
      DOUBLE PRECISION V(11)
      DOUBLE PRECISION DFLOAT
      DATA ZERO,ONE,TWO,THREE,FOUR,FIVE,EIGHT,TEN,C14,C20,C29,C45,C100
     *     /0.0D0,1.0D0,2.0D0,3.0D0,4.0D0,5.0D0,8.0D0,1.0D1,1.4D1,
     *      2.0D1,2.9D1,4.5D1,1.0D2/
      DATA V(1),V(2),V(3),V(4),V(5),V(6),V(7),V(8),V(9),V(10),V(11)
     *     /4.0D0,2.0D0,1.0D0,5.0D-1,2.5D-1,1.67D-1,1.25D-1,1.0D-1,
     *      8.33D-2,7.14D-2,6.25D-2/
      DFLOAT(IVAR) = IVAR
C
C     JACOBIAN ROUTINE SELECTOR.
C
      GO TO (10,40,70,130,140,150,180,190,210,230,250,310,330,350,370,
     *       400,460,480), NPROB
C
C     LINEAR FUNCTION - FULL RANK.
C
   10 CONTINUE
      TEMP = TWO/DFLOAT(M)
      DO 30 J = 1, N
         DO 20 I = 1, M
            FJAC(I,J) = -TEMP
   20       CONTINUE
         FJAC(J,J) = FJAC(J,J) + ONE
   30    CONTINUE
      GO TO 500
C
C     LINEAR FUNCTION - RANK 1.
C
   40 CONTINUE
      DO 60 J = 1, N
         DO 50 I = 1, M
            FJAC(I,J) = DFLOAT(I)*DFLOAT(J)
   50       CONTINUE
   60    CONTINUE
      GO TO 500
C
C     LINEAR FUNCTION - RANK 1 WITH ZERO COLUMNS AND ROWS.
C
   70 CONTINUE
      DO 90 J = 1, N
         DO 80 I = 1, M
            FJAC(I,J) = ZERO
   80       CONTINUE
   90    CONTINUE
      NM1 = N - 1
      MM1 = M - 1
      IF (NM1 .LT. 2) GO TO 120
      DO 110 J = 2, NM1
         DO 100 I = 2, MM1
            FJAC(I,J) = DFLOAT(I-1)*DFLOAT(J)
  100       CONTINUE
  110    CONTINUE
  120 CONTINUE
      GO TO 500
C
C     ROSENBROCK FUNCTION.
C
  130 CONTINUE
      FJAC(1,1) = -C20*X(1)
      FJAC(1,2) = TEN
      FJAC(2,1) = -ONE
      FJAC(2,2) = ZERO
      GO TO 500
C
C     HELICAL VALLEY FUNCTION.
C
  140 CONTINUE
      TPI = EIGHT*DATAN(ONE)
      TEMP = X(1)**2 + X(2)**2
      TMP1 = TPI*TEMP
      TMP2 = DSQRT(TEMP)
      FJAC(1,1) = C100*X(2)/TMP1
      FJAC(1,2) = -C100*X(1)/TMP1
      FJAC(1,3) = TEN
      FJAC(2,1) = TEN*X(1)/TMP2
      FJAC(2,2) = TEN*X(2)/TMP2
      FJAC(2,3) = ZERO
      FJAC(3,1) = ZERO
      FJAC(3,2) = ZERO
      FJAC(3,3) = ONE
      GO TO 500
C
C     POWELL SINGULAR FUNCTION.
C
  150 CONTINUE
      DO 170 J = 1, 4
         DO 160 I = 1, 4
            FJAC(I,J) = ZERO
  160       CONTINUE
  170    CONTINUE
      FJAC(1,1) = ONE
      FJAC(1,2) = TEN
      FJAC(2,3) = DSQRT(FIVE)
      FJAC(2,4) = -FJAC(2,3)
      FJAC(3,2) = TWO*(X(2) - TWO*X(3))
      FJAC(3,3) = -TWO*FJAC(3,2)
      FJAC(4,1) = TWO*DSQRT(TEN)*(X(1) - X(4))
      FJAC(4,4) = -FJAC(4,1)
      GO TO 500
C
C     FREUDENSTEIN AND ROTH FUNCTION.
C
  180 CONTINUE
      FJAC(1,1) = ONE
      FJAC(1,2) = X(2)*(TEN - THREE*X(2)) - TWO
      FJAC(2,1) = ONE
      FJAC(2,2) = X(2)*(TWO + THREE*X(2)) - C14
      GO TO 500
C
C     BARD FUNCTION.
C
  190 CONTINUE
      DO 200 I = 1, 15
         TMP1 = DFLOAT(I)
         TMP2 = DFLOAT(16-I)
         TMP3 = TMP1
         IF (I .GT. 8) TMP3 = TMP2
         TMP4 = (X(2)*TMP2 + X(3)*TMP3)**2
         FJAC(I,1) = -ONE
         FJAC(I,2) = TMP1*TMP2/TMP4
         FJAC(I,3) = TMP1*TMP3/TMP4
  200    CONTINUE
      GO TO 500
C
C     KOWALIK AND OSBORNE FUNCTION.
C
  210 CONTINUE
      DO 220 I = 1, 11
         TMP1 = V(I)*(V(I) + X(2))
         TMP2 = V(I)*(V(I) + X(3)) + X(4)
         FJAC(I,1) = -TMP1/TMP2
         FJAC(I,2) = -V(I)*X(1)/TMP2
         FJAC(I,3) = FJAC(I,1)*FJAC(I,2)
         FJAC(I,4) = FJAC(I,3)/V(I)
  220    CONTINUE
      GO TO 500
C
C     MEYER FUNCTION.
C
  230 CONTINUE
      DO 240 I = 1, 16
         TEMP = FIVE*DFLOAT(I) + C45 + X(3)
         TMP1 = X(2)/TEMP
         TMP2 = DEXP(TMP1)
         FJAC(I,1) = TMP2
         FJAC(I,2) = X(1)*TMP2/TEMP
         FJAC(I,3) = -TMP1*FJAC(I,2)
  240    CONTINUE
      GO TO 500
C
C     WATSON FUNCTION.
C
  250 CONTINUE
      DO 280 I = 1, 29
         DIV = DFLOAT(I)/C29
         S2 = ZERO
         DX = ONE
         DO 260 J = 1, N
            S2 = S2 + DX*X(J)
            DX = DIV*DX
  260       CONTINUE
         TEMP = TWO*DIV*S2
         DX = ONE/DIV
         DO 270 J = 1, N
            FJAC(I,J) = DX*(DFLOAT(J-1) - TEMP)
            DX = DIV*DX
  270       CONTINUE
  280    CONTINUE
      DO 300 J = 1, N
         DO 290 I = 30, 31
            FJAC(I,J) = ZERO
  290       CONTINUE
  300    CONTINUE
      FJAC(30,1) = ONE
      FJAC(31,1) = -TWO*X(1)
      FJAC(31,2) = ONE
      GO TO 500
C
C     BOX 3-DIMENSIONAL FUNCTION.
C
  310 CONTINUE
      DO 320 I = 1, M
         TEMP = DFLOAT(I)
         TMP1 = TEMP/TEN
         FJAC(I,1) = -TMP1*DEXP(-TMP1*X(1))
         FJAC(I,2) = TMP1*DEXP(-TMP1*X(2))
         FJAC(I,3) = DEXP(-TEMP) - DEXP(-TMP1)
  320    CONTINUE
      GO TO 500
C
C     JENNRICH AND SAMPSON FUNCTION.
C
  330 CONTINUE
      DO 340 I = 1, M
         TEMP = DFLOAT(I)
         FJAC(I,1) = -TEMP*DEXP(TEMP*X(1))
         FJAC(I,2) = -TEMP*DEXP(TEMP*X(2))
  340    CONTINUE
      GO TO 500
C
C     BROWN AND DENNIS FUNCTION.
C
  350 CONTINUE
      DO 360 I = 1, M
         TEMP = DFLOAT(I)/FIVE
         TI = DSIN(TEMP)
         TMP1 = X(1) + TEMP*X(2) - DEXP(TEMP)
         TMP2 = X(3) + TI*X(4) - DCOS(TEMP)
         FJAC(I,1) = TWO*TMP1
         FJAC(I,2) = TEMP*FJAC(I,1)
         FJAC(I,3) = TWO*TMP2
         FJAC(I,4) = TI*FJAC(I,3)
  360    CONTINUE
      GO TO 500
C
C     CHEBYQUAD FUNCTION.
C
  370 CONTINUE
      DX = ONE/DFLOAT(N)
      DO 390 J = 1, N
         TMP1 = ONE
         TMP2 = TWO*X(J) - ONE
         TEMP = TWO*TMP2
         TMP3 = ZERO
         TMP4 = TWO
         DO 380 I = 1, M
            FJAC(I,J) = DX*TMP4
            TI = FOUR*TMP2 + TEMP*TMP4 - TMP3
            TMP3 = TMP4
            TMP4 = TI
            TI = TEMP*TMP2 - TMP1
            TMP1 = TMP2
            TMP2 = TI
  380       CONTINUE
  390    CONTINUE
      GO TO 500
C
C     BROWN ALMOST-LINEAR FUNCTION.
C
  400 CONTINUE
      PROD = ONE
      DO 420 J = 1, N
         PROD = X(J)*PROD
         DO 410 I = 1, N
            FJAC(I,J) = ONE
  410       CONTINUE
         FJAC(J,J) = TWO
  420    CONTINUE
      DO 450 J = 1, N
         TEMP = X(J)
         IF (TEMP .NE. ZERO) GO TO 440
         TEMP = ONE
         PROD = ONE
         DO 430 K = 1, N
            IF (K .NE. J) PROD = X(K)*PROD
  430       CONTINUE
  440    CONTINUE
         FJAC(N,J) = PROD/TEMP
  450    CONTINUE
      GO TO 500
C
C     OSBORNE 1 FUNCTION.
C
  460 CONTINUE
      DO 470 I = 1, 33
         TEMP = TEN*DFLOAT(I-1)
         TMP1 = DEXP(-X(4)*TEMP)
         TMP2 = DEXP(-X(5)*TEMP)
         FJAC(I,1) = -ONE
         FJAC(I,2) = -TMP1
         FJAC(I,3) = -TMP2
         FJAC(I,4) = TEMP*X(2)*TMP1
         FJAC(I,5) = TEMP*X(3)*TMP2
  470    CONTINUE
      GO TO 500
C
C     OSBORNE 2 FUNCTION.
C
  480 CONTINUE
      DO 490 I = 1, 65
         TEMP = DFLOAT(I-1)/TEN
         TMP1 = DEXP(-X(5)*TEMP)
         TMP2 = DEXP(-X(6)*(TEMP-X(9))**2)
         TMP3 = DEXP(-X(7)*(TEMP-X(10))**2)
         TMP4 = DEXP(-X(8)*(TEMP-X(11))**2)
         FJAC(I,1) = -TMP1
         FJAC(I,2) = -TMP2
         FJAC(I,3) = -TMP3
         FJAC(I,4) = -TMP4
         FJAC(I,5) = TEMP*X(1)*TMP1
         FJAC(I,6) = X(2)*(TEMP - X(9))**2*TMP2
         FJAC(I,7) = X(3)*(TEMP - X(10))**2*TMP3
         FJAC(I,8) = X(4)*(TEMP - X(11))**2*TMP4
         FJAC(I,9) = -TWO*X(2)*X(6)*(TEMP - X(9))*TMP2
         FJAC(I,10) = -TWO*X(3)*X(7)*(TEMP - X(10))*TMP3
         FJAC(I,11) = -TWO*X(4)*X(8)*(TEMP - X(11))*TMP4
  490    CONTINUE
  500 CONTINUE
      RETURN
C
C     LAST CARD OF SUBROUTINE SSQJAC.
C
      END
      SUBROUTINE INITPT(N,X,NPROB,FACTOR)
      INTEGER N,NPROB
      DOUBLE PRECISION FACTOR
      DOUBLE PRECISION X(N)
C     **********
C
C     SUBROUTINE INITPT
C
C     THIS SUBROUTINE SPECIFIES THE STANDARD STARTING POINTS FOR THE
C     FUNCTIONS DEFINED BY SUBROUTINE SSQFCN. THE SUBROUTINE RETURNS
C     IN X A MULTIPLE (FACTOR) OF THE STANDARD STARTING POINT. FOR
C     THE 11TH FUNCTION THE STANDARD STARTING POINT IS ZERO, SO IN
C     THIS CASE, IF FACTOR IS NOT UNITY, THEN THE SUBROUTINE RETURNS
C     THE VECTOR  X(J) = FACTOR, J=1,...,N.
C
C     THE SUBROUTINE STATEMENT IS
C
C       SUBROUTINE INITPT(N,X,NPROB,FACTOR)
C
C     WHERE
C
C       N IS A POSITIVE INTEGER INPUT VARIABLE.
C
C       X IS AN OUTPUT ARRAY OF LENGTH N WHICH CONTAINS THE STANDARD
C         STARTING POINT FOR PROBLEM NPROB MULTIPLIED BY FACTOR.
C
C       NPROB IS A POSITIVE INTEGER INPUT VARIABLE WHICH DEFINES THE
C         NUMBER OF THE PROBLEM. NPROB MUST NOT EXCEED 18.
C
C       FACTOR IS AN INPUT VARIABLE WHICH SPECIFIES THE MULTIPLE OF
C         THE STANDARD STARTING POINT. IF FACTOR IS UNITY, NO
C         MULTIPLICATION IS PERFORMED.
C
C     ARGONNE NATIONAL LABORATORY. MINPACK PROJECT. MARCH 1980.
C     BURTON S. GARBOW, KENNETH E. HILLSTROM, JORGE J. MORE
C
C     **********
      INTEGER IVAR,J
      DOUBLE PRECISION C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,
     *                 C15,C16,C17,FIVE,H,HALF,ONE,SEVEN,TEN,THREE,
     *                 TWENTY,TWNTF,TWO,ZERO
      DOUBLE PRECISION DFLOAT
      DATA ZERO,HALF,ONE,TWO,THREE,FIVE,SEVEN,TEN,TWENTY,TWNTF
     *     /0.0D0,5.0D-1,1.0D0,2.0D0,3.0D0,5.0D0,7.0D0,1.0D1,2.0D1,
     *      2.5D1/
      DATA C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17
     *     /1.2D0,2.5D-1,3.9D-1,4.15D-1,2.0D-2,4.0D3,2.5D2,3.0D-1,
     *      4.0D-1,1.5D0,1.0D-2,1.3D0,6.5D-1,7.0D-1,6.0D-1,4.5D0,
     *      5.5D0/
      DFLOAT(IVAR) = IVAR
C
C     SELECTION OF INITIAL POINT.
C
      GO TO (10,10,10,30,40,50,60,70,80,90,100,120,130,140,150,170,
     *       190,200), NPROB
C
C     LINEAR FUNCTION - FULL RANK OR RANK 1.
C
   10 CONTINUE
      DO 20 J = 1, N
         X(J) = ONE
   20    CONTINUE
      GO TO 210
C
C     ROSENBROCK FUNCTION.
C
   30 CONTINUE
      X(1) = -C1
      X(2) = ONE
      GO TO 210
C
C     HELICAL VALLEY FUNCTION.
C
   40 CONTINUE
      X(1) = -ONE
      X(2) = ZERO
      X(3) = ZERO
      GO TO 210
C
C     POWELL SINGULAR FUNCTION.
C
   50 CONTINUE
      X(1) = THREE
      X(2) = -ONE
      X(3) = ZERO
      X(4) = ONE
      GO TO 210
C
C     FREUDENSTEIN AND ROTH FUNCTION.
C
   60 CONTINUE
      X(1) = HALF
      X(2) = -TWO
      GO TO 210
C
C     BARD FUNCTION.
C
   70 CONTINUE
      X(1) = ONE
      X(2) = ONE
      X(3) = ONE
      GO TO 210
C
C     KOWALIK AND OSBORNE FUNCTION.
C
   80 CONTINUE
      X(1) = C2
      X(2) = C3
      X(3) = C4
      X(4) = C3
      GO TO 210
C
C     MEYER FUNCTION.
C
   90 CONTINUE
      X(1) = C5
      X(2) = C6
      X(3) = C7
      GO TO 210
C
C     WATSON FUNCTION.
C
  100 CONTINUE
      DO 110 J = 1, N
         X(J) = ZERO
  110    CONTINUE
      GO TO 210
C
C     BOX 3-DIMENSIONAL FUNCTION.
C
  120 CONTINUE
      X(1) = ZERO
      X(2) = TEN
      X(3) = TWENTY
      GO TO 210
C
C     JENNRICH AND SAMPSON FUNCTION.
C
  130 CONTINUE
      X(1) = C8
      X(2) = C9
      GO TO 210
C
C     BROWN AND DENNIS FUNCTION.
C
  140 CONTINUE
      X(1) = TWNTF
      X(2) = FIVE
      X(3) = -FIVE
      X(4) = -ONE
      GO TO 210
C
C     CHEBYQUAD FUNCTION.
C
  150 CONTINUE
      H = ONE/DFLOAT(N+1)
      DO 160 J = 1, N
         X(J) = DFLOAT(J)*H
  160    CONTINUE
      GO TO 210
C
C     BROWN ALMOST-LINEAR FUNCTION.
C
  170 CONTINUE
      DO 180 J = 1, N
         X(J) = HALF
  180    CONTINUE
      GO TO 210
C
C     OSBORNE 1 FUNCTION.
C
  190 CONTINUE
      X(1) = HALF
      X(2) = C10
      X(3) = -ONE
      X(4) = C11
      X(5) = C5
      GO TO 210
C
C     OSBORNE 2 FUNCTION.
C
  200 CONTINUE
      X(1) = C12
      X(2) = C13
      X(3) = C13
      X(4) = C14
      X(5) = C15
      X(6) = THREE
      X(7) = FIVE
      X(8) = SEVEN
      X(9) = TWO
      X(10) = C16
      X(11) = C17
  210 CONTINUE
C
C     COMPUTE MULTIPLE OF INITIAL POINT.
C
      IF (FACTOR .EQ. ONE) GO TO 260
      IF (NPROB .EQ. 11) GO TO 230
         DO 220 J = 1, N
            X(J) = FACTOR*X(J)
  220       CONTINUE
         GO TO 250
  230 CONTINUE
         DO 240 J = 1, N
            X(J) = FACTOR
  240       CONTINUE
  250 CONTINUE
  260 CONTINUE
      RETURN
C
C     LAST CARD OF SUBROUTINE INITPT.
C
      END
      SUBROUTINE SSQFCN(M,N,X,FVEC,NPROB)
      INTEGER M,N,NPROB
      DOUBLE PRECISION X(N),FVEC(M)
C     **********
C
C     SUBROUTINE SSQFCN
C
C     THIS SUBROUTINE DEFINES THE FUNCTIONS OF EIGHTEEN NONLINEAR
C     LEAST SQUARES PROBLEMS. THE ALLOWABLE VALUES OF (M,N) FOR
C     FUNCTIONS 1,2 AND 3 ARE VARIABLE BUT WITH M .GE. N.
C     FOR FUNCTIONS 4,5,6,7,8,9 AND 10 THE VALUES OF (M,N) ARE
C     (2,2),(3,3),(4,4),(2,2),(15,3),(11,4) AND (16,3), RESPECTIVELY.
C     FUNCTION 11 (WATSON) HAS M = 31 WITH N USUALLY 6 OR 9.
C     HOWEVER, ANY N, N = 2,...,31, IS PERMITTED.
C     FUNCTIONS 12,13 AND 14 HAVE N = 3,2 AND 4, RESPECTIVELY, BUT
C     ALLOW ANY M .GE. N, WITH THE USUAL CHOICES BEING 10,10 AND 20.
C     FUNCTION 15 (CHEBYQUAD) ALLOWS M AND N VARIABLE WITH M .GE. N.
C     FUNCTION 16 (BROWN) ALLOWS N VARIABLE WITH M = N.
C     FOR FUNCTIONS 17 AND 18, THE VALUES OF (M,N) ARE
C     (33,5) AND (65,11), RESPECTIVELY.
C
C     THE SUBROUTINE STATEMENT IS
C
C       SUBROUTINE SSQFCN(M,N,X,FVEC,NPROB)
C
C     WHERE
C
C       M AND N ARE POSITIVE INTEGER INPUT VARIABLES. N MUST NOT
C         EXCEED M.
C
C       X IS AN INPUT ARRAY OF LENGTH N.
C
C       FVEC IS AN OUTPUT ARRAY OF LENGTH M WHICH CONTAINS THE NPROB
C         FUNCTION EVALUATED AT X.
C
C       NPROB IS A POSITIVE INTEGER INPUT VARIABLE WHICH DEFINES THE
C         NUMBER OF THE PROBLEM. NPROB MUST NOT EXCEED 18.
C
C     SUBPROGRAMS CALLED
C
C       FORTRAN-SUPPLIED ... DATAN,DCOS,DEXP,DSIN,DSQRT,DSIGN
C
C     ARGONNE NATIONAL LABORATORY. MINPACK PROJECT. MARCH 1980.
C     BURTON S. GARBOW, KENNETH E. HILLSTROM, JORGE J. MORE
C
C     **********
      INTEGER I,IEV,IVAR,J,NM1
      DOUBLE PRECISION C13,C14,C29,C45,DIV,DX,EIGHT,FIVE,ONE,PROD,SUM,
     *                 S1,S2,TEMP,TEN,TI,TMP1,TMP2,TMP3,TMP4,TPI,TWO,
     *                 ZERO,ZP25,ZP5
      DOUBLE PRECISION V(11),Y1(15),Y2(11),Y3(16),Y4(33),Y5(65)
      DOUBLE PRECISION DFLOAT
      DATA ZERO,ZP25,ZP5,ONE,TWO,FIVE,EIGHT,TEN,C13,C14,C29,C45
     *     /0.0D0,2.5D-1,5.0D-1,1.0D0,2.0D0,5.0D0,8.0D0,1.0D1,1.3D1,
     *      1.4D1,2.9D1,4.5D1/
      DATA V(1),V(2),V(3),V(4),V(5),V(6),V(7),V(8),V(9),V(10),V(11)
     *     /4.0D0,2.0D0,1.0D0,5.0D-1,2.5D-1,1.67D-1,1.25D-1,1.0D-1,
     *      8.33D-2,7.14D-2,6.25D-2/
      DATA Y1(1),Y1(2),Y1(3),Y1(4),Y1(5),Y1(6),Y1(7),Y1(8),Y1(9),
     *     Y1(10),Y1(11),Y1(12),Y1(13),Y1(14),Y1(15)
     *     /1.4D-1,1.8D-1,2.2D-1,2.5D-1,2.9D-1,3.2D-1,3.5D-1,3.9D-1,
     *      3.7D-1,5.8D-1,7.3D-1,9.6D-1,1.34D0,2.1D0,4.39D0/
      DATA Y2(1),Y2(2),Y2(3),Y2(4),Y2(5),Y2(6),Y2(7),Y2(8),Y2(9),
     *     Y2(10),Y2(11)
     *     /1.957D-1,1.947D-1,1.735D-1,1.6D-1,8.44D-2,6.27D-2,4.56D-2,
     *      3.42D-2,3.23D-2,2.35D-2,2.46D-2/
      DATA Y3(1),Y3(2),Y3(3),Y3(4),Y3(5),Y3(6),Y3(7),Y3(8),Y3(9),
     *     Y3(10),Y3(11),Y3(12),Y3(13),Y3(14),Y3(15),Y3(16)
     *     /3.478D4,2.861D4,2.365D4,1.963D4,1.637D4,1.372D4,1.154D4,
     *      9.744D3,8.261D3,7.03D3,6.005D3,5.147D3,4.427D3,3.82D3,
     *      3.307D3,2.872D3/
      DATA Y4(1),Y4(2),Y4(3),Y4(4),Y4(5),Y4(6),Y4(7),Y4(8),Y4(9),
     *     Y4(10),Y4(11),Y4(12),Y4(13),Y4(14),Y4(15),Y4(16),Y4(17),
     *     Y4(18),Y4(19),Y4(20),Y4(21),Y4(22),Y4(23),Y4(24),Y4(25),
     *     Y4(26),Y4(27),Y4(28),Y4(29),Y4(30),Y4(31),Y4(32),Y4(33)
     *     /8.44D-1,9.08D-1,9.32D-1,9.36D-1,9.25D-1,9.08D-1,8.81D-1,
     *      8.5D-1,8.18D-1,7.84D-1,7.51D-1,7.18D-1,6.85D-1,6.58D-1,
     *      6.28D-1,6.03D-1,5.8D-1,5.58D-1,5.38D-1,5.22D-1,5.06D-1,
     *      4.9D-1,4.78D-1,4.67D-1,4.57D-1,4.48D-1,4.38D-1,4.31D-1,
     *      4.24D-1,4.2D-1,4.14D-1,4.11D-1,4.06D-1/
      DATA Y5(1),Y5(2),Y5(3),Y5(4),Y5(5),Y5(6),Y5(7),Y5(8),Y5(9),
     *     Y5(10),Y5(11),Y5(12),Y5(13),Y5(14),Y5(15),Y5(16),Y5(17),
     *     Y5(18),Y5(19),Y5(20),Y5(21),Y5(22),Y5(23),Y5(24),Y5(25),
     *     Y5(26),Y5(27),Y5(28),Y5(29),Y5(30),Y5(31),Y5(32),Y5(33),
     *     Y5(34),Y5(35),Y5(36),Y5(37),Y5(38),Y5(39),Y5(40),Y5(41),
     *     Y5(42),Y5(43),Y5(44),Y5(45),Y5(46),Y5(47),Y5(48),Y5(49),
     *     Y5(50),Y5(51),Y5(52),Y5(53),Y5(54),Y5(55),Y5(56),Y5(57),
     *     Y5(58),Y5(59),Y5(60),Y5(61),Y5(62),Y5(63),Y5(64),Y5(65)
     *     /1.366D0,1.191D0,1.112D0,1.013D0,9.91D-1,8.85D-1,8.31D-1,
     *      8.47D-1,7.86D-1,7.25D-1,7.46D-1,6.79D-1,6.08D-1,6.55D-1,
     *      6.16D-1,6.06D-1,6.02D-1,6.26D-1,6.51D-1,7.24D-1,6.49D-1,
     *      6.49D-1,6.94D-1,6.44D-1,6.24D-1,6.61D-1,6.12D-1,5.58D-1,
     *      5.33D-1,4.95D-1,5.0D-1,4.23D-1,3.95D-1,3.75D-1,3.72D-1,
     *      3.91D-1,3.96D-1,4.05D-1,4.28D-1,4.29D-1,5.23D-1,5.62D-1,
     *      6.07D-1,6.53D-1,6.72D-1,7.08D-1,6.33D-1,6.68D-1,6.45D-1,
     *      6.32D-1,5.91D-1,5.59D-1,5.97D-1,6.25D-1,7.39D-1,7.1D-1,
     *      7.29D-1,7.2D-1,6.36D-1,5.81D-1,4.28D-1,2.92D-1,1.62D-1,
     *      9.8D-2,5.4D-2/
      DFLOAT(IVAR) = IVAR
C
C     FUNCTION ROUTINE SELECTOR.
C
      GO TO (10,40,70,110,120,130,140,150,170,190,210,250,270,290,310,
     *       360,390,410), NPROB
C
C     LINEAR FUNCTION - FULL RANK.
C
   10 CONTINUE
      SUM = ZERO
      DO 20 J = 1, N
         SUM = SUM + X(J)
   20    CONTINUE
      TEMP = TWO*SUM/DFLOAT(M) + ONE
      DO 30 I = 1, M
         FVEC(I) = -TEMP
         IF (I .LE. N) FVEC(I) = FVEC(I) + X(I)
   30    CONTINUE
      GO TO 430
C
C     LINEAR FUNCTION - RANK 1.
C
   40 CONTINUE
      SUM = ZERO
      DO 50 J = 1, N
         SUM = SUM + DFLOAT(J)*X(J)
   50    CONTINUE
      DO 60 I = 1, M
         FVEC(I) = DFLOAT(I)*SUM - ONE
   60    CONTINUE
      GO TO 430
C
C     LINEAR FUNCTION - RANK 1 WITH ZERO COLUMNS AND ROWS.
C
   70 CONTINUE
      SUM = ZERO
      NM1 = N - 1
      IF (NM1 .LT. 2) GO TO 90
      DO 80 J = 2, NM1
         SUM = SUM + DFLOAT(J)*X(J)
   80    CONTINUE
   90 CONTINUE
      DO 100 I = 1, M
         FVEC(I) = DFLOAT(I-1)*SUM - ONE
  100    CONTINUE
      FVEC(M) = -ONE
      GO TO 430
C
C     ROSENBROCK FUNCTION.
C
  110 CONTINUE
      FVEC(1) = TEN*(X(2) - X(1)**2)
      FVEC(2) = ONE - X(1)
      GO TO 430
C
C     HELICAL VALLEY FUNCTION.
C
  120 CONTINUE
      TPI = EIGHT*DATAN(ONE)
      TMP1 = DSIGN(ZP25,X(2))
      IF (X(1) .GT. ZERO) TMP1 = DATAN(X(2)/X(1))/TPI
      IF (X(1) .LT. ZERO) TMP1 = DATAN(X(2)/X(1))/TPI + ZP5
      TMP2 = DSQRT(X(1)**2+X(2)**2)
      FVEC(1) = TEN*(X(3) - TEN*TMP1)
      FVEC(2) = TEN*(TMP2 - ONE)
      FVEC(3) = X(3)
      GO TO 430
C
C     POWELL SINGULAR FUNCTION.
C
  130 CONTINUE
      FVEC(1) = X(1) + TEN*X(2)
      FVEC(2) = DSQRT(FIVE)*(X(3) - X(4))
      FVEC(3) = (X(2) - TWO*X(3))**2
      FVEC(4) = DSQRT(TEN)*(X(1) - X(4))**2
      GO TO 430
C
C     FREUDENSTEIN AND ROTH FUNCTION.
C
  140 CONTINUE
      FVEC(1) = -C13 + X(1) + ((FIVE - X(2))*X(2) - TWO)*X(2)
      FVEC(2) = -C29 + X(1) + ((ONE + X(2))*X(2) - C14)*X(2)
      GO TO 430
C
C     BARD FUNCTION.
C
  150 CONTINUE
      DO 160 I = 1, 15
         TMP1 = DFLOAT(I)
         TMP2 = DFLOAT(16-I)
         TMP3 = TMP1
         IF (I .GT. 8) TMP3 = TMP2
         FVEC(I) = Y1(I) - (X(1) + TMP1/(X(2)*TMP2 + X(3)*TMP3))
  160    CONTINUE
      GO TO 430
C
C     KOWALIK AND OSBORNE FUNCTION.
C
  170 CONTINUE
      DO 180 I = 1, 11
         TMP1 = V(I)*(V(I) + X(2))
         TMP2 = V(I)*(V(I) + X(3)) + X(4)
         FVEC(I) = Y2(I) - X(1)*TMP1/TMP2
  180    CONTINUE
      GO TO 430
C
C     MEYER FUNCTION.
C
  190 CONTINUE
      DO 200 I = 1, 16
         TEMP = FIVE*DFLOAT(I) + C45 + X(3)
         TMP1 = X(2)/TEMP
         TMP2 = DEXP(TMP1)
         FVEC(I) = X(1)*TMP2 - Y3(I)
  200    CONTINUE
      GO TO 430
C
C     WATSON FUNCTION.
C
  210 CONTINUE
      DO 240 I = 1, 29
         DIV = DFLOAT(I)/C29
         S1 = ZERO
         DX = ONE
         DO 220 J = 2, N
            S1 = S1 + DFLOAT(J-1)*DX*X(J)
            DX = DIV*DX
  220       CONTINUE
         S2 = ZERO
         DX = ONE
         DO 230 J = 1, N
            S2 = S2 + DX*X(J)
            DX = DIV*DX
  230       CONTINUE
         FVEC(I) = S1 - S2**2 - ONE
  240    CONTINUE
      FVEC(30) = X(1)
      FVEC(31) = X(2) - X(1)**2 - ONE
      GO TO 430
C
C     BOX 3-DIMENSIONAL FUNCTION.
C
  250 CONTINUE
      DO 260 I = 1, M
         TEMP = DFLOAT(I)
         TMP1 = TEMP/TEN
         FVEC(I) = DEXP(-TMP1*X(1)) - DEXP(-TMP1*X(2))
     *             + (DEXP(-TEMP) - DEXP(-TMP1))*X(3)
  260    CONTINUE
      GO TO 430
C
C     JENNRICH AND SAMPSON FUNCTION.
C
  270 CONTINUE
      DO 280 I = 1, M
         TEMP = DFLOAT(I)
         FVEC(I) = TWO + TWO*TEMP - DEXP(TEMP*X(1)) - DEXP(TEMP*X(2))
  280    CONTINUE
      GO TO 430
C
C     BROWN AND DENNIS FUNCTION.
C
  290 CONTINUE
      DO 300 I = 1, M
         TEMP = DFLOAT(I)/FIVE
         TMP1 = X(1) + TEMP*X(2) - DEXP(TEMP)
         TMP2 = X(3) + DSIN(TEMP)*X(4) - DCOS(TEMP)
         FVEC(I) = TMP1**2 + TMP2**2
  300    CONTINUE
      GO TO 430
C
C     CHEBYQUAD FUNCTION.
C
  310 CONTINUE
      DO 320 I = 1, M
         FVEC(I) = ZERO
  320    CONTINUE
      DO 340 J = 1, N
         TMP1 = ONE
         TMP2 = TWO*X(J) - ONE
         TEMP = TWO*TMP2
         DO 330 I = 1, M
            FVEC(I) = FVEC(I) + TMP2
            TI = TEMP*TMP2 - TMP1
            TMP1 = TMP2
            TMP2 = TI
  330       CONTINUE
  340    CONTINUE
      DX = ONE/DFLOAT(N)
      IEV = -1
      DO 350 I = 1, M
         FVEC(I) = DX*FVEC(I)
         IF (IEV .GT. 0) FVEC(I) = FVEC(I) + ONE/(DFLOAT(I)**2 - ONE)
         IEV = -IEV
  350    CONTINUE
      GO TO 430
C
C     BROWN ALMOST-LINEAR FUNCTION.
C
  360 CONTINUE
      SUM = -DFLOAT(N+1)
      PROD = ONE
      DO 370 J = 1, N
         SUM = SUM + X(J)
         PROD = X(J)*PROD
  370    CONTINUE
      DO 380 I = 1, N
         FVEC(I) = X(I) + SUM
  380    CONTINUE
      FVEC(N) = PROD - ONE
      GO TO 430
C
C     OSBORNE 1 FUNCTION.
C
  390 CONTINUE
      DO 400 I = 1, 33
         TEMP = TEN*DFLOAT(I-1)
         TMP1 = DEXP(-X(4)*TEMP)
         TMP2 = DEXP(-X(5)*TEMP)
         FVEC(I) = Y4(I) - (X(1) + X(2)*TMP1 + X(3)*TMP2)
  400    CONTINUE
      GO TO 430
C
C     OSBORNE 2 FUNCTION.
C
  410 CONTINUE
      DO 420 I = 1, 65
         TEMP = DFLOAT(I-1)/TEN
         TMP1 = DEXP(-X(5)*TEMP)
         TMP2 = DEXP(-X(6)*(TEMP-X(9))**2)
         TMP3 = DEXP(-X(7)*(TEMP-X(10))**2)
         TMP4 = DEXP(-X(8)*(TEMP-X(11))**2)
         FVEC(I) = Y5(I)
     *             - (X(1)*TMP1 + X(2)*TMP2 + X(3)*TMP3 + X(4)*TMP4)
  420    CONTINUE
  430 CONTINUE
      RETURN
C
C     LAST CARD OF SUBROUTINE SSQFCN.
C
      END
