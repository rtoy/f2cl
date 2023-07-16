      SUBROUTINE SCALE2 ( XMIN, XMAX, N, XMINP, XMAXP, DIST )

c*********************************************************************72
c
cc SCALE2
c
C  ANSI FORTRAN
C  GIVEN XMIN, XMAX AND N, SCALE2 FINDS A NEW RANGE XMINP AND
C  XMAXP DIVISIBLE INTO EXACTLY N LINEAR INTERVALS OF SIZE
C  DIST, WHERE N IS GREATER THAN 1.
c
      DIMENSION VINT(5)
      DATA VINT(1), VINT(2), VINT(3), VINT(4), VINT(5) / 1., 2.,
     &  5., 10., 20. /
c
C  CHECK WHETHER PROPER INPUT VALUES WERE SUPPLIED.
c
      IF ( XMIN .LT. XMAX .AND. N .GT. 0 ) GO TO 10
      WRITE ( 6, 99999 )
99999 FORMAT ( 34H IMPROPER INPUT SUPPLIED TO SCALE2 )
      RETURN
10    DEL = .00002
      FN = N
c
C  FIND APPROXIMATE INTERVAL SIZE A.
c
      A = ( XMAX - XMIN ) / FN
      AL = ALOG10 ( A )
      NAL = AL
      IF ( A .LT. 1. ) NAL = NAL - 1
c
C  A IS SCALED INTO VARIABLE NAMED B BETWEEN 1 AND 10.
c
      B = A / 10.**NAL
c
C  THE CLOSEST PERMISSIBLE VALUE FOR B IS FOUND.
c
      DO 20 I = 1, 3
        IF ( B .LT. ( VINT(I) + DEL ) ) GO TO 30
20    CONTINUE
      I = 4
c
C  THE INTERVAL SIZE IS COMPUTED.
c
30    DIST = VINT(I) * 10.**NAL
      FM1 = XMIN / DIST
      M1 = FM1
      IF ( FM1 .LT. 0. ) M1 = M1 - 1
      IF ( ABS ( FLOAT ( M1 ) + 1. - FM1 ) .LT. DEL ) M1 = M1 + 1
c
C  THE NEW MINIMUM AND MAXIMUM LIMITS ARE FOUND.
c
      XMINP = DIST * FLOAT ( M1 )
      FM2 = XMAX / DIST
      M2 = FM2 + 1.
      IF ( FM2 .LT. ( -1. ) ) M2 = M2 - 1
      IF ( ABS ( FM2 + 1. - FLOAT ( M2 ) ) .LT. DEL ) M2 = M2 - 1
      XMAXP = DIST * FLOAT ( M2 )
c
C  CHECK WHETHER A SECOND PASS IS REQUIRED.
c
      NP = M2 - M1
      IF ( NP .LE. N ) GO TO 40
      I = I + 1
      GO TO 30
40    NX = ( N - NP ) / 2
      XMINP = XMINP - FLOAT ( NX ) * DIST
      XMAXP = XMINP + FLOAT ( N ) * DIST
c
C  ADJUST LIMITS TO ACCOUNT FOR ROUND-OFF IF NECESSARY.
c
      IF ( XMINP .GT. XMIN ) XMINP = XMIN
      IF ( XMAXP .LT. XMAX ) XMAXP = XMAX
      RETURN
      END