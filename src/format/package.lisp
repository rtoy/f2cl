;;;; package.lisp
;;;;
;;;; Package definition for the FORTRAN-FORMAT library.
;;;;
;;;; The library is split across three files that all share one
;;;; package:
;;;;
;;;;   fortran-format-parser.lisp   -- conditions, edit-descriptor
;;;;                                   structs, lexer, parser
;;;;   fortran-format-io.lisp       -- output and input engines
;;;;                                   (emit-ed / read-ed methods),
;;;;                                   numeric formatting helpers,
;;;;                                   the top-level WRITE-FORMAT
;;;;                                   and READ-FORMAT
;;;;   fortran-format-tests.lisp    -- smoke tests
;;;;

(defpackage #:fortran-format
  (:use #:cl)
  (:export #:read-format
           #:write-format
           #:invalid-format))
