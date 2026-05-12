# TODO: remaining gaps in fortran-format

## List-directed output (FORMAT-WRITE / :LIST-DIRECTED)

These are documented divergences from gfortran's list-directed output. Output is functionally correct and readable; matching gfortran byte-for-byte requires more careful work. See `f2cl-lib:%list-directed-format-value` and the per-component complex helpers.

- **3-digit exponents drop the `E`** — for `|x| >= 1d100` or `|x| < 1d-99`, the new printer emits ` 1.0000+100` rather than gfortran's `1.0000E+100`. This is standard Fortran behavior when the descriptor doesn't specify Ee; gfortran is the non-standard one. Fix: detect huge/tiny magnitudes and pick `1PGw.dE3` (or `1PEw.dE3`) instead of plain `1PGw.d`. Cost: a runtime magnitude check per value.
- **Double precision internal alignment** — gfortran emits 3 leading + 18 char value + 5 trailing for `1.23456789012345d0`; we emit 4 + 18 + 4. Same total width, off-by-one internal placement. Probably a quirk of how the new printer's G descriptor distributes "spare width" relative to gfortran. Likely fixable with a different `Gw.d` width/precision pair.
- **Validate target test corpus** — list-directed is currently exercised only by `fmttest.f`, `ldtest.f`, and `cxtest.f`. The real test is retranslating quadpack with the flag on and diffing test output; that hasn't been done.

## F77 output

- **TL / backward-T** — currently signal `invalid-format`. Two RT tests already registered as expected failures: `fmt.write.tl2-overwrites`, `fmt.write.backward-t-overwrites`. Requires a positionable record buffer rather than the current one-pass stream — non-trivial refactor.

## F77 input

- **Quoted/Hollerith literals on input** — should advance the input cursor by the literal's length (skip those characters in the record). Currently signals an error. Standard-mandated behavior.

- **End-of-record on short input** — `(3I3)` reading `"  1"` returns `(1 0 0)`; gfortran raises an end-of-record error. May or may not want strict gfortran behavior depending on use case.

## F77 input wire-up (`FORMAT-READ` macro in `f2cl-lib.lisp`, `parse-read` in `f2cl5.lisp`)

These are translator/macro-level gaps, separate from the engine itself.

- **FMT as a runtime variable falls back to legacy `read-file`** — `READ(5, FMT_VAR) X` where `FMT_VAR` is a `CHARACTER` variable holding the format string: `parse-read` can't resolve the format at translate time, so `%reader-macro-for` picks `read-file` instead of `format-read`. The legacy path ignores the FMT and uses CL `READ`. To fix, `format-read` needs to accept FMT as a runtime expression (currently it embeds the format quoted into the expansion). The fixes are small: drop the quote in the macro and let the format be evaluated; `execute-format-read` already accepts the value at runtime.

- **EOF with `IOSTAT=` but no `END=` sets `IOSTAT=+1` not `-1`** — Fortran says `IOSTAT=-1` on end-of-file regardless of whether `END=` was given. Both `read-file` and `format-read` register the `end-of-file` handler clause only when `:end` is non-nil, so without `END=` the EOF condition falls through to the catch-all `(error () ...)` clause that sets `IOSTAT=+1`. The fix is to register the `end-of-file` handler whenever either `END=` or `IOSTAT=` is given, with the IOSTAT side-effect even when no GO is needed. Same fix on both paths.

- **Re-parse cost in `%fformat-read-records`** — when a read needs more records than the first call returned, the helper appends another line and re-invokes `%read-format` from scratch, which re-parses the format string each pass. For typical short Fortran reads this is unmeasurable; for a long reversion span across many records it's O(N²) parsing. The principled fix is to expose a streaming entry on the engine that can resume from a saved state across record boundaries.

## Parser

- **Comma-less juxtaposition** — `(I3F5.2)`, `(I3/I3)`, `(1PF8.2)`, etc. F77 allows commas to be omitted around `/`, around `:`, between `P` and the immediately following F/E/D/G, and (in some readings) between two width-bearing descriptors. py-fortranformat handles this by inserting implicit commas in the lexer. Currently we reject all comma-less forms.

## Floating-point accuracy

- **CL-defined rounding leakage** — `format-f` and `format-e` lean on CL's `~F`/`~E` directives, whose rounding mode is implementation-defined. On exact ties (e.g. `1234.5` to E12.4), SBCL rounds half-to-even (matches gfortran), CMUCL rounds half-away-from-zero (doesn't). The bit-exact `normalize-float` path was removed earlier in development; restoring it would give gfortran-byte-for-byte output across implementations and eliminate the `-cl-rounding` workaround in tests.

- **`format-f` P-scale precision** — uses `(* v (expt 10 scale))` to rescale before formatting, which introduces one rounding step. Edge cases where `v × 10^k` crosses a binary boundary can show through. The principled fix is to do digit shifting on the decimal representation rather than arithmetic on the value — depends on the bit-exact float path above.

- **G format decade boundaries** — values that round across the F/E choice boundary (e.g. 9.9999 with G12.4) aren't handled; we pick a mode then format, rather than format-then-decide. Same `normalize-float` dependency.

- **CL `~E` non-normalization** — `(format nil "~,vE" ...)` can produce mantissas like `10.00d+2` instead of `1.000d+3`. We don't currently detect and renormalize. Showed up as a TODO in `%cl-mantissa-and-exp`.

## Performance

- **Extra consing from emit-out** — every `dotimes write-char` site became `(emit-out stream (make-string N ...))`, which allocates a fresh string for the padding instead of pushing chars one at a time. Profiling will show whether this matters; if so, the fix is to add an `emit-spaces` helper that pushes individually and bumps `*column*` by N.

## Documentation / cleanliness

- **Tested-implementation list** — currently only validated on SBCL in CI. CMUCL is the production target for Maxima; need a CMUCL run. GCL too if that's still in scope.

## Beyond F77 (probably won't do, listing for completeness)

- `I0`, `F0.d`, `E0.dEe`, `G0.d` minimum-width forms (F2003)
- `*(...)` unlimited repeat (F2008)
- `DT` derived-type editing (F2003)
- `Q` record-byte-count (vendor extension)
- `$` and `\\` suppress-newline (DEC extensions)
