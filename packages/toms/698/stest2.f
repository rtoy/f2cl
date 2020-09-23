      PROGRAM STEST2
C
C   STEST2 tests some of the features of SCUHRE.
C   STEST2 checks that SCUHRE integrates to machine
C   precision some of the monomials that SCUHRE is
C   supposed to integrate to machine precision.
C   STEST2 checks that the restart feature of SCUHRE works.
C   STEST2 runs small tests in dimensions 2, 3, 5, 7 and 10.
C
C   Output produced on a SUN 3/50.
C
C
C
C    SCUHRE TEST WITH NDIM =   2, KEY =  1
C    SUBROUTINE CALLS =    195, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.00e+00    1.00000000
C      2      0.00e+00    1.00000000
C      3      0.00e+00    1.00000000
C      4      0.00e+00    1.00000000
C      5      0.00e+00    1.00000000
C      6      0.00e+00    1.00000000
C      7      0.00e+00    1.00000000
C      8      0.00e+00    1.00000000
C      9      0.00e+00    1.00000000
C     10      0.00e+00    1.00000000
C     11      0.60e-07    0.99999994
C     12      0.00e+00    1.00000000
C     13      0.00e+00    1.00000000
C     14      0.12e-06    0.99999988
C     15      0.12e-06    1.00000012
C     16      0.12e-06    1.00000012
C
C    SCUHRE TEST WITH NDIM =   3, KEY =  2
C    SUBROUTINE CALLS =    381, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.00e+00    1.00000000
C      2      0.00e+00    1.00000000
C      3      0.00e+00    1.00000000
C      4      0.00e+00    1.00000000
C      5      0.00e+00    1.00000000
C      6      0.60e-07    0.99999994
C      7      0.00e+00    1.00000000
C      8      0.00e+00    1.00000000
C      9      0.60e-07    0.99999994
C     10      0.00e+00    1.00000000
C     11      0.00e+00    1.00000000
C     12      0.00e+00    1.00000000
C     13      0.00e+00    1.00000000
C     14      0.00e+00    1.00000000
C     15      0.60e-07    0.99999994
C     16      0.12e-06    0.99999988
C
C    SCUHRE TEST WITH NDIM =   4, KEY =  3
C    SUBROUTINE CALLS =    459, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.12e-06    0.99999988
C      2      0.00e+00    1.00000000
C      3      0.12e-06    0.99999988
C      4      0.00e+00    1.00000000
C      5      0.30e-06    0.99999970
C      6      0.60e-07    0.99999994
C      7      0.24e-06    0.99999976
C      8      0.24e-06    0.99999976
C      9      0.36e-06    0.99999964
C     10      0.00e+00    1.00000000
C     11      0.12e-06    0.99999988
C     12      0.12e-06    0.99999988
C     13      0.48e-06    0.99999952
C     14      0.36e-06    0.99999964
C     15      0.11e-05    0.99999893
C     16      0.54e-06    0.99999946
C
C    SCUHRE TEST WITH NDIM =   5, KEY =  4
C    SUBROUTINE CALLS =    309, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.00e+00    1.00000000
C      2      0.12e-06    1.00000012
C      3      0.12e-06    1.00000012
C      4      0.12e-06    1.00000012
C      5      0.60e-07    0.99999994
C      6      0.12e-06    1.00000012
C      7      0.00e+00    1.00000000
C      8      0.00e+00    1.00000000
C      9      0.12e-06    1.00000012
C     10      0.00e+00    1.00000000
C     11      0.12e-06    1.00000012
C     12      0.12e-06    1.00000012
C     13      0.12e-06    1.00000012
C     14      0.15e-05    1.00000155
C     15      0.15e-04    1.00001466
C     16      0.76e-04    1.00007582
C
C    SCUHRE TEST WITH NDIM =   6, KEY =  4
C    SUBROUTINE CALLS =   2737, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.23e-05    1.00000227
C
C    SCUHRE TEST WITH NDIM =   6, KEY =  4
C    SUBROUTINE CALLS =   5957, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.95e-06    1.00000095
C
C    SCUHRE TEST WITH NDIM =   6, KEY =  4
C    SUBROUTINE CALLS =  11753, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.60e-06    1.00000060
C
C    SCUHRE TEST WITH NDIM =   2, KEY =  1
C    SUBROUTINE CALLS =    455, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.83e-06    1.00000083
C
C    SCUHRE TEST WITH NDIM =   3, KEY =  2
C    SUBROUTINE CALLS =   1397, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.48e-06    1.00000048
C
C    SCUHRE TEST WITH NDIM =   5, KEY =  3
C    SUBROUTINE CALLS =   4641, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.18e-05    0.99999821
C
C    SCUHRE TEST WITH NDIM =   7, KEY =  4
C    SUBROUTINE CALLS =   9945, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.48e-06    1.00000048
C
C    SCUHRE TEST WITH NDIM =  10, KEY =  4
C    SUBROUTINE CALLS =  18975, IFAIL =  1
C      N   ABSOLUTE ERROR  INTEGRAL
C      1      0.32e-04    0.99996787
C
      EXTERNAL FTESTP,FTESTO,FTESTX
      INTEGER N,NW
      PARAMETER (NW = 5000)
      REAL A(10),B(10),WRKSTR(NW),ABSERR
      DO 10 N = 1,10
        A(N) = 0
        B(N) = 1
   10 CONTINUE
      ABSERR = 1E-10
C
C    TEST FOR INTEGRATING POLYNOMIALS
C     Selected monomials, degrees 0-13
C
C         Degree 13 rule
      CALL ATEST(2,A,B,195,16,FTESTP,ABSERR,1,NW,0,WRKSTR)
C         Degree 11 rule
      CALL ATEST(3,A,B,381,16,FTESTP,ABSERR,2,NW,0,WRKSTR)
C         Degree  9 rule
      CALL ATEST(4,A,B,459,16,FTESTP,ABSERR,3,NW,0,WRKSTR)
C         Degree  7 rule
      CALL ATEST(5,A,B,309,16,FTESTP,ABSERR,4,NW,0,WRKSTR)
C
C    TEST RESTART
C
      CALL ATEST(6,A,B,3000,1,FTESTO,ABSERR,4,NW,0,WRKSTR)
      CALL ATEST(6,A,B,6000,1,FTESTO,ABSERR,4,NW,1,WRKSTR)
      CALL ATEST(6,A,B,12000,1,FTESTO,ABSERR,4,NW,1,WRKSTR)
C
C    TEST WITH NDIM = 2, 3, 5, 7, 10
C
      CALL ATEST(2,A,B,500,1,FTESTX,ABSERR,1,NW,0,WRKSTR)
      CALL ATEST(3,A,B,1500,1,FTESTX,ABSERR,2,NW,0,WRKSTR)
      CALL ATEST(5,A,B,5000,1,FTESTX,ABSERR,3,NW,0,WRKSTR)
      CALL ATEST(7,A,B,10000,1,FTESTX,ABSERR,4,NW,0,WRKSTR)
      CALL ATEST(10,A,B,20000,1,FTESTX,ABSERR,4,NW,0,WRKSTR)
C
      END
      SUBROUTINE ATEST(NDIM, A, B, MAXCLS, NFUN, TSTSUB,
     * ABSERR, KEY, LENWRK, IREST, WRKSTR)
      EXTERNAL TSTSUB
      INTEGER NDIM, LENWRK, KEY, IREST, NEVAL
      REAL A(NDIM), B(NDIM), ABSEST(20), FINEST(20),
     * WRKSTR(LENWRK), ABSERR, REL
      SAVE NEVAL, ABSEST, FINEST
      INTEGER N, MAXCLS, NFUN, IFAIL
      REL = 0
      CALL SCUHRE(NDIM, NFUN, A, B, 0, MAXCLS, TSTSUB, ABSERR, REL,
     * KEY, LENWRK, IREST, FINEST, ABSEST, NEVAL, IFAIL, WRKSTR)
      WRITE (*,99999) NDIM, KEY
99999 FORMAT (/5X,'SCUHRE TEST WITH NDIM = ',I3,', KEY = ',I2)
      WRITE (*,99998) NEVAL, IFAIL
99998 FORMAT (5X, 'SUBROUTINE CALLS = ', I6, ', IFAIL = ', I2)
      WRITE (*,99997)
99997 FORMAT (7X, 'N   ABSOLUTE ERROR  INTEGRAL')
      DO 10 N = 1,NFUN
        WRITE (*,99996) N, ABS(FINEST(N)-1), FINEST(N)
99996   FORMAT (6X, I2, E14.2, F14.8)
   10 CONTINUE
      END
      SUBROUTINE FTESTP(NDIM, Z, NFUN, F)
C
C       Selected monomials, degree 0-13
C
      INTEGER NDIM, NFUN
      REAL Z(NDIM), F(NFUN)
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
      REAL Z(NDIM), F(NFUN)
      F(1) = 10/(1+0.1*Z(1)+0.2*Z(2)+0.3*Z(3)+0.4*Z(4)+0.5*Z(5)+0.6*
     * Z(6))**6/0.2057746
      END
      SUBROUTINE FTESTX(NDIM, Z, NFUN, F)
C
C     Sum of Cosines
C
      INTEGER N, NDIM, NFUN
      REAL Z(NDIM), F(NFUN), SUM
      SUM = 0
      DO 10 N = 1,2
        SUM = SUM - COS(10*Z(N))/0.0544021110889370
   10 CONTINUE
      F(1) = SUM/2
      END
