CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C
C   FFTPACK 5.0 
C
C   Authors:  Paul N. Swarztrauber and Richard A. Valent
C
C   $Id$
C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      SUBROUTINE C1F2KB (IDO,L1,NA,CC,IN1,CH,IN2,WA)
      REAL  CC(IN1,L1,IDO,2),CH(IN2,L1,2,IDO),WA(IDO,1,2)
C
      IF (IDO.GT.1 .OR. NA.EQ.1) GO TO 102
      DO 101 K=1,L1
         CHOLD1 = CC(1,K,1,1)+CC(1,K,1,2)
         CC(1,K,1,2) = CC(1,K,1,1)-CC(1,K,1,2)
         CC(1,K,1,1) = CHOLD1
         CHOLD2 = CC(2,K,1,1)+CC(2,K,1,2)
         CC(2,K,1,2) = CC(2,K,1,1)-CC(2,K,1,2)
         CC(2,K,1,1) = CHOLD2
  101 CONTINUE
      RETURN
  102 DO 103 K=1,L1
         CH(1,K,1,1) = CC(1,K,1,1)+CC(1,K,1,2)
         CH(1,K,2,1) = CC(1,K,1,1)-CC(1,K,1,2)
         CH(2,K,1,1) = CC(2,K,1,1)+CC(2,K,1,2)
         CH(2,K,2,1) = CC(2,K,1,1)-CC(2,K,1,2)
  103 CONTINUE
      IF(IDO .EQ. 1) RETURN
      DO 105 I=2,IDO
         DO 104 K=1,L1
            CH(1,K,1,I) = CC(1,K,I,1)+CC(1,K,I,2)
            TR2 = CC(1,K,I,1)-CC(1,K,I,2)
            CH(2,K,1,I) = CC(2,K,I,1)+CC(2,K,I,2)
            TI2 = CC(2,K,I,1)-CC(2,K,I,2)
            CH(2,K,2,I) = WA(I,1,1)*TI2+WA(I,1,2)*TR2
            CH(1,K,2,I) = WA(I,1,1)*TR2-WA(I,1,2)*TI2
  104    CONTINUE
  105 CONTINUE
      RETURN
      END
