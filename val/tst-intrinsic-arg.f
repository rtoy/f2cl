      program tstintarg
c     INTRINSIC declaration for a standard 77 intrinsic, passed as
c     an actual argument.  This is the canonical reason INTRINSIC
c     exists in Fortran.  f2cl translates this file without error,
c     so we use a convert-only test.  At runtime the translated code
c     fails because f2cl's call-site translator emits SIN as a local
c     variable rather than #'SIN -- a bug independent of
c     parse-intrinsic.
      real y
      intrinsic sin
      external apply
      real apply
      y = apply(sin, 1.57)
      write(*,10) y
   10 format(' apply(sin, 1.57) =', f6.2)
      end

      real function apply(f, x)
      external f
      real f, x
      apply = f(x)
      return
      end
