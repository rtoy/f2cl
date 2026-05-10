      program tstintdirect
c     INTRINSIC declaration for a standard 77 intrinsic, called
c     directly.  This is the trivial case: the declaration is
c     redundant because f2cl's hardcoded *intrinsic-function-names*
c     already contains SIN, but it must not break translation.
c
c     1.57 is roughly pi/2; sin(1.57) is within 5e-7 of 1.0, so the
c     output stays distinguishable from the all-zero output you'd
c     get if the input never reached SIN at all.
      real x, y
      intrinsic sin
      x = 1.57
      y = sin(x)
      write(*,10) y
   10 format(' sin(1.57) =', f6.2)
      end
