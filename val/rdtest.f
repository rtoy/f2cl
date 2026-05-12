c     Read-side tests for the new FORMAT-READ path.  Each subroutine
c     OPENs 'rdtest.dat' on unit 20 (STATUS='OLD', so a missing file
c     errors cleanly), reads one or more values per the test's
c     intended format, CLOSEs the unit, and writes the result to
c     unit 6 using the new list-directed printer.  Companion deftests
c     in regression/test-fortran-format-read.lisp stage rdtest.dat
c     before each call and check the captured stdout.
c
c     Translated with f2cl::*use-fortran-format-printer* = T so the
c     READs become FORMAT-READ calls (not legacy READ-FILE) and the
c     WRITEs become FORMAT-WRITE calls.

      subroutine rd_int_list
c     List-directed read of three integers.
      integer i, j, k
      open(unit=20, file='rdtest.dat', status='old')
      read(20,*) i, j, k
      close(unit=20)
      write(6,*) i, j, k
      end

      subroutine rd_int_fmt
c     Formatted (I5) read.  The legacy READ-FILE path ignores the
c     format and uses CL READ; the new FORMAT-READ honours it.
      integer m
      open(unit=20, file='rdtest.dat', status='old')
      read(20,'(I5)') m
      close(unit=20)
      write(6,*) m
      end

      subroutine rd_real_fmt
c     Formatted (F8.3) read into a REAL (single-float).  The format
c     engine returns a double-float; %format-read-assign-form coerces
c     it to single so the SETF doesn't trip a type error.
      real x
      open(unit=20, file='rdtest.dat', status='old')
      read(20,'(F8.3)') x
      close(unit=20)
      write(6,*) x
      end

      subroutine rd_dble_fmt
c     Formatted (E10.3) read into a DOUBLE PRECISION.  Exercises
c     D-style exponent recognition (the input "6.022D23" should
c     produce 6.022e23 even though CL's reader doesn't natively
c     understand D as an exponent marker).
      double precision d
      open(unit=20, file='rdtest.dat', status='old')
      read(20,'(E10.3)') d
      close(unit=20)
      write(6,*) d
      end

      subroutine rd_implied
c     List-directed read into an array via implied-do.
      integer a(5), k
      open(unit=20, file='rdtest.dat', status='old')
      read(20,*) (a(k), k=1,5)
      close(unit=20)
      write(6,*) (a(k), k=1,5)
      end

      subroutine rd_logical
c     List-directed read of a logical literal.
      logical b
      open(unit=20, file='rdtest.dat', status='old')
      read(20,*) b
      close(unit=20)
      write(6,*) b
      end

      subroutine rd_quoted
c     List-directed read of a single-quoted string.
      character*10 s
      open(unit=20, file='rdtest.dat', status='old')
      read(20,*) s
      close(unit=20)
      write(6,*) s
      end

      subroutine rd_eof_iostat
c     IOSTAT= surfaces EOF as -1.  The file supplies one value;
c     the second read hits EOF and sets IOS = -1.
      integer i, ios
      ios = 0
      open(unit=20, file='rdtest.dat', status='old')
      read(20,*,iostat=ios) i
      write(6,*) 'first:', i, 'ios:', ios
      read(20,*,iostat=ios) i
      write(6,*) 'second-ios:', ios
      close(unit=20)
      end

      subroutine rd_label_fmt
c     Formatted read with FMT given by a numeric format-statement
c     label rather than an inline string.  Should resolve through
c     get_format_stmt the same way the inline-string form does.
      integer n
      open(unit=20, file='rdtest.dat', status='old')
      read(20,100) n
 100  format(I6)
      close(unit=20)
      write(6,*) n
      end

      subroutine rd_reversion
c     Six values needed via (3I3); the main format produces three,
c     reversion fires and the format runs again on a second record.
      integer a(6), k
      open(unit=20, file='rdtest.dat', status='old')
      read(20,'(3I3)') (a(k), k=1,6)
      close(unit=20)
      write(6,*) (a(k), k=1,6)
      end

      subroutine rd_var_fmt
c     FMT given by a CHARACTER variable holding the format string.
c     Exercises FORMAT-READ's runtime-FMT path: parse-read can't
c     resolve FFMT's value at translate time, so it passes the
c     symbol through and the macro evaluates it at runtime.
      integer n
      character*5 ffmt
      ffmt = '(I5)'
      open(unit=20, file='rdtest.dat', status='old')
      read(20,ffmt) n
      close(unit=20)
      write(6,*) n
      end
