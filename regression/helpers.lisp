;;; -*- Mode: Lisp -*-
;;;
;;; Helpers for f2cl regression tests.
;;;
;;; Two functions:
;;;
;;;   (convert PATH)
;;;       Translate a Fortran file with f2cl.  Return T iff no
;;;       condition was signalled.  Used by tests on files that have
;;;       no main program -- the best we can verify automatically is
;;;       that translation didn't blow up.
;;;
;;;   (run-program PATH ENTRY)
;;;       Translate, compile, load, then call ENTRY (a string naming
;;;       a function in CL-USER) with stdout captured to a string.
;;;       Return that string.  The caller compares it against an
;;;       expected literal in the deftest.
;;;
;;; Both helpers reset f2cl's per-translation state before doing
;;; anything else, so the order in which deftests run doesn't matter.

(defpackage #:f2cl-regression
  (:use #:cl)
  (:export #:convert
           #:convert-and-compile
           #:convert-and-classify-read-warnings
           #:convert-compile-load
           #:run-program
           #:run-subroutine))

(in-package #:f2cl-regression)

(defparameter *work-dir*
  ;; Subdirectory of where this source file lives.  Computed at read
  ;; time (#.) so the value is the source location, not the fasl
  ;; cache.  No need for TMPDIR, UIOP, or per-implementation getenv.
  #.(let ((here (or *compile-file-pathname* *load-pathname*)))
      (when here
        (merge-pathnames
         (make-pathname :directory '(:relative "f2cl-regression-out")
                        :defaults here)
         (make-pathname :directory (pathname-directory here)
                        :name nil :type nil :version nil
                        :defaults here))))
  "Where translated .lisp and .fasl files go.")

(defparameter *repo-root*
  ;; This file lives at <repo>/regression/helpers.lisp, so the repo
  ;; root is one directory level up from where it was loaded.  Use
  ;; #. so the value is computed at *read* time, before ASDF can
  ;; redirect *LOAD-PATHNAME* to a cached fasl in the build cache --
  ;; we want the path to the source file, not its compiled output.
  ;; Works under ASDF, mk-defsystem, or a bare CL:LOAD.
  #.(let ((here (or *compile-file-pathname* *load-pathname*)))
      (when here
        (make-pathname :directory (butlast (pathname-directory here) 1)
                       :name nil :type nil :version nil
                       :defaults here)))
  "Pathname of the f2cl repo root, derived from this file's location.")

(defun src-path (path)
  "Resolve PATH (e.g. \"val/twoscale.f\") relative to the f2cl repo."
  (merge-pathnames path *repo-root*))

(defun lisp-out (path)
  (merge-pathnames (concatenate 'string (pathname-name path) ".lisp")
                   *work-dir*))

(defun reset-state ()
  "Reset f2cl's global state so tests don't poison each other.

  *F2CL-FUNCTION-INFO* records the signature of every routine f2cl
  has translated so far and is consulted when emitting calls in
  later files; without resetting it, e.g. tst-init.f's zero-arg SUB
  would cause tst-slice.f's two-arg SUB to be mistranslated as a
  zero-arg call.  *LUN-HASH* caches the stream associated with each
  Fortran logical unit number; without reseating it, a previous
  run's now-closed string-output-stream stays cached as unit 6 and
  the next run gets 'stream is closed' errors."
  (let ((finfo (find-symbol "*F2CL-FUNCTION-INFO*" :fortran-to-lisp)))
    (when (and finfo (boundp finfo))
      ;; f2cl1.lisp's clear-f2cl-finfo clears the table and re-registers
      ;; d1mach/i1mach as built-ins.
      (let ((clear (find-symbol "CLEAR-F2CL-FINFO" :fortran-to-lisp)))
        (when (and clear (fboundp clear))
          (funcall clear)))))
  (let ((init-io (find-symbol "INIT-FORTRAN-IO" :f2cl-lib)))
    (when (and init-io (fboundp init-io))
      (funcall init-io))))

;;; Every translation helper binds f2cl::*use-fortran-format-printer*
;;; explicitly so test outcomes don't depend on whatever value the
;;; user happened to have at the REPL when (rt:do-tests) ran.  The
;;; new fortran-format printer/reader is now the default everywhere
;;; in the suite -- helpers bind the flag to T.  The flag symbol is
;;; looked up via FIND-SYMBOL so helpers.lisp can still load against
;;; an older f2cl checkout that predates issue #37; in that case the
;;; binding is silently skipped.
(defmacro with-printer-flag ((value) &body body)
  "Evaluate BODY with f2cl::*use-fortran-format-printer* dynamically
bound to VALUE.  When the symbol does not exist (older f2cl
checkout without the new printer), evaluate BODY unchanged."
  (let ((flag (gensym "FLAG-")))
    `(let ((,flag (find-symbol "*USE-FORTRAN-FORMAT-PRINTER*"
                               :fortran-to-lisp)))
       (cond
         ((and ,flag (boundp ,flag))
          (progv (list ,flag) (list ,value)
            ,@body))
         (t
          ,@body)))))

(defun convert (path)
  "Translate PATH with f2cl using the new fortran-format printer/reader.
Returns T iff no error."
  (reset-state)
  (ensure-directories-exist *work-dir*)
  (with-printer-flag (t)
    (f2cl:f2cl (src-path path) :output-file (lisp-out path)))
  t)

(defun convert-and-compile (path &key include-comments)
  "Translate PATH with f2cl (new fortran-format printer), then COMPILE-FILE
  the resulting .lisp.  Returns T iff both steps complete without
  signalling an error.  Used for tests that need to verify the
  generated Lisp is itself well-formed - e.g. comment-laden output
  where a quoting bug could produce a file that f2cl writes happily
  but the CL reader/compiler rejects."
  (reset-state)
  (ensure-directories-exist *work-dir*)
  (let ((lisp (lisp-out path)))
    (with-printer-flag (t)
      (f2cl:f2cl (src-path path)
                 :output-file lisp
                 :include-comments include-comments))
    (compile-file lisp :verbose nil :print nil))
  t)

(defun convert-compile-load (path)
  "Translate, compile, and LOAD the resulting fasl for PATH using
  the new fortran-format printer/reader.  Used by tests that want to
  call the translated entry function directly -- e.g. inside a
  HANDLER-CASE in the deftest body -- without going through
  RUN-PROGRAM's stdout-capture machinery.  Returns T."
  (reset-state)
  (ensure-directories-exist *work-dir*)
  (let ((lisp (lisp-out path)))
    (with-printer-flag (t)
      (f2cl:f2cl (src-path path) :output-file lisp))
    (load (compile-file lisp :verbose nil :print nil)))
  t)

(defun run-subroutine (entry)
  "Call CL-USER::ENTRY (a string naming a function in CL-USER) with
  stdout captured to a string and return the captured string.  Used
  by tests that translate a file containing several subroutines once
  via CONVERT-COMPILE-LOAD and then exercise each subroutine in its
  own deftest.  Errors mid-call are caught and appended to the
  captured output so the expected-vs-actual report shows what
  executed before the failure."
  (let ((fn (find-symbol (string-upcase entry) :common-lisp-user)))
    (unless (and fn (fboundp fn))
      (error "no such entry function ~A in CL-USER" entry))
    (with-output-to-string (out)
      (let ((*standard-output* out))
        ;; Re-seat f2cl-lib's unit cache so it points at OUT.
        (let ((init-io (find-symbol "INIT-FORTRAN-IO" :f2cl-lib)))
          (when (and init-io (fboundp init-io)) (funcall init-io)))
        (handler-case (funcall fn)
          (error (c)
            (format t "~&*** uncaught Lisp error: ~A~%" c)))))))

(defun run-program (path entry)
  "Translate, compile, load PATH (using the new fortran-format printer);
  call CL-USER::ENTRY with stdout captured.  Return the captured
  string.  If the entry function signals an error mid-run, the
  partial output captured up to that point is returned with a
  trailing line describing the error, so RT's expected-vs-actual
  report shows what executed before the failure rather than an
  opaque condition object."
  (reset-state)
  (ensure-directories-exist *work-dir*)
  (let ((lisp (lisp-out path)))
    (with-printer-flag (t)
      (f2cl:f2cl (src-path path) :output-file lisp))
    (load (compile-file lisp :verbose nil :print nil))
    (let ((fn (find-symbol (string-upcase entry) :common-lisp-user)))
      (unless (and fn (fboundp fn))
        (error "no such entry function ~A in CL-USER" entry))
      (with-output-to-string (out)
        (let ((*standard-output* out))
          ;; Re-seat f2cl-lib's unit cache so it points at OUT, not
          ;; the *standard-output* we had at top-level.
          (let ((init-io (find-symbol "INIT-FORTRAN-IO" :f2cl-lib)))
            (when (and init-io (fboundp init-io)) (funcall init-io)))
          (handler-case (funcall fn)
            (error (c)
              (format t "~&*** uncaught Lisp error: ~A~%" c))))))))

(defun convert-and-classify-read-warnings (path)
  "Translate PATH and report which READ-related fortran_comment warnings
  appear in the generated Lisp.  Returns a list of keywords, one per
  matching warning, in source order:

    :blanket    -- the old unconditional 'READ statement may not be
                   translated correctly!' wrapper.  Should never appear
                   in patched f2cl output.

    :fmt        -- a targeted 'formatted READ with FMT=... not fully
                   implemented' warning.  Expected only on edit-
                   descriptor formats and numeric format-statement
                   labels.

    :unhandled  -- 'unhandled READ option(s): ...' for an option keyword
                   parse-read didn't recognise.

  Returns NIL if no READ warnings were emitted at all."
  (reset-state)
  (ensure-directories-exist *work-dir*)
  (let ((lisp (lisp-out path)))
    (with-printer-flag (t)
      (f2cl:f2cl (src-path path) :output-file lisp))
    (with-open-file (in lisp)
      (loop with kinds = nil
            for line = (read-line in nil nil)
            while line
            do (cond
                 ((search "READ statement may not be translated correctly"
                          line)
                  (push :blanket kinds))
                 ((search "formatted READ with FMT=" line)
                  (push :fmt kinds))
                 ((search "unhandled READ option" line)
                  (push :unhandled kinds)))
            finally (return (nreverse kinds))))))
