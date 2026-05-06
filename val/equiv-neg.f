      program equivneg
c
c Two arrays of identical size and type are EQUIVALENCEd at
c non-aligned anchors:  A(3) shares storage with B(1).  This means
c
c   A(1)  A(2)  A(3)  A(4)  A(5)
c               B(1)  B(2)  B(3)  B(4)  B(5)
c
c so A(3..5) and B(1..3) are the same memory, while A(1..2) lives
c "before" B's anchor and B(4..5) lives "after" A's tail.  Total
c shared region is 7 cells; neither array can be canonical without
c the other extending past it.
c
c Under f2cl's current rule choose-canonical breaks the size tie
c lexicographically, picking A.  B's anchor is then 2 elements past
c A's anchor (B(1) <-> A(3)), so B's offset relative to A is +2 ...
c except B(1) must map to A(3), meaning a *read* of B(1) needs index
c 2 in A.  That's fine; the negative-offset case is the converse:
c if choose-canonical picked B instead (try forcing it by renaming),
c then A(1) maps to "B(-1)" -- offset -2.
c
c The simplest way to demonstrate the failure is to make B the
c lexicographically smaller name so the tiebreaker picks it as
c canonical.  Then A's offset becomes negative and the patch's
c sanity check rejects the translation.
c
c This can be converted and compiled and run to produce:
c CL-USER> (equivneg)
c  aaa(1..5):
c    10.0  20.0  30.0  40.0  50.0
c  b(1..3) (the overlapping part):
c    30.0  40.0  50.0
c  aaa(5) =   99.0   b(3) =   99.0
c  aaa(3) + b(1) =   60.0 (expect 60.0)
c 
      double precision aaa(5), b(5)
      equivalence (aaa(3), b(1))

      integer i
      double precision sum

c Fill via aaa.
      do 10 i = 1, 5
         aaa(i) = dble(i * 10)
 10   continue
c aaa is now:  10  20  30  40  50
c b sees:              30  40  50  ?   ?    (b(4), b(5) uninitialized)

      write(6,*) 'aaa(1..5):'
      write(6,100) (aaa(i), i=1,5)
 100  format(1x, 5f6.1)

      write(6,*) 'b(1..3) (the overlapping part):'
      write(6,110) (b(i), i=1,3)
 110  format(1x, 3f6.1)

c Write through b into the tail and confirm aaa(5) follows.
      b(3) = 99.0d0
      write(6,120) aaa(5), b(3)
 120  format(1x, 'aaa(5) = ', f6.1, '   b(3) = ', f6.1)

      sum = aaa(3) + b(1)
      write(6,130) sum
 130  format(1x, 'aaa(3) + b(1) = ', f6.1, ' (expect 60.0)')

      end
