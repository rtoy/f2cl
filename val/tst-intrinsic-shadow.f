      real function aint(x)
      real x
      aint = 2.0 * x
      return
      end

      subroutine callint(y)
      real y
      intrinsic aint
      y = aint(3.7)
      return
      end

      subroutine callext(y)
      real y
      external aint
      real aint
      y = aint(3.7)
      return
      end

      program tstintshadow
c     A user-defined function called AINT that returns 2*x.  The
c     program then calls AINT(3.7) twice -- once from a routine
c     that declares INTRINSIC AINT (so the Fortran standard
c     requires the intrinsic, which truncates 3.7 to 3.0), once
c     from a routine that declares EXTERNAL AINT (so the standard
c     requires the user function, which returns 2*3.7 = 7.4).
c
c     If f2cl honours INTRINSIC for name resolution, yint is 3.00
c     and yext is 7.40.  If the two values are equal, INTRINSIC is
c     not actually steering name resolution.
c
c     AINT is used instead of SIN because SIN collides with cl:SIN
c     and triggers SBCL package locks; AINT is a Fortran intrinsic
c     with no Common Lisp counterpart of the same name.
      real yint, yext
      call callint(yint)
      call callext(yext)
      write(*,10) yint, yext
   10 format(' int =', f6.2, '  ext =', f6.2)
      end

