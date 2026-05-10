      program tstintarg
c     INTRINSIC declaration for a standard 77 intrinsic, passed as
c     an actual argument.  This is the canonical reason INTRINSIC
c     exists in Fortran.  At the call site for apply, f2cl emits
c     #'CL:SIN rather than the bare symbol SIN (which would be
c     parsed as a variable reference); the translated code runs
c     and prints 1.00.
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
