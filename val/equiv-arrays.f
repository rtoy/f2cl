      program equivtest
c
c Demonstrate array<->array EQUIVALENCE.  M is a 3x3 matrix that
c shares storage with the flat vector V (9 elements).
c
c We:
c   1. fill V with 1..9 through the flat alias;
c   2. read the values back through the 2D name M, demonstrating
c      column-major layout;
c   3. overwrite M(2,2) and observe the change through V;
c   4. compute a sum through M and through V to show they reference
c      identical storage.
c
c
c The lisp result can be compiled and run.  The expected output is:
c CL-USER> (equivtest)
c  M after filling V with 1..9:
c     1.0   4.0   7.0
c     2.0   5.0   8.0
c     3.0   6.0   9.0
c  After M(2,2) = 50:
c  M(2,2) =   50.0   V(5) =   50.0
c  sum via M =   90.0   sum via V =   90.0
c  OK: aliases share storage.
c 
      double precision m(3,3), v(9)
      equivalence (m(1,1), v(1))

      integer i, j
      double precision sm, sv

c Step 1: fill via the flat alias.
      do 10 i = 1, 9
         v(i) = dble(i)
 10   continue

c Step 2: print as a 2D matrix.  Because Fortran is column-major,
c   M(1,1)=1  M(1,2)=4  M(1,3)=7
c   M(2,1)=2  M(2,2)=5  M(2,3)=8
c   M(3,1)=3  M(3,2)=6  M(3,3)=9
      write(6,*) 'M after filling V with 1..9:'
      do 20 i = 1, 3
         write(6,100) (m(i,j), j=1,3)
 20   continue
 100  format(1x, 3f6.1)

c Step 3: overwrite M(2,2); V(5) should change to match.
      m(2,2) = 50.0d0
      write(6,*) 'After M(2,2) = 50:'
      write(6,110) m(2,2), v(5)
 110  format(1x, 'M(2,2) = ', f6.1, '   V(5) = ', f6.1)

c Step 4: sum through both names; results must match.
      sm = 0.0d0
      do 40 j = 1, 3
         do 41 i = 1, 3
            sm = sm + m(i,j)
 41      continue
 40   continue

      sv = 0.0d0
      do 50 i = 1, 9
         sv = sv + v(i)
 50   continue

      write(6,200) sm, sv
 200  format(1x, 'sum via M = ', f6.1, '   sum via V = ', f6.1)

      if (sm .eq. sv) then
         write(6,*) 'OK: aliases share storage.'
      else
         write(6,*) 'FAIL: aliases disagree.'
      endif

      end
