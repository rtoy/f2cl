      program holfmt
c
c     Regression test for f2cl issue: labeled FORMAT statements with
c     Hollerith descriptors and slash record-separators round-tripped
c     incorrectly through process-format-line + lineread + body
c     reconstruction.  Specifically:
c
c       1. `//' inside a FORMAT body became the symbol f2cl-//, whose
c          symbol name "F2CL-//" then leaked into the reconstructed
c          format string passed to fortran-format:write-format,
c          producing parse errors.
c
c       2. Hollerith conversions silently injected an extra comma into
c          the rewritten string, leaving artefacts like `,,I5'.  The
c          new parser tolerated them, but they were a sign of double
c          processing.
c
c     With the new printer enabled, parse-format now reads the raw
c     FORMAT body that the preprocessor stashed in *raw-format-bodies*
c     and hands it to fortran-format:write-format unchanged.  This
c     program exercises every shape that broke earlier.
c
      integer i, j, n
      i = 7
      j = 42
      n = 9
c
c     Hollerith with adjacent slashes (////), trailing slashes (//),
c     and 5X spacers between Hollerith chunks.
      write(6, 10) i, n
c
c     Embedded '1' carriage control as the first byte of a Hollerith
c     literal (`12H1SUMMARY OF ').
      write(6, 20) i
c
c     Single-quoted string in a FORMAT containing the Fortran ''
c     escape (an embedded apostrophe).
      write(6, 30) j
c
c     Pure Hollerith line with a trailing slash.
      write(6, 40)
      stop
   10 FORMAT ( //// 5X, 8H PROBLEM, I5, 5X, 10H DIMENSION, I5 //)
   20 FORMAT (12H1SUMMARY OF , I3, 16H CALLS TO HYBRD1 /)
   30 FORMAT (5X, 'it''s ', I3, ' calls' /)
   40 FORMAT (39H NPROB   N    NFEV  INFO  FINAL L2 NORM /)
      end
