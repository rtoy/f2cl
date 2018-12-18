-*- Mode: text -*-

Changes:
Mar 2013
--------
Some updates needed to when trying to update to LaPACK 3.4.2 in
maxima.

o Did not handle the declaration correctly:

     character name*(*)

  This was declaring name to be an array of strings, but it's really
  just a string of unknown length.
o Added new (Fortran 95) intrinsic LEN_TRIM.  This was needed by the
  new version of lapack.
o Try to be more careful about declaring things that were declared as
  instrinsics.  
  - We no longer create a dummy variable named foo$ when foo is
    declared as a intrinsic.
  - We also try not to get confused when a variable is declared with
    the same name as an intrinsic.  The variable takes precedence. 

May 2012
--------
o Ecl has a interesting feature in its compiler where the type of a
  literal string is a simple-array with the smallest character type
  that will hold every character in the string.  This behavior clashed
  with f2cl's desire to declare everything as (simple-array
  character).  F2cl has been updated so that strings are declared as
  strings instead of simple-arrayy of characters.

  This showed up in compiling maxima.

Oct 2010
--------
o Added MAKE-DEPENDENCIES to create a list of dependencies that could
  be used with mk-defsys.  See the docstring for caveats.
o Handle IMPLICIT DOUBLE PRECISION

Feb 2010
--------
o Add :PROMOTE-TO-DOUBLE option which promotes all single precision
  variables to double precision.

o Some old-style Fortran code passes arrays of different types to
  routines expecting a different type.  For example, passing a COMPLEX
  array to a routine expecting a REAL array.  This works in Fortran,
  but not in Lisp.  To solve this, f2cl will now create a new array of
  the correct type, copy the elements of the original array into it,
  call the routine, and then copy the results back.  This feature is
  controlled by :copy-array-parameter and defaults to off.  Currently,
  this only works for converting REAL arrays to COMPLEX arrays and
  vice versa.

Apr 2009
--------
o Bind *READ-DEFAULT-FLOAT-FORMAT* to 'SINGLE-FLOAT when reading the
  Fortran source because Fortran numbers are single precision unless
  there's an exponent marker.

Jan 2009
--------
o IMPLICIT REAL*8 was not properly handled and treated everything
  incorrectly as single-float.
o The handling of ENTRY functions sometimes left undefined variables
  in the generated code.  This is fixed now.
o Implied-do loops with a step value did not correctly handle the
  step, treating the step as a function call.
o FORMAT statements like 100(/8F12.6) would end up printing up to 100
  newlines even when there were only a few arguments to be printed.
  This bug is fixed and processing stops when we run out of arguments
  to print.
o DFLOAT function added to the list of instrinsics.
o Cleaned out old, unused stuff from macros.l.
o Added *STOP-SIGNALS-ERROR-P* to control whether STOP should signal a
  continuable error or not.
o The DEFPARAMETER's for common blocks are now top-level forms as they
  should be to get the desired compile-time side effects.
o Implied-do loops with a step are now handled correctly.
o Parsing of D format descriptors was incorrect.  The repetition
  factor was being returned as NIL, but it should have defaulted to
  one.
o Fix bug in handling of SAVE variables when the variable name is the
  same as an intrinsic function.  This was causing the variable to be
  declared and initialized incorrectly sometimes.
 
August 2008
------------
o Added :common-block-file option to F2CL and F2CL-COMPILE.  When set,
  and when common blocks are to be declared, each common block is
  written to a separate file whose extension is "cmn and whose name is
  the name of the common block.

  This might need some more work.  In particular, no check is made to
  see if the file already exists, so multiple declarations will
  overwrite each other.

Mar 2008
------------
o F2CL was missing variables first used in PRINT or WRITE statements
  and hence didn't declare them.  We now check for new variables in
  PRINT and WRITE statements.  Undoubtedly there are other places
  where we are missing the check.
o F2CL was incorrectly parsing Hollerith strings followed by an edit
  descriptor without an intervening comma.  The edit descriptor was
  incorrectly discarded.  This should be fixed now.

o Ran the following tests successfully:
  - quadpack
  - toms 419
  - toms 715
  - toms 717
  - minpack
    + lmdif, lmder
  - hompack
    + mainf, mainp, mainf
  - odepack
    + lsode, lsoda, lsodar, lsodpk, lsodkr, lsodi, lsoibt
  - fishpack
    + hwscrt, hwscyl, hwsplr, hwsssp, hwscsp, hstcrt, hstplr, hstcyl,
      hstssp, hstcsp, sepx4
  - donlp2
    + ex-antenna1, ex-hs101, ex-hs102,, ex-hs103, ex-amplqp,
      ex-alkylati, ex-fractf77new, ex-girder, ex-irreg1, ex-irreg2,
      ex-net1, ex-boxparam, ex-betting, ex-barnes, ex-demo1as,
      ex-dembo4, ex-dembo7, ex-maratos, ex-paviani2, ex-undefexa,
      ex-weaponas 

o Support the following types of implied-do loops in DATA statements.
  These are from hs109.f and tp383mod.f:

      DATA X/NX*0.0D0/
      DATA (A(I),A(I+7),I=1,7)/.../

  These changes allow us to compile hs109.f and tp383mod.f
  successfully.  The tests pass too.

o The test programs in the various add-on packages now save their
  outputs.  The outputs have been generated using Sun Studio 11
  Fortran on an UltraSparc.  This makes it a little easier to compare
  against the Lisp output since both Sun Fortran and f2cl use a D
  exponent marker in most of the same places.
o Added Fortran tests for quadpack, just so we can compare them with
  the tests for the translated version.
o Lazily initialize *lun-hash* hash-table entries for units 5, 6, and
  t.  Works around an issue found in maxima with clisp.  The
  hash-table contained closed streams for some reason.

Feb 2008
------------
o I'm not good with keeping version numbers, so add an RCS Id string
  to each file in a defparameter.  Add new function to list the values
  of these parameters.  And finally use that in the generated output
  so we know exactly what version was used to generate the output.
o Cleaned up the MERGE-DATA-AND-SAVE-INITS.  Handles strings now, and
  no longer checks to see if the number of initial values fills the
  array.  The array is initialized anyway, and 0 (of the appropriate
  type) is used as the filler.  (Arrays of strings get a string of
  spaces).
o Many of the included packages have been rerun with these changes:
  - quadpack
  - toms 419
  - toms 715
  - toms 717
  - minpack
    + lmdif, lmder
  - hompack
    + mainf
  - odepack
    + lsode, lsoda, lsodpk
Sep 2007
------------
o Extended DO loops were causing extra labels in the Lisp code, which
  causes errors when compiling the Lisp code.
o DATA statements weren't handling repetitions correctly when
  processing the initializers for an array.
o The initializer for strings in a common block was done incorrectly.
  This may been some more work.
o Initialization of strings was wrong because we tried to coerce 0 to
  a character.  We really wanted a space.
o The options in an OPEN statement weren't being parsed correctly.
  Some of the option values can be an expression.
o The preprocessor can now recognize INCLUDE statements.  This is an
  extension in some Fortran's.  (Should we add yet another option to
  control this?)  Nested include's are supported.
o Some issues with handling of the last line of the input file are
  fixed.  (Exposed by the INCLUDE support.)
o Initialization of some arrays via DATA statements were done
  incorrectly because the initializers aren't necessarily constants. 
o Was not correctly handling atoms when executing format statements. 
o Better printing, especially for list-directed output.
o Unused Fortran PARAMETER values and unused symbol macros (for common
  block variables) are removed from the generated code to reduce
  warnings from Lisp compilers.
o Implied do loops over multidimensional arrays are supported.
o Nested implied do loops are supported.
o DONLP2 package added.  Many tests are included, and most of them
  match the Fortran results.

May 04, 2007
------------
o F2CL was getting confused with functions declared as external that
  also happened to be named the same as some f2cl-lib functions like
  zsqrt.  F2CL would compile the code usig f2cl-lib:zsqrt instead of
  zsqrt, and this is wrong.  zsqrt should have been used.

  To fix this, when we grovel over the generated code, replacing some
  symbols with f2cl-lib symbols, we need to skip over any functions
  declared external.  We also need to be careful and not redefine our
  f2cl-lib functions with Fortran code.

Nov 28, 2006
------------
o F2CL will now save relevant function information in the generated
  lisp file.  The information is loaded only if the f2cl package
  already exists.  

  This information is useful when loading up converted files in a new
  session and compiling a subset of the files again.  That way, f2cl
  will know about called functions without having to recompile
  everything from scratch again.

Nov 24, 2006
------------
o Added all of BLAS to the BLAS package.
o Added LAPACK package containing just parts of LAPACK.
o Fixed an issue where DATA statements for logical arrays were not
  getting used.

May 03, 2006
------------
o f2cl tries to declare the variables in parameter statements more
  carefully, since the value of a parameter cannot change.
o f2cl tries to make sure scalars initialized in data statements are
  actually initialized with the correct value instead setting the
  value later.
o In many cases, f2cl will no longer generate an FSET; instead plain
  SETF will be done, because it does the right thing anyway.
o Some clean up of the various packages have been done, and they have
  been tested.
o f2cl should handle formats like "1P,E15.8", which is the same as
  "1PE15.8". 

Apr 28, 2006
------------
o Oops.  Assignment of a complex result to a real variable was not
  taking the real part.
o Add type-derivation for ABS so we don't have calls to coerce
  wherever we use ABS.

Apr 27, 2006
------------
o F2CL was not properly parsing Fortran complex numbers of the form
  (<re>, <im>).  This was ok if <re> was a positive number, but it was
  majorly broken if <re> was negative.  I've changed the parser to
  handle this better, but it may have broken parsing
  expressions. However, compiling quadpack, minpack, and toms715 works
  just fine. (Had to change dqawse.f because F2CL doesn't like logical
  operators with the leading dot on a separate line from the rest of
  the operator name.)
o Added a few more intrinsic functions and implementations:  dcmplx,
  dimag, zsqrt. 
o I think I got rid of the spurious ABS$ variable that always occurred
  whenever the ABS function was used.

Apr 26, 2006
------------
o Add support for DO WHILE statements.  This is an extension to
  Fortran.  

Jan 30, 2006
------------
o Add support for multidimensional initializers, when the number of
  initializers matches the whole array.
o Revert the change for spaces around logical operations (Jan 4.)

Jan 8, 2006
-----------
o We were stupidly not recognizing FORMAT statements if the FORMAT
  statement were indented.  This should be fixed now.
o We were not correctly handling multidimensional character arrays
  because were not converting them to 1-D arrays.
o Initializers for multidimensional arrays were getting dropped.
o Added TOMS 717 as a test package.  Many of the issues we've found
  and fixed were discovered when converting TOMS 717.  Besides, TOMS
  717 sounds like a really interesting and useful package.
o F2CL currently gets confused if a string contains a double-quote
  character.  The work-around is to remove the double-quote
  character.  Strictly speaking, I don't think a double-quote is a
  valid Fortran 77 character.
o TOMS 717 also illustrates that we should handle equivalences of
  arrays.  But how?  An easy way would be to make one array displaced
  to another.  But for that to work, we need to make the shorter array
  displaced to the longer.  This works if the dimensions are numbers,
  but sometimes they might be PARAMETER vars.

Jan 4, 2006
-----------
o Add some support for parsing logical operations that have spaces
  around the dots and the operation, like ". AND   ."

o We were not correctly processing initialization of string arrays in
  data statements.  This was noted in Bug 1396221 "f2cl fails on
  TOMS-717 translation".  I think this is fixed now.

Jul 16, 2005
------------

Lots of little fixes:

o F2cl erroneously initialized and declared ARRAY-SLICE as a variable,
  along with the type associated with ARRAY-SLICE.
o F2cl was not entering entry point functions into the function database.

Also, hompack now compiles and passes the 3 test programs.  Yay!  The
mainp test, however needs some hand modification to work because it
reads the data from unit 7.  F2cl doesn't support the OPEN statement
and also doesn't support Fortran's READ very well.

So to make mainp work, you need to take the converted lisp and
basically change all (read) to (read-from-string (read-line)).  This
works because the code only reads one parameter per line.  Then, to
run the test (called testp), you need to do

    (with-open-file (*standard-input* "innhp.dat" :direction :input)
      (testp))

The output should match the sample output in mainp.f and innhp.dat.
There are some differences, though.

Also, parts of FISHPACK have been added as a package for F2cl.  (This
was the reason for adding simple EQUIVALENCE support).  The tests we
currently have for FISHPACK all pass.  We should add more of FISHPACK.

Jul 14, 2005
------------

Added some support for handling EQUIVALENCE statements.  What we can
handle is the equivalence an array to a simple variable of the same
type.  If we get an equivalence that we can't handle, we now produce
an error message instead of silently putting a "not-translated" string
into the generated code.

Jul 14, 2005
------------

Added a new feature to help f2cl generate better code when calling
functions.  f2cl keeps track of the function "prototype" so it knows
the types of the args and the possible return values.  So if the
function is known at compile time we can generate better calls.  For
example,

     subroutine foo (x)
     real x
     end

     real x(10), y(10)
     call foo (x(3))
     end

With default options (array-slicing enabled), the call to foo will
slice the array x.  This is wrong because foo wants x to be a simple
variable.  But at compile time, we know foo wants a simple variable,
so we can arrange it so that we don't slice x, but just pass x(3).

So this makes it even more important to compile all the files in the
right order so that f2cl has the function information.

Jun 19, 2005
------------

Try to create nice array initializers in idiomatic Lisp.  In some
Fortran code, we have data statements like 

      DOUBLE PRECISION ERFCS(21)
      DATA ERFCS(  1) / -.4904612123 4691808039 9845440333 76 D-1     /
      DATA ERFCS(  2) / -.1422612051 0371364237 8247418996 31 D+0     /
      DATA ERFCS(  3) / +.1003558218 7599795575 7546767129 33 D-1     /
      ...

to initialize a local variable.  This was getting converted in Lisp
code like

     (let ((erfcs (make-array 21 :element-type 'double-float)))
       (fset (fref erfcs 1 ((1 29))) -.49046121234691808039984544033376D-1)
       (fset (fref erfcs 2 ((1 29))) -.14226120510371364237824741899631D+0)
       ...
       (defun foo ...))

This can be written more nicely as

     (let ((erfcs (make-array 21 :element-type 'double-float
                    :initial-contents '(-.49046121234691808039984544033376D-1
				        -.14226120510371364237824741899631D+0
					...))))
       (defun foo ...))

We try to do that now.  We currently only handle the case of 1D
arrays.  Multidimensional arrays will have to wait for another day.

One side-effect of this change is that CMUCL compiles the SLATEC
routines much more quickly now.  Probably because it doesn't have to
compile all the fset forms.  Nice!

If this causes problems, set *enable-merging-data-and-save-init* to
NIL.

Aug 14, 2004
------------

ODEPACK added to the set of packages.
Ran 4 of test demos and they seem to work.  Some minor differences in
the output, but I attribute that to arithmetic differences.

Aug 13, 2004
------------

Initial attempt to support compiling odepack with f2cl.  odepack
declares common blocks like the following:

      COMMON /DLS001/ ROWNS(209),
     1   CCMAX, EL0, H, HMIN, HMXI, HU, RC, TN, UROUND,
     2   IOWND(6), IOWNS(6),
     3   ICF, IERPJ, IERSL, JCUR, JSTART, KFLAG, L,
     4   LYH, LEWT, LACOR, LSAVF, LWM, LIWM, METH, MITER,
     5   MAXORD, MAXCOR, MSBP, MXNCF, N, NQ, NST, NFE, NJE, NQU

and
      COMMON /DLS001/ RLS(218),ILS(37)

and

      COMMON /DLS001/ CONIT, CRATE, EL(13), ELCO(13,12),
     1   HOLD, RMAX, TESCO(3,12),
     2   CCMAX, EL0, H, HMIN, HMXI, HU, RC, TN, UROUND,
     3   IOWND(6), IALTH, IPUP, LMAX, MEO, NQNYH, NSLP,
     3   ICF, IERPJ, IERSL, JCUR, JSTART, KFLAG, L,
     4   LYH, LEWT, LACOR, LSAVF, LWM, LIWM, METH, MITER,
     5   MAXORD, MAXCOR, MSBP, MXNCF, N, NQ, NST, NFE, NJE, NQU

and expects everything to work.  This is perfectly valid Fortran.

So what we do here is create a lisp structure like so:

   (defstruct dls001
     (part-0 (make-array 218 :element-type 'double-float)
             :type (simple-array double-float (218)))
     (part-1 (make-array 37 :element-type 'integer4)
             :type (simple-array integer4 (37))))

Then to access CRATE, we can use

     (aref (dls001-part-0 *dls001*) 1)

EL would be accessed by creating a displaced array like so:

     (make-array 13 :element-type 'double-float
                 :displaced-to (dls001-part-0 *dls001*)
                 :displaced-index-offset 2)

IALTH would be

     (aref (dls001-part-1 *dls001*) 6)

And so on.  This will allow f2cl to correctly compile and access the
common blocks used in odepack.  (Assuming I got it all right.)

This matches more closely how Fortran does common blocks.     



Aug 11, 2004
------------

I think the parser bug with x .le. y*z is fixed now.
The parser looks for logical operations and rewrites them with
parentheses so the rest of the parser sees the expression (x)
.le. (y*z) which is parsed correctly.

Nov 13, 2003
------------

Some major changes have been done in the last few days.  Assigned
gotos now actually work (code was there but was wrong).  We've also
corrected some bugs generating function calls so we can determine much
more accurately whether to slice an array or just extract the one
element.  We've made this work for statement functions as well.

For this to work, you have to compile the functions in the right
order, starting at the bottom of the call tree.  Or just compile the
whole thing twice.

Also corrected some bugs in handling of ENTRY points to functions.

Currently we only handle ENTRY points if they have exactly the same
arg list as the main function.  However, that's not required by
Fortran.  I think we can actually emulate this and here's how.

Currently, entry points are done by creating a LABELS function that is
the body.  It takes an extra parameter denoting the actual entry
point, and this is used to jump to the right place in the body.  This
works great if the arg lists are the same for all entry points.  

When the arglists are different, we do something else.  The layout
would be something like:

    (let ((avar1 ainit1) (avar2 ainit2) <other arg vars>)
      (labels ((main-entry (entry-name)
                 (case  entry-name
	           (%entry-1 (go entry-1))
		   (%entry-2 (go entry-2)))
                 <stuff>
		 entry-1
		 <stuff>
		 entry-2
		 <stuff>
		 ...
		 ))
         (defun entry-1 (a1 a2 ...)
	   (setf avar1 a1)
	   (setf avar2 a2)
	   ...
           (main-entry '%entry-1))

         (defun entry-2 (a1 a2 ...)
	   (setf avar1 a1)
	   (setf avar2 a2)
	   ...
           (main-entry '%entry-2))))

I think this will work, but I'm not really motivated to do this.

May 04, 2002
------------

We've made some corrections and added very, very rudimentary support
for creating an FFI and wrapper.  See the new file f2cl8.l for this.
Doesn't yet work, but it could. :-)

May 04, 2002
------------

We've added an experimental feature to help f2cl generate better
function calls.  Remember that Fortran is call-by-reference so that
the routine can modify the value of its input parameters.  This
doesn't work in Lisp, so what we do is have the function return all
the parameters as the values of the function.  However, if we can
deduce that the input parameter is never set, we return nil as the
value instead of the input parameter.

When generating the call to the function, we look at each returned
value and, if it is non-NIL, we can immediately assign the variable
with the desired value.  Previously, we would check at run-time for
this.  Now we don't.

For this to work correctly, the database needs to be correct.  If it's
wrong, we will generate wrong code for the function call.

Also, for this to work at its best, the functions should be compiled
in correct order:  the functions at the bottom of the call tree should
be compiled first.  Alternatively, you can just run f2cl twice over
all the functions.  After the first pass, the database should have the
correct values.

Mar 18, 2002
------------

We've added some preliminary support for ENTRY statements in Fortran.
We only support simple uses of ENTRY statements where the ENTRY
statement matches the original SUBPROGRAM statement in number, name,
and type of arguments.

This works by taking the actual body of the routine and creating a new
routine out of it with a new first parameter.  This new parameter is
the name of the function we want to call.  A separate function for
each ENTRY point is created which basically just calls the new routine
with the first arg set appropriately.

Mar 16, 2002
------------
Since f2cl always returns all the arguments for a subprogram, this can
generate some small garbage consing up the arguments to be returned.
We can reduce this if we careful, and, with a sufficiently smart
compiler, if we compile the files in the right order, the compiler can
do a better job of optimizing if it knows the return types of the
functions.  (How?  Subroutine calls check the return values.  If the
return value is NIL, we don't assign the variable with the value
returned.  If the compiler can figure out that the subroutine always
returns NIL for that value, it can skip the check and the assignment.)

So, we look at all assignment statements and see if they are assigning
to the any argument.  We record this fact.  We also have to look at
calls to subprograms.  Since we don't know what the subprogram is
doing, we conservatively assume it will modify its arg.

Finally, when we are computing the return values, we look at the list
of arguments that were assigned to.  If the argument was, we have to
return it.  If not, we return NIL, which doesn't cons.

Mar 10, 2002
------------

By the rules of Fortran, integer arithmetic that overflows is
undefined.  So when translated to lisp, we can tell the compiler that
integer arithmetic can't overflow.  Thus, m + n can be converted to
(the integer4 (+ m n)).

This is implemented now.  This helps mpfun generate better code when
compiled with safety of 0 because (+ m n) can be a single add
instruction. 

Mar 6, 2002
-----------

We weren't handling things like

   write(*, '(78a1)') a

very well because the 78a1 was basically converted into a single ~A.
This caused a lot of need consing and was not correct for mpfun.

So, what we do now is rewrite that as

         write(*, 9000000) a
9000000  format(78a1)

where the statement number is so large that it can't possibly be a
real statement number.

This helps printing in mpfun's mpout routine tremendously.  Of course,
we could have just hacked the Fortran function directly, but it's
legal Fortran so we should handle it correctly.

Feb (late), 2002
------------

Some of the macros we use don't pprint very well, so add a pretty
printer for them.

Feb 16, 2002
------------

I implemented option 3 below, except that compiler specific functions
aren't needed (ARRAY-DISPLACEMENT is exactly what the doctor ordered).
Displaced arrays are still used, but once we get into the routine, we
trace down the actual data and offset, so accesses can use the fast
simple-array accessors.  Tests with mpfun show that the cost of
looking this up everytime is actually in the noise, and this is a big
win since we don't have to trace down the data on EVERY array access.

However, we still pay a penalty because every array access needs an
additional add to take into account the offset of the displaced array
into the original array which Fortran avoids.  So f2cl probably can't
be better than half the speed of Fortran in these cases.

While implementing this, it's clear that I messed up array
declarations.  Only arrays that are parameters need to be declared as
arrays.  All other arrays can still be declared as simple-arrays.

This change cut the run time of MPFUN by half (from about 12 to 6
sec).  CMUCL also printed out many notes about using generic
arithmetic array indices.  We've wrapped all these index calculations
in fref with (the fixnum ...).  This cuts the time from 6 sec to about
3.2 sec.  Not bad!

I think the only thing left that we can do to speed up mpfun is to
wrap up all integer operations with (the integer4 ...) because that's
what Fortran says anyway.  This will help us to avoid the expensive
generic versions of these operations.


Feb 11, 2002
------------

MPFUN now compiles and runs, but it is about 5-10 times slower than
Fortran.  Had to tweak a couple for Fortran routines to prevent f2cl
from slicing an array that shouldn't have been, and f2cl didn't
correctly convert some write/format statements.

I think this is caused by the array-slicing that we do which has
displaced arrays to displaced arrays to displaced arrays....  Chasing
down the data is expensive.  How to solve this:

1. Copy the arrays to new arrays, call the function, then copy the
   data back.  The function can now use simple-arrays for speed, but
   this probably causes lots of consing.  The consing and the copying
   may negate any speed gains we get.  This should be fairly easy to
   do in f2cl.
2. Add extra args to functions that contain the starting index of the
   array.  So when an array is sliced, we adjust the index and pass
   that on to the called function.  Every array access now has an
   extra addition, but should be have better performance than
   displaced-arrays.  This is quite a bit more work.
3. Use compiler-specific functions to get at the data.  CMUCL has
   with-array-data that might a pointer to the actual data, after
   chasing down all of the displacements.  If so, this should be
   relatively easy to do and should give decent performance.  Probably
   not as fast as option 2.

Also, there might be some slowdowns from integer arithmetic.  Should
we wrap up integer operations with (the integer4 (...))?  This is what
Fortran does, essentially.

Feb 07, 2002
------------

Richard Fateman used f2cl to compile the mpfun package.  It failed.
Some of the key changes needed to make this work, but I don't know if
mpfun works or not yet.

o mpfun has a block data subprogram.  We now handle this now by
  cheating.  We rewrite the block data statement into a subroutine
  statement for a routine named /blockdata/.  This seems to work,
  after getting symbol-macrolets into the initialization part of the
  code.

  However, we leave it up to the user to actually call the block data
  subprogram at least once.  Should we do this automatically for the
  user?  If so, how?

o Fixed some number parsing bugs that mpfun exposed.  (PARSE-NUMBER is
  such a mess!)

Other changes:

o The temp file prep.tmp is now computed from the input file name and
  is given the same name with a new extension of "p" (for
  preprocess).  (Hmm, should it be "tmp" instead?)
o Fixed some more bugs.  See logs for details.

Jan 13, 2002
------------

A major change, with hopefully minimal impact.

All of the symbols in macros.l is now in the F2CL-LIB package.  If
generated code needs symbols from macros.l, they are now prefixed with
the appropriate package qualifier.

This change was made so that the converted code can be used in other
packages even if the other package happens to use the same symbols.

See the change logs for other changes.

Sep 9, 2001
-----------

o Fixed a bug that caused 
      y = 1.5d0 - exp(x) * top
  to be incorrectly preprocessed as
      y = 1.5d0 - e xp(x) * top

o Handle Hollerith strings in FORMAT statements by converting the
  Hollerith strings into real strings during preprocessing by looking
  at FORMAT statements.  FIND-QUOTE needs some work to handle
  Fortran-style quoting better.  This should work much better than
  whatever I did on Aug 02, 2000 below.

Jun 3, 2001
-----------

Can handle extended DO loops like:

    DO K = 1, 10
      PRINT *, K
    END DO

We do this by converting this to a regular do loop but with a label
that is larger than any possible Fortran label (which is limited to 6
digits).

Aug 29, 2000 or so
------------

Some fixes to handling of format statements.  I think we do a much
better job now.

Some bugs were fixed:
o Function calls need array slicing applied.
o The Fortran D format was converted to Lisp ~D, when it should have
  been ~E.
o Statement functions should coerce the result to the right type.

Added the MINPACK package, which highlighted some of the bugs above.
(Cool!)  Note:  the MINPACK package appears to have some lines that
exceed column 72.  This isn't a problem for f2cl, but your compiler
might drop those characters past column 72.


Aug 18, 2000
------------

Changed PARSE-NUMBER to handle some spaces embedded within numbers.
While I wanted it to handle ALL spaces embedded within numbers, there
are certain cases where I'm missing something and we end up
incorrectly parsing the file later.  In particular there can be no
spaces before the decimal point.  Spaces anywhere else in the number
appear ok.

Aug 09, 2000
------------

Fix some bugs in parsing common blocks.  The test val/commontest.for
should now be converted correctly.  

Also, Fortran says the definition of the elements of a common block
can be split over several common statements.  We support that now
(at the expense of checking for inconsistently declared common
blocks).  You'll have to manually check this.



Aug 04, 2000
------------
Add rudimentary support for Fortran READ statements.  Only tested for
reading into simple variables.  No checks are made for the correct
type read; we don't even try to parse the format statement associated
with READ or any of the possible options like END or ERROR.

Aug 02, 2000
------------

Add support for Hollerith strings in FORMAT statements.  This may
lose white-space characters in the original string, but is certainly
better than just saying "*Hollerith*" on output. :-)

Aug 01, 2000
------------

Including comments in the f2cl output was broken when I made the
preprocessor handle continuation lines.  I think this is fixed now by
collecting all comments and printing them after we're sure we have
read in one complete logical line.  The comments may now be in the
wrong spot, but they were never really guaranteed to be in the correct
spot anyway.


Jul 28, 2000
------------

F2CL is now in the F2CL package.  We also changed // to F2CL-// and
REAL to FREAL to prevent collisions with the corresponding Lisp
symbols.

I think this still needs more testing to make sure everything is
exported and used correctly, but quadpack and TOMS 715 seem to compile
and run correctly.

Jul 27, 2000
------------

Did some testing with Clisp and made the necessary minor changes.
Seems to work correctly with Clisp, although very slowly for the
tests. 

Jul 20, 2000
------------

HURRAY!  I think I've made all the necessary changes to make arrays
1-dimensional in column major order.

With these changes, QUADPACK actually compiles and runs mostly
correctly.  Still need to run a few tests to be sure, but looks good!
I think only one minor change was really needed (dqk15w) because f2cl
was slicing an array when it didn't really need to.  (Could have run
f2cl with array-slicing off for this file, but didn't test this.)

Few bug fixes were done too.

Jul 19, 2000
------------

Previously, all Fortran arrays were converted to the Lisp arrays of
with the same number of dimensions.  This also meant that the Lisp
arrays were stored in row-major order whereas Fortran arrays are in
column order.

The code has been changed so that all Fortran arrays are converted to
1-D Lisp arrays.  Also, all array references are now done in
column-major order in Lisp, just like Fortran.  The intent of this
change is to make array slicing work properly even for
multi-dimensional arrays.

If correctly implemented, it would be conceivable to convert LAPACK to
Lisp. :-)

The code has been given some simple tests and appears to work
correctly.  Still needs some work on the initializations in Fortran
DATA statements where we had to transpose the data.  Don't need that
anymore.


Jul 14, 2000
------------

Preliminary support for array slicing.  That is 

	real x(100)
	call sub(x(10))

really means that the subroutine sub is passed an array of length 90
which starts from element 10 of x.

This assumes that sub really wanted an array.  If not, this will
pass an incorrect type to sub.  If sub really wanted a simple real
parameter, change the Fortran code to the equivalent:

	real x(100)
	real tmp
	tmp = x(10)
	call sub(tmp)
	x(10) = tmp

The last assignment is needed only if sub is modifying its argument.

NOTE: Array slicing can have severe performance penalties because when
array slicing is enabled, all arrays are declared as array's, not
simple-array's.  If you don't need array slicing, don't use it.  In
the first example, array slicing is needed, so it must be turned on
for this code.  The routine sub should then also be converted with
an array-type of array since we're not passing a simple-array into the
routine.

NOTE: Array slicing really only works with one-dimensional arrays.
While multi-dimensional arrays are recognized and handled, Fortran
stores arrays in column-major order whereas Lisp stores arrays in
row-major order.  Thus, the array slice will not actually refer to the
correct elements.

Jul 12, 2000
------------

Lot's of changes to enhance character handling.  Many (all?) possible
declarations of character strings and arrays of character strings are
handled.  We should also be initialize such arrays to spaces, just
like Fortran seems to.  Assigning values to character strings should
now work like Fortran:  either by appending spaces to fill out the
string or truncating the string if it's too long.

Some problems with common blocks were fixed.  However, common block
handling is still somewhat broken.


Jun 29, 2000
------------

Some systems appear to have a broken peek-char function.  Versions of
CMUCL as of this date appear to have this problem.  If you're using
this, add :broken-peek-char to your features to work around this
problem.  There may be other problems with this hack, so please try to
upgrade to some (currently unknown) later version that has this fixed.


Jun 7, 2000
-----------

Everything added as a part of CLOCC on sourceforge.

Aug 5, 1999
-------------

* f2cl1:  fixed some bugs where we coerced things when we didn't have
  to.

* f2cl5:  didn't recognize the type of the Fortan functions conjg and
  cmplx.

* macros:  modified the int and aint macros to handle a full integer4
  type for CMUCL.

July 9, 1999
-------------
* Fortran integers (integer*4) aren't necessarily fixnum's anymore.
  They can also be (signed-byte 32).  Do this only if your compiler
  has good support for (signed-byte 32).  If not, use fixnum instead.
  CMUCL supports (signed-byte 32) pretty well.

* The parser recognizes integer*4, integer*2, integer*1, real*8,
  complex*8, and complex*16 now and uses the appropriate Lisp types
  for them.  This also fixes a bug wherein complex wasn't recognized
  before.  (Note:  Unless your Lisp supports (complex single-float)
  and/or (complex double-float), you'll probably cons to death running 
  the translation.)

July 8, 1999
-------------
* Fixed an annoying bug in calling subroutines.  If an element of an
  array was passed to a subroutine and the subroutine modified the
  value, this modified value wasn't getting back to the array.
  Something like:

	real x(10)
        ...
        call sub(x(5))
	...

	subroutine sub(z)
	...
	z = 37
	return
	end

  In this case, x(5) wasn't set to 37 as expected.  These cases are
  handled now.

  Note that we don't handle the case where sub really wanted z as
  array.  However, a run time error should occur so you can do the
  right thing: This usually means changing the type of z from
  simple-array to just array, and changing (fref x (5)) to be
  something like (make-array ... :displaced-to x ...).

* Fixed a bug in how relational operators dealt with strings.  Strings
  should be handled better, but this still needs work.

* We try to beautify some code by converting things like (+ (+ (+ x y) 
  z) w) to (+ x y z w).

* Common blocks now handle arrays dimensioned via PARAMETER
  statements.  

* Fixed a small problem where relational ops weren't recognized as
  such.

July 7, 1999
-------------
* Corrected some bugs in the common block structure stuff.  Also made
  it handle PARAMETER values used to dimension common block arrays.

* NOTE: PARAMETER values can refer to other PARAMETER values in
  Fortran.  I don't think order is important, but order is important
  in the translated Lisp.  Currently, you might need to tweak the
  order of the PARAMETER variables so things are ordered correctly.

* Corrected some bugs in string processing.  Not fully tested yet.

July 6, 1999
-------------
* Major change:  Fortran PARAMETER variables are no longer made into
  keyword arguments to the function.  This change is needed because of 
  the way SAVE'd variables are now implemented.  If a SAVE'd array was 
  dimensioned using a PARAMETER, the value of the PARAMETER must be
  made available BEFORE the function call.

* When assigning values to character variables, we can't just use
  setf.  We need to copy the string from the RHS to the variable.

  Right now we do a "(setf var (copy-seq rhs))".  Should this be
  changed to something like "(replace var rhs)"?  

July 5, 1999
-------------
* Support for Fortran strings has been added.  Hurray!  Probably Still
  needs some work, but at least string references and concatenation
  appear to work.

* Fixed a bug wherein undeclared variables were never found, and,
  therefore, the lisp output never initialized or declared them.

* f2cl tries to make the output look a little bit more natural:

  o  Calls to f2cl/ are replaced with / or truncate when possible.
  o  Some expressions are replaced with equivalent ones which look
     more like the original Fortran, and reduces some unnecessary
     operations. 

June 30, 1999
-------------
* Renamed many special variables to include *'s around their names (so 
  I can more easily tell they're special).

* f2cl now computes an output file based on the input file.  The
  default extension is "lisp", but is user selectable.

* Comment handling is better now (at least the result compiles), but
  comments containing quotes are still mangled somewhat.

* Assignment statements can now be automatically coerced.  That is "X
  = 5" will get translated to "(setf x (coerce 5 'single-float))",
  which is what Fortran 77 wants.  Before, this was just (setf x 5),
  which is wrong since X is a single-float.  This is controlled by
  *coerce-assignments* and :coerce-assigns.

June 29, 1999
-------------
* Common blocks are now placed in structures instead of making them
  all special variables.  They are now appropriately initialized too.
  (Changes in f2cl1.l and f2cl5.l)

* Put in a few more checks for t and pi that were missed (common block
  variables and function parameter lists).

* The array sizes are now placed in the declarations.  For formal
  array parameters, *relaxed-array-decls* controls whether the
  dimensions are used or not.  If *relaxed-array-decls* is T, the
  dimensions are not used.

* Added support for the float intrinsic, which was missed.

* The f2cl/ macro should have tested for 'integer, not 'fixnum.

* Logical variables are declared to be of type (member t nil) instead
  of just T.  Gives some error checking.

July 25, 1997
-------------

* Needed to move a few more routines from f2cl5.l to macros.l so that
  apps only need to load macros.l instead of all of f2cl.

* NOTE:  the fformat really should be a function instead of a macro
  because in general we need to interpret the format string at run
  time instead of compile time.  (Example, write (*, fmt=svar).) 
  Haven't done it yet.

July 22, 1997
-------------

* Ok, let's get this straight:  
	o functions in the arg list should be a "type (function ..."
	  declaration.
	o statement functions which turn into labels forms should be a
	  "ftype (function ..." declaration. 
	o other (declared) external functions should also get a "ftype 
	  (function ..." declaration.

July 21, 1997
-------------

* The declarations for functions were wrong.  It should be "type", not
  "ftype"!  Some general cleanup of the function declaration code in
  f2cl5.l was done too.

* Moved the fformat macro and helpers from f2cl5.l to macros.l because 
  we need them there when we're using f2cl as opposed to translating
  with f2cl.

July 20, 1997
-------------

* Computed gotos were broken because computed gotos should be checked
  for assigned gotos (f2cl1.l).  The macro to handle the computed goto 
  forms was also severely broken.

* When labels are pruned, the pruner missed labels used in computed
  gotos. 

* Fixed type in idfix and log10 macros.

* f2cl/ should use truncate instead of floor because Fortran integer
  division is supposed to truncate to zero.


July 19, 1997
-------------

* Changes for handling data statements:
	* Fixed bug in data statements: Initializing an array element
	  whose lower bound was not 1, was broken.

	* Added support for initializing an element of a
	  multidimensional array.

	* Added support for implied do loops in data statements.
	  (Hurray!)

	* Warning: results may be broken when :auto-save (or
	  *auto-save-data*) is nil.  Things look right if :auto-save
	  is non-nil.

* Fixed bug in handling elseif statements:  they can be written as
  "ELSE IF" or "ELSEIF".

* Fixed a long-standing bug where junk variables like 0.1d%5 were
  created.  This was caused by a bug in check_new_vbles which didn't
  recognize this the number 0.1d-5 that f2cl had hacked to 0.1d%5.

* Minor cosmetic change:  Don't wrap the defun with a let when there
  are no SAVE'd variables or data statements.

July 1997
---------

* amin1 and dmin1 were not listed as intrinsic functions

* log10 was not implemented

* Common variables (which are treated as Lisp special variables) were
  proclaimed in the wrong place which produced bad Lisp code.  The
  declarations for these variables were also broken.  Fixed
  in insert-declarations in f2cl5.l, which now returns 3 pieces of
  information:  the proclamation of the special variables, the types
  of the variables, and the function itself.  Required change in
  f2cl1.l too.

* Sometimes save_vbles contains duplicates, so remove them.  Fixes a
  bug in failing to initialize saved variables with the correct
  values.  Fixed in f2cl5.l.

* Moved initialization for data statements from within the function to 
  the containing let when *auto-save-data* is T.  Thus, we only init
  the variables once, just like Fortran usually does.

* Oops.  In the previous change, we botched the case of initializing
  one array element at a time in a data statement.  This required a
  fix in f2cl5.l and f2cl1.l.

Previous changes:

* Fixed bug in initializing variables with data statements: negative
  numbers were hosed. 

* Extended parsing of data statements so things like this work: 
	
	data var1, var2, var3 / val1, val2, val3/


* fixed bug in prog and labels:  the prog should go inside the labels
  form, if any. 

* merge declarations into one statement, with variables of the same
  type merged into one type declaration. 

* don't initialize statement functions and declared (external)
  functions.  However, should do something about declaring them as
  functions. 

* functions declared external should not be called with funcall unless
  they are also parameters.  External functions are usually just
  declarations. 

* Fixed bug in E format descriptor being interpreted as a string.

* Fixed bug in E, F, and G descriptor conversion:  The format for
  filling the output with *'s was wrong.  Still a bug: Lisp fills with
  *'s when Fortran might not?  

* Added special variable "subprog-arglist" to hold the arglist of the
  subprogram.  Needed to distinguish declared external functions and
  functions passed in as a parameter. 

* Fixed bug in processing variables named T and PI.  They weren't
  converted to T_ and PI_ in all of the right places so that T_ and
  PI_ were sometimes declared and initialized twice.  

* Make array init a little better.  If dimensions are known and are
  numbers, don't cons up a list at run time---put them in correctly. 

* Added special variable DATA-INIT to hold variables that are
  initialized with data statements. 

* If variables are initialized with a data statement, put the initial
  value in the initialization part instead of initializing them later.
  NOTE: there may be some problems with initializing an array in a
  data statement that doesn't actually fill up the array with enough
  values. 

* Fixed a bug.  Now handles this correctly:

		data x(2) / 3.3 /

* When initializing multi-dimensional arrays in DATA statements, the
  values are rearranged in the correct order. This is needed because
  Fortran is column-major order, but Lisp is row-major order.  

* Fixed up more places where check-t-and-pi needed to be called:  data
  statements. 

* Handle logical .FALSE. and .TRUE. better.  We replace them with
  %false% and %true% in the code, and have constants %false% and
  %true% which have the right value.  

* aint is an intrinsic function which should return a float of the
  same type as the argument.  

* Variables that are explicitly saved are now initialized and declared
  correctly.  

* The Fortran 77 standard says int, ifix, idint, etc. are all supposed
  to truncate.  

* amax0 returns a real.

* real, sngl, dble are supposed to return the real parts if the
  argument is complex.  

* If *auto-save-data* is non-nil, all variables initialized with DATA
  statements are automatically saved.  This is usually a win if those
  variables are really constants.  Then we don't have to initialize
  them at runtime on every entry.

* Can now properly handle arrays where the lower bound is not one.
  (f2cl understood such declarations, but didn't know how to access
  correctly such arrays.

* Found the last (I hope) place where a variable T was not converted
  to T_.

* aint seems to be both the generic and specific name for rounding in
  Fortran.  We need to make aint return a number of the same type as
  the argument.  Same for anint.

* For sign and dsign, replace with float-sign.

* Fixed bug in alog10 and dlog10:  make sure the the second argument
  to log has the correct type, since the default is to convert 10 to a
  single precision 10, which loses for dlog10.

* Can now properly declare the types of all functions used in a
  subprogram.  Note that the first use of the function determines the
  types of the arguments to the function.  Of course, for proper
  Fortran, the types should be the same for all calls, unless you're
  playing games like some old code does.  We should be smarter about
  this by gathering up all calls, saving the type of the arguments in
  each call, and using the union or superset of them.

* Added macros flog and fsqrt that tells lisp that the argument is
  non-negative.  For smart compilers like CMUCL, there is no overhead
  for doing this, and it helps the code alot since the compiler can
  call the C version instead of the generic versions.

* Modified alog, dlog, dsqrt, etc. to declare the argument type as
  non-negative.  This should be OK, since Fortran says the arguments
  MUST be non-negative.

* Changed default to auto-save.  This is usually a win in speed for
  lisp because the variables are initialized at run-time for every
  call. 

* Changed calls to int and friends to wrap the argument with something
  like

	(the (float #.most-negative-fixnum #.most-positive-fixnum) x)?

  This helps CMUCL call the built-in truncate operator which is much
  faster than the generic one.  This doesn't help for int because
  future operations on the integer will probably force use of generic
  integer arithmetic because the compiler can't prove the result is a
  fixnum.  However, it's a win if the result is a float, like aint.

* Make fformat smarter.  The macro now expands into just the necessary
  set of format statements to print out the data.  It used to expand
  into code that runs over the list of formats.  This can be done at
  compile-time.

* Added preliminary support for print statements.

* We keep track of the parameters in function calls.  We later use
  them to figure out the type of the argument.  However, since the
  argument can be an expression in general, we currently just say the
  parameter has type T in most cases.  However, this leaves open the
  possibility of one day parsing the expression to determine it's type
  and selecting the correct type for the function call.  We could even
  use this to determine if we need to coerce an expression to the
  correct type before assigning it to a variable.

* Fixed bug in declaring array types:  Sometimes the declaration of
  the array incorrectly included the dimensions of the array.  This
  happened when the array was declared by type and by a DIMENSION
  statement.  This is handled correctly now.

To Do:

* Handle EQUIVALENCE

  I think I know how to handle equivalences of arrays now.  Here's the
  idea.  Let's say we have an equivalence between a(4) and b(1).  We
  make a new array, say ab whose size is the maximum of the size of a
  and b.  Then we make displaced arrays for a and b.  So b is
  displaced to element 4 of ab, and a is displaced to element 1 of ab.

  Of course, this can be optimized.  Since a isn't really displaced,
  we don't need to make the array at all.  A symbol-macro will take
  care of a for us.

  Things to watch out for:
  o We can have a(4) equivalenced to b(1) and also c(1) equivalenced
    to a(10).  We need to keep track of all the arrays that are
    mutually equivalenced.

  Of course, we can't really handle equivalences if the types of the
  variables are different.  We just have to give up on those.
  However, if we're using cmucl, we could actually do this.  However,
  we'd have to replace the array references with sap-ref-<foo> to
  access the raw memory.  Not very nice, and not portable.

Bugs:

* Hollerith formats are broken.  The parser never even sees them!
  Hmm. just did some more testing.  It seems to work, as intended, but
  Holleriths are not parsed correctly.

* Handling of comments is partially broken, especially when the
  comment contains quotes.

* PARAMETER variables may not be arranged correctly.  This may require 
  some hand-tweaking of the output lisp file.  This manifests itself
  if the value of a PARAMETER variable is computed from the value(s)
  of other PARAMETER variables.


* FIXED

  Certain DO loops with branches are not translated correctly.  For
  example:

      do 10 k = 1, 2
         do 10 m = 1, 5
            if (m .eq. 3) goto 10
            print *, k, m
   10    continue
      end

  The translated version prints 

 1 1
 1 2

  It should print more.  This is because the DO loops have the same
  continue line and there is a go to that line.  In Fortran, this
  means the inner loop should continue.  However, the Lisp version
  branches completely out of both.  The workaround is simple.  Change
  the loop to be

      do 20 k = 1, 2
         do 10 m = 1, 5
            if (m .eq. 3) goto 10
            print *, k, m
   10    continue
   20 continue
      end

  It would be nice if f2cl could catch this issue and print a warning
  or something.

* F2CL doesn't quite properly handle things like

      subroutine f(x)
      real x(1000)
      call g(x)
      return
      end

      subroutine g(x)
      real x(10)
      print *, x
      return
      end

  I think this is legal Fortran.  In Fortran, g(x) will just print out
  10 elements of x, but F2CL will print out all 1000 elements of x, if
  :relaxed-array-decls is non-NIL (the default).  If
  :relaxed-array-decls is NIL, then I think Lisp will complain that an
  array of the wrong size is passed in.

  There are two solutions here.  Either in f, the call to g should
  slice the array appropriately, or in g, a displaced array of the
  correct size is created from the argument array.  (Need to check to
  see if f2cl is smart enough do first option.)

  One other option is to change to Fortran code so an implied-do loop
  is used to print out the desired elements.
