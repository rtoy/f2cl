      program tst
c
c Minimal test of the F90 EXIT statement.  Loop body prints i for
c i = 1, 2, 3, 4 then EXIT terminates the loop and execution
c continues at the WRITE following END DO.
c
c The translated lisp can be compiled and run.  The expected
c output is:
c CL-USER> (tst)
c            1
c            2
c            3
c            4
c  done
c
      integer i
      do i = 1, 10
         if (i .eq. 5) exit
         write(6,*) i
      end do
      write(6,*) 'done'
      end
