      program equivneg2
c
c Companion to equiv-neg.f.  Same union-arithmetic mechanism, but
c the equivalence is written from the converse anchor direction:
c
c     EQUIVALENCE (BBB(3), AAA(1))
c
c so AAA(1) lands at the same cell as BBB(3).  The synthetic
c backing array is 7 cells; BBB sits at offset 0 and AAA at
c offset 2.  The previous patch's choose-canonical machinery
c rejected this with a negative-offset error; the unified
c implementation handles it as a routine non-aligned anchor.
c
c The lisp result can be compiled and run.  The expected output is:
c CL-USER> (equivneg2)
c  bbb(1..5):
c    10.0  20.0  30.0  40.0  50.0
c  aaa(1..3) (overlap):
c    30.0  40.0  50.0
c
      double precision aaa(5), bbb(5)
      equivalence (bbb(3), aaa(1))

      integer i

      do 10 i = 1, 5
         bbb(i) = dble(i * 10)
 10   continue

      write(6,*) 'bbb(1..5):'
      write(6,100) (bbb(i), i=1,5)
 100  format(1x, 5f6.1)

      write(6,*) 'aaa(1..3) (overlap):'
      write(6,110) (aaa(i), i=1,3)
 110  format(1x, 3f6.1)

      end
