# Welcome to f2cl - a Fortran to Common Lisp Translator

f2cl translates Fortran 77 source code into Common Lisp.  The
generated Lisp can then be compiled and loaded by any conforming CL
implementation; SBCL, CMUCL, CCL, ECL, ABCL, Allegro, and LispWorks
have all been used successfully.

Source: <https://github.com/rtoy/f2cl>

## Build systems

f2cl supports both ASDF and mk-defsystem as first-class build
systems; both are exercised by the CI (see Continuous integration
below).

### ASDF

```lisp
(asdf:load-asd #P"/path/to/f2cl/f2cl-asdf.asd")
(asdf:load-asd #P"/path/to/f2cl/f2cl.asd")
(asdf:load-system "f2cl")
```

`f2cl.asd` self-registers the vendored `rt` test framework and adds
`packages/` to `asdf:*central-registry*`, so only the repo root
needs to be visible to ASDF.  No external dependencies need to be
fetched.

### mk-defsystem

```lisp
(load "/path/to/mk-defsystem/defsystem.lisp")
(setf mk::*bother-user-if-no-binary* nil
      mk::*load-source-instead-of-binary* nil)
(load "f2cl.system")
(mk:oos "f2cl" :compile)
```

## Translating Fortran code

A typical session:

```lisp
;; Translate a single file.  Produces hello.lisp next to hello.f.
(f2cl:f2cl "path/to/hello.f")

;; Or translate AND compile in one step:
(f2cl:f2cl-compile "path/to/hello.f")

;; Then load and use the result like any Lisp code:
(load "path/to/hello")
(my-fortran-package:hello)
```

## Translating a multi-file Fortran library

Bigger Fortran libraries are typically organized as an
`f2cl-system`: a defsystem-extension class that knows how to treat
`.f` files as components.  The `packages/` directory contains
several worked examples — LAPACK, MINPACK, ODEPACK, QUADPACK,
FFTPACK 5, COLNEW, TOMS 715, and BLAS Complex.  Each provides an
`.asd` file that declares its Fortran components plus any per-file
or per-system f2cl translation options.

To use the LAPACK package, for example:

```lisp
(asdf:load-asd #P"/path/to/f2cl/f2cl-asdf.asd")
(asdf:load-asd #P"/path/to/f2cl/f2cl.asd")
(asdf:load-asd #P"/path/to/f2cl/packages/lapack.asd")
(asdf:load-system "lapack")
```
Or
```lisp
(load "f2cl.system")
(load "packages/linpack.system")
(mk:oos "lapack" :compile)
```

The first time you load the system f2cl will translate each `.f`
file to `.lisp` and then compile it.  Subsequent loads pick up the
existing fasls.

## Running the tests

The test suite covers both the translator and the standalone
`fortran-format` library (Fortran-style `READ`/`WRITE` at run time).
The format suite alone is ~95,000 cases, drawn from
[py-fortranformat](https://github.com/brendanarnold/py-fortranformat)'s
gfortran-generated reference corpus.

Under ASDF:

```lisp
;; Run the format library's test system (does not run f2cl
;; translator tests):
(asdf:test-system "f2cl/fortran-format")

;; Run the full translator regression suite:
(asdf:test-system "f2cl")
```

Under mk-defsystem, the `f2cl-tests` system runs the suite as part
of its `:finally-do` action when compiled:

```lisp
(mk:oos "f2cl-tests" :compile)
```

A green run reports zero unexpected failures and zero unexpected
successes; some failures are *expected* on each
implementation and are tracked per-file under
`src/format/corpus/gfortran-4.4.1/*.expected-failures.lisp`.  

Some of reasons for failure are:
* B, O, Z tests fail because the reference was running with a 32-bit
  host, but this implementation uses the word size of the running
  Lisp.
* The F and D input tests contain inputs that are read as a
  floating-point signed zero, but the reference tests writes the
  result out without the sign.
* A few tests assume the nearest representable single-float value is
  printed, but Lisp generally produces the shortest representation
  that would reproduce the value when read back in.
* Backward cursor positioning (TL, and T with negative position) is
  not implemented.  
* Clisp lacks signed-zeros so any test with that fails.


## Translator options

f2cl exports two entry points.  `f2cl:f2cl` translates a Fortran
source file to a Lisp source file.  `f2cl:f2cl-compile` does the
same and then compiles the resulting Lisp.  Most options are
shared; the two have a few additional options of their own.

### Options shared by `f2cl:f2cl` and `f2cl:f2cl-compile`

| Option | Default | Meaning |
| --- | --- | --- |
| `:output-file` | derived from input | Output `.lisp` path. |
| `:package` | `:common-lisp-user` | Package the translated code lives in. |
| `:array-type` | `:array` | `:simple-array` enables faster array access but is incompatible with array slicing. |
| `:array-slicing` | `t` | Pass subarrays to subroutines, mimicking Fortran's pass-by-reference. |
| `:coerce-assigns` | `:as-needed` | Whether assignment statements coerce the RHS to match the LHS type (`t`/`:always`, `nil`/`:never`, or `:as-needed`). |
| `:relaxed-array-decls` | `t` | Ignore array-length declarations on formal parameters, matching pre-F90 Fortran's looseness. |
| `:auto-save` | `t` | Treat variables in `DATA` statements as if they had `SAVE`. |
| `:declare-common` | `nil` | Emit the `defstruct` for any common block this file references.  Use once per common block. |
| `:common-as-array` | `nil` | Treat common blocks as memory arrays rather than structs with named slots.  Needed when different routines name the same common-block memory differently. |
| `:copy-array-parameter` | `nil` | When an array of one type is passed where another type is expected, allocate a new array and copy the data.  Off by default because the copy is slow. |
| `:include-comments` | `nil` | Preserve Fortran comments in the Lisp output.  Marked as possibly buggy. |
| `:prune-labels` | `nil` | Delete unreferenced labels. |
| `:prune-unused-vars` | `nil` | Remove `let`-bound variables that the translated code never reads.  Reduces compile-time warnings on the generated Lisp. |
| `:promote-to-double` | `nil` | Promote `REAL`/`COMPLEX` constants, variables, and arrays to `REAL*8`/`COMPLEX*16`. |
| `:float-format` | `*read-default-float-format*` | Float format used when printing literal values. |
| `:declaim` | none | `(declaim ...)` form to prepend to the output. |

### `f2cl:f2cl`-only options

| Option | Default | Meaning |
| --- | --- | --- |
| `:verbose` | `nil` | Trace translation activity. |
| `:keep-temp-file` | `nil` | Keep `prep.tmp` after translation for debugging. |
| `:extension` | `"lisp"` | Output file extension (overrides `*default-lisp-extension*`). |
| `:common-block-file` | `nil` | When a common block is declared, write its `defstruct` to a separate file named after the block with extension `cmn`. |

### `f2cl:f2cl-compile`-only options

| Option | Default | Meaning |
| --- | --- | --- |
| `:output-file` | `(compile-file-pathname filename)` | Note that `f2cl-compile`'s default differs from `f2cl`'s -- it expects a fasl path here, not a `.lisp` path. |
| `:error-file` | none | Passed to `compile-file` as `:error-file`. |
| `:keep-lisp-file` | `t` | Whether to retain the intermediate `.lisp` file after the fasl is produced. |

## Fortran dialect

The translator front-end is primarily Fortran 77, with a handful of
F90 features supported as extensions:

- `DO WHILE` loops.
- `END DO` / `ENDDO` block-style loop termination.
- `EXIT` (terminate the enclosing loop) and `CYCLE` (skip the rest
  of the current iteration and continue with the next).
- `IMPLICIT NONE`.

Some F90 edit descriptors (`EN`, `ES`, `B`, `O`, `Z`) are supported
at run time via the `fortran-format` library even though the
translator itself is mostly F77.

Other source-formatting restrictions:

- No tabs in the source.
- Line breaks must occur in whitespace.
- Spaces are required to separate symbols.

An intermediate file `prep.tmp` is produced during preprocessing
and removed unless `:keep-temp-file` is non-nil.

## Using translated code without f2cl

Once the translator has run, you do not need to load f2cl itself to
use the output.  The translated code depends only on the
`f2cl-lib` package, defined in `src/f2cl-lib-package.lisp` and
`src/f2cl-lib.lisp`, plus the `fortran-format` library if the
original Fortran used formatted `READ`/`WRITE`.

## Common blocks and conversion order

Common blocks become Lisp `defstruct`s.  Because the same common
block may be referenced from several files, you must tell f2cl
which file should emit the `defstruct` definition: pass
`:declare-common t` to exactly one call per common block, and
arrange for that file to be loaded before the others.

For libraries where different routines partition the same common
block differently — a frequent pattern in older numerical codes —
use `:common-as-array t` instead.  See the comments in the source
for details.

Where possible, translate functions in call order: any `F` called
by `G` should be translated before `G` so that f2cl can see `F`'s
calling convention when emitting the call from `G`.  Most of the
worked examples under `packages/` arrange their `.asd` `:components`
lists with this in mind.

## Continuous integration

- GitHub Actions (`.github/workflows/ci.yml`) — ASDF flow, SBCL on
  Ubuntu.
- GitLab CI (`.gitlab-ci.yml`) — both the ASDF and mk-defsystem
  flows, CMUCL 21f.

Both runners execute the full f2cl regression suite plus the
`fortran-format` corpus, and exit nonzero on any unexpected outcome.

## Acknowledgments

The original translator was written by Kevin Broughan and Diane
Koorey Willcock at the University of Waikato.  Substantial later
work — including most of the run-time format library and the
package ports under `packages/` — is by Raymond Toy.

The code is released under the GPL by permission of Kevin
Broughan; `src/f2cl-lib.lisp` is released under the LGPL so it can
be linked into other packages.
