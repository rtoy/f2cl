# f2cl regression tests

This directory holds the regression-test framework and the f2cl-vendored
copy of Richard C. Waters's RT (Regression Test) framework.

## Files

- `f2cl-rt.asd`, `rt.lsp`, `rt-package.lsp` — vendored RT
- `helpers.lisp`, `tests.lisp` — f2cl's own regression tests
- `test-fortran-format.lisp`, `test-fortran-format-read.lisp` — tests for
  the runtime FORMAT engine

The MINPACK regression tests live in `packages/minpack-tests/` and use
the RT vendored here.

## Why "f2cl-rt", not "rt"?

Quicklisp ships an `rt` system (`rt-20101006-git/rt.asd`) which declares
an `rt-package` component but doesn't include the matching `rt-package`
source file.  Any system that depends on the bare `"rt"` and finds
quicklisp's `rt.asd` before f2cl's fails with:

```
Component "rt-package" not found, required by #<CL-SOURCE-FILE "rt" "rt">
```

Quicklisp's source registry generally takes precedence over
`asdf:*central-registry*`, so a vendored f2cl `rt.asd` shadowed by
quicklisp's would never get picked up.

The fix is to vendor f2cl's copy under a different system name:
`f2cl-rt`.  All f2cl-internal test systems
(`f2cl/tests`, `f2cl/fortran-format/tests`,
`quadpack/tests`, `lapack/tests`, `fftpack5-double/tests`,
`minpack/rt-tests-hybrd`, `minpack/rt-tests-lmdif`,
`minpack/rt-tests-lmder`) depend on `"f2cl-rt"` instead of `"rt"`, so
the lookup can never collide with quicklisp's.  The in-Lisp package
name remains `REGRESSION-TEST` (nicknamed `RT`), so test files can
still write `(rt:deftest ...)` and `(rt:do-tests)` -- only the ASDF
system name is namespaced.

If you maintain code outside f2cl that depended on
`(asdf:load-system "rt")` finding f2cl's copy, you'll need to switch
that dependency to `"f2cl-rt"`.
