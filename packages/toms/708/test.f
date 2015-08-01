      PROGRAM BTST
      implicit double precision (A-H,O-Z)
C-----------------------------------------------------------------------
C
C     SAMPLE PROGRAM USING BRATIO. GIVEN THE NONNEGATIVE VALUES
C     A, B, X, Y WHERE A AND B ARE NOT BOTH 0 AND X + Y = 1. THEN
C
C              CALL BRATIO (A, B, X, Y, W, W1, IERR)
C
C     COMPUTES THE VALUES
C
C                W = I (A,B)  AND W1 = 1 - I (A,B).
C                     X                     X
C
C     IERR IS A VARIABLE THAT REPORTS THE STATUS OF THE RESULTS.
C     IF NO INPUT ERRORS ARE DETECTED THEN IERR IS SET TO 0 AND
C     W AND W1 ARE COMPUTED. FOR MORE DETAILS SEE THE IN-LINE
C     DOCUMENTATION OF BRATIO.
C
C     THE LAST FUNCTION IN THIS PACKAGE, IPMPAR, MUST BE DEFINED
C     FOR THE PARTICULAR COMPUTER BEING USED. FOR DETAILS SEE THE
C     IN-LINE DOCUMENTATION OF IPMPAR.
C
C     NO DATA IS READ. THE OUTPUT FOR THE PROGRAM IS WRITTEN ON
C     UNIT 6. THE FIRST STATMENT OF THIS TEXT MAY BE USED TO
C     BEGIN THE PROGRAM FOR THE CDC 6000-7000 SERIES COMPUTERS.
C-----------------------------------------------------------------------
      WRITE (6,1)
    1 FORMAT(11H1   X     Y,11X,1HW,14X,2HW1/)
    2 FORMAT(2F6.2,2E22.15)
C
      A = 5.3d0
      B = 10.1d0
      X = 1.d-2
      DO 10 L = 1,50
         Y = 0.5 + (0.5 - X)
         CALL BRATIO (A, B, X, Y, W, W1, IERR)
         IF (IERR .NE. 0) STOP
         WRITE (6,2) X, Y, W, W1
         X = X + 1.d-2
   10 CONTINUE
      STOP
      END 
