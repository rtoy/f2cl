      program scalartest
c
c Scalar X equivalenced with an array element ARR(3).  Under the
c unified scheme this builds a 5-cell synthetic backing array; ARR
c is an array alias at offset 0 and X becomes a symbol-macrolet
c expanding to (aref backing 2).  Exercises the scalar-uses-of-
c bare-symbol path.
c
c The lisp result can be compiled and run.  The expected output is:
c CL-USER> (scalartest)
c  x (= arr(3)) =    3.0
c  arr(3) after x = 99:   99.0
c
      double precision arr(5), x
      equivalence (x, arr(3))

      arr(1) = 1.0d0
      arr(2) = 2.0d0
      arr(3) = 3.0d0
      arr(4) = 4.0d0
      arr(5) = 5.0d0

      write(6,100) x
 100  format(1x, 'x (= arr(3)) = ', f6.1)

      x = 99.0d0
      write(6,110) arr(3)
 110  format(1x, 'arr(3) after x = 99: ', f6.1)

      end
