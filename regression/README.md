# f2cl regression tests

This directory holds the regression-test framework and the f2cl-vendored
copy of Richard C. Waters's RT (Regression Test) framework.

## Files

- `rt.asd`, `rt.lsp`, `rt-package.lsp` — vendored RT
- `helpers.lisp`, `tests.lisp` — f2cl's own regression tests
- `test-fortran-format.lisp`, `test-fortran-format-read.lisp` — tests for
  the runtime FORMAT engine

The MINPACK regression tests live in `packages/minpack-tests/` and use
the RT vendored here.

## Quicklisp's rt conflicts with f2cl's vendored copy

Quicklisp ships an `rt` system (`rt-20101006-git/rt.asd`) which declares
an `rt-package` component but doesn't include the matching `rt-package`
source file.  If ASDF finds quicklisp's `rt.asd` before f2cl's, loading
any system that depends on `"rt"` (for example `minpack/rt-tests-hybrd`,
`minpack/rt-tests-lmdif`, `minpack/rt-tests-lmder`, `f2cl/tests`, ...)
fails with:

```
Component "rt-package" not found, required by #<CL-SOURCE-FILE "rt" "rt">
```

By default, ASDF's source registry — populated from quicklisp's setup —
takes precedence over `asdf:*central-registry*`, so pushing this
directory onto `*central-registry*` is not enough.

To force f2cl's vendored RT, prepend the f2cl source tree to the source
registry and clear any cached `rt` system:

```lisp
(asdf:initialize-source-registry
  `(:source-registry
    (:tree "/path/to/f2cl/")
    :inherit-configuration))
(asdf:clear-system "rt")
```

After that, `(asdf:system-source-file (asdf:find-system "rt"))` should
return f2cl's `regression/rt.asd` and `(asdf:test-system ...)` calls
that depend on `"rt"` will work.
