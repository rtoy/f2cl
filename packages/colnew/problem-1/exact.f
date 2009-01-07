C................................................................       EXA   10
      SUBROUTINE EXACT(X, U)                                            EXA   20
      REAL*8 U(4), X
C     EXACT SOLUTION
      U(1) = .25*(10.*LOG(2.)-3.)*(1.-X) + .5*(1./X+(3.+X)*LOG(X)-X)
      U(2) = -.25*(10.*LOG(2.)-3.) + .5*(-1./X/X+LOG(X)+(3.+X)/X-1.)
      U(3) = .5*(2./X**3+1./X-3./X/X)
      U(4) = .5*(-6./X**4-1./X/X+6./X**3)
      RETURN
      END
