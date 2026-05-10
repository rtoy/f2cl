      program tstintsin
c     A user-defined function named SIN that returns 2*x.  The
c     program calls SIN(1.57) twice -- once from a routine that
c     declares INTRINSIC SIN (so the standard requires the
c     intrinsic, sin(1.57) ~= 1.00), once from a routine that
c     declares EXTERNAL SIN (so the standard requires the user
c     function, 2*1.57 = 3.14).
c
c     This is the SIN counterpart to tst-intrinsic-shadow.f.  SIN
c     collides with cl:SIN, so the user-defined function must be
c     renamed (to SIN$) on the Lisp side; the test exercises both
c     the rename and INTRINSIC-vs-EXTERNAL name resolution.
c
c     If f2cl honours INTRINSIC and renames the user SIN, yint is
c     1.00 and yext is 3.14.  Equal values mean INTRINSIC and
c     EXTERNAL have collapsed into the same behaviour.
      real yint, yext
      call callint(yint)
      call callext(yext)
      write(*,10) yint, yext
   10 format(' int =', f6.2, '  ext =', f6.2)
      end

      subroutine callint(y)
      real y
      intrinsic sin
      y = sin(1.57)
      return
      end

      subroutine callext(y)
      real y
      external sin
      real sin
      y = sin(1.57)
      return
      end

      real function sin(x)
      real x
      sin = 2.0 * x
      return
      end
