# Vendored py-fortranformat test corpus

The `.test` files in `gfortran-4.4.1/` and similar version
directories are unmodified copies from
[py-fortranformat](https://github.com/brendanarnold/py-fortranformat)
by Brendan Arnold (MIT license, see `LICENSE`).  Each file holds
records of three lines:

    FORMAT:<format string>
    INPUT:<Fortran-literal value(s)>
    <expected output>

For each `<name>.test` file there are two generated siblings,
both loaded by the test ASDF system / mk-defsystem:

| File | Contents | Edit by hand? |
|---|---|---|
| `<name>.test` | upstream gfortran trace | no |
| `<name>.tests.lisp` | one `rt:deftest` per case, generated | **no** |
| `<name>.expected-failures.lisp` | `pushnew` forms for known failures | **yes** |

Test names follow `FMT.CORPUS.<STEM>.<NNNN>`, e.g.
`FMT.CORPUS.I-ED-OUTPUT.0042`, where the stem comes from the
upstream filename and the number is the 1-based position
(zero-padded).  Names are stable across re-syncs as long as
upstream doesn't reorder the cases.

## Workflows

### Initial vendoring of a new descriptor

Upstream layout puts files under
`tests/autogen/output/gfortran/4_4_1_osx_intel/raw/` (and similar
for other compiler versions).  To add, say, the `l` (logical)
descriptor corpus:

1. Copy the `.test` file unchanged:

    ```sh
    cp /path/to/py-fortranformat/tests/autogen/output/gfortran/4_4_1_osx_intel/raw/l-ed-output.test \
       src/format/corpus/gfortran-4.4.1/
    ```

2. Generate the deftests:

    ```lisp
    (asdf:load-system "f2cl/fortran-format/tests")
    (fortran-format::regenerate-corpus-tests
      "src/format/corpus/gfortran-4.4.1/l-ed-output.test")
    ```

    This writes `l-ed-output.tests.lisp` next to the `.test` file.

3. Baseline the expected failures (one-time, run once):

    ```lisp
    ;; Make sure the new deftests are loaded first
    (load "src/format/corpus/gfortran-4.4.1/l-ed-output.tests.lisp")
    (fortran-format::establish-baseline-expected-failures
      "src/format/corpus/gfortran-4.4.1/l-ed-output.test")
    ```

    This writes `l-ed-output.expected-failures.lisp` with one
    `pushnew` per currently-failing case.

4. Add the three files to `f2cl.asd` (the
   `f2cl/fortran-format/tests` system) and `f2cl.system` (the
   `fortran-format-tests` mk:defsystem), in the
   `corpus/gfortran-4.4.1` module.  The pattern is:

    ```
    (:file "l-ed-output.tests")
    (:file "l-ed-output.expected-failures"
           :depends-on ("l-ed-output.tests"))
    ```

5. Run the suite to confirm everything is wired up.

### Re-syncing the upstream snapshot

If a new version of py-fortranformat changes a corpus file:

1. Overwrite the `.test` file with the new upstream copy.
2. Regenerate the `.tests.lisp` (step 2 above).
3. **Do not** auto-regenerate `.expected-failures.lisp`.  Run the
   suite manually and reconcile: real bug fixes that newly pass
   should already be reflected; brand-new upstream cases that
   now fail should be added by hand or by selectively rerunning
   `establish-baseline-expected-failures` (which always
   overwrites; copy off the file first if you want a diff).

### Fixing a bug

The bug-fix loop is the reverse direction:

1. Fix the underlying issue in `fortran-format-io.lisp` (or
   wherever).
2. Run `(asdf:test-system "f2cl/fortran-format")`.  RT reports
   the newly-passing tests as "unexpected successes."
3. Delete those names from the relevant
   `<name>.expected-failures.lisp` file.
4. Re-run the suite: the summary line should now show 0
   unexpected successes.
5. Commit the fix and the trimmed expected-failures file
   together.

### Implementation-specific failures

The `.expected-failures.lisp` files use `#+sbcl`, `#+cmu`, etc.
reader conditionals to scope failures to specific Common Lisp
implementations.  Each implementation's section is maintained
independently -- a fix that lands on one CL doesn't require
touching the other CL's section.  Failures that are currently
universal will appear in every section; that's intentional and
easier to manage than maintaining a separate "common" section.

## File-level notes

- Generated `.tests.lisp` files start with an `AUTO-GENERATED`
  header.  They contain ~1500-2500 `rt:deftest` forms each.  Do
  not edit them by hand -- re-run the generator if you need to
  fix something structural.

- `.expected-failures.lisp` files are bootstrapped by the
  baselining function but maintained by hand thereafter.  Their
  headers describe each implementation block's contents.

- Adding more compiler versions is straightforward: create a new
  sibling directory under `corpus/` (e.g. `gfortran-12.0/` or
  `ifort-2021/`), drop the upstream `.test` files in, and follow
  the "Initial vendoring" workflow for each.

## Coverage today

Vendored so far: `i-ed-output.test`, `f-ed-output.test`,
`e-ed-output.test` from gfortran 4.4.1.  More descriptor
families can be added once their write paths are stable.

