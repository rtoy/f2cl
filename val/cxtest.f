c     Complex list-directed output tests.  Each subroutine writes
c     one complex value to unit *, using the runtime's list-directed
c     formatting.  The companion deftests in
c     regression/test-fortran-format.lisp check the captured stdout
c     against gfortran's output for the same Fortran source.
c
c     Translated with f2cl::*use-fortran-format-printer* = T so the
c     generated code uses the new format-write macro rather than the
c     legacy fformat.

      subroutine cx_simple
      complex c
      c = (1.5, -2.5)
      write(*,*) c
      end

      subroutine cx_unit
      complex c
      c = (1.0, 1.0)
      write(*,*) c
      end

      subroutine cx_eform
      complex c
      c = (1.0e10, -1.0e-10)
      write(*,*) c
      end

      subroutine cx_fform_wide
      complex c
      c = (0.001, 1000.0)
      write(*,*) c
      end

      subroutine cx_mixed
      complex c
      c = (1.5, 1.0e10)
      write(*,*) c
      end

      subroutine cx_zero
      complex c
      c = (0.0, 0.0)
      write(*,*) c
      end

      subroutine cx_zero_imag
      complex c
      c = (0.0, -1.5)
      write(*,*) c
      end

      subroutine cz_simple
      double complex z
      z = (1.0d0, 2.0d0)
      write(*,*) z
      end

      subroutine cz_full_precision
      double complex z
      z = (1.23456789012345d0, -9.87654321098765d0)
      write(*,*) z
      end

      subroutine cz_eform
      double complex z
      z = (1.0d10, -1.0d-10)
      write(*,*) z
      end
