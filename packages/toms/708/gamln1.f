      REAL FUNCTION GAMLN1 (A)
C-----------------------------------------------------------------------
C     EVALUATION OF LN(GAMMA(1 + A)) FOR -0.2 .LE. A .LE. 1.25
C-----------------------------------------------------------------------
      DATA P0/ .577215664901533E+00/, P1/ .844203922187225E+00/,
     *     P2/-.168860593646662E+00/, P3/-.780427615533591E+00/,
     *     P4/-.402055799310489E+00/, P5/-.673562214325671E-01/,
     *     P6/-.271935708322958E-02/
      DATA Q1/ .288743195473681E+01/, Q2/ .312755088914843E+01/,
     *     Q3/ .156875193295039E+01/, Q4/ .361951990101499E+00/,
     *     Q5/ .325038868253937E-01/, Q6/ .667465618796164E-03/
C----------------------
      DATA R0/.422784335098467E+00/,  R1/.848044614534529E+00/,
     *     R2/.565221050691933E+00/,  R3/.156513060486551E+00/,
     *     R4/.170502484022650E-01/,  R5/.497958207639485E-03/
      DATA S1/.124313399877507E+01/,  S2/.548042109832463E+00/,
     *     S3/.101552187439830E+00/,  S4/.713309612391000E-02/,
     *     S5/.116165475989616E-03/
C----------------------
      IF (A .GE. 0.6) GO TO 10
      W = ((((((P6*A + P5)*A + P4)*A + P3)*A + P2)*A + P1)*A + P0)/
     *    ((((((Q6*A + Q5)*A + Q4)*A + Q3)*A + Q2)*A + Q1)*A + 1.0)
      GAMLN1 = -A*W 
      RETURN
C
   10 X = (A - 0.5) - 0.5
      W = (((((R5*X + R4)*X + R3)*X + R2)*X + R1)*X + R0)/
     *    (((((S5*X + S4)*X + S3)*X + S2)*X + S1)*X + 1.0)
      GAMLN1 = X*W
      RETURN
      END 
