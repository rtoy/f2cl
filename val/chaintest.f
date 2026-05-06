      program chaintest
c
c Three arrays in a chain: A<->B and B<->C, so all three share
c storage.  Exercises the union-find pass that groups multi-edge
c equivalence components.
c
c We:
c   1. fill A with 100, 200, 300, 400;
c   2. read the same values through B and C;
c   3. overwrite C(2) and observe the change through B.
c
c The lisp result can be compiled and run.  The expected output is:
c CL-USER> (chaintest)
c  a:
c    100.0  200.0  300.0  400.0
c  b:
c    100.0  200.0  300.0  400.0
c  c:
c    100.0  200.0  300.0  400.0
c  b(2) after writing c(2) = 999:   999.0
c
      double precision a(4), b(4), c(4)
      equivalence (a(1), b(1))
      equivalence (b(1), c(1))

      integer i

      do 10 i = 1, 4
         a(i) = dble(i * 100)
 10   continue

      write(6,*) 'a:'
      write(6,100) (a(i), i=1,4)
      write(6,*) 'b:'
      write(6,100) (b(i), i=1,4)
      write(6,*) 'c:'
      write(6,100) (c(i), i=1,4)
 100  format(1x, 4f7.1)

      c(2) = 999.0d0
      write(6,110) b(2)
 110  format(1x, 'b(2) after writing c(2) = 999: ', f7.1)

      end
