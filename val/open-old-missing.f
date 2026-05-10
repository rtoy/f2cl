      program tstopn2
c     Bare OPEN(..., STATUS='OLD') on a missing file: no IOSTAT=, no ERR=.
c     Per Fortran semantics this should signal an error at run time;
c     in f2cl's translated Lisp output that surfaces as a CL FILE-ERROR.
c     A regression test wraps the call to TSTOPN2 in HANDLER-CASE and
c     checks that the condition fires.
c
c     Deliberately no PRINT/WRITE statements before the OPEN: f2cl-lib
c     caches the stream for unit 6 / unit T in *LUN-HASH* across calls,
c     and if a previous interactive run left a now-closed string-output
c     stream cached, writing here would error before we reach the OPEN
c     we're trying to test.  Keeping this routine pure-OPEN sidesteps
c     that and pins exactly what we mean to pin.
      open(unit = 1, file = '/tmp/f2cl-no-such-file-xyzzy-9182734',
     $     status = 'old')
      end
