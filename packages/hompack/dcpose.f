      SUBROUTINE DCPOSE(NDIM,N,QR,ALPHA,PIVOT,IERR,Y,SUM)
C
C SUBROUTINE  DCPOSE  IS A MODIFICATION OF THE ALGOL PROCEDURE
C DECOMPOSE  IN P. BUSINGER AND G. H. GOLUB, LINEAR LEAST
C SQUARES SOLUTIONS BY HOUSEHOLDER TRANSFORMATIONS,
C NUMER. MATH. 7 (1965) 269-276.
C
      INTEGER NDIM,N,PIVOT(1)
      DOUBLE PRECISION QR(NDIM,1),ALPHA(N)
      INTEGER IERR,I,J,JBAR,K,KP1,NP1
      DOUBLE PRECISION BETA,SIGMA,ALPHAK,QRKK,Y(1),SUM(1)
      DOUBLE PRECISION DDOT
      IERR=0
      NP1=N+1
      DO 20 J=1,NP1
        SUM(J)=DDOT(N,QR(1,J),1,QR(1,J),1)
20    PIVOT(J)=J
      DO 500 K=1,N
        SIGMA=SUM(K)
        JBAR=K
        KP1=K+1
        DO 40 J=KP1,NP1
          IF (SIGMA .GE. SUM(J)) GO TO 40
          SIGMA=SUM(J)
          JBAR=J
40      CONTINUE
        IF (JBAR .EQ. K) GO TO 70
        I=PIVOT(K)
        PIVOT(K)=PIVOT(JBAR)
        PIVOT(JBAR)=I
        SUM(JBAR)=SUM(K)
        SUM(K)=SIGMA
        DO 50 I=1,N
          SIGMA=QR(I,K)
          QR(I,K)=QR(I,JBAR)
          QR(I,JBAR)=SIGMA
50      CONTINUE
C   END OF COLUMN INTERCHANGE.
70      SIGMA=DDOT(N-K+1,QR(K,K),1,QR(K,K),1)
        IF (SIGMA .NE. 0.0) GO TO 60
        IERR=1
        RETURN
60      IF (K .EQ. N) GO TO 500
        QRKK=QR(K,K)
        ALPHAK=-SQRT(SIGMA)
        IF (QRKK .LT. 0.0) ALPHAK=-ALPHAK
        ALPHA(K)=ALPHAK
        BETA=1.0/(SIGMA-QRKK*ALPHAK)
        QR(K,K)=QRKK-ALPHAK
        DO 80 J=KP1,NP1
80      Y(J)=BETA*DDOT(N-K+1,QR(K,K),1,QR(K,J),1)
        DO 100 J=KP1,NP1
          DO 90 I=K,N
            QR(I,J)=QR(I,J)-QR(I,K)*Y(J)
90        CONTINUE
          SUM(J)=SUM(J)-QR(K,J)**2
100     CONTINUE
500   CONTINUE
      ALPHA(N)=QR(N,N)
      RETURN
      END
