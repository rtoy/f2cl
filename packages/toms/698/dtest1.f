C
C   DTEST1 is a simple test driver for DCUHRE.
C
C   Output produced on a SUN 3/50.
c
C       DCUHRE TEST RESULTS
C
C    FTEST CALLS = 3549, IFAIL =  0
C   N   ESTIMATED ERROR   INTEGRAL
C   1     0.00000010     0.13850818
C   2     0.00000013     0.06369469
C   3     0.00000874     0.05861748
C   4     0.00000021     0.05407034
C   5     0.00000019     0.05005614
C   6     0.00000009     0.04654608
C
      PROGRAM DTEST1
      EXTERNAL FTEST
      INTEGER KEY, N, NF, NDIM, MINCLS, MAXCLS, IFAIL, NEVAL, NW
      PARAMETER (NDIM = 5, NW = 5000, NF = NDIM+1)
      DOUBLE PRECISION A(NDIM), B(NDIM), WRKSTR(NW)
      DOUBLE PRECISION ABSEST(NF), FINEST(NF), ABSREQ, RELREQ
      DO 10 N = 1,NDIM
         A(N) = 0
         B(N) = 1
   10 CONTINUE
      MINCLS = 0
      MAXCLS = 10000
      KEY = 0
      ABSREQ = 0
      RELREQ = 1E-3
      CALL DCUHRE(NDIM, NF, A, B, MINCLS, MAXCLS, FTEST, ABSREQ, RELREQ,
     * KEY, NW, 0, FINEST, ABSEST, NEVAL, IFAIL, WRKSTR)
      PRINT 9999, NEVAL, IFAIL
 9999 FORMAT (8X, 'DCUHRE TEST RESULTS', //'     FTEST CALLS = ', I4,
     * ', IFAIL = ', I2, /'    N   ESTIMATED ERROR   INTEGRAL')
      DO 20 N = 1,NF
         PRINT 9998, N, ABSEST(N), FINEST(N)
 9998    FORMAT (3X, I2, 2F15.8)
   20 CONTINUE
      END
