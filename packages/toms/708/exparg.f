      REAL*8 FUNCTION EXPARG (L)
      implicit double precision (A-H,O-Z)
C-------------------------------------------------------------------- 
C     IF L = 0 THEN  EXPARG(L) = THE LARGEST POSITIVE W FOR WHICH
C     EXP(W) CAN BE COMPUTED. 
C
C     IF L IS NONZERO THEN  EXPARG(L) = THE LARGEST NEGATIVE W FOR
C     WHICH THE COMPUTED VALUE OF EXP(W) IS NONZERO.
C
C     NOTE... ONLY AN APPROXIMATE VALUE FOR EXPARG(L) IS NEEDED.
C-------------------------------------------------------------------- 
      INTEGER B
      REAL*8 LNB
C
      B = IPMPAR(4) 
      IF (B .NE. 2) GO TO 10
         LNB = .69314718055995d0
         GO TO 50
   10 IF (B .NE. 8) GO TO 20
         LNB = 2.0794415416798d0
         GO TO 50
   20 IF (B .NE. 16) GO TO 30 
         LNB = 2.7725887222398d0
         GO TO 50
   30 LNB = LOG(DBLE(B))
C
   50 IF (L .EQ. 0) GO TO 60
         M = IPMPAR(6) - 1
         EXPARG = 0.99999d0 * (M * LNB)
         RETURN
   60 M = IPMPAR(7) 
      EXPARG = 0.99999d0 * (M * LNB)
      RETURN
      END 
