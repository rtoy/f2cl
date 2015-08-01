      REAL*8 FUNCTION REXP (X)
      implicit double precision (A-H,O-Z)
C-----------------------------------------------------------------------
C            EVALUATION OF THE FUNCTION EXP(X) - 1
C-----------------------------------------------------------------------
      DATA P1/ .914041914819518D-09/, P2/ .238082361044469D-01/,
     *     Q1/-.499999999085958D+00/, Q2/ .107141568980644D+00/,
     *     Q3/-.119041179760821D-01/, Q4/ .595130811860248D-03/
C-----------------------
      IF (ABS(X) .GT. 0.15) GO TO 10
      REXP = X*(((P2*X + P1)*X + 1.0)/((((Q4*X + Q3)*X + Q2)*X
     *                 + Q1)*X + 1.0))
      RETURN
C
   10 W = EXP(X)
      IF (X .GT. 0.0) GO TO 20
         REXP = (W - 0.5) - 0.5
         RETURN
   20 REXP = W*(0.5 + (0.5 - 1.0/W))
      RETURN
      END 
