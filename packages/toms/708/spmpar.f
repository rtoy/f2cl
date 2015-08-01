      REAL FUNCTION SPMPAR (I)
C-----------------------------------------------------------------------
C
C     SPMPAR PROVIDES THE SINGLE PRECISION MACHINE CONSTANTS FOR
C     THE COMPUTER BEING USED. IT IS ASSUMED THAT THE ARGUMENT
C     I IS AN INTEGER HAVING ONE OF THE VALUES 1, 2, OR 3. IF THE
C     SINGLE PRECISION ARITHMETIC BEING USED HAS M BASE B DIGITS AND
C     ITS SMALLEST AND LARGEST EXPONENTS ARE EMIN AND EMAX, THEN
C
C        SPMPAR(1) = B**(1 - M), THE MACHINE PRECISION,
C
C        SPMPAR(2) = B**(EMIN - 1), THE SMALLEST MAGNITUDE, 
C
C        SPMPAR(3) = B**EMAX*(1 - B**(-M)), THE LARGEST MAGNITUDE.
C
C-----------------------------------------------------------------------
C     WRITTEN BY
C        ALFRED H. MORRIS, JR.
C        NAVAL SURFACE WARFARE CENTER
C        DAHLGREN VIRGINIA
C-----------------------------------------------------------------------
      INTEGER EMIN, EMAX
C
      IF (I .GT. 1) GO TO 10
         B = IPMPAR(4)
         M = IPMPAR(5)
         SPMPAR = B**(1 - M)
         RETURN
C
   10 IF (I .GT. 2) GO TO 20
         B = IPMPAR(4)
         EMIN = IPMPAR(6)
         ONE = FLOAT(1)
         BINV = ONE/B
         W = B**(EMIN + 2)
         SPMPAR = ((W * BINV) * BINV) * BINV
         RETURN
C
   20 IBETA = IPMPAR(4)
      M = IPMPAR(5) 
      EMAX = IPMPAR(7)
C
      B = IBETA
      BM1 = IBETA - 1
      ONE = FLOAT(1)
      Z = B**(M - 1)
      W = ((Z - ONE)*B + BM1)/(B*Z)
C
      Z = B**(EMAX - 2)
      SPMPAR = ((W * Z) * B) * B
      RETURN
      END 
