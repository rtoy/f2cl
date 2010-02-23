CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C
C   FFTPACK 5.0 
C
C   Authors:  Paul N. Swarztrauber and Richard A. Valent
C
C   $Id$
C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      LOGICAL FUNCTION XERCON (INC,JUMP,N,LOT)
      INTEGER INC, JUMP, N, LOT
      INTEGER I, J, JNEW, LCM
C
C     Definition: positive integers INC, JUMP, N and LOT are consistent 
C                                                            ----------
C     if I1*INC + J1*JUMP = I2*INC + J2*JUMP for I1,I2 < N and J1,J2 
C     < LOT implies I1=I2 and J1=J2.
C
C     For multiple FFTs to execute correctly, input parameters INC, 
C     JUMP, N and LOT must be consistent ... otherwise at least one 
C     array element mistakenly is transformed more than once.
C
C     XERCON = .TRUE. if and only if INC, JUMP, N and LOT are 
C     consistent.
C
C     ------------------------------------------------------------------
C
C     Compute I = greatest common divisor (INC, JUMP)
C
      I = INC
      J = JUMP
   10 CONTINUE
      IF (J .NE. 0) THEN
        JNEW = MOD(I,J)
        I    = J
        J    = JNEW
        GO TO 10
      ENDIF
C
C Compute LCM = least common multiple (INC, JUMP)
C
      LCM = (INC*JUMP)/I
C
C Check consistency of INC, JUMP, N, LOT
C
      IF (LCM .LE. (N-1)*INC .AND. LCM .LE. (LOT-1)*JUMP) THEN
        XERCON = .FALSE.
      ELSE
        XERCON = .TRUE.
      ENDIF
C
      RETURN
      END
