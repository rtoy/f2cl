      REAL*8 FUNCTION BETALN (A0, B0)
      implicit double precision (A-H,O-Z)
C-----------------------------------------------------------------------
C     EVALUATION OF THE LOGARITHM OF THE BETA FUNCTION
C-----------------------------------------------------------------------
C     E = 0.5*LN(2*PI)
C--------------------------
      DATA E /.918938533204673d0/
C--------------------------
      A = AMIN1(A0,B0)
      B = AMAX1(A0,B0)
      IF (A .GE. 8.0) GO TO 60
      IF (A .GE. 1.0) GO TO 20
C-----------------------------------------------------------------------
C                   PROCEDURE WHEN A .LT. 1
C-----------------------------------------------------------------------
      IF (B .GE. 8.0) GO TO 10
         BETALN = GAMLN(A) + (GAMLN(B) - GAMLN(A + B))
         RETURN
   10 BETALN = GAMLN(A) + ALGDIV(A,B)
      RETURN
C-----------------------------------------------------------------------
C                PROCEDURE WHEN 1 .LE. A .LT. 8
C-----------------------------------------------------------------------
   20 IF (A .GT. 2.0) GO TO 30
      IF (B .GT. 2.0) GO TO 21
         BETALN = GAMLN(A) + GAMLN(B) - GSUMLN(A,B)
         RETURN
   21 W = 0.0
      IF (B .LT. 8.0) GO TO 40
         BETALN = GAMLN(A) + ALGDIV(A,B)
         RETURN
C
C                REDUCTION OF A WHEN B .LE. 1000
C
   30 IF (B .GT. 1000.0) GO TO 50
      N = A - 1.0
      W = 1.0
      DO 31 I = 1,N 
         A = A - 1.0
         H = A/B
         W = W * (H/(1.0 + H))
   31 CONTINUE
      W = LOG(W)
      IF (B .LT. 8.0) GO TO 40
      BETALN = W + GAMLN(A) + ALGDIV(A,B)
      RETURN
C
C                 REDUCTION OF B WHEN B .LT. 8
C
   40 N = B - 1.0
      Z = 1.0
      DO 41 I = 1,N 
         B = B - 1.0
         Z = Z * (B/(A + B))
   41 CONTINUE
      BETALN = W + LOG(Z) + (GAMLN(A) + (GAMLN(B) - GSUMLN(A,B)))
      RETURN
C
C                REDUCTION OF A WHEN B .GT. 1000
C
   50 N = A - 1.0
      W = 1.0
      DO 51 I = 1,N 
         A = A - 1.0
         W = W * (A/(1.0 + A/B))
   51 CONTINUE
      BETALN = (LOG(W) - N*LOG(B)) + (GAMLN(A) + ALGDIV(A,B))
      RETURN
C-----------------------------------------------------------------------
C                   PROCEDURE WHEN A .GE. 8
C-----------------------------------------------------------------------
   60 W = BCORR(A,B)
      H = A/B
      C = H/(1.0 + H)
      U = -(A - 0.5)*LOG(C)
      V = B*ALNREL(H)
      IF (U .LE. V) GO TO 61
         BETALN = (((-0.5*LOG(B) + E) + W) - V) - U
         RETURN
   61 BETALN = (((-0.5*LOG(B) + E) + W) - U) - V 
      RETURN
      END 
