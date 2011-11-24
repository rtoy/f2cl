      program tst
      do k = 1, 5
         print *, 'k = ', k
         if (k .lt. 3) then
            cycle
         endif
         do j = 1, 10
            if (j .lt. 3) then
               cycle
            endif
            if (j .eq. 4) then
               exit
            endif
            print *, 'j = ', j
         enddo
         if (k .eq. 4) then
            exit
         endif
      enddo
      end
