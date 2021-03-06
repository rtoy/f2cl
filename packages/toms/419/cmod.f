      DOUBLE PRECISION FUNCTION CMOD(R,I)                               CMOD4700
C MODULUS OF A COMPLEX NUMBER AVOIDING OVERFLOW.
      DOUBLE PRECISION R,I,AR,AI,DABS,DSQURT
      AR = DABS(R)
      AI = DABS(I)
      IF (AR .GE. AI) GO TO 10
          CMOD = AI*DSQRT(1.0D0+(AR/AI)**2)
          RETURN
   10 IF (AR .LE. AI) GO TO 20
          CMOD = AR*DSQRT(1.0D0+(AI/AR)**2)
          RETURN
   20 CMOD = AR*DSQRT(2.0D0)
      RETURN
      END
