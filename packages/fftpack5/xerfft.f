CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C
C   FFTPACK 5.0 
C
C   Authors:  Paul N. Swarztrauber and Richard A. Valent
C
C   $Id$
C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      SUBROUTINE XERFFT( SRNAME, INFO)
C
C     .. Scalar Arguments ..
      CHARACTER*6        SRNAME
      INTEGER            INFO
C
C     ..
C
C  Purpose
C  =======
C
C  XERFFT  is an error handler for library FFTPACK version 5.0 routines.
C  It is called by an FFTPACK 5.0 routine if an input parameter has an
C  invalid value.  A message is printed and execution stops.
C
C  Installers may consider modifying the STOP statement in order to
C  call system-specific exception-handling facilities.
C
C  Arguments
C  =========
C
C  SRNAME  (input) CHARACTER*6
C          The name of the routine which called XERFFT.
C
C  INFO    (input) INTEGER
C          When a single  invalid parameter in the parameter list of
C          the calling routine has been detected, INFO is the position
C          of that parameter.  In the case when an illegal combination
C          of LOT, JUMP, N, and INC has been detected, the calling
C          subprogram calls XERFFT with INFO = -1.
C
C =====================================================================
C
C     .. Executable Statements ..
C
      IF (INFO .GE. 1) THEN
        WRITE( *, '(A,A,A,I3,A)') ' ** On entry to ', SRNAME,
     1    ' parameter number ', INFO, ' had an illegal value'
      ELSEIF (INFO .EQ. -1) THEN
        WRITE( *, '(A,A,A,A)') ' ** On entry to ', SRNAME,
     1    ' parameters LOT, JUMP, N and INC are inconsistent'
      ELSEIF (INFO .EQ. -2) THEN
        WRITE( *, '(A,A,A,A)') ' ** On entry to ', SRNAME,
     1    ' parameter L is greater than LDIM'
      ELSEIF (INFO .EQ. -3) THEN
        WRITE( *, '(A,A,A,A)') ' ** On entry to ', SRNAME,
     1    ' parameter M is greater than MDIM'
      ELSEIF (INFO .EQ. -5) THEN
        WRITE( *, '(A,A,A,A)') ' ** Within ', SRNAME,
     1    ' input error returned by lower level routine'
      ELSEIF (INFO .EQ. -6) THEN
        WRITE( *, '(A,A,A,A)') ' ** On entry to ', SRNAME,
     1    ' parameter LDIM is less than 2*(L/2+1)'
      ENDIF
*
      STOP
*
*     End of XERFFT
*
      END
