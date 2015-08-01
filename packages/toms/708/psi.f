      REAL*8 FUNCTION PSI(XX)
      implicit double precision (A-H,O-Z)
C---------------------------------------------------------------------
C
C                 EVALUATION OF THE DIGAMMA FUNCTION
C
C                           ----------- 
C
C     PSI(XX) IS ASSIGNED THE VALUE 0 WHEN THE DIGAMMA FUNCTION CANNOT
C     BE COMPUTED.
C
C     THE MAIN COMPUTATION INVOLVES EVALUATION OF RATIONAL CHEBYSHEV
C     APPROXIMATIONS PUBLISHED IN MATH. COMP. 27, 123-127(1973) BY
C     CODY, STRECOK AND THACHER.
C
C---------------------------------------------------------------------
C     PSI WAS WRITTEN AT ARGONNE NATIONAL LABORATORY FOR THE FUNPACK
C     PACKAGE OF SPECIAL FUNCTION SUBROUTINES. PSI WAS MODIFIED BY
C     A.H. MORRIS (NSWC).
C---------------------------------------------------------------------
      REAL*8 P1(7), P2(4), Q1(6), Q2(4)
      DOUBLE PRECISION DX0
C---------------------------------------------------------------------
C
C     PIOV4 = PI/4
C     DX0 = ZERO OF PSI TO EXTENDED PRECISION
C
C---------------------------------------------------------------------
      DATA PIOV4/.785398163397448D0/
      DATA DX0/1.461632144968362341262659542325721325D0/
C---------------------------------------------------------------------
C
C     COEFFICIENTS FOR RATIONAL APPROXIMATION OF
C     PSI(X) / (X - X0),  0.5 .LE. X .LE. 3.0
C
C---------------------------------------------------------------------
      DATA P1(1)/.895385022981970D-02/,  P1(2)/.477762828042627D+01/, 
     *     P1(3)/.142441585084029D+03/,  P1(4)/.118645200713425D+04/, 
     *     P1(5)/.363351846806499D+04/,  P1(6)/.413810161269013D+04/, 
     *     P1(7)/.130560269827897D+04/
      DATA Q1(1)/.448452573429826D+02/,  Q1(2)/.520752771467162D+03/, 
     *     Q1(3)/.221000799247830D+04/,  Q1(4)/.364127349079381D+04/, 
     *     Q1(5)/.190831076596300D+04/,  Q1(6)/.691091682714533D-05/
C---------------------------------------------------------------------
C
C     COEFFICIENTS FOR RATIONAL APPROXIMATION OF
C     PSI(X) - LN(X) + 1 / (2*X),  X .GT. 3.0
C
C---------------------------------------------------------------------
      DATA P2(1)/-.212940445131011D+01/, P2(2)/-.701677227766759D+01/,
     *     P2(3)/-.448616543918019D+01/, P2(4)/-.648157123766197D+00/ 
      DATA Q2(1)/ .322703493791143D+02/, Q2(2)/ .892920700481861D+02/,
     *     Q2(3)/ .546117738103215D+02/, Q2(4)/ .777788548522962D+01/ 
C---------------------------------------------------------------------
C
C     MACHINE DEPENDENT CONSTANTS ...
C
C        XMAX1  = THE SMALLEST POSITIVE FLOATING POINT CONSTANT
C                 WITH ENTIRELY INTEGER REPRESENTATION.  ALSO USED
C                 AS NEGATIVE OF LOWER BOUND ON ACCEPTABLE NEGATIVE
C                 ARGUMENTS AND AS THE POSITIVE ARGUMENT BEYOND WHICH 
C                 PSI MAY BE REPRESENTED AS ALOG(X).
C
C        XSMALL = ABSOLUTE ARGUMENT BELOW WHICH PI*COTAN(PI*X)
C                 MAY BE REPRESENTED BY 1/X.
C
C---------------------------------------------------------------------
      XMAX1 = IPMPAR(3)
      XMAX1 = AMIN1(XMAX1, 1.0/DPMPAR(1))
      XSMALL = 1.E-9
C---------------------------------------------------------------------
      X = XX
      AUG = 0.0E0
      IF (X .GE. 0.5E0) GO TO 200
C---------------------------------------------------------------------
C     X .LT. 0.5,  USE REFLECTION FORMULA
C     PSI(1-X) = PSI(X) + PI * COTAN(PI*X)
C---------------------------------------------------------------------
      IF (ABS(X) .GT. XSMALL) GO TO 100 
      IF (X .EQ. 0.0E0) GO TO 400
C---------------------------------------------------------------------
C     0 .LT. ABS(X) .LE. XSMALL.  USE 1/X AS A SUBSTITUTE
C     FOR  PI*COTAN(PI*X)
C---------------------------------------------------------------------
      AUG = -1.0E0 / X
      GO TO 150
C---------------------------------------------------------------------
C     REDUCTION OF ARGUMENT FOR COTAN
C---------------------------------------------------------------------
  100 W = - X
      SGN = PIOV4
      IF (W .GT. 0.0E0) GO TO 120
      W = - W
      SGN = -SGN
C---------------------------------------------------------------------
C     MAKE AN ERROR EXIT IF X .LE. -XMAX1
C---------------------------------------------------------------------
  120 IF (W .GE. XMAX1) GO TO 400
      NQ = INT(W)
      W = W - FLOAT(NQ)
      NQ = INT(W*4.0E0)
      W = 4.0E0 * (W - FLOAT(NQ) * .25E0)
C---------------------------------------------------------------------
C     W IS NOW RELATED TO THE FRACTIONAL PART OF  4.0 * X.
C     ADJUST ARGUMENT TO CORRESPOND TO VALUES IN FIRST
C     QUADRANT AND DETERMINE SIGN
C---------------------------------------------------------------------
      N = NQ / 2
      IF ((N+N) .NE. NQ) W = 1.0E0 - W
      Z = PIOV4 * W 
      M = N / 2
      IF ((M+M) .NE. N) SGN = - SGN
C---------------------------------------------------------------------
C     DETERMINE FINAL VALUE FOR  -PI*COTAN(PI*X)
C---------------------------------------------------------------------
      N = (NQ + 1) / 2
      M = N / 2
      M = M + M
      IF (M .NE. N) GO TO 140 
C---------------------------------------------------------------------
C     CHECK FOR SINGULARITY
C---------------------------------------------------------------------
      IF (Z .EQ. 0.0E0) GO TO 400
C---------------------------------------------------------------------
C     USE COS/SIN AS A SUBSTITUTE FOR COTAN, AND
C     SIN/COS AS A SUBSTITUTE FOR TAN
C---------------------------------------------------------------------
      AUG = SGN * ((COS(Z) / SIN(Z)) * 4.0E0)
      GO TO 150
  140 AUG = SGN * ((SIN(Z) / COS(Z)) * 4.0E0)
  150 X = 1.0E0 - X 
  200 IF (X .GT. 3.0E0) GO TO 300
C---------------------------------------------------------------------
C     0.5 .LE. X .LE. 3.0
C---------------------------------------------------------------------
      DEN = X
      UPPER = P1(1) * X
C
      DO 210 I = 1, 5
         DEN = (DEN + Q1(I)) * X
         UPPER = (UPPER + P1(I+1)) * X
  210 CONTINUE
C
      DEN = (UPPER + P1(7)) / (DEN + Q1(6))
      XMX0 = DBLE(X) - DX0
      PSI = DEN * XMX0 + AUG
      RETURN
C---------------------------------------------------------------------
C     IF X .GE. XMAX1, PSI = LN(X)
C---------------------------------------------------------------------
  300 IF (X .GE. XMAX1) GO TO 350
C---------------------------------------------------------------------
C     3.0 .LT. X .LT. XMAX1
C---------------------------------------------------------------------
      W = 1.0E0 / (X * X)
      DEN = W
      UPPER = P2(1) * W
C
      DO 310 I = 1, 3
         DEN = (DEN + Q2(I)) * W
         UPPER = (UPPER + P2(I+1)) * W
  310 CONTINUE
C
      AUG = UPPER / (DEN + Q2(4)) - 0.5E0 / X + AUG
  350 PSI = AUG + LOG(X)
      RETURN
C---------------------------------------------------------------------
C     ERROR RETURN
C---------------------------------------------------------------------
  400 PSI = 0.0E0
      RETURN
      END 
