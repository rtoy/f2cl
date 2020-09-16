C     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
C     *                                                               *
C     *                  copyright (c) 2011 by UCAR                   *
C     *                                                               *
C     *       University Corporation for Atmospheric Research         *
C     *                                                               *
C     *                      all rights reserved                      *
C     *                                                               *
C     *                     FFTPACK  version 5.1                      *
C     *                                                               *
C     *                 A Fortran Package of Fast Fourier             *
C     *                                                               *
C     *                Subroutines and Example Programs               *
C     *                                                               *
C     *                             by                                *
C     *                                                               *
C     *               Paul Swarztrauber and Dick Valent               *
C     *                                                               *
C     *                             of                                *
C     *                                                               *
C     *         the National Center for Atmospheric Research          *
C     *                                                               *
C     *                Boulder, Colorado  (80307)  U.S.A.             *
C     *                                                               *
C     *                   which is sponsored by                       *
C     *                                                               *
C     *              the National Science Foundation                  *
C     *                                                               *
C     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
C
      PROGRAM TCOST1
      IMPLICIT NONE
C
      INTEGER I, N, LENSAV, IER, LENWRK
      PARAMETER(N=1000) 
C     PARAMETER(LENSAV= 2*N + INT(LOG(REAL(N))/LOG(2.)) + 4)
      PARAMETER(LENSAV= 2013)
      PARAMETER(LENWRK=N-1)
      REAL R(N), RCOPY(N)
      REAL WSAVE(LENSAV), WORK(LENWRK), DIFF
C
C --- INITIALIZE FFT 
C
      WRITE(6,*) 'PROGRAM TCOST1 AND RELATED MESSAGES:'
      CALL COST1I (N,WSAVE,LENSAV,IER)
      IF (IER.NE.0) THEN
         WRITE(6,*) 'ERROR ',IER,' IN ROUTINE COST1I'
         STOP
      END IF
C
C --- GENERATE TEST VECTOR FOR FORWARD-BACKWARD TEST
C
      CALL RANDOM_SEED()
      CALL RANDOM_NUMBER(R)
      RCOPY = R
C
C --- PERFORM FORWARD TRANSFORM
C
      CALL COST1F (N,1,R,N,
     .             WSAVE,LENSAV,WORK,LENWRK,IER)
      IF (IER.NE.0) THEN
         WRITE(6,*) 'ERROR ',IER,' IN ROUTINE COST1F !'
         STOP
      END IF
C
C --- PERFORM BACKWARD TRANSFORM
C
      CALL COST1B (N,1,R,N,
     .             WSAVE,LENSAV,WORK,LENWRK,IER)
      IF (IER.NE.0) THEN
         WRITE(6,*) 'ERROR ',IER,' IN ROUTINE COST1B !'
         STOP
      END IF
C
C --- PRINT TEST RESULTS
C
      IER = 0
      DIFF = 0.
      DO I=1,N
         DIFF = MAX(DIFF,ABS(R(I)-RCOPY(I)))
      END DO
      WRITE(6,*) 'COST1 FORWARD-BACKWARD MAX ERROR =',DIFF
C
C --- GENERATE TEST VECTOR FOR BACKWARD-FORWARD TEST
C
      CALL RANDOM_SEED()
      CALL RANDOM_NUMBER(R)
      RCOPY = R
C
C --- PERFORM BACKWARD TRANSFORM
C
      CALL COST1B (N,1,R,N,
     .             WSAVE,LENSAV,WORK,LENWRK,IER)
      IF (IER.NE.0) THEN
         WRITE(6,*) 'ERROR ',IER,' IN ROUTINE COST1B !'
         STOP
      END IF
C
C --- PERFORM FORWARD TRANSFORM
C
      CALL COST1F (N,1,R,N,
     .             WSAVE,LENSAV,WORK,LENWRK,IER)
      IF (IER.NE.0) THEN
         WRITE(6,*) 'ERROR ',IER,' IN ROUTINE COST1F !'
         STOP
      END IF
C
C
C --- PRINT TEST RESULTS
      IER = 0
      DIFF = 0.
      DO I=1,N
         DIFF = MAX(DIFF,ABS(R(I)-RCOPY(I)))
      END DO
      WRITE(6,*) 'COST1 BACKWARD-FORWARD MAX ERROR =',DIFF
C
      WRITE(6,'(A,/)') ' END PROGRAM TCOST1 AND RELATED MESSAGES'
      STOP
      END
