      SUBROUTINE RHOJS(A,LAMBDA,X,QR,LENQR,PIVOT,PP,PAR,IPAR)
C     INTEGER IPAR(1),LENQR,N,PIVOT(N+2)
C     DOUBLE PRECISION A(N),LAMBDA,PAR(1),PP(N),QR(LENQR),X(N)
C
C PAR(1:*) AND IPAR(1:*) ARE ARRAYS FOR (OPTIONAL) USER PARAMETERS,
C    WHICH ARE SIMPLY PASSED THROUGH TO THE USER WRITTEN SUBROUTINES
C    RHOA, RHOJS.
C
C Evaluate the N X N symmetric Jacobian matrix [D RHO/DX] at (A,X,LAMBDA),
C and return the result in packed skyline storage format in QR.  LENQR is
C the length of QR, and PIVOT contains the indices of the diagonal elements
C of [D RHO/DX] within QR.  PP contains -[D RHO/D LAMBDA] evaluated at
C (A,X,LAMBDA).  Note the minus sign in the definition of PP.
C
      RETURN
      END
