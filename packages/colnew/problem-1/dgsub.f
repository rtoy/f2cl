C................................................................       DGS   10
      SUBROUTINE DGSUB(I, Z, DG)                                        DGS   20
      REAL*8 Z(4), DG(4)
      DO 10 J=1,4
        DG(J) = 0.
   10 CONTINUE
      GO TO (20, 30, 20, 30), I
   20 DG(1) = 1.
      RETURN
   30 DG(3) = 1.
      RETURN
      END
