c     Test if :prune-unused-vars is working or not
c     The generated lisp should not have any references to the unused
c     variables. 
      subroutine ptest(x, y, z)
      double precision x, y, z
      double precision used1, used2
      double precision unused1, unused2, unused3
      integer iunused
      used1 = x + y
      used2 = used1 * 2.0d0
      z = used2
      return
      end
