      program tst
c
c Minimal test of the F90 CYCLE statement.  Loop body prints i for
c i = 1..10, but when i .eq. 5 the CYCLE skips the WRITE and
c advances to the next iteration.
c
c The translated lisp can be compiled and run.  The expected
c output is:
c CL-USER> (tst)
c            1
c            2
c            3
c            4
c            6
c            7
c            8
c            9
c           10
c  done
c
      integer i
      do i = 1, 10
         if (i .eq. 5) cycle
         write(6,*) i
      end do
      write(6,*) 'done'
      end
