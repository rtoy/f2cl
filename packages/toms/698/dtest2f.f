      SUBROUTINE FTESTP(NDIM, Z, NFUN, F)
C
C       Selected monomials, degree 0-13
C
      INTEGER NDIM, NFUN
      DOUBLE PRECISION Z(NDIM), F(NFUN)
      F(1) = 1
      F(2) = 2*Z(1)
      F(3) = 3*Z(1)**2
      F(4) = F(2)*2*Z(2)
      F(5) = 4*Z(1)**3
      F(6) = F(3)*2*Z(2)
      F(7) = 5*Z(1)**4
      F(8) = F(5)*2*Z(2)
      F(9) = F(3)*3*Z(2)**2
      F(10) = 6*Z(1)**5
      F(11) = F(7)*2*Z(2)
      F(12) = F(5)*3*Z(2)**2
      F(13) = 8*Z(1)**7
      F(14) = 10*Z(1)**9
      F(15) = 12*Z(1)**11
      F(16) = 14*Z(1)**13
      END
      SUBROUTINE FTESTO(NDIM, Z, NFUN, F)
C
C     Corner Peak
C
      INTEGER NDIM, NFUN
      DOUBLE PRECISION Z(NDIM), F(NFUN)
      F(1) = 10/(1+0.1*Z(1)+0.2*Z(2)+0.3*Z(3)+0.4*Z(4)+0.5*Z(5)+0.6*
     * Z(6))**6/0.2057746
      END
      SUBROUTINE FTESTX(NDIM, Z, NFUN, F)
C
C     Sum of Cosines
C
      INTEGER N, NDIM, NFUN
      DOUBLE PRECISION Z(NDIM), F(NFUN), SUM
      SUM = 0
      DO 10 N = 1,2
        SUM = SUM - COS(10*Z(N))/0.0544021110889370
   10 CONTINUE
      F(1) = SUM/2
      END
