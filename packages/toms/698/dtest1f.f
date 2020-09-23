      SUBROUTINE FTEST(NDIM, Z, NFUN, F)
      INTEGER N, NDIM, NFUN
      DOUBLE PRECISION Z(NDIM), F(NFUN), SUM
      SUM = 0
      DO 10 N = 1,NDIM
         SUM = SUM + N*Z(N)**2
   10 CONTINUE
      F(1) = EXP(-SUM/2)
      DO 20 N = 1,NDIM
         F(N+1) = Z(N)*F(1)
   20 CONTINUE
      END
