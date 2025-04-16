(defun machar (&optional ibeta it irnd ngrd machep negep iexp minexp 
	       maxexp eps epsneg xmin xmax)
  "Lisp equivalent of machar.  Arguments are optional

      IBETA   - the radix for the floating-point representation
      IT      - the number of base IBETA digits in the floating-point
                significand
      IRND    - 0 if floating-point addition chops
                1 if floating-point addition rounds, but not in the
                  IEEE style
                2 if floating-point addition rounds in the IEEE style
                3 if floating-point addition chops, and there is
                  partial underflow
                4 if floating-point addition rounds, but not in the
                  IEEE style, and there is partial underflow
                5 if floating-point addition rounds in the IEEE style,
                  and there is partial underflow
      NGRD    - the number of guard digits for multiplication with
                truncating arithmetic.  It is
                0 if floating-point arithmetic rounds, or if it
                  truncates and only  IT  base  IBETA digits
                  participate in the post-normalization shift of the
                  floating-point significand in multiplication;
                1 if floating-point arithmetic truncates and more
                  than  IT  base  IBETA  digits participate in the
                  post-normalization shift of the floating-point
                  significand in multiplication.
      MACHEP  - the largest negative integer such that
                1.0+FLOAT(IBETA)**MACHEP .NE. 1.0, except that
                MACHEP is bounded below by  -(IT+3)
      NEGEPS  - the largest negative integer such that
                1.0-FLOAT(IBETA)**NEGEPS .NE. 1.0, except that
                NEGEPS is bounded below by  -(IT+3)
      IEXP    - the number of bits (decimal places if IBETA = 10)
                reserved for the representation of the exponent
                (including the bias or sign) of a floating-point
                number
      MINEXP  - the largest in magnitude negative integer such that
                FLOAT(IBETA)**MINEXP is positive and normalized
      MAXEXP  - the smallest positive power of  BETA  that overflows
      EPS     - FLOAT(IBETA)**MACHEP.
      EPSNEG  - FLOAT(IBETA)**NEGEPS.
      XMIN    - the smallest non-vanishing normalized floating-point
                power of the radix, i.e.,  XMIN = FLOAT(IBETA)**MINEXP
      XMAX    - the largest finite floating-point number.  In
                particular  XMAX = (1.0-EPSNEG)*FLOAT(IBETA)**MAXEXP
                Note - on some machines  XMAX  will be only the
                second, or perhaps third, largest number, being
                too small by 1 or 2 units in the last digit of
                the significand.
"
  (declare (ignore ibeta it irnd ngrd machep negep iexp minexp 
		   maxexp eps epsneg xmin xmax))
  (let ((ibeta (float-radix 1d0))
	(it (float-digits 1d0))
	;; IEEE style rounding assumed, with partial underflow
	(irnd 5)
	(ngrd 0)
	(machep (- 1 (float-digits 1d0)))
        (negep (- (float-digits 1d0)))
	(iexp 11)
	(minexp -1022)
	(maxexp 1024)
        ;; Make eps mostly match machar.f value of
        ;; 2.2204460492503131E-016
	(eps (* 2 double-float-epsilon))
        ;; Make epsneg mostly match machar.f value of
        ;; 1.1102230246251565E-016
	(epsneg (* 2 double-float-negative-epsilon))
	(xmin least-positive-normalized-double-float)
	(xmax most-positive-double-float))
    (values ibeta it irnd ngrd machep negep iexp minexp 
                        maxexp eps epsneg xmin xmax)))

(in-package #-gcl #:cl-user #+gcl "CL-USER")
#+#.(cl:if (cl:find-package '#:f2cl) '(and) '(or))
(eval-when (:load-toplevel :compile-toplevel :execute)
  (setf (gethash 'fortran-to-lisp::machar
                 fortran-to-lisp::*f2cl-function-info*)
          (fortran-to-lisp::make-f2cl-finfo
           :arg-types '((fortran-to-lisp::integer4) (fortran-to-lisp::integer4)
                        (fortran-to-lisp::integer4) (fortran-to-lisp::integer4)
                        (fortran-to-lisp::integer4) (fortran-to-lisp::integer4)
                        (fortran-to-lisp::integer4) (fortran-to-lisp::integer4)
                        (fortran-to-lisp::integer4) (double-float)
                        (double-float) (double-float) (double-float))
           :return-values '(fortran-to-lisp::ibeta fortran-to-lisp::it
                            fortran-to-lisp::irnd fortran-to-lisp::ngrd
                            fortran-to-lisp::machep fortran-to-lisp::negep
                            fortran-to-lisp::iexp fortran-to-lisp::minexp
                            fortran-to-lisp::maxexp fortran-to-lisp::eps
                            fortran-to-lisp::epsneg fortran-to-lisp::xmin
                            fortran-to-lisp::xmax)
           :calls 'nil)))
