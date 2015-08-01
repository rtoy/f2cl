      REAL*8 FUNCTION RLOG1(X)
      implicit double precision (A-H,O-Z)
C-----------------------------------------------------------------------
C             EVALUATION OF THE FUNCTION X - LN(1 + X)
C-----------------------------------------------------------------------
      DATA A/.566749439387324D-01/
      DATA B/.456512608815524D-01/
C------------------------
      DATA P0/ .333333333333333D+00/, P1/-.224696413112536D+00/,
     *     P2/ .620886815375787D-02/
      DATA Q1/-.127408923933623D+01/, Q2/ .354508718369557D+00/
C------------------------
      IF (X .LT. -0.39 .OR. X .GT. 0.57) GO TO 100
      IF (X .LT. -0.18) GO TO 10
      IF (X .GT.  0.18) GO TO 20
C
C              ARGUMENT REDUCTION
C
      H = X
      W1 = 0.0
      GO TO 30
C
   10 H = DBLE(X) + 0.3D0
      H = H/0.7
      W1 = A - H*0.3
      GO TO 30
C
   20 H = 0.75D0*DBLE(X) - 0.25D0
      W1 = B + H/3.0
C
C               SERIES EXPANSION
C
   30 R = H/(H + 2.0)
      T = R*R
      W = ((P2*T + P1)*T + P0)/((Q2*T + Q1)*T + 1.0)
      RLOG1 = 2.0*T*(1.0/(1.0 - R) - R*W) + W1
      RETURN
C
C
  100 W = (X + 0.5) + 0.5
      RLOG1 = X - LOG(W)
      RETURN
      END 
