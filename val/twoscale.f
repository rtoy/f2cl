      program twoscale
c
c Trivial scalar<->scalar EQUIVALENCE.  Both X and Y become aliases
c into a one-cell synthetic backing array; both expand to (aref
c backing 0) via symbol-macrolet.  Smallest possible test of the
c scalar path.
c
c The lisp result can be compiled and run.  The expected output is:
c CL-USER> (twoscale)
c  y after x = 42:  42.0
c  x after y = -7:  -7.0
c
      double precision x, y
      equivalence (x, y)
      x = 42.0d0
      write(6,*) 'y after x = 42:', y
      y = -7.0d0
      write(6,*) 'x after y = -7:', x
      end
