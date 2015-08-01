      REAL*8 FUNCTION ERFC1 (IND, X)
      implicit double precision (A-H,O-Z)
C-----------------------------------------------------------------------
C         EVALUATION OF THE COMPLEMENTARY ERROR FUNCTION
C
C          ERFC1(IND,X) = ERFC(X)            IF IND = 0
C          ERFC1(IND,X) = EXP(X*X)*ERFC(X)   OTHERWISE
C-----------------------------------------------------------------------
      REAL*8 A(5),B(3),P(8),Q(8),R(5),S(4)
      DOUBLE PRECISION W
C-------------------------
      DATA C /.564189583547756d0/
C-------------------------
      DATA A(1) /.771058495001320D-04/, A(2)/-.133733772997339D-02/,
     *     A(3) /.323076579225834D-01/, A(4) /.479137145607681D-01/,
     *     A(5) /.128379167095513D+00/
      DATA B(1) /.301048631703895D-02/, B(2) /.538971687740286D-01/,
     *     B(3) /.375795757275549D+00/
C-------------------------
      DATA P(1)/-1.36864857382717D-07/, P(2) /5.64195517478974D-01/,
     *     P(3) /7.21175825088309D+00/, P(4) /4.31622272220567D+01/,
     *     P(5) /1.52989285046940D+02/, P(6) /3.39320816734344D+02/,
     *     P(7) /4.51918953711873D+02/, P(8) /3.00459261020162D+02/
      DATA Q(1) /1.00000000000000D+00/, Q(2) /1.27827273196294D+01/,
     *     Q(3) /7.70001529352295D+01/, Q(4) /2.77585444743988D+02/,
     *     Q(5) /6.38980264465631D+02/, Q(6) /9.31354094850610D+02/,
     *     Q(7) /7.90950925327898D+02/, Q(8) /3.00459260956983D+02/
C-------------------------
      DATA R(1) /2.10144126479064D+00/, R(2) /2.62370141675169D+01/,
     *     R(3) /2.13688200555087D+01/, R(4) /4.65807828718470D+00/,
     *     R(5) /2.82094791773523D-01/
      DATA S(1) /9.41537750555460D+01/, S(2) /1.87114811799590D+02/,
     *     S(3) /9.90191814623914D+01/, S(4) /1.80124575948747D+01/
C-------------------------
C
C                     ABS(X) .LE. 0.5
C
      AX = ABS(X)
      IF (AX .GT. 0.5) GO TO 10
      T = X*X
      TOP = ((((A(1)*T + A(2))*T + A(3))*T + A(4))*T + A(5)) + 1.0
      BOT = ((B(1)*T + B(2))*T + B(3))*T + 1.0
      ERFC1 = 0.5 + (0.5 - X*(TOP/BOT)) 
      IF (IND .NE. 0) ERFC1 = EXP(T) * ERFC1
      RETURN
C
C                  0.5 .LT. ABS(X) .LE. 4
C
   10 IF (AX .GT. 4.0) GO TO 20
      TOP = ((((((P(1)*AX + P(2))*AX + P(3))*AX + P(4))*AX + P(5))*AX 
     *                    + P(6))*AX + P(7))*AX + P(8)
      BOT = ((((((Q(1)*AX + Q(2))*AX + Q(3))*AX + Q(4))*AX + Q(5))*AX 
     *                    + Q(6))*AX + Q(7))*AX + Q(8)
      ERFC1 = TOP/BOT
      GO TO 40
C
C                      ABS(X) .GT. 4
C
   20 IF (X .LE. -5.6) GO TO 50
      IF (IND .NE. 0) GO TO 30
      IF (X .GT. 100.0) GO TO 60
      IF (X*X .GT. -EXPARG(1)) GO TO 60 
C
   30 T = (1.0/X)**2
      TOP = (((R(1)*T + R(2))*T + R(3))*T + R(4))*T + R(5)
      BOT = (((S(1)*T + S(2))*T + S(3))*T + S(4))*T + 1.0
      ERFC1 = (C - T*TOP/BOT)/AX
C
C                      FINAL ASSEMBLY
C
   40 IF (IND .EQ. 0) GO TO 41
         IF (X .LT. 0.0) ERFC1 = 2.0*EXP(X*X) - ERFC1
         RETURN
   41 W = DBLE(X)*DBLE(X)
      T = W
      E = W - DBLE(T)
      ERFC1 = ((0.5 + (0.5 - E)) * EXP(-T)) * ERFC1
      IF (X .LT. 0.0) ERFC1 = 2.0 - ERFC1
      RETURN
C
C             LIMIT VALUE FOR LARGE NEGATIVE X
C
   50 ERFC1 = 2.0
      IF (IND .NE. 0) ERFC1 = 2.0*EXP(X*X)
      RETURN
C
C             LIMIT VALUE FOR LARGE POSITIVE X
C                       WHEN IND = 0
C
   60 ERFC1 = 0.0
      RETURN
      END 
