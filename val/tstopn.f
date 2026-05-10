      PROGRAM TSTOPN
C
C     Tests for f2cl's STATUS=OLD / STATUS=NEW handling, including
C     ERR= and IOSTAT= routing for missing/existing files and other
C     filesystem errors.  Each test sets OK=.TRUE. for pass and prints
C     a labeled PASS/FAIL line.
C
C     Fixture files (built in the working directory by the harness):
C       exists.dat   -- regular file present
C       already.dat  -- regular file present
C       barrier      -- regular file (used as non-directory parent)
C     Files that must NOT exist:
C       nope.dat, nope2.dat, fresh.dat
C
      LOGICAL OK
      INTEGER IOS, NPASS, NFAIL
      NPASS = 0
      NFAIL = 0
C
C     T1: STATUS='OLD' on existing file -> succeeds.
      OPEN (UNIT=10, FILE='exists.dat', STATUS='OLD', IOSTAT=IOS)
      OK = IOS .EQ. 0
      IF (OK) THEN
         NPASS = NPASS + 1
         WRITE (*,9000) 'T1 OLD existing IOSTAT=0  '
      ELSE
         NFAIL = NFAIL + 1
         WRITE (*,9001) 'T1 OLD existing IOSTAT=0  '
      ENDIF
C
C     T2: STATUS='OLD' on missing file with IOSTAT= -> nonzero IOSTAT.
C     (The original bug: this used to silently leave IOSTAT=0.)
      OPEN (UNIT=11, FILE='nope.dat', STATUS='OLD', IOSTAT=IOS)
      OK = IOS .NE. 0
      IF (OK) THEN
         NPASS = NPASS + 1
         WRITE (*,9000) 'T2 OLD missing  IOSTAT/=0 '
      ELSE
         NFAIL = NFAIL + 1
         WRITE (*,9001) 'T2 OLD missing  IOSTAT/=0 '
      ENDIF
C
C     T3: STATUS='OLD' on missing file with ERR= -> jumps to label.
      OK = .FALSE.
      OPEN (UNIT=12, FILE='nope2.dat', STATUS='OLD', ERR=130)
      GOTO 140
  130 OK = .TRUE.
  140 IF (OK) THEN
         NPASS = NPASS + 1
         WRITE (*,9000) 'T3 OLD missing  ERR= taken'
      ELSE
         NFAIL = NFAIL + 1
         WRITE (*,9001) 'T3 OLD missing  ERR= taken'
      ENDIF
C
C     T4: STATUS='NEW' on missing file -> succeeds.
      OPEN (UNIT=13, FILE='fresh.dat', STATUS='NEW', IOSTAT=IOS)
      OK = IOS .EQ. 0
      IF (OK) THEN
         NPASS = NPASS + 1
         WRITE (*,9000) 'T4 NEW missing  IOSTAT=0  '
      ELSE
         NFAIL = NFAIL + 1
         WRITE (*,9001) 'T4 NEW missing  IOSTAT=0  '
      ENDIF
C
C     T5: STATUS='NEW' on existing file -> nonzero IOSTAT.
      OPEN (UNIT=14, FILE='already.dat', STATUS='NEW', IOSTAT=IOS)
      OK = IOS .NE. 0
      IF (OK) THEN
         NPASS = NPASS + 1
         WRITE (*,9000) 'T5 NEW existing IOSTAT/=0 '
      ELSE
         NFAIL = NFAIL + 1
         WRITE (*,9001) 'T5 NEW existing IOSTAT/=0 '
      ENDIF
C
C     T6: ENOTDIR (path through a regular file) with IOSTAT=.
C     Original code: a Lisp error escaped past IOSTAT=.  Patched code:
C     the file-error is caught and routed -> nonzero IOSTAT.
      OPEN (UNIT=15, FILE='barrier/inside.dat', STATUS='UNKNOWN',
     +      IOSTAT=IOS)
      OK = IOS .NE. 0
      IF (OK) THEN
         NPASS = NPASS + 1
         WRITE (*,9000) 'T6 ENOTDIR      IOSTAT/=0 '
      ELSE
         NFAIL = NFAIL + 1
         WRITE (*,9001) 'T6 ENOTDIR      IOSTAT/=0 '
      ENDIF
C
C     T7: ENOTDIR with ERR= -> jumps to label.
      OK = .FALSE.
      OPEN (UNIT=16, FILE='barrier/inside2.dat', STATUS='UNKNOWN',
     +      ERR=170)
      GOTO 180
  170 OK = .TRUE.
  180 IF (OK) THEN
         NPASS = NPASS + 1
         WRITE (*,9000) 'T7 ENOTDIR      ERR= taken'
      ELSE
         NFAIL = NFAIL + 1
         WRITE (*,9001) 'T7 ENOTDIR      ERR= taken'
      ENDIF
C
      WRITE (*,9002) NPASS, NFAIL
 9000 FORMAT (1X,'PASS ',A)
 9001 FORMAT (1X,'FAIL ',A)
 9002 FORMAT (1X,I3,' passed, ',I3,' failed.')
      END
