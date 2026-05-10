c Regression: a CHARACTER variable whose name collides with a CL
c function (here LAST -- a Common Lisp list accessor).  f2cl renames
c such names with a trailing $ to avoid the collision.  Earlier,
c parse-char-decl recorded the declaration under the original symbol
c (LAST) while the rest of the translator saw the renamed symbol
c (LAST$); the type lookup for LAST$ then fell through to implicit
c typing, treated LAST$ as INTEGER, and emitted (setf last$ (int
c " ")) for the assignment below -- a runtime error.
      program tstreserved
      character*5 last
      last = 'hello'
      print *, last
      end
