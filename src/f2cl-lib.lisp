;; macros.l - all the basic macros
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;Copyright (c) University of Waikato;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;Hamilton, New Zeland 1992-95 - all rights reserved;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(in-package :f2cl-lib)

(defparameter *f2cl-macros-version*
  "$Id$")

(eval-when
    (:compile-toplevel :load-toplevel :execute)
    (proclaim '(special *verbose*)))
;;----------------------------------------------------------------------------
(defvar *check-array-bounds* nil
  "If non-NIL, generated code checks for array bounds.  If NIL, checking
is not included")

;;------------------------------------------------------------------------------
;;
;; Define the equivalent types between Fortran and Lisp.  This MUST
;; match the types given in f2cl1.l so keep it in sync!
(deftype logical ()
  `(member t nil))

;; Decide what you want integer*4 to be.  Good choices are fixnum or
;; (signed-byte 32).  The latter is good only if your compiler does a
;; good job with this type.  If you aren't sure, use fixnum.  CMUCL
;; does a good job with (signed-byte 32).
;;
;; If you change this, you may need to change some of the macros
;; below, such as INT and AINT!

#+(or cmu scl sbcl ecl)
(deftype integer4 (&optional (low #x-80000000) (high #x7fffffff))
  `(integer ,low ,high))
#-(or cmu scl sbcl ecl)
(deftype integer4 (&optional low high)
  (declare (ignore low high))
  'fixnum)

(deftype integer2 ()
  `(signed-byte 16))
(deftype integer1 ()
  `(signed-byte 8))
(deftype real8 ()
  'double-float)
(deftype real4 ()
  'single-float)
(deftype complex8 ()
  `(complex single-float))
(deftype complex16 ()
  `(complex double-float))

(deftype array-double-float ()
  `(array double-float (*)))
(deftype array-integer4 ()
  `(array integer4 (*)))
(deftype array-single-float ()
  `(array single-float (*)))
(deftype array-strings ()
  `(array string (*)))

(defconstant %false% nil)
(defconstant %true% t)

;;------------------------------------------------------------------------------

;;-----------------------------------------------------------------------------

;; Array dimensions are (d1, d2, d3, ...)
;;
;; Then x(n1, n2, n3, ...) means index is
;;
;; n1 + d1*(n2 + d2*(n3 + d3*(n4 + d4*(n5))))

;; Return an expression that computes the column major index given the
;; indices and the bounds on each dimension.  The bounds are a list of
;; the upper and lower bounds for each dimension.
(defun col-major-index (indices dims)
  (flet ((get-offset (n bound)
           (let ((lo (first bound)))
             (if (and (numberp lo) (zerop lo))
                 n
                 `(the fixnum (- (the fixnum ,n) (the fixnum ,lo))))))
         (get-size (bound)
           (destructuring-bind (lo hi)
               bound
             (cond ((numberp lo)
                    (cond ((numberp hi)
                           (1+ (- hi lo)))
                          ((= lo 1)
                           hi)
                          (t
                           `(- ,hi ,(- lo 1)))))
                   (t
                    `(the fixnum (- ,hi (the fixnum (- (the fixnum ,lo) 1)))))))))
    (let* ((rev-idx (reverse indices))
           (rev-dim (reverse dims))
           (idx (get-offset (first rev-idx) (first rev-dim))))
      (do ((d (rest rev-dim) (rest d))
           (n (rest rev-idx) (rest n)))
          ((endp d)
           idx)
        (setf idx `(the fixnum (+ ,(get-offset (first n) (first d))
                                  (the fixnum (* ,(get-size (first d)) ,idx)))))))))

(defun check-array-bounds (indices bounds)
  `(and ,@(mapcar #'(lambda (idx dim)
                     `(<= ,(first dim) ,idx ,(second dim)))
                 indices bounds)))

(defmacro fref (arr indices bounds &optional offset)
  (if *check-array-bounds*
      `(aref ,arr (if ,(check-array-bounds indices bounds)
                      (the fixnum (+ (the fixnum ,(or offset 0)) ,(col-major-index indices bounds)))
                      (error "Out of bounds index for array ~S"
                             ',arr)))
      `(aref ,arr (the fixnum (+ (the fixnum ,(or offset 0)) ,(col-major-index indices bounds))))))

(defmacro fset (a b) 
  `(setf (fref ,(second a) ,@(cddr a)) ,b))

(defmacro fref-string (s range)
  `(subseq ,s (1- ,(first range)) ,(second range)))

(defmacro fset-string (a b)
  `(setf (fref-string ,(second a) ,(third a)) (string ,b)))

(defmacro f2cl-// (a b)
  `(concatenate 'string ,a ,b))

;; (with-array-data ((data-var offset-var array))
;;   ...
;; )

(defun find-array-data (array)
  (declare (type (array * (*)) array))
  (let ((offset 0))
    (declare (type fixnum offset)
             (optimize (speed 3) (safety 0)))
    (loop
     (multiple-value-bind (displaced-to index-offset)
         (array-displacement array)
       (when (null displaced-to)
         (return-from find-array-data (values array offset)))
       (incf offset index-offset)
       (setf array displaced-to)))))

(defmacro with-array-data ((data-var offset-var array) &rest body)
  `(multiple-value-bind (,data-var ,offset-var)
    (find-array-data ,array)
     ,@body))

(defun multi-array-data-aux (array-info body)
  (let ((results body))
    (dolist (a (reverse array-info))
      (destructuring-bind (array a-type var-name offset-var)
          a
        (let ((atype (if (subtypep a-type 'character)
                         `(simple-string)
                         `(simple-array ,a-type (*)))))
          (setf results
                `((multiple-value-bind (,var-name ,offset-var)
                      (find-array-data ,array)
                    (declare (ignorable ,offset-var ,var-name)
                             (type f2cl-lib:integer4 ,offset-var)
                             (type ,atype ,var-name))
                    ,@results))))))
    (first results)))

(defmacro with-multi-array-data (array-info &rest body)
  (multi-array-data-aux array-info body))

;; Create an array slice for the array named VNAME whose elements are
;; of type TYPE.  The slice starts at the indices INDICES and the
;; original array has dimensions given by BOUND.
;;
;; This is done by making a displaced array to VNAME with the
;; appropriate offset.
(defmacro array-slice (vname type indices bounds &optional offset)
  ;; To figure the size of the sliced array, use ARRAY-TOTAL-SIZE
  ;; instead of the f2cl derived/declared BOUNDS, just in case we
  ;; screwed up or in case we changed the size of the array in some
  ;; other way.  This isn't possible in a function, but the array
  ;; might be in a common block and we could change the dimensions of
  ;; the common block at runtime.  (Some Fortran code like mpfun does
  ;; this, although it's actually illegal.  Neat hack to "dynamically"
  ;; change the dimensions.  Of course, for this to work in Fortran,
  ;; the common block has to contain exactly that one array, or the
  ;; array must be the last element of the common block.)
  ;;
  ;; Note: In some places in LAPACK, an array slice is taken where the
  ;; slice exceeds the bounds of the array.  However, the array is
  ;; never accessed.  What are we to do?  We could modify the LAPACK
  ;; routines (everywhere!) to check for this, or we can silently make
  ;; array-slice make a 0-element array.  If the array is then
  ;; accessed, we should get an error at the point of access, not the
  ;; point of creation.
  ;;
  ;; This seems somewhat reasonable, so let's do that for array
  ;; slices.
  `(make-array (max 0 (- (array-total-size ,vname)
                         (the fixnum
                           (+ ,(col-major-index indices bounds)
                              (or ,offset 0)))))
    :element-type ',type
    :displaced-to ,vname
    :displaced-index-offset (min (array-total-size ,vname)
                                 (the fixnum
                                   (+ ,(col-major-index indices bounds)
                                      (or ,offset 0))))))

;; Compute an initializer for make-array given the data in the list
;; DATA.  The array has en element type of TYPE and has dimensions of
;; DIMS.
(defmacro array-initialize (type dims data)
  (let ((data-list (gensym))
        (data-len (length data))
        (total-length (gensym)))
    `(let* ((,data-list (list ,@data))
            (,total-length (reduce #'* (list ,@dims))))
       (cond ((< ,data-len ,total-length)
              ;; Need to append some data.
              (append ,data-list (make-list (- ,total-length ,data-len)
                                            :initial-element (coerce 0 ',type))))
             ((> ,data-len ,total-length)
              ;; Need to truncate some data
              (subseq ,data-list 0 ,total-length))
             (t
              ,data-list)))))  

;;----------------------------------------------------------------------------

#-aclpc (defmacro while (con &rest body)
          `(loop (if (not ,con) (return t)) ,@body))
;;------------------------------------------------------------------

(defmacro fortran_comment (&rest args)
  (declare (ignore args)))

;;----------------------------------------------------------------------------
;; fdo has similar syntax as do except there will only be one do_vble

(defmacro fdo (do_vble_clause predicate_clause &rest body)
  (let ((step (gensym (symbol-name '#:step-)))
        (iteration_count (gensym (symbol-name '#:cnt-)))
        (loop-var (first do_vble_clause)))
    `(prog* ((,step ,(third (third do_vble_clause)))
             (,iteration_count 
              (max 0 (the integer4
                       (truncate (the integer4
                                   (+ (the integer4 (- ,(third (first predicate_clause))
                                                       ,(second do_vble_clause)))
                                      ,step))
                                 ,step))
                   )))
      (declare (type integer4 ,step ,iteration_count))
      ;; initialise loop variable
      (setq ,loop-var ,(second do_vble_clause))
      loop
      (return
        (cond                           ; all iterations done
          ((zerop ,iteration_count) nil)
          ;; execute loop, in/de-crement loop vble and decrement cntr
          ,(list 't
                  (append '(tagbody)
                          (append 
                           (append body
                                   `(continue
                                     (setq ,loop-var (the integer4 ,(third do_vble_clause))
                                           ,iteration_count (the integer4 (1- ,iteration_count)))))
                           '((go loop)))))))
      exit)))

;;----------------------------------------------------------------------------
;; macro for division 

(defmacro f2cl/ (x y)
  (let ((top (gensym))
        (bot (gensym)))
    `(let ((,top ,x)
           (,bot ,y))
      (if (and (typep ,top 'integer)
               (typep ,bot 'integer))
          (values (the integer4 (truncate ,top ,bot)))
          (/ ,top ,bot)))))

(defmacro int-add (arg &rest more-args)
  (if (null more-args)
      arg
      (if (> (length more-args) 1)
          `(the integer4 (+ ,arg (int-add ,@more-args)))
          `(the integer4 (+ ,arg ,@more-args)))))

(defun convert-int-sub (args)
  (let ((nargs (length args)))
    (case nargs
      (1
       `(the integer4 (- ,(first args))))
      (2
       `(the integer4 (- ,(first args) ,(second args))))
      (t
       (let ((result `(the integer4 (- ,(first args) ,(second args)))))
         (dolist (arg (rest (rest args)))
           (setf result `(the integer4 (- ,result ,arg))))
         result)))))

(defmacro int-sub (&rest args)
  (convert-int-sub args))
  
(defmacro int-mul (arg &rest more-args)
  (if (null more-args)
      arg
      (if (> (length more-args) 1)
          `(the integer4 (* ,arg (int-mul ,@more-args)))
          `(the integer4 (* ,arg ,@more-args)))))


;; macro for a lisp equivalent of Fortran arithmetic IFs
(defmacro arithmetic-if (pred s1 s2 s3)
  (let ((tst (gensym)))
    `(let ((,tst ,pred))
      (cond ((< ,tst 0) ,s1)
            ((= ,tst 0) ,s2)
            (t ,s3)))))

;; macro for a lisp equivalent of Fortran computed GOTOs
(defun computed-goto-aux (tags)
  (let ((idx 0)
        (result '()))
    (dolist (tag tags (nreverse result))
      (incf idx)
      (push `(,idx (go ,tag)) result))))

(defmacro computed-goto (tag-lst i)
  `(case ,i
    ,@(computed-goto-aux tag-lst)))

;; macro for a lisp equivalent of Fortran assigned GOTOs
(eval-when
    (:load-toplevel :compile-toplevel :execute)
(defun make-label (n) 
  (read-from-string (concatenate 'string (symbol-name :label) (princ-to-string n))))


(defun assigned-goto-aux (tag-list)
  (let ((cases nil))
    (dolist (tag tag-list)
      (push `(,tag (go ,(f2cl-lib::make-label tag)))
            cases))
    (push `(t (error "Unknown label for assigned goto")) cases)
    (nreverse cases)))
)


;; macro for a lisp equivalent of Fortran assigned GOTOs
(defmacro assigned-goto (var tag-list)
  `(case ,var
     ,@(assigned-goto-aux tag-list)))

;;-----------------------------------------------------------------------------
;;
;; Define the intrinsic functions
;;
;; Reference:  The Fortran 77 standard found at www.fortran.com.  Section 15.10

;; INT is the generic name as well as the integer version.  IFIX is
;; the same.  IDINT is the double version.

(declaim (inline int ifix idfix))

#-(or cmu scl)
(defun int (x)
  ;; We use fixnum here because f2cl thinks Fortran integers are
  ;; fixnums.  If this should change, we need to change the ranges
  ;; here as well.
  (etypecase x
    (integer
     (the integer4 x))
    (single-float
     (truncate (the (single-float #.(float most-negative-fixnum)
                                  #.(float most-positive-fixnum))
                 x)))
    (double-float
     (truncate (the (double-float #.(float most-negative-fixnum 1d0)
                                  #.(float most-positive-fixnum 1d0))
                    x)))
    ((complex single-float)
     (the integer4
       (truncate (the (single-float #.(float (- (ash 1 31)))
                                    #.(float (1- (ash 1 31))))
                      (realpart x)))))
    ((complex double-float)
     (the integer4
       (truncate (the (double-float #.(float (- (ash 1 31)) 1d0)
                                    #.(float (1- (ash 1 31)) 1d0))
                      (realpart x)))))))

#+(or cmu scl)
(defun int (x)
  ;; For CMUCL, we support the full 32-bit integer range, so INT can
  ;; return a full 32-bit integer.  Tell CMUCL that this is true so we
  ;; generate fast code.  If this is not true, the original Fortran
  ;; code was wrong.
  (etypecase x
    (integer
     (the integer4 x))
    (single-float
     (the integer4
       (truncate (the (single-float #.(float (- (ash 1 31)))
                                    #.(float (1- (ash 1 31))))
                   x))))
    (double-float
     (the integer4
       (truncate (the (double-float #.(float (- (ash 1 31)) 1d0)
                                    #.(float (1- (ash 1 31)) 1d0))
                      x))))
    ((complex single-float)
     (the integer4
       (truncate (the (single-float #.(float (- (ash 1 31)))
                                    #.(float (1- (ash 1 31))))
                      (realpart x)))))
    ((complex double-float)
     (the integer4
       (truncate (the (double-float #.(float (- (ash 1 31)) 1d0)
                                    #.(float (1- (ash 1 31)) 1d0))
                      (realpart x)))))))


(defun ifix (x)
  (int x))
(defun idfix (x)
  (int x))

;; AINT is the generic and specific function for real; DINT, for
;; double.  It truncates its arg towards zero and returns the integer
;; as a floating-point number of the same type as its arg.
;;
;; ANINT is the generic and specific function for real; DNINT, for
;; double. It rounds to the nearest integer and returns the result as
;; a float of the same type.
;;
;; NINT is the generic and specific function for real; IDNINT, for
;; double.  Does the same as ANINT, but the result is an integer.

(declaim (inline aint dint anint dnint nint idnint))

;; This is based on the algorithm given by Anton Ertl in
;; comp.arch.arithmetic on Oct. 26, 2002:
;;
;; #define X 9007199254740992. /* 2^53 */
;; double rint(double r)
;; {
;;   if (r<0.0)
;;     return (r+X)-X;
;;   else
;;     return (r-X)+X;
;; }
;;
;; This assumes that we in round-to-nearest mode (the default).
;;
;; These only work if you have IEEE FP arithmetic.  There are 2
;; versions given below.  One is for non-x87, which assumes that
;; single and double FP numbers are properly rounded after each
;; operation.  The version for x87 stores away a value to make sure
;; the rounding happens correctly.
;;
;; Finally, the last version if for platforms where none of this
;; holds and we call ftruncate.
;;
;; With CMUCL pre-18e on sparc, this definition of aint reduces the
;; cost of MPNORM (from MPFUN) from 48.89 sec to 24.88 sec (a factor
;; of 2!) when computing pi to 29593 digits or os.

(declaim (inline rint-s rint-d))
#+(and cmu (or :sse2 (not x86)))
(progn
(defun rint-s (x)
  (declare (single-float x))
  (let ((const (scale-float 1f0 24)))
    (if (>= x 0)
        (+ (- x const) const)
        (- (+ x const) const))))

(defun rint-d (x)
  (declare (double-float x))
  (let ((const (scale-float 1d0 53)))
    (if (>= x 0)
        (+ (- x const) const)
        (- (+ x const) const))))
)

#+(and cmu (and x86 x87))
(progn
(defun rint-s (x)
  (declare (single-float x))
  (let ((junks (make-array 1 :element-type 'single-float))
        (const (scale-float 1f0 24)))
    (if (>= x 0)
        (progn
          (setf (aref junks 0) (- x const))
          (+ (aref junks 0) const))
        (progn
          (setf (aref junks 0) (+ x const))
          (- (aref junks 0) const)))))

(defun rint-d (x)
  (declare (double-float x))
  (let ((junkd (make-array 1 :element-type 'double-float))
        (const (scale-float 1d0 53)))
    (if (>= x 0)
        (progn
          (setf (aref junkd 0) (- x const))
          (+ (aref junkd 0) const))
        (progn
          (setf (aref junkd 0) (+ x const))
          (- (aref junkd 0) const)))))
)

;; Truncate x to an integer.
#+cmu
(defun aint (x)
  ;; rint above is fast.  We use it to round the number, and then
  ;; adjust the result to truncate.
  (etypecase x
    (single-float
     (let ((r (rint-s x)))
       (if (> (abs r) (abs x))
           (if (> r 0)
               (- r 1)
               (+ r 1))
           r)))
    (double-float
     (let ((r (rint-d x)))
       (if (> (abs r) (abs x))
           (if (> r 0)
               (- r 1)
               (+ r 1))
           r)))))
    

#-cmu
(defun aint (x)
  ;; ftruncate is exactly what we want.
  (etypecase x
    (single-float
     (locally 
       (declare (optimize (space 0) (speed 3)))
       (values (ftruncate (the single-float x)))))
    (double-float
     (locally 
       (declare (optimize (space 0) (speed 3)))
       (values (ftruncate (the double-float x)))))))

(defun dint (x)
  (aint x))

(defun anint (x)
  (values (fround x)))
(defun dnint (x)
  (values (fround x)))
(defun nint (x)
  (values (round x)))
(defun idnint (x)
  (values (round x)))

;; Type conversion
;;
;; FREAL is F2CL's version of the Fortran REAL which takes converts
;; its arg to a real.  SNGL is the same.  DBLE returns a double.  They
;; also return the real part of a complex number.  CMPLX takes one or
;; two args and creates a complex number.

(declaim (inline freal sngl dble dfloat cmplx))
(defun freal (x)
  (coerce (realpart x) 'single-float))

(defun sngl (x)
  (coerce (realpart x) 'single-float))

(defun dble (x)
  (coerce (realpart x) 'double-float))

(defun dfloat (x)
  (coerce (realpart x) 'double-float))

(defun cmplx (x &optional y)
  (complex x (if y y 0)))

(defun dcmplx (x &optional y)
  (coerce (complex x (if y y 0)) '(complex double-float)))

(defun ichar (c)
  (if (stringp c)
      (char-int (aref c 0))
      (char-int c)))
(defun fchar (i)                        ;intrinsic function char
  (code-char i))

(declaim (inline iabs dabs cabs cdabs amod dmod))
#-aclpc
(defun iabs (x)
  (declare (type integer4 x))
  (abs x))
(defun dabs (x)
  (declare (type double-float x))
  (abs x))
(defun cabs (x)
  (declare (type complex x))
  (abs x))
(defun cdabs (x)
  (declare (type (complex double-float) x))
  (abs x))

(defun amod (x y)
  (declare (type single-float x y))
  (mod x y))
(defun dmod (x y)
  (declare (type double-float x y))
  (mod x y))


;; Transfer of sign.  SIGN is the generic and specific function for
;; real.  ISIGN is for integers; DSIGN for doubles.  Basically
;; computes sign(a2)*|a1|.

(declaim (inline isign sign dsign))

(defun isign (x y)
  (declare (type integer4 x y))
  (if (>= y 0)
      (the integer4 (abs x))
      (the integer4 (- (the integer4 (abs x))))))

;; Fortran 77 says SIGN is a generic!
(defun sign (x y)
  (declare (type (or integer4 single-float double-float) x y))
  (etypecase x
    (integer4
     (isign x y))
    (single-float
     (float-sign y x))
    (double-float
     (float-sign y x))))

(defun dsign (x y)
  (declare (type double-float x y))
  (float-sign y x))

;; Positive difference.  DIM is the generic and specific function for
;; real.  IDIM is for integers; DDIM, doubles.
;;
;; If a1 > a2, returns a1-a2, otherwise 0.  Basically the same as
;; max(0, a1-a2).
(declaim (inline idim dim ddim))
(defun idim (x y)
  (declare (type integer4 x y))
  (max 0 (- x y)))

(defun dim (x y)
  (declare (type (or integer4 single-float double-float) x y))
  (etypecase x
    (integer4
     (max 0 (- x y)))
    (single-float
     (max 0f0 (- x y)))
    (double-float
     (max 0d0 (- x y)))))

(defun ddim (x y)
  (declare (type double-float x y))
  (max 0d0 (- x y)))

;; Double-precision product.  How this is done isn't specified, but I
;; suspect the real args are converted to doubles and then the product
;; is computed.
(defun dprod (x y)
  (declare (single-float x y))
  (* (float x 1d0) (float y 1d0)))

;; The max and min functions.
;;
;; MAX is the generic. MAX0, AMAX1, and DMAX1 returns the max of the
;; args with the same type as the args.
;;
;; AMAX0 takes integer args and returns the max as a real. MAX1 takes
;; real args and returns the max as a integer.  (How the conversion is
;; done isn't specified.)
;;
;; Should we make these macros that expand directly to the appropriate
;; max?
(defun max0 (x y &rest z)
  (declare (integer x y))
  (apply #'max x y z))
(defun amax1 (x y &rest z)
  (declare (single-float x y))
  (apply #'max x y z))
(defun dmax1 (x y &rest z)
  (declare (double-float x y))
  (apply #'max x y z))
(defun max1 (x y &rest z)
  (declare (single-float x y))
  (int (apply #'max x y z)))
(defun amax0 (x y &rest z)
  (declare (type integer4 x y))
  (float (apply #'max x y z) 1f0))

(defun min0 (x y &rest z)
  (apply #'min x y z))
(defun amin1 (x y &rest z)
  (apply #'min x y z))
(defun dmin1 (x y &rest z)
  (apply #'min x y z))

(defun amin0 (x y &rest z)
  (float (apply #'min x y z)))
(defun min1 (x y &rest z)
  (nint (apply #'min x y z)))

;; Define some compile macros for these max/min functions.
#+(or cmu scl)
(progn
(define-compiler-macro max0 (&rest args)
  `(max ,@args))
(define-compiler-macro amax1 (&rest args)
  `(max ,@args))
(define-compiler-macro dmax1 (&rest args)
  `(max ,@args))
(define-compiler-macro min0 (&rest args)
  `(min ,@args))
(define-compiler-macro amin1 (&rest args)
  `(min ,@args))
(define-compiler-macro dmin1 (&rest args)
  `(min ,@args))
(define-compiler-macro min1 (&rest args)
  `(nint (min ,@args)))

(define-compiler-macro amax0 (&rest args)
  `(float (max ,@args)))
(define-compiler-macro max1 (&rest args)
  `(nint (max ,@args)))

(define-compiler-macro amin0 (&rest args)
  `(float (min ,@args)))
(define-compiler-macro min1 (&rest args)
  `(nint (min ,@args)))
) ; end progn

(defun len (s)
  (length s))

;; Fortran 95
;; Length of a character entity without trailing blank characters
(defun len_trim (s)
  ;; Find the position of the last blank.  If there is one, then the
  ;; length is one more than that.  Otherwise, the length is 0.
  (let ((p (position-if #'(lambda (c)
                            (char/= c #\space))
                        s)))
    (if p
        (1+ p)
        0)))

;; From http://www.fortran.com/fortran/F77_std/rjcnf0001-sh-15.html#sh-15.10:
;;
;; INDEX(a1 ,a2) returns an integer value indicating the starting
;; position within the character string a1 of a substring identical
;; to string a2 . If a2 occurs more than once in a1 , the starting
;; position of the first occurrence is returned.
;;
;; If a2 does not occur in a1 , the value zero is returned. Note
;; that zero is returned if LEN(a1) < LEN(a2).
;;
;; Thus the arguments are in the opposite order for CL's SEARCH function.
(defun index (s1 s2)
  (or (search s2 s1) 0))

;; These string operations need some work!
(defun lge (s1 s2)
  (string>= s1 s2))
(defun lgt (s1 s2)
  (string> s1 s2))
(defun lle (s1 s2)
  (string<= s1 s2))
(defun llt (s1 s2)
  (string< s1 s2))

(defun fstring-/= (s1 s2)
  (not (string= s1 s2)))
(defun fstring-= (s1 s2)
  (string= s1 s2))
(defun fstring-> (s1 s2)
  (string> s1 s2))
(defun fstring->= (s1 s2)
  (string>= s1 s2))
(defun fstring-< (s1 s2)
  (string< s1 s2))
(defun fstring-<= (s1 s2)
  (string<= s1 s2))


;; AIMAG: imaginary part of a complex number
;; CONJG: conjugate of a complex number
(declaim (inline aimag conjg dconjg dimag))
(defun aimag (c)
  (imagpart c))
(defun dimag (c)
  (declare (type (complex double-float) c))
  (imagpart c))
(defun conjg (c)
  (conjugate c))
(defun dconjg (c)
  (declare (type (complex double-float) c))
  (conjugate c))

(declaim (inline fsqrt flog))
(defun fsqrt (x)
  (typecase x
    (single-float
     (sqrt (the (or (single-float (0f0)) (member 0f0)) x)))
    (double-float
     (sqrt (the (or (double-float (0d0)) (member 0d0)) x)))
    (t
     (sqrt x))))

(defun flog (x)
  (typecase x
    (single-float
     (log (the (or (single-float (0f0)) (member 0f0)) x)))
    (double-float
     (log (the (or (double-float (0d0)) (member 0d0)) x)))
    (t
     (log x))))
  
;; Tell Lisp that the arguments always have the correct range.  If
;; this is not true, the original Fortran code was broken anyway, so
;; GIGO (garbage in, garbage out).

(declaim (inline dsqrt csqrt zsqrt alog dlog clog alog10 dlog10))
(defun dsqrt (x)
  (declare (type (double-float 0d0) x))
  (sqrt  x))
(defun csqrt (x)
  (sqrt x))
(defun zsqrt (x)
  (sqrt x))
(defun alog (x)
  (declare (type (or (single-float (0f0)) (member 0f0)) x))
  (log x))
(defun dlog (x)
  (declare (type (or (double-float (0d0)) (member 0d0)) x))
  (log x))
(defun clog (x)
  (log x))
(defun alog10 (x)
  (declare (type (or (single-float (0f0)) (member 0f0)) x))
  (log x 10f0))
(defun dlog10 (x)
  (declare (type (or (double-float (0d0)) (member 0d0)) x))
  (log x 10.0d0))

(declaim (inline log10))
(defun log10 (x)
  (typecase x
    (single-float
     (log (the (or (single-float (0.0f0)) (member 0f0)) x) 10f0))
    (double-float
     (log (the (or (double-float (0.0d0)) (member 0d0)) x) 10d0))
    (t
     (/ (log x)
        (typecase x
          ((complex double-float)
           10d0)
          ((complex single-float)
           10f0)
          (t
           (coerce 10 (type-of (realpart x)))))))))

(declaim (inline dexp cexp))
(defun dexp (x)
  (declare (type double-float x))
  (exp x))
(defun cexp (x)
  (declare (type complex x))
  (exp x))

(declaim (inline dsin csin dcos ccos dtan ctan dasin dacos datan atan2 datan2 dsinh dcosh dtanh))
(defun dsin (x)
  (declare (type double-float x))
  (sin x))
(defun csin (x)
  (declare (type complex x))
  (sin x))

(defun dcos (x)
  (declare (type double-float x))
  (cos x))
(defun ccos (x)
  (declare (type complex x))
  (cos x))

(defun dtan (x)
  (declare (type double-float x))
  (tan x))
(defun ctan (x)
  (declare (type complex x))
  (tan x))

(defun dasin (x)
  (declare (type double-float x))
  (asin x))
(defun dacos (x)
  (declare (type double-float x))
  (acos x))
(defun datan (x)
  (declare (type double-float x))
  (atan x))
;; atan2 is the Fortran77 generic name, so it can take any float arg.
(defun atan2 (y x)
  (declare (type float y x))
  (atan y x))
(defun datan2 (y x)
  (declare (type double-float x y))
  (atan y x))

(defun dsinh (x)
  (declare (type double-float x))
  (sinh x))
(defun dcosh (x)
  (declare (type double-float x))
  (cosh x))
(defun dtanh (x)
  (declare (type double-float x))
  (tanh x))

(declaim (inline ffloat))
(defun ffloat (x)
  (coerce x 'single-float))

(defun process-implied-do (ido array-bnds var-types init)
  (destructuring-bind (data-vars &rest looping)
      ido
    (labels
        ((convert-type (type)
           (if (eq type 'integer4)
               `(truncate (pop ,init))
               `(coerce (pop ,init) ',type)))
         (map-vars (v)
           (mapcar #'(lambda (x b vt)
                       `(fset (fref ,(first x) ,(second x) ,b)
                              ,(convert-type vt)))
                   v array-bnds var-types)))
      (let ((body (map-vars data-vars)))
        (dolist (loopvar looping)
          (destructuring-bind (index-var start end &optional step)
              loopvar
            (setf body `((do ((,index-var ,start (+ ,index-var ,(or step 1))))
                            ((> ,index-var ,end))
                          ,@body)))))
        (car body)))))


;; Process implied do loops for data statements
(defmacro data-implied-do (implied-do array-bnds var-types vals)
  (let ((v (gensym)))
    `(let ((,v (list ,@vals)))
      ,(process-implied-do implied-do array-bnds var-types v))))

(defmacro implied-do-collect ((var start end &optional (step 1)) &body body)
  "Implied-DO for I/O lists.  Steps VAR from START to END by
  STEP,evaluating BODY on each iteration and collecting the resulting
  value(s) into a list returned at the end.  VAR must be bound in an
  enclosing scope; this form assigns rather than rebinds."
  (let ((acc (gensym "ACC"))
        (limit (gensym "LIMIT"))
        (stp (gensym "STEP")))
    `(let ((,acc nil)
           (,limit ,end)
           (,stp ,step))
       (setf ,var ,start)
       (do () ((> ,var ,limit) (nreverse ,acc))
         (push (progn ,@body) ,acc)
         (setf ,var (+ ,var ,stp))))))

;;-----------------------------------------------------------------------------
   
;; Map Fortran logical unit numbers to Lisp streams

(defparameter *lun-hash*
  (make-hash-table))

(defun lun->stream (lun &optional readp)
  (let ((stream (gethash lun *lun-hash*)))
    (if stream
        stream
        (cond ((eql lun 5)
               ;; Always standard input
               (setf (gethash lun *lun-hash*) *standard-input*))
              ((or (eql lun 6)
                   (eql lun t))
               ;; Always standard output
               (setf (gethash lun *lun-hash*) *standard-output*))
              ((integerp lun)
               ;; All other cases open a file fort<n>.dat
               (setf (gethash lun *lun-hash*)
                     (open (format nil "fort~d.dat" lun)
                           :direction :io
                           :if-exists :rename)))
              ((stringp lun)
               (setf (gethash lun *lun-hash*)
                     (if readp
                         (make-string-input-stream lun)
                         (make-string-output-stream))))))))

(defun init-fortran-io ()
  "Initialize the F2CL Fortran I/O subsystem to sensible defaults"
  (clrhash *lun-hash*)
  (setf (gethash 6 *lun-hash*) *standard-output*)
  (setf (gethash 5 *lun-hash*) *standard-input*)
  (setf (gethash t *lun-hash*) *standard-output*))

(defun close-fortran-io ()
  "Close all F2CL Fortran units (except for standard output and input)
causing all pending operations to be flushed"
  (maphash #'(lambda (key val)
               (when (and (streamp val) (not (member key '(5 6 t))))
                 (format t "Closing unit ~A: ~A~%" key val)
                 (close val)))
               *lun-hash*))

(defun %open-file (&key unit file status access form recl blank)
  (declare (ignore unit))
  ;; We should also check for values of form that we don't support.
  (when recl
    (error "F2CL-LIB does not support record lengths"))
  (when blank
    (error "F2CL-LIB does not support any BLANK mode for files"))
  (when (and access (not (string-equal "sequential"
                                       (string-right-trim " " access))))
    (error "F2CL-LIB does not support ACCESS mode ~S" access))
  (when (and form (not (string-equal "unformatted"
                                     (string-right-trim " " form))))
    (error "F2CL-LIB does not support FORM ~S" form))
  (let ((s (and status (string-right-trim " " status))))
    (finish-output)
    (cond ((or (null s) (string-equal s "unknown"))
           (handler-case
               (open file :direction :io :if-exists :supersede
                     :if-does-not-exist :create)
             (file-error () nil)))
          ((string-equal s "old")
           ;; Per Fortran semantics, STATUS='OLD' on a missing file is an
           ;; error.  Let the file-error propagate rather than swallowing it.
           (open file :direction :io :if-does-not-exist :error :if-exists :overwrite))
          ((string-equal s "new")
           (handler-case
               (open file :direction :io :if-exists nil)
             (file-error () nil)))
          (t
           (error "F2CL-LIB does not support this mode for OPEN: ~S~%"
                  s)))))

(defmacro open-file (&key unit iostat err file status access form recl blank)
  (let* ((result (gensym))
         (call `(%open-file :unit ,unit :file ,file :status ,status
                            :access ,access :form ,form :recl ,recl :blank ,blank))
         ;; If the user supplied ERR= or IOSTAT=, they want to handle failure
         ;; themselves (Fortran semantics).  In that case, catch file-error
         ;; from %open-file and turn it into a nil result so the existing
         ;; ERR= / IOSTAT= logic below kicks in.  Otherwise, let the
         ;; file-error propagate -- e.g. STATUS='OLD' on a missing file
         ;; without ERR= or IOSTAT= should signal.
         (call-form (if (or err iostat)
                        `(handler-case ,call (file-error () nil))
                        call)))
    `(prog ((,result ,call-form))
        (when ,result
          (setf (gethash ,unit *lun-hash*) ,result))
        ;; Splice IOSTAT= and ERR= forms in only when they're actually
        ;; supplied -- bare ,(if iostat ...) leaves stray NIL forms in
        ;; the tagbody, and TAGBODY treats a NIL atom as a tag, so two
        ;; absent options become duplicate tags and the compiler errors.
        ,@(when iostat
            ;; Set IOSTAT first; ERR= jumps away, so anything after the
            ;; GO is unreachable.
            `((setf ,iostat (if ,result 0 1))))
        ,@(when err
            `((unless ,result (go ,(f2cl-lib::make-label err))))))))

(defun %rewind (unit)
  (file-position (lun->stream unit) :start))

(defmacro rewind (&key unit iostat err)
  (let ((result (gensym)))
    `(prog ((,result (%rewind ,unit)))
        (declare (ignorable ,result))
        ,@(when iostat
            `((setf ,iostat (if ,result 0 1))))
        ,@(when err
            `((unless ,result (go ,(f2cl-lib::make-label err))))))))
          

(defun %close (&key unit status)
  "Implement Fortran CLOSE. Returns 0 on success, positive on
  error. STATUS is \"KEEP\" or \"DELETE\" (case-insensitive), or NIL
  for default (KEEP)."
  (let ((stream (gethash unit *lun-hash*)))
    (cond
      ((null stream)
       ;; F77: closing an unconnected unit has no effect.
       0)
      (t
       (handler-case
           (let ((pathname (and (typep stream 'file-stream)
                                (pathname stream)))
                 (delete-p (and status
                                (string-equal status "DELETE"))))
             (close stream)
             (remhash unit *lun-hash*)
             (when (and delete-p pathname (probe-file pathname))
               (delete-file pathname))
             0)
         (error () 1))))))

(defmacro close$ (&key unit status iostat err)
  (let ((result (gensym "IOS-")))
    `(let ((,result (%close :unit ,unit :status ,status)))
       ,@(when iostat
           `((setf ,iostat ,result)))
       ,@(when err
           `((unless (zerop ,result)
               (go ,err))))
       ,result)))

;;;----------------------------------------------------------------------
;;; READ
;;;
;;; The Fortran statement
;;;
;;;     READ(UNIT, FMT [,END=L] [,ERR=L] [,IOSTAT=V]) <vars>
;;;
;;; is translated to:
;;;
;;;     (f2cl-lib::read-file
;;;        :unit U :fmt F :end L :err L :iostat V
;;;        :vars (<varspec> ...))
;;;
;;; where each <varspec> is one of:
;;;
;;;     (:place EXPR TYPE)
;;;         Read a single value into the place EXPR.  TYPE comes from
;;;         the variable declaration -- if it's a string subtype we use
;;;         F2CL-SET-STRING, if EXPR is an (FREF ...) form we use FSET,
;;;         otherwise SETF.
;;;
;;;     (:implied-do IVAR E1 E2 E3 (<varspec> ...))
;;;         Loop IVAR from E1 to E2 stepping E3, reading each inner
;;;         <varspec> per iteration.
;;;
;;; Runtime semantics match Fortran: on end-of-file, GO to the END label
;;; (if given) and set IOSTAT to -1 (if given); on other read errors,
;;; GO to the ERR label and set IOSTAT to +1.  When neither END= nor
;;; ERR= is supplied, no GO targets exist and the handler-case value
;;; is discarded -- IOSTAT side effects still happen.

(defun %read-whole-line-format-p (fmt)
  "True iff FMT is a Fortran format string like '(A)' or '(A20)' --
the kind we honour by issuing READ-LINE rather than READ."
  (and (stringp fmt)
       (let ((s (string-trim " " fmt)))
         (and (>= (length s) 3)
              (char= (char s 0) #\()
              (char-equal (char s 1) #\A)
              (let ((tail (subseq s 2)))
                (and (plusp (length tail))
                     (char= (char tail (1- (length tail))) #\))
                     (every #'digit-char-p
                            (subseq tail 0 (1- (length tail))))))))))

(defun %read-value-form (stream-form fmt for-string-p)
  "Build the form that reads one value.  When the destination is a
CHARACTER variable and FMT is a recognised whole-line format like
'(A)' or '(A20)', use READ-LINE; otherwise use READ."
  (if (and for-string-p (%read-whole-line-format-p fmt))
      `(read-line ,stream-form nil "")
      `(read ,stream-form)))

(defun %expand-read-place (stream-form fmt expr type)
  "Build the form that reads one value from STREAM-FORM and stores it
into the place EXPR, using TYPE to pick between SETF, FSET, and
F2CL-SET-STRING.  We only emit F2CL-SET-STRING when TYPE includes a
length, i.e. TYPE is of the form (STRING N) -- otherwise we fall back
to plain SETF."
  (let* ((sized-string-p (and (consp type) (eq (first type) 'string)))
         (for-string-p (or sized-string-p (eq type 'string)))
         (read-form (%read-value-form stream-form fmt for-string-p)))
    (cond
      ((and (consp expr) (eq (first expr) 'fref))
       `(fset ,expr ,read-form))
      (sized-string-p
       `(f2cl-set-string ,expr ,read-form ,type))
      (t
       `(setf ,expr ,read-form)))))

(defun %expand-read-varspec (stream-form fmt varspec)
  "Build the form(s) for one VARSPEC.  See READ-FILE docstring for
the varspec shape."
  (case (first varspec)
    (:place
     (destructuring-bind (kind expr type) varspec
       (declare (ignore kind))
       (%expand-read-place stream-form fmt expr type)))
    (:implied-do
     (destructuring-bind (kind ivar e1 e2 e3 inner-vars) varspec
       (declare (ignore kind))
       `(do ((,ivar ,e1 (+ ,ivar ,e3)))
            ((> ,ivar ,e2))
          (declare (type f2cl-lib:integer4 ,ivar))
          ,@(mapcar (lambda (v) (%expand-read-varspec stream-form fmt v))
                    inner-vars))))
    (t (error "%expand-read-varspec: unknown varspec ~S" varspec))))

(defmacro read-file (&key unit fmt end err iostat vars)
  "Implement a Fortran READ statement.

Each entry in VARS is either

   (:place EXPR TYPE)
       Read a single value into the place EXPR.  TYPE comes from the
       variable declaration -- if it's a (STRING N) subtype, use
       F2CL-SET-STRING; if EXPR is an (FREF ...) form, use FSET;
       otherwise use SETF.

   (:implied-do IVAR E1 E2 E3 (<varspec> ...))
       Loop IVAR from E1 to E2 stepping E3, reading each inner
       <varspec> per iteration.

Runtime semantics match Fortran: on end-of-file, GO to the END label
and set IOSTAT to -1; on other read errors, GO to the ERR label and
set IOSTAT to +1.  Each of END=, ERR=, IOSTAT= is independently
optional."
  (let* ((stream-form `(lun->stream ,unit))
         (read-forms
          (mapcar (lambda (v) (%expand-read-varspec stream-form fmt v)) vars))
         (success-body
          (append read-forms
                  (when iostat `((setf ,iostat 0)))
                  '(nil)))
         (end-clause
          (when end
            `((end-of-file ()
                ,@(when iostat `((setf ,iostat -1)))
                :end))))
         (err-clause
          (when (or err iostat)
            `((error ()
                ,@(when iostat `((setf ,iostat 1)))
                :err))))
         (handler-form
          `(handler-case
               (progn ,@success-body)
             ,@end-clause
             ,@err-clause))
         (case-clauses
          (append
           (when end `((:end (go ,(f2cl-lib::make-label end)))))
           (when err `((:err (go ,(f2cl-lib::make-label err))))))))
    (cond
      ((null case-clauses)
       `(progn ,handler-form nil))
      (t
       `(case ,handler-form ,@case-clauses)))))

(defmacro fformat (dest-lun format-cilist &rest args)
  (let ((stream (gensym)))
    `(let ((,stream (lun->stream ,dest-lun)))
       (execute-format-main ,stream ',format-cilist ,@args)
       ,@(unless (or (eq t dest-lun) (numberp dest-lun))
          `((when (stringp ,dest-lun)
             (replace ,dest-lun (get-output-stream-string ,stream))))))))

(defun execute-format (top stream format arg-list)
  (do ((formats format (if (and top (null formats))
                           format
                           (rest formats))))
      ((or (null arg-list)
           (and (not top)
                (null formats)))
       #+nil
       (progn
         (format t "~&end formats = ~S~%" formats)
         (format t "~&end arg-list = ~S~%" arg-list))
       (do ((more formats (rest more)))
           ((not (stringp (first more))))
         (format stream (first more)))
       arg-list)

    (when (null formats)
      ;; We're out of formats but not arguments.  I think Fortran says
      ;; we should start over at the last repeat spec.  So we look
      ;; over all the formats until we find the first number.  That
      ;; means it's a repeat spec.
      ;;
      ;; This is probably wrong for complicated format statements.
      (do ((f format (cdr f))
           (last-rep nil))
          ((null f)
           (setf formats last-rep))
        (when (or (eq (car f) t)
                  (numberp (car f)))
          (setf last-rep f)))

      (when (null formats)
        ;; Now what?  We couldn't find a repeat spec, so should we
        ;; just start over?
        (setf formats format)))
    #+nil
    (let ((*print-circle* t))
      (format t "~&arg-list = ~S~%" arg-list)
      (format t "~&formats = ~S~%" formats))
    (cond ((listp (first formats))
           (format stream (caar formats) (pop arg-list)))
          ((eq (first formats) #\:)
           ;; Terminate control if there are no more items
           (when (null arg-list)
             (return-from execute-format)))
          ((numberp (first formats))
           ;; Repeat a group some fixed number of times
           (dotimes (k (first formats))
             ;;(format t "k = ~A, format = ~S~%" k (second formats))
             (setf arg-list
                   (execute-format nil stream (second formats) arg-list))
             ;; Gotta exit if we're out of arguments to print!
             (unless arg-list
               (return)))
           (setf formats (rest formats))
           ;; Output a newline after the repeat (I think Fortran says this)
           ;;(format stream "~&")
           ;;(format t "  cont with format = ~S~%" formats)
           )
          ((eq (first formats) t)
           ;; Repeat "forever" (until we run out of data)
           (loop while arg-list do
                (setf arg-list
                      (execute-format nil stream (second formats) arg-list))
              ;; Output a newline after the repeat (I think Fortran says this)
                (format stream "~%")))
          (t
           (format stream (car formats))))))
           
(defun flatten-list (x)
  (labels ((flatten-helper (x r);; 'r' is the stuff to the 'right'.
             (cond ((null x) r)
                   ((atom x)
                    (cons x r))
                   (t (flatten-helper (car x)
                                      (flatten-helper (cdr x) r))))))
    (flatten-helper x nil)))

;; Fortran G format, roughly.  We use ~F for numbers "near" 1, and use
;; ~E otherwise.
;;
;; Note that g77 seems to use an exponent marker of E for single and
;; double floats, but Sun Fortran uses E and D.  I think I like E and
;; D to distinguish between them.  Also note that g77 uses just enough
;; digits for the numbers, but Sun Fortran seems to specify the number
;; of printed digits to be 16 or so.  Thus 1.0 is "1.0" with g77, but
;; "1.0000000000000" with Sun Fortran.  I like g77's style better.
(defun fortran-format-g (stream arg colon-p at-p &rest args)
  (declare (ignore colon-p at-p args))
  (let* ((marker (typecase arg
                   (single-float "E")
                   (double-float "D")))
         (a (abs arg))
         ;; g77 uses limits 1d-4 and 1d9.  Sun Fortran uses 1 and
         ;; 1d15.
         (format-string (if (or (zerop a)
                                (and (>= a 1d-4)
                                     (< a 1d9)))
                            "~F"
                            (concatenate 'string "~,,2,,,,'"
                                         marker
                                         "E"))))
    (format stream format-string arg)))

;; Output objects in Fortran style, roughly.  This basically means
;; complex numbers are printed as "(<re>, <im>)", floats use
;; FORTRAN-FORMAT-G, integers use ~D, strings are printed as is, and
;; T/NIL become "T" or "F".
(defun fortran-format (stream arg colon-p at-p &rest args)
  (declare (ignore colon-p at-p args))
  (etypecase arg
    (complex
     #-gcl
     (format stream "(~/f2cl-lib::fortran-format-g/, ~/f2cl-lib::fortran-format-g/)"
             (realpart arg) (imagpart arg))
     #+gcl
     (progn
       (fortran-format-g stream (realpart arg) nil nil)
       (fortran-format-g stream (imagpart arg) nil nil)))
    (float
     #-gcl
     (format stream "  ~/f2cl-lib::fortran-format-g/" arg)
     #+gcl
     (fortran-format-g stream arg nil nil))
    (integer
     (format stream "  ~D" arg))
    (string
     (format stream "~A" arg))
    ((member t nil)
     (format stream (if arg "T " "F ")))))

;;; Flatten a list of WRITE arguments down to a flat list of scalars,
;;; expanding lists (from implied-DO) and arrays element-wise.
;;;
;;; CL-DIRECTIVES-P controls whether T/NIL are remapped to :T/:F so
;;; that the legacy cilist's ~A directives print "T" and "F".  The
;;; fortran-format printer wants raw booleans (its L descriptor
;;; accepts T and NIL directly), so it passes CL-DIRECTIVES-P NIL.
(defun fformat-flatten-args (args cl-directives-p &key (split-complex t))
  "Flatten a list of WRITE arguments down to a flat list of scalars,
expanding lists (from implied-DO) and arrays element-wise.

CL-DIRECTIVES-P controls whether T/NIL are remapped to :T/:F so
that the legacy cilist's ~A directives print 'T' and 'F'.  The
fortran-format printer wants raw booleans (its L descriptor
accepts T and NIL directly), so it passes CL-DIRECTIVES-P NIL.

SPLIT-COMPLEX controls whether complex numbers are split into
their real and imaginary parts.  The new printer path needs the
split when a complex value is being consumed by a two-component
descriptor like '(',G14.7,',',G14.7,')'.  When building the
descriptor list (where each complex maps to one descriptor entry)
the caller passes SPLIT-COMPLEX NIL to keep the complex as one
item.  The legacy ~/f2cl-lib::fortran-format/ hook prints complex
inline and so also passes SPLIT-COMPLEX NIL; passing it T is only
correct on the new-printer formatted path."
  (apply #'append
         (map 'list
              #'(lambda (x)
                  (cond
                    ((and split-complex (not cl-directives-p) (complexp x))
                     (list (realpart x) (imagpart x)))
                    #+#.(cl:if (cl:find-package "BIGFLOAT") '(and) '(or))
                    ((bigfloat:numberp x) (list x))
                    #-#.(cl:if (cl:find-package "BIGFLOAT") '(and) '(or))
                    ((numberp x) (list x))
                    ((stringp x) (list x))
                    ((member x '(t nil))
                     (if cl-directives-p
                         (case x ((t) (list :t)) ((nil) (list :f)))
                         (list x)))
                    (t
                     (coerce x 'list))))
              args)))

(defun execute-format-main (stream format &rest args)
  (cond
    ((eq format :list-directed)
     ;; This prints out the args separated by spaces and puts a line
     ;; break after about 80 columns.
     (format stream "~& ~{~<~%~1,81:;~?~>~^~}~%"
             (let (pars)
               (dolist (v args)
                 ;; Some special cases.  Let FORTRAN-FORMAT handle
                 ;; most cases, except strings, which we just print
                 ;; out ourselves.  Lists (from implied-do loops) and
                 ;; arrays use FORTRAN-FORMAT for each element.
                 (typecase v
                   (string
                    (push "~A"  pars)
                    (push (list v) pars))
                   (cons
                    (dolist (item v)
                      #-gcl
                      (progn
                        (push "~/f2cl-lib::fortran-format/" pars)
                        (push (list item) pars))
                      #+gcl
                      (progn
                        (push "~A" pars)
                        (push (fortran-format nil item nil nil) pars))))
                   (array
                    (dotimes (k (length v))
                      #-gcl
                      (progn
                        (push "~/f2cl-lib::fortran-format/" pars)
                        (push (list (aref v k)) pars))
                      #+gcl
                      (progn
                        (push "~A" pars)
                        (push (fortran-format nil (list (aref v k)) nil nil)
                              pars))))
                   (t
                    #-gcl
                    (progn
                      (push "~/f2cl-lib::fortran-format/" pars)
                      (push (list v) pars))
                    #+gcl
                    (progn
                      (push "~A" pars)
                      (push (fortran-format nil (list v) nil nil) pars)))))
               ;;(format t "~S~%" (reverse pars))
               (nreverse pars))))
    (t
     (let ((format-list (copy-tree format))
           (arg-list (fformat-flatten-args args t)))
       (execute-format t stream format-list arg-list)))))

;;; ---------------------------------------------------------------
;;; New printer path: FORMAT-WRITE
;;; ---------------------------------------------------------------
;;;
;;; FORMAT-WRITE is the runtime entry point for the
;;; fortran-format:write-format-based printer.  It is the partner of
;;; FFORMAT: where FFORMAT takes a precompiled CL-format cilist,
;;; FORMAT-WRITE takes the original Fortran format string (or
;;; :LIST-DIRECTED) and hands it to the new printer at run time.
;;;
;;; The translator picks which macro to emit based on whether
;;; get_format_stmt returned a string (new path) or a cilist (legacy
;;; path), which in turn depends on f2cl::*use-fortran-format-printer*.
;;; Once the new printer covers every case we care about, the legacy
;;; FFORMAT and execute-format machinery can be deleted; until then
;;; the two coexist.

;;; List-directed output: per-value formatting.
;;;
;;; The Fortran 77 standard leaves the per-type default formatting
;;; implementation-defined.  We match gfortran's choices closely:
;;; 9 significant digits for REAL (8 fractional in F-form, 9-digit
;;; mantissa in E-form), 17 for DOUBLE PRECISION (16 fractional in
;;; F-form, 17-digit mantissa in E-form), parens for COMPLEX with
;;; F or E chosen per component.
;;;
;;; Each formatted value is rendered to a string and concatenated;
;;; the whole record is then written.  This is per-value rather
;;; than building one big Fortran format string, because COMPLEX
;;; values require per-component magnitude inspection that isn't
;;; expressible in a single static format string.
;;;
;;; Known divergences from gfortran (general, also affect non-LD output):
;;;   * 3-digit exponents drop the 'E' letter: ' 1.0000+100' rather
;;;     than gfortran's '1.0000E+100'.  This is standard Fortran
;;;     behavior when the descriptor lacks Ee; gfortran is the
;;;     non-standard one.
;;;   * Rounding ties resolve per CL implementation; on SBCL this
;;;     matches gfortran (half-to-even), on CMUCL it doesn't.
;;;
;;; See src/format/TODO.md for the full list.

(defparameter *fortran-format-write-format-fn*
  nil
  "Cached pointer to fortran-format:write-format.  Resolved lazily on
first use so that f2cl-lib can be loaded without the fortran-format
system present (translations that never use the new printer don't
need it).")

(defun %write-format (fmt &rest args)
  "Call fortran-format:write-format, resolving the symbol lazily."
  (unless *fortran-format-write-format-fn*
    (setf *fortran-format-write-format-fn*
          (or (find-symbol (symbol-name '#:write-format)
                           (find-package '#:fortran-format))
              (error "fortran-format:write-format not available; ~
                      is the fortran-format system loaded?"))))
  (apply *fortran-format-write-format-fn* fmt args))

;;; Per-component formatting for COMPLEX values.
;;;
;;; gfortran picks F or E per component based on magnitude.  Within
;;; the F-form, gfortran adjusts the fractional-digit count so the
;;; *total* significant-digit count stays constant: 9 digits for
;;; single precision (e.g. 1.50000000, 1000.00000, 10000000.0), 17
;;; for double precision (e.g. 1.0000000000000000, 1234.5678901234567).
;;;
;;; The F-range is roughly |x| in [0.1, 1e9) for single (after which
;;; the integer part needs the full 9 sig digits and we switch to E),
;;; [0.1, 1e17) for double.  Zero gets F-form with the maximum
;;; fractional count (9 / 17 minus one for the leading "0.").

(defun %f-form-fractional-digits (v total-sig)
  "Return the F-form fractional-digit count for V so that the total
significant-digit count is TOTAL-SIG.  E.g. for total-sig=9 and
v=1000.0, returns 5 (so 1000.00000 has 9 sig digits)."
  (let* ((mag (abs v))
         ;; Number of digits left of the decimal point.  For |v| < 1,
         ;; that's 1 (the leading '0').  Otherwise floor(log10) + 1.
         (int-digits (if (< mag 1)
                         1
                         (1+ (floor (log mag 10))))))
    (max 0 (- total-sig int-digits))))

(defun %list-directed-complex-component-single (v)
  (let ((mag (abs v)))
    (cond
      ((zerop v)
       (string-trim " " (%write-format "(F11.8)" 0.0)))
      ((or (< mag 1e-1) (>= mag 1e9))
       (string-trim " " (%write-format "(1PE16.9)" v)))
      (t
       ;; F-form with adjustable fractional-digit count.
       (let* ((d (%f-form-fractional-digits v 9))
              ;; Width: 1 sign + integer-digits + 1 dot + d fractional + slack.
              ;; Use d+12 -- big enough that no value overflows.
              (fmt (format nil "(F~D.~D)" (+ d 12) d)))
         (string-trim " " (%write-format fmt v)))))))

(defun %list-directed-complex-component-double (v)
  (let ((mag (abs v)))
    (cond
      ((zerop v)
       (string-trim " " (%write-format "(F19.16)" 0d0)))
      ((or (< mag 1d-1) (>= mag 1d17))
       (string-trim " " (%write-format "(1PE27.17)" v)))
      (t
       (let* ((d (%f-form-fractional-digits v 17))
              (fmt (format nil "(F~D.~D)" (+ d 20) d)))
         (string-trim " " (%write-format fmt v)))))))

(defun %list-directed-pad-left (str width)
  "Right-align STR in a field of WIDTH characters by prepending
spaces.  If STR is already wider than WIDTH, return it unchanged."
  (let ((n (length str)))
    (if (>= n width)
        str
        (concatenate 'string
                     (make-string (- width n) :initial-element #\Space)
                     str))))

(defun %list-directed-format-value (value)
  "Return the string used to print VALUE in list-directed output.
Each return value includes its own leading blank (the standard's
inter-value separator and leading-blank-on-record)."
  (typecase value
    ;; INTEGER: 1X + I11 = 12 chars, matches gfortran.
    (integer
     (%write-format "(1X,I11)" value))
    ;; LOGICAL: 1X + L1 = 2 chars.
    ((member t nil)
     (%write-format "(1X,L1)" value))
    ;; CHARACTER: 1X + the string at natural length.
    (string
     (concatenate 'string " " value))
    ;; SINGLE COMPLEX: parens-wrapped F/E-per-component, right-aligned
    ;; to 36 chars including leading blank.
    ((complex single-float)
     (let* ((re   (%list-directed-complex-component-single (realpart value)))
            (im   (%list-directed-complex-component-single (imagpart value)))
            (body (concatenate 'string "(" re "," im ")")))
       (%list-directed-pad-left body 36)))
    ;; DOUBLE COMPLEX: same shape, right-aligned to 54 chars.
    ((complex double-float)
     (let* ((re   (%list-directed-complex-component-double (realpart value)))
            (im   (%list-directed-complex-component-double (imagpart value)))
            (body (concatenate 'string "(" re "," im ")")))
       (%list-directed-pad-left body 54)))
    ;; Other complex precisions: route through double-precision path.
    (complex
     (let* ((re   (%list-directed-complex-component-double
                   (coerce (realpart value) 'double-float)))
            (im   (%list-directed-complex-component-double
                   (coerce (imagpart value) 'double-float)))
            (body (concatenate 'string "(" re "," im ")")))
       (%list-directed-pad-left body 54)))
    ;; SINGLE REAL: 1X + 1PG16.9 = 17 chars.
    (single-float
     (%write-format "(1X,1PG16.9)" value))
    ;; DOUBLE PRECISION: 1X + 1PG25.17 = 26 chars.
    (double-float
     (%write-format "(1X,1PG25.17)" value))
    ;; Other numerics -- route through double-float printing.
    (number
     (%write-format "(1X,1PG25.17)" (coerce value 'double-float)))
    (t
     (error "list-directed: don't know how to format ~S of type ~S"
            value (type-of value)))))

(defun execute-format-write (stream format args)
  "Runtime body of the FORMAT-WRITE macro.  FORMAT is either
:LIST-DIRECTED or a Fortran-format string.  ARGS is the list of
WRITE arguments before flattening."
  (cond
    ((eq format :list-directed)
     ;; Per-value formatting, with implied-DO list expansion handled
     ;; by walking the flattened args (but keeping complex numbers
     ;; intact so the complex code paths see one #C(re im) value
     ;; rather than two reals).  Modern gfortran does not wrap
     ;; list-directed output at 80 columns -- one record per WRITE
     ;; statement, regardless of length -- so neither do we.
     (dolist (v (fformat-flatten-args args nil :split-complex nil))
       (write-string (%list-directed-format-value v) stream))
     (terpri stream))
    ((stringp format)
     ;; Formatted output.  Hand the raw Fortran string plus the
     ;; flattened args to fortran-format:write-format, write the
     ;; result, then write the record terminator -- in Fortran every
     ;; WRITE statement emits exactly one record.
     (let ((s (apply #'%write-format
                     format
                     (fformat-flatten-args args nil))))
       (write-string s stream)
       (terpri stream)))
    (t
     (error "FORMAT-WRITE: unrecognized format ~S" format))))

(defmacro format-write (dest-lun format &rest args)
  "Fortran formatted WRITE/PRINT using fortran-format:write-format.
DEST-LUN is the destination (T, an integer LUN, or a string to fill).
FORMAT is either :LIST-DIRECTED or a Fortran format string such as
\"(I5,1X,F10.3)\".  ARGS are the WRITE items, prior to flattening."
  (let ((stream (gensym "STREAM-")))
    `(let ((,stream (lun->stream ,dest-lun)))
       (execute-format-write ,stream ',format (list ,@args))
       ,@(unless (or (eq t dest-lun) (numberp dest-lun))
           `((when (stringp ,dest-lun)
               (replace ,dest-lun (get-output-stream-string ,stream))))))))

;;; ---------------------------------------------------------------
;;; New reader path: FORMAT-READ
;;; ---------------------------------------------------------------
;;;
;;; FORMAT-READ is the runtime entry point for the
;;; fortran-format:read-format-based reader.  It is the partner of
;;; READ-FILE: where READ-FILE issues plain Lisp READ/READ-LINE
;;; calls (and so honours the FMT string only when it is the special
;;; whole-line shape '(A)' / '(A<n>)'), FORMAT-READ hands the raw
;;; Fortran format string to the new engine, which interprets each
;;; edit descriptor properly.
;;;
;;; The translator picks which macro to emit based on
;;; f2cl::*use-fortran-format-printer* (the same flag that gates the
;;; output side); when the flag is on, parse-read produces FORMAT-READ
;;; calls instead of READ-FILE calls.  Once the new reader covers
;;; every case we care about, the legacy READ-FILE machinery can be
;;; deleted; until then the two coexist.
;;;
;;; VARSPECs use the same shape as READ-FILE:
;;;   (:place EXPR TYPE)               -- store one value
;;;   (:implied-do IVAR E1 E2 E3 INNER-VARS)
;;;                                    -- loop, store each inner
;;;
;;; The macro expands into:
;;;
;;;   1. A pass that *counts* the number of values needed (walking
;;;      implied-DOs at run time so their bounds can be expressions).
;;;
;;;   2. A call to EXECUTE-FORMAT-READ that pulls that many values
;;;      from the stream, honouring the format and reversion rules.
;;;
;;;   3. A pass that consumes the returned value list, storing each
;;;      value into its destination place via SETF / FSET /
;;;      F2CL-SET-STRING as appropriate.
;;;
;;; The handler-case + go-label control flow for END=, ERR=, IOSTAT=
;;; is woven in by the macro the same way READ-FILE does it.

(defparameter *fortran-format-read-format-fn*
  nil
  "Cached pointer to fortran-format:read-format.  Resolved lazily on
first use so that f2cl-lib can be loaded without the fortran-format
system present (translations that never use the new reader don't
need it).")

(defun %read-format (fmt record &key num-vals)
  "Call fortran-format:read-format, resolving the symbol lazily.
RECORD is a string or a list of record strings.  NUM-VALS, if
supplied, asks for that many values; reversion fires if the main
format runs out before then."
  (unless *fortran-format-read-format-fn*
    (setf *fortran-format-read-format-fn*
          (or (find-symbol (symbol-name '#:read-format)
                           (find-package '#:fortran-format))
              (error "fortran-format:read-format not available; ~
                      is the fortran-format system loaded?"))))
  (if num-vals
      (funcall *fortran-format-read-format-fn* fmt record :num-vals num-vals)
      (funcall *fortran-format-read-format-fn* fmt record)))

;;; List-directed input.  Tokens are whitespace- or comma-separated.
;;; A token that looks like a number (optionally signed, optionally
;;; with one decimal point, optionally with an E/D/Q exponent) is
;;; read as a number; T/.TRUE./.T. and F/.FALSE./.F. as Lisp T / NIL;
;;; single-quoted strings come through with quotes stripped and
;;; embedded '' folded to one '; everything else stays a string.
;;;
;;; Deliberately simpler than the full Fortran list-directed reader
;;; (no null values, no r*c repeat groups, no slash terminator).
;;; Enough for the data files produced by gfortran and by the new
;;; FORMAT-WRITE path; more can be added if a test demands it.

(defun %list-directed-numeric-p (s)
  "True iff S is a plausible Fortran numeric literal: optional sign,
decimal digits with at most one dot, optional E/D/Q exponent with
its own optional sign and at least one digit."
  (let ((n (length s)))
    (when (zerop n) (return-from %list-directed-numeric-p nil))
    (let ((i 0)
          (digits 0)
          (dots 0))
      (when (member (char s 0) '(#\+ #\-)) (incf i))
      (loop while (< i n) do
        (let ((c (char s i)))
          (cond
            ((digit-char-p c) (incf digits) (incf i))
            ((char= c #\.)    (incf dots)   (incf i))
            ((member c '(#\E #\e #\D #\d #\Q #\q))
             (return))
            (t (return-from %list-directed-numeric-p nil)))))
      (when (or (zerop digits) (> dots 1))
        (return-from %list-directed-numeric-p nil))
      (cond
        ((= i n) t)
        (t
         ;; Exponent part: skip the E/D/Q.
         (incf i)
         (when (and (< i n) (member (char s i) '(#\+ #\-))) (incf i))
         (let ((exp-digits 0))
           (loop while (< i n) do
             (unless (digit-char-p (char s i))
               (return-from %list-directed-numeric-p nil))
             (incf exp-digits)
             (incf i))
           (and (= i n) (plusp exp-digits))))))))

(defun %list-directed-classify-token (s)
  "Map a raw list-directed token to a Lisp value."
  (let ((u (string-upcase s)))
    (cond
      ((or (string= u "T") (string= u ".TRUE.") (string= u ".T.")) t)
      ((or (string= u "F") (string= u ".FALSE.") (string= u ".F.")) nil)
      ((and (>= (length s) 2)
            (char= (char s 0) #\')
            (char= (char s (1- (length s))) #\'))
       ;; Strip surrounding quotes; fold doubled '' to single '.
       (let* ((inner (subseq s 1 (1- (length s))))
              (n (length inner))
              (out (make-array n :element-type 'character
                                 :adjustable t :fill-pointer 0))
              (i 0))
         (loop while (< i n) do
           (let ((c (char inner i)))
             (cond
               ((and (char= c #\') (< (1+ i) n)
                     (char= (char inner (1+ i)) #\'))
                (vector-push-extend #\' out)
                (incf i 2))
               (t
                (vector-push-extend c out)
                (incf i)))))
         (coerce out 'simple-string)))
      ((%list-directed-numeric-p s)
       ;; Fortran allows D and Q in exponents; CL's READ-FROM-STRING
       ;; only knows E (plus implementation-specific S/F/D/L per
       ;; *read-default-float-format*).  Rewrite D/Q to E so we get a
       ;; CL float regardless of host.
       (let ((s2 (substitute-if #\E
                                (lambda (c) (member c '(#\D #\d #\Q #\q)))
                                s)))
         (read-from-string s2)))
      (t s))))

(defun %list-directed-read-tokens (stream count)
  "Pull COUNT whitespace/comma-separated tokens from STREAM, crossing
record boundaries as needed.  Quoted strings are honoured: a token
that opens with ' is closed by the matching ' (with '' as an
embedded literal).  Signals CL:END-OF-FILE if the stream runs dry
before COUNT tokens are gathered."
  (let ((tokens '())
        (buf (make-array 32 :element-type 'character
                            :adjustable t :fill-pointer 0))
        (in-string nil))
    (labels ((flush ()
               (when (plusp (length buf))
                 (push (coerce buf 'simple-string) tokens)
                 (setf (fill-pointer buf) 0)))
             (push-char (c)
               (vector-push-extend c buf)))
      (loop while (< (length tokens) count) do
        (let ((c (read-char stream nil :eof)))
          (cond
            ((eq c :eof)
             (flush)
             (when (< (length tokens) count)
               (error 'end-of-file :stream stream))
             (return))
            (in-string
             (push-char c)
             (when (char= c #\')
               (let ((nxt (peek-char nil stream nil :eof)))
                 (cond
                   ((and (characterp nxt) (char= nxt #\'))
                    (push-char (read-char stream)))
                   (t
                    (setf in-string nil)
                    (flush))))))
            ((char= c #\Newline)
             (flush))
            ((or (char= c #\Space) (char= c #\Tab) (char= c #\Return)
                 (char= c #\,))
             (flush))
            ((char= c #\')
             (flush)
             (push-char c)
             (setf in-string t))
            (t
             (push-char c))))))
    (nreverse tokens)))

(defun %list-directed-read-from-stream (stream count)
  "Read COUNT list-directed values from STREAM, classifying each
token into a Lisp value.  Signals CL:END-OF-FILE on premature EOF."
  (mapcar #'%list-directed-classify-token
          (%list-directed-read-tokens stream count)))

(defvar *current-fformat-read-format* nil
  "Format string in effect for the current %FFORMAT-READ-RECORDS
call.  Bound dynamically by EXECUTE-FORMAT-READ so the helper can
re-invoke %READ-FORMAT with successively longer record lists.")

(defun %fformat-read-records (stream count)
  "Pull lines from STREAM and feed them to %READ-FORMAT until COUNT
values are returned.  Used by formatted reads (FMT a string).
Signals CL:END-OF-FILE if the stream is exhausted before COUNT
values can be produced."
  (let ((records '()))
    (loop
      (let ((line (read-line stream nil :eof)))
        (when (eq line :eof)
          (error 'end-of-file :stream stream))
        (setf records (append records (list line))))
      (let ((vals (%read-format *current-fformat-read-format*
                                records
                                :num-vals count)))
        (when (>= (length vals) count)
          (return vals))))))

(defun execute-format-read (stream format count)
  "Runtime body of the FORMAT-READ macro.  FORMAT is either
:LIST-DIRECTED or a Fortran-format string.  COUNT is the number of
values needed.  Returns a list of COUNT values.  Signals
CL:END-OF-FILE on premature EOF."
  (cond
    ((zerop count)
     ;; No items requested.  A bare READ(*,*) with no I/O list still
     ;; consumes one record per Fortran semantics; honour that by
     ;; advancing past one line.
     (let ((line (read-line stream nil :eof)))
       (when (eq line :eof)
         (error 'end-of-file :stream stream)))
     '())
    ((eq format :list-directed)
     (%list-directed-read-from-stream stream count))
    ((stringp format)
     (let ((*current-fformat-read-format* format))
       (%fformat-read-records stream count)))
    (t
     (error "FORMAT-READ: unrecognized format ~S" format))))

;;; Helpers used by the FORMAT-READ macro to walk the varspec list
;;; at macro-expansion time.  Two passes are emitted: one that
;;; counts the value-producing places (with implied-DO bounds
;;; evaluated at run time), and one that assigns from the value
;;; list.

(defun %format-read-count-form (counter-var varspec)
  "Build code that increments COUNTER-VAR once per :place that VARSPEC
will hit at run time.  Implied-DOs expand to a DO loop so their
bounds are re-evaluated each call."
  (case (first varspec)
    (:place
     `(incf ,counter-var))
    (:implied-do
     (destructuring-bind (kind ivar e1 e2 e3 inner-vars) varspec
       (declare (ignore kind))
       `(do ((,ivar ,e1 (+ ,ivar ,e3)))
            ((> ,ivar ,e2))
          (declare (type integer4 ,ivar))
          ,@(mapcar (lambda (v) (%format-read-count-form counter-var v))
                    inner-vars))))
    (t (error "%format-read-count-form: unknown varspec ~S" varspec))))

(defun %format-read-assign-form (pop-fn varspec)
  "Build code that, for each :place VARSPEC will hit, pops one value
off the read-result list (via the local function POP-FN) and stores
it.  Storage uses FSET for (FREF ...) places, F2CL-SET-STRING for
sized-string types, and plain SETF otherwise.  When TYPE names a CL
float type, the popped value is COERCEd to it -- the format engine
defaults F/E/D values to DOUBLE-FLOAT and the destination may be
SINGLE-FLOAT (e.g. a Fortran REAL), so we have to bridge the gap
the way Fortran's runtime would."
  (case (first varspec)
    (:place
     (destructuring-bind (kind expr type) varspec
       (declare (ignore kind))
       (let* ((sized-string-p (and (consp type) (eq (first type) 'string)))
              (float-type-p   (member type '(single-float double-float
                                             short-float long-float)))
              (rhs (cond
                     (float-type-p `(coerce (,pop-fn) ',type))
                     (t             `(,pop-fn)))))
         (cond
           ((and (consp expr) (eq (first expr) 'fref))
            `(fset ,expr ,rhs))
           (sized-string-p
            `(f2cl-set-string ,expr ,rhs ,type))
           (t
            `(setf ,expr ,rhs))))))
    (:implied-do
     (destructuring-bind (kind ivar e1 e2 e3 inner-vars) varspec
       (declare (ignore kind))
       `(do ((,ivar ,e1 (+ ,ivar ,e3)))
            ((> ,ivar ,e2))
          (declare (type integer4 ,ivar))
          ,@(mapcar (lambda (v) (%format-read-assign-form pop-fn v))
                    inner-vars))))
    (t (error "%format-read-assign-form: unknown varspec ~S" varspec))))

(defmacro format-read (&key unit fmt end err iostat vars)
  "Fortran formatted READ using fortran-format:read-format.
UNIT is the source (an integer LUN or a string).  FMT is evaluated
at run time and must produce either :LIST-DIRECTED or a Fortran
format string such as \"(I5,1X,F10.3)\".  A literal keyword or
string self-evaluates, so the common cases work unchanged; the
form is also free to be a variable holding the format string, an
array reference, or any other expression that yields one of those
two value shapes at runtime.

VARS is a list of varspecs in the same shape READ-FILE uses:
  (:place EXPR TYPE)
  (:implied-do IVAR E1 E2 E3 INNER-VARS)

On EOF, GO to the END label and set IOSTAT to -1; on other read
errors, GO to the ERR label and set IOSTAT to +1.  Each of END,
ERR, IOSTAT is independently optional."
  (let* ((stream     (gensym "STREAM-"))
         (count      (gensym "COUNT-"))
         (values-var (gensym "VALUES-"))
         (pop-fn     (gensym "POP-"))
         (success-body
          `((let ((,count 0))
              ,@(mapcar (lambda (v) (%format-read-count-form count v)) vars)
              (let ((,values-var (execute-format-read ,stream ,fmt ,count)))
                (flet ((,pop-fn ()
                         (let ((v (car ,values-var)))
                           (setf ,values-var (cdr ,values-var))
                           v)))
                  (declare (ignorable (function ,pop-fn)))
                  ,@(mapcar (lambda (v) (%format-read-assign-form pop-fn v))
                            vars))))
            ,@(when iostat `((setf ,iostat 0)))
            nil))
         (end-clause
          (when end
            `((end-of-file ()
                ,@(when iostat `((setf ,iostat -1)))
                :end))))
         (err-clause
          (when (or err iostat)
            `((error ()
                ,@(when iostat `((setf ,iostat 1)))
                :err))))
         (handler-form
          `(handler-case
               (progn ,@success-body)
             ,@end-clause
             ,@err-clause))
         (case-clauses
          (append
           (when end `((:end (go ,(make-label end)))))
           (when err `((:err (go ,(make-label err))))))))
    `(let ((,stream (lun->stream ,unit t)))
       ,(cond
          ((null case-clauses)
           `(progn ,handler-form nil))
          (t
           `(case ,handler-form ,@case-clauses))))))


;; Initialize a multi-dimensional array of character strings. I think
;; we need to do it this way to appease some picky compilers (like
;; CMUCL).  The initial-element is needed to get rid of a warning
;; about the default initial element not being a simple
;; string. However, this initializes all elements of the array to
;; exactly the same string, so we loop over the entire array contents
;; and initialize each element with a string of the appropriate
;; length.  The string is initialized with #\Space because it seems
;; that's what Fortran initializes it to.
(defmacro f2cl-init-string (dims len &optional inits)
  (let ((init (gensym (symbol-name '#:array-)))
        (k (gensym (symbol-name '#:idx-))))
    `(let ((,init (make-array (* ,@dims)
                              :element-type `(simple-array character (,',@len))
                              :initial-element (make-string ,@len))))
       (dotimes (,k (array-total-size ,init))
         (setf (aref ,init ,k)
               (make-string ,@len :initial-element #\Space)))
       ,@(when inits
           (let ((k 0)
                 (forms nil))
             (dolist (val inits)
               (push `(replace (aref ,init ,k) ,val) forms)
               (incf k))
             (nreverse forms)))
                
       ,init)))

;; This macro is supposed to set LHS to the RHS assuming that the LHS
;; is a Fortran CHARACTER type of length LEN.
;;
;; Currently, converts the RHS to the appropriate length string and
;; assigns it to the LHS.  However, this can generate quite a bit of
;; garbage.  We might want to be a bit smarter and use loops to
;; replace the individual characters of the LHS with the appropriate
;; characters from the RHS.
(defmacro f2cl-set-string (lhs rhs (string len))
  (declare (ignore string))
  (etypecase lhs
    (symbol
     ;; Assignment to a simple string.
     `(setf ,lhs (f2cl-string ,rhs ,len)))
    (list
     ;; Assignment to an array
     `(fset ,lhs (f2cl-string ,rhs ,len)))))

(defun f2cl-string (string len)
  ;; Create a string of the desired length by either appending spaces
  ;; or truncating the string.
  (let ((slen (length string)))
    (cond ((= slen len)
           ;; Need to make a copy of the string, so we don't have
           ;; duplicated structure.
           (copy-seq string))
          ((> slen len)
           ;; Truncate the string
           (subseq string 0 len))
          (t
           ;; String is too short, so append some spaces
           (concatenate 'string string (make-string (- len slen) :initial-element #\Space))))))


;;; Strictly speaking, this is not part of Fortran, but so many
;;; Fortran packages use these routines, we're going to add them here.
;;; They're much easier to implement in Lisp than in Fortran!

;;
;;  DOUBLE-PRECISION MACHINE CONSTANTS
;;  D1MACH( 1) = B**(EMIN-1), THE SMALLEST POSITIVE MAGNITUDE.
;;  D1MACH( 2) = B**EMAX*(1 - B**(-T)), THE LARGEST MAGNITUDE.
;;  D1MACH( 3) = B**(-T), THE SMALLEST RELATIVE SPACING.
;;  D1MACH( 4) = B**(1-T), THE LARGEST RELATIVE SPACING.
;;  D1MACH( 5) = LOG10(B)
;;

(defun d1mach (i)
  (ecase i
    (1 least-positive-normalized-double-float)
    (2 most-positive-double-float)
    (3 #-ecl double-float-epsilon
       #+ecl (scale-float (float #X10000000000001 1d0) -105))
    (4 (scale-float #-ecl double-float-epsilon
                    #+ecl (scale-float (float #X10000000000001 1d0) -105)
                    1))
    (5 (log (float (float-radix 1d0) 1d0) 10d0))))

(defun r1mach (i)
  (ecase i
    (1 least-positive-normalized-single-float)
    (2 most-positive-single-float)
    (3 single-float-epsilon)
    (4 (scale-float single-float-epsilon 1))
    (5 (log (float (float-radix 1f0)) 10f0))))

;;
;;     This is the CMLIB version of I1MACH, the integer machine
;;     constants subroutine originally developed for the PORT library.
;;
;;     I1MACH can be used to obtain machine-dependent parameters
;;     for the local machine environment.  It is a function
;;     subroutine with one (input) argument, and can be called
;;     as follows, for example
;;
;;          K = I1MACH(I)
;;
;;     where I=1,...,16.  The (output) value of K above is
;;     determined by the (input) value of I.  The results for
;;     various values of I are discussed below.
;;
;;  I/O unit numbers.
;;    I1MACH( 1) = the standard input unit.
;;    I1MACH( 2) = the standard output unit.
;;    I1MACH( 3) = the standard punch unit.
;;    I1MACH( 4) = the standard error message unit.
;;
;;  Words.
;;    I1MACH( 5) = the number of bits per integer storage unit.
;;    I1MACH( 6) = the number of characters per integer storage unit.
;;
;;  Integers.
;;    assume integers are represented in the S-digit, base-A form
;;
;;               sign ( X(S-1)*A**(S-1) + ... + X(1)*A + X(0) )
;;
;;               where 0 .LE. X(I) .LT. A for I=0,...,S-1.
;;    I1MACH( 7) = A, the base.
;;    I1MACH( 8) = S, the number of base-A digits.
;;    I1MACH( 9) = A**S - 1, the largest magnitude.
;;
;;  Floating-Point Numbers.
;;    Assume floating-point numbers are represented in the T-digit,
;;    base-B form
;;               sign (B**E)*( (X(1)/B) + ... + (X(T)/B**T) )
;;
;;               where 0 .LE. X(I) .LT. B for I=1,...,T,
;;               0 .LT. X(1), and EMIN .LE. E .LE. EMAX.
;;    I1MACH(10) = B, the base.
;;
;;  Single-Precision
;;    I1MACH(11) = T, the number of base-B digits.
;;    I1MACH(12) = EMIN, the smallest exponent E.
;;    I1MACH(13) = EMAX, the largest exponent E.
;;
;;  Double-Precision
;;    I1MACH(14) = T, the number of base-B digits.
;;    I1MACH(15) = EMIN, the smallest exponent E.
;;    I1MACH(16) = EMAX, the largest exponent E.
(defun i1mach (i)
  (ecase i
    ;; What does the unit numbers really mean in Lisp?  What do we
    ;; really want?
    
    ;; The standard input unit
    (1 5)
    ;; The standard output unit
    (2 6)
    ;; The standard punch unit
    (3 6)
    ;; The standard error message unit
    (4 6)

    ;; The number of bits per integer storage unit.  What does this
    ;; mean in Lisp?
    (5
     (integer-length most-positive-fixnum))
    ;; The number of characters per integer storage unit.  What does
    ;; this mean in Lisp?
    (6 4)

    ;; The base of integers.  Assume 2's complement
    (7 2)
    ;; The number of base-2 digits.  Assume fixnum size?
    (8 (integer-length most-positive-fixnum))
    ;; The largest magnitude
    (9 most-positive-fixnum)

    ;; Base of floating-poing representation
    (10 (float-radix 1f0))
    ;; Number of digits in representation
    (11 (float-digits 1f0))
    ;; Smallest exponent
    (12 (multiple-value-bind (frac exp sign)
            (decode-float least-positive-normalized-single-float)
          (declare (ignore frac sign))
          (+ exp 1)))
    ;; Largest exponent
    (13 (multiple-value-bind (frac exp sign)
            (decode-float most-positive-single-float)
          (declare (ignore frac sign))
          (- exp 1)))
    ;; Same for double-precision
    (14 (float-digits 1d0))
    (15 (multiple-value-bind (frac exp sign)
            (decode-float least-positive-normalized-double-float)
          (declare (ignore frac sign))
          (+ exp 1)))
    (16 (multiple-value-bind (frac exp sign)
            (decode-float most-positive-double-float)
          (declare (ignore frac sign))
          (- exp 1)))
    ))

;; F2cl cannot tell if a STOP statement is an error condition or just
;; the end of the program.  So, by default, we signal a continuable
;; error.  However, we give the user the option of silently returning
;; or not.
(defvar *stop-signals-error-p* nil
  "When non-NIL, STOP will signal an continuable error.  Otherwise, STOP just returns")

(defun stop (&optional arg)
  (when arg
    (format cl::*error-output* "~A~%" arg))
  (when *stop-signals-error-p*
    (cerror "Continue anyway" "STOP reached")))

(defmacro f2cl-copy-seq (dst src dst-type src-type)
  (flet ((copy-error ()
           (error "F2CL cannot copy arrays of element type ~A to ~A~%"
                  src-type dst-type)))
    (cond ((subtypep dst-type 'float)
           ;; Copy to float array
           (cond ((subtypep src-type 'float)
                  `(replace ,dst ,src))
                 ((subtypep src-type 'complex)
                  ;; Copy complex to float by putting each real and
                  ;; imaginary part into the float array, in order.
                  (let ((idx (gensym "IDX-"))
                        (el (gensym "EL-")))
                    `(loop for ,idx of-type fixnum from 0 by 2 below (length ,dst)
                        for ,el of-type ,src-type across ,src
                        do
                        (progn
                          (setf (aref ,dst ,idx) (realpart ,el))
                          (setf (aref ,dst (1+ ,idx)) (imagpart ,el))))))
                 (t
                  (copy-error))))
          ((subtypep dst-type 'complex)
           ;; Copy to complex array
           (cond ((subtypep src-type 'float)
                  (let ((idx (gensym "IDX-"))
                        (dst-idx (gensym "DST-IDX-")))
                    `(loop for ,idx of-type fixnum from 0 by 2 below (length ,src)
                        for ,dst-idx of-type fixnum from 0 below (length ,dst)
                        do
                        (setf (aref ,dst ,dst-idx) (complex (aref ,src ,idx)
                                                            (aref ,src (1+ ,idx)))))))
                 ((subtypep src-type 'complex)
                  `(replace ,dst ,src))
                 (t
                  (copy-error))))
          (t
           (copy-error)))))

(defmacro make-compatible-seq (type array array-type)
  (let ((element-type (second type))
        (array-type (second array-type)))
    (cond ((subtypep element-type 'float)
           (cond ((subtypep array-type 'complex)
                  `(make-array (* 2 (length ,array)) :element-type ',element-type))
                 (t
                  `(make-array (length ,array) :element-type ',element-type))))
          ((subtypep element-type 'complex)
           (cond ((subtypep array-type 'complex)
                  `(make-array (length ,array) :element-type ',element-type))
                 (t
                  `(make-array (ceiling (length ,array) 2) :element-type ',element-type))))
          (t
           (error "Don't know how to make an array with element-type ~A~%" element-type)))))


;;;-------------------------------------------------------------------------
;;; end of macros.l
;;;
;;; $Id$
;;; $Log$
;;; Revision 1.117  2011/02/28 22:21:07  rtoy
;;; When opening an old file, we should set :if-exists to :overwrite to
;;; overwrite the file if written too.
;;;
;;; Revision 1.116  2011/02/20 20:51:04  rtoy
;;; Oops.  STOP should signal an error if *STOP-SIGNALS-ERROR-P* is
;;; non-NIL.
;;;
;;; Revision 1.115  2010/12/28 00:06:52  rtoy
;;; Assert the type of the arg to fsqrt to be non-negative, excluding
;;; negative zero.
;;;
;;; Revision 1.114  2010/05/17 01:42:14  rtoy
;;; src/f2cl1.l:
;;; o Need to know the actual type when making a compatible sequence.
;;; o Convert plain integer type to integer4 types, which is what Fortran
;;;   would do.  We don't want general Lisp integer type.
;;;
;;; src/macros.l:
;;; o Change MAKE-COMPATIBLE-SEQ to be a macro.
;;; o Need to know the actual array type to create the correct type of
;;;   sequence.
;;;
;;; Revision 1.113  2010/02/23 00:59:12  rtoy
;;; Support the Fortran capability of passing an array of one type
;;; to a routine expecting a different type.  Currently only supports REAL
;;; and COMPLEX arrays (and their double precison versions).
;;;
;;; NOTES:
;;; o Update
;;;
;;; f2cl0.l:
;;; o Export new symbols f2cl-copy-seq and make-compatible-seq.
;;;
;;; f2cl1.l:
;;; o New variable *copy-array-parameter* for keeping track of the option
;;;   for f2cl and f2cl-compile.
;;; o Update f2cl and f2cl-compile to recognize :copy-array-parameter.
;;; o Modify massage-arglist and generate-call-to-routine to handle the
;;;   new :copy-array-parameter capability.
;;;
;;; f2cl5.l:
;;; o Fix issue where quoted elements were modified.  They shouldn't be.
;;; o Fix issue where (array simple-float (*)) would get erroneously
;;;   converted to (array simple-float (f2cl-lib:int-mul)).  We want to
;;;   leave bare * alone.
;;;
;;; macros.l:
;;; o New macro f2cl-copy-seq to generate code to copy a sequence
;;;   appropriately.
;;; o New function to create a compatible array to support
;;;   :copy-array-parameter.
;;;
;;; Revision 1.112  2009/01/08 12:57:19  rtoy
;;; f2cl0.l:
;;; o Export *STOP-SIGNALS-ERROR-P*
;;;
;;; macros.l:
;;; o Add *STOP-SIGNALS-ERROR-P* to allow user to control whether STOP
;;;   signals a continuable error or not.  Default is to signal the
;;;   error.
;;;
;;; Revision 1.111  2009/01/07 21:50:16  rtoy
;;; Use the fast rint-* functions for CMUCL with sse2 support.
;;;
;;; Revision 1.110  2009/01/07 21:42:45  rtoy
;;; Gcl doesn't recognize :compile-toplevel and friends.  Use old style.
;;;
;;; Revision 1.109  2009/01/07 21:34:41  rtoy
;;; Clean up junk:
;;;
;;; o Remove unused macro REXPT.
;;; o Remove duplicated function PROCESS-IMPLIED-DO.
;;; o Remove code that was commented out.
;;;
;;; Revision 1.108  2009/01/07 17:28:19  rtoy
;;; f2cl0.l:
;;; o Export new dfloat function, an alias for dble.
;;; o Merge some cleanups from Maxima.
;;;
;;; f2cl1.l:
;;; o Add dfloat to list of intrinsic functions.
;;;
;;; macros.l:
;;; o Merge some cleanups and fixes from Maxima.  Mostly for gcl and ecl.
;;; o Add implementation of dfloat.
;;;
;;; Revision 1.107  2009/01/07 02:22:00  rtoy
;;; Need to quit a repeated group if we're out of arguments to print.
;;; This prevents us from repeatedly print newlines and other strings when
;;; the repetition is more than the number of arguments we have left.
;;;
;;; Revision 1.106  2008/09/15 15:27:36  rtoy
;;; Fix serious bug in aint.  aint(x) for x an integer was returning x-1
;;; (for positive x).  It should have returned x.
;;;
;;; Revision 1.105  2008/09/10 18:53:49  rtoy
;;; The case where the arg was negative or zero was mishandled and ended
;;; up being printed using ~E.  Should have been ~F.
;;;
;;; Revision 1.104  2008/08/22 21:27:43  rtoy
;;; Oops.  Forgot one place to conditionalize on gcl.
;;;
;;; Revision 1.103  2008/08/21 20:16:49  rtoy
;;; Gcl doesn' like ~/ format specifier, so rearrange things so we don't
;;; use it.  (Should we just do the same for every one?)
;;;
;;; Revision 1.102  2008/03/26 13:19:52  rtoy
;;; Lazily initialize the lun-hash table.  *lun-hash* starts as an empty
;;; hash-table, and lun->stream will initialize units 5, 6, and t as
;;; needed.
;;;
;;; Based on similar change in maxima to work around an issue with clisp
;;; where the predefined entries had closed streams.
;;;
;;; Revision 1.101  2008/03/08 12:49:08  rtoy
;;; Make :list-directed output be more like Fortran.  There is quite a bit
;;; of variation between, say, g77 and Sun Fortran, so we pick something
;;; reasonably close.  We have a mix of g77 and Sun Fortran output.  Still
;;; needs some work.
;;;
;;; Revision 1.100  2008/03/07 23:15:01  rtoy
;;; Use ~? so we can control the format string to print out various
;;; objects for list-directed output.
;;;
;;; Revision 1.99  2008/03/06 21:20:41  rtoy
;;; Change the open mode from append to supersede.  I think this makes
;;; more sense and seems to match g77 better.
;;;
;;; Revision 1.98  2008/03/06 20:04:10  rtoy
;;; Use ~G for list-directed I/O so that numbers come out reasonably.
;;; (F77 standard says E or F is used, depending on the magnitude of the
;;; number.  The parameters for E and F are processer dependent as is the
;;; magnitude used to select between E or F.  This is pretty close to how
;;; ~G works in Lisp.)
;;;
;;; Revision 1.97  2008/02/26 04:14:31  rtoy
;;; Explicitly check for T and NIL.
;;;
;;; Revision 1.96  2008/02/22 22:19:34  rtoy
;;; Use RCS Id as version.
;;;
;;; Revision 1.95  2008/02/22 22:13:18  rtoy
;;; o Add function F2CL-VERSION to get version info.
;;; o Add version string to each of the files so F2CL-VERSION can get the
;;;   version info.  The version string is basically the date of when the
;;;   file was last checked in.
;;;
;;; Revision 1.94  2007/09/30 03:47:47  rtoy
;;; When we're out of formats, we restart with the last repeat spec.
;;;
;;; Revision 1.93  2007/09/28 22:01:08  rtoy
;;; First attempt at getting implied-do loops in data statements working
;;; with nested loops.
;;;
;;; f2cl1.l:
;;; o PARSE-DATA-IMPLIED-DO handles implied do loops even when the loops
;;;   are nested.
;;;
;;; macros.l:
;;; o Update PROCESS-IMPLIED-DO to handle the new forms returned by
;;;   PARSE-DATA-IMPLIED-DO.
;;; o Don't create constants out of the initializer since we use POP to
;;;   access them one by one.
;;; o Minor tweak for list-directed output to allow a slightly longer line
;;;   length. This matches what g77 produces for one simple test case.
;;;
;;; Revision 1.92  2007/09/28 20:26:13  rtoy
;;; o For REWIND and CLOSE$, declare the result as ignorable.
;;; o For list-directed output, don't print out strings as an array with
;;;   spaces between each element.  Strings should go out as strings.
;;;
;;; Revision 1.91  2007/09/28 15:41:14  rtoy
;;; Some cleanup for list-directed output:
;;;
;;; o Complex numbers should be printed in the form (r, i), not #c(r, i)
;;; o Arrays should print out only the elements instead of #(...).
;;;
;;; Revision 1.90  2007/09/28 05:00:58  rtoy
;;; To support multidimensional arrays in implied do loops better, we need
;;; to pass the entire array bounds, including upper and lower limits so
;;; that array indexing can work.
;;;
;;; f2cl5.l:
;;; o Find the entire array bounds.
;;; o Don't use make-declaration to get the array type.  Explicitly look
;;;   through *explicit-vble-decls* to find the type.  (Are there other
;;;   places we need to look?)
;;;
;;; macros.l:
;;; o Pass the entire list of array bounds to fref so we can handle
;;;   multidimensional arrays.
;;;
;;; Revision 1.89  2007/09/27 14:56:39  rtoy
;;; When we run out of format specs, but there are still items to print,
;;; we go back and find the first repeat spec and start there.
;;;
;;; If there is no such thing, we just reuse the entire format spec.  Not
;;; sure if this is right or if it's a bug.  Maybe we should signal an
;;; error?
;;;
;;; Revision 1.88  2007/09/27 02:12:12  rtoy
;;; Support the L edit descriptor better.
;;;
;;; f2cl5.l:
;;; o Recognize the L descriptor and convert it to ~wA.
;;;
;;; macros.l:
;;; o Convert T and NIL to :T and :F, respectively.  When coupled with ~A,
;;;   this prints as T and F, as desired.
;;;
;;; Revision 1.87  2007/09/26 13:11:06  rtoy
;;; Remove the unused FOREVER parameter from EXECUTE-FORMAT.
;;;
;;; Revision 1.86  2007/09/26 13:10:15  rtoy
;;; Better list-directed output.
;;;
;;; f2cl5.l:
;;; o For list-directed output (format is *), return :list-directed to
;;;   tell format that we're using list-directed output.  (The previous
;;;   scheme didn't really work well.)
;;;
;;; macros.l:
;;; o Add FLATTEN-LIST function
;;; o Don't output a newline for repeated items.  We shouldn't do that.
;;; o Add support for :list-directed output.  We recognize that and then
;;;   just output all the args in a special way.
;;;
;;; Revision 1.85  2007/09/25 21:31:32  rtoy
;;; f2cl5.l:
;;; o Slight change in the format used for "*" format.
;;; o Change the repeatable descriptors to remove the repeat count if the
;;;   count is 1.  This was confusing the execute-format when determining
;;;   when to print out newlines.  This change applied to I, F, E, D, and
;;;   G descriptors.
;;;
;;; macros.l:
;;; o Handle printing of "repeat forever" loops better.  An extra arg to
;;;   EXECUTE-FORMAT tells us to repeat "forever".
;;; o Output a newline at the end of a repeated specification.
;;;
;;; Revision 1.84  2007/09/25 18:46:42  rtoy
;;; For repeated descriptors, we were printing a new line after each item
;;; instead of after all items had been printed.  Output new line only
;;; once, when we're done.
;;;
;;; Revision 1.83  2007/09/25 18:17:50  rtoy
;;; Oops.  We should always process #\: and exit only if there is more
;;; args to process.
;;;
;;; Revision 1.82  2007/09/25 17:31:05  rtoy
;;; f2cl5.l:
;;; o Return #\: when encountering a colon edit descriptor.
;;;
;;; macros.l:
;;; o Recognize #\: and terminate processing if there are no arguments
;;;   left.
;;;
;;; Revision 1.81  2007/09/23 20:51:43  rtoy
;;; Previous checkin changed how character strings are initialized.
;;; Modify code accordingly.  (This needs to be rethought and made less
;;; fragile.)
;;;
;;; Revision 1.80  2007/09/21 17:45:13  rtoy
;;; INDEX was calling SEARCH with the arguments in the wrong order.
;;;
;;; Revision 1.79  2007/09/20 21:27:12  rtoy
;;; Was not handling atoms correctly.  This needs more work.
;;;
;;; Revision 1.78  2007/09/20 17:38:25  rtoy
;;; In ARRAY-INITIALIZE, we can't make a literal list of the data because
;;; the data might not be literal.  (That is, the data might be constants
;;; from a parameter statement.)
;;;
;;; Revision 1.77  2007/06/18 15:50:16  rtoy
;;; Bug [ 1709300 ] unused key parameters
;;;
;;; o In %open-file, ignore UNIT, and produce an error if FORM is UNFORMATTED
;;; o In %close, produce an error if STATUS is specified.
;;;
;;; Revision 1.76  2006/12/01 04:23:43  rtoy
;;; Minor cleanups
;;;
;;; src/f2cl0.l:
;;; o Cosmetic changes
;;;
;;; src/macros.l:
;;; o Make code work with "modern"-mode lisps.  (Ported from maxima.)
;;;
;;; Revision 1.75  2006/11/28 19:06:18  rtoy
;;; o Make sure the second arg to FSET-STRING is a string.
;;; o FCHAR was using the wrong function.
;;; o Cleanup FFORMAT so there are no compiler warnings about REPLACE
;;;   being called on constant data.  (This is probably a compiler bug in
;;;   CMUCL, but we should get rid of the stuff ourselves, anyway, instead
;;;   of depending on the compiler to do it for us.)
;;;
;;; Revision 1.74  2006/11/27 19:09:51  rtoy
;;; In some places in LAPACK, an array slice is taken where the slice
;;; exceeds the bounds of the array.  However, the array is never
;;; accessed.  What are we to do?  We could modify the LAPACK routines
;;; (everywhere!) to check for this, or we can silently make array-slice
;;; make a 0-element array.  If the array is then accessed, we should get
;;; an error at the point of access, not the point of creation.
;;;
;;; Revision 1.73  2006/11/21 22:05:03  rtoy
;;; Fix ichar to accept either a real character or (more likely) a
;;; string.
;;;
;;; Revision 1.72  2006/11/21 18:21:37  rtoy
;;; o Add CDABS and DCONJG functions.
;;; o Add some type declarations for DIMAG
;;;
;;; Revision 1.71  2006/05/02 22:12:02  rtoy
;;; src/f2cl5.l:
;;; o Try to make better declarations for variables defined in parameter
;;;   statements.  We'll declare them as (double-float 42d0 42d0) if the
;;;   parameter was initialized to 42d0.
;;; o MAKE-DECLARATION updated to take an extra keyword argument to
;;;   indicate if this is a parameter variable and to give the initial
;;;   value of the parameter so we can make the appropriate declaration.
;;; o When initializing simple variables in data statements, try to bind
;;;   the variable with the initial value instead binding a default 0 zero
;;;   and setq'ing it later.
;;;
;;; src/macros.l:
;;; o Change DEFTYPE for INTEGER4 to allow parameters so we can specify
;;;   tight bounds if desired.
;;;
;;; Revision 1.70  2006/05/01 17:40:05  rtoy
;;; Change STOP to produce a continuable error instead of an error so that
;;; we can continue from the STOP statement, if we choose to.  It's not
;;; necessarily an error in a converted program to reach a STOP statement.
;;;
;;; Revision 1.69  2006/04/27 17:44:01  rtoy
;;; src/f2cl0.l:
;;; o Export dimag, dcmplx, zsqrt
;;;
;;; src/f2cl1.l:
;;; o Add dcmplx, dimag, and zsqrt to the list of intrinsic function
;;;   names.
;;; o When parsing "implicit none" statements, we don't modify
;;;   *IMPLICIT_VBLE_DECLS*. I don't think it's needed and it can cause
;;;   errors later on because :none is not a Lisp type.
;;;
;;; src/f2cl5.l:
;;; o Tell GET-FUN-ARG-TYPE about the result type of dcmplx, dsqrt, the
;;;   complex*8 and complex*16 special functions.
;;; o ABS is an allowed lisp name.  This gets rid of the spurious ABS$
;;;   local variable whenever we use the ABS function.
;;;
;;; src/macros.l:
;;; o Add implementations of dcmplx, dimag, and zsqrt.  (We need to add
;;;   more, I think.)
;;;
;;; Revision 1.68  2006/01/12 01:33:32  rtoy
;;; If status is not given or unknown, create the file if it doesn't
;;; exist.
;;;
;;; Revision 1.67  2006/01/11 22:57:58  rtoy
;;; Add rudimentary support for opening files and reading from files.
;;;
;;; src/f2cl1.l:
;;; o Recognize and handle open, rewind, and close statements.
;;;
;;; src/f2cl5.l:
;;; o Update parser for read to handle unit numbers.  Rudimentary support
;;;   for implied-do lists too.
;;; o Add parser for open, rewind, and close statements.
;;;
;;; src/macros.l:
;;; o Add functions and macros to handle opening, rewinding,
;;;   and closing files.  Needs more work still.
;;;
;;; Revision 1.66  2006/01/09 03:08:13  rtoy
;;; src/f2cl1.l:
;;; o Translate a Fortran STOP to be the stop function.  Was just
;;;   returning NIL, and this doesn't work so well.
;;;
;;; src/macros.l:
;;; o Add STOP function.  It prints out the any arg, and then signals an
;;;   error.
;;;
;;; Revision 1.65  2006/01/09 00:37:43  rtoy
;;; src/f2cl5.l:
;;; o When looking for initializers, don't just remove initializers when
;;;   the array is not a 1-D array.  Keep them, and return a second value
;;;   indicating if the array is 1-D or not.
;;; o MAKE-CHAR-DECL was not properly declaring and initializing 2-D
;;;   arrays as 1-D arrays like we're supposed to.  Compute the total size
;;;   of the array if we can.
;;;
;;; src/macros.l:
;;; o F2CL-INIT-STRING needs to make a 1-D array, even if the string array
;;;   is multi-dimensional.
;;;
;;; Revision 1.64  2006/01/04 17:53:40  rtoy
;;; We were not correctly processing intialization of string arrays in
;;; data statements.
;;;
;;; src/f2cl1.l:
;;; o In PARSE-DATA1, return the entire list of initializers instead of
;;;   just the first, in case we have an array of initializers.
;;;
;;; src/f2cl5.l:
;;; o In MERGE-DATA-AND-SAVE-INITS, we need to recognize the
;;;   initialization of strings and such.  We don't do anything special
;;;   right now, like we do for arrays of numbers.
;;; o In INSERT-DECLARATIONS, we need to handle the case of REPLACE in the
;;;   *data-init*'s.  We assume it's been handled somewhere else, so
;;;   there's nothing to do here.
;;;
;;; Revision 1.63  2005/05/19 15:06:24  rtoy
;;; Oops.  make-label is in the f2cl-lib package.
;;;
;;; Revision 1.62  2005/05/16 15:50:25  rtoy
;;; o Replace single semicolons with multiple semicolons as appropriate.
;;; o GCL apparently doesn't like some declarations, so comment them out
;;;   for GCL.
;;; o GCL doesn't like the defparameter for *lun-hash*.
;;; o GCL doesn't seem to have least-positive-normalized-double-float, so
;;;   make it the same as least-positive-double-float.  Likewise for
;;;   single-float.
;;;
;;; These changes come from maxima.
;;;
;;; Revision 1.61  2005/03/28 20:38:18  rtoy
;;; Make strings with an element-type of character instead of base-char,
;;; in case the Lisp implementation has unicode support.
;;;
;;; Revision 1.60  2004/09/01 14:17:57  rtoy
;;; atan2 takes single-float args, not double-float.
;;;
;;; Revision 1.59  2004/08/14 22:29:16  marcoxa
;;; Added an EVAL-WHEN to silence the LW compiler.
;;;
;;; Revision 1.58  2004/08/14 04:17:45  rtoy
;;; Need a definition for MAKE-LABEL.
;;;
;;; Revision 1.57  2003/11/23 14:10:11  rtoy
;;; FDO should not call function that are not in the F2CL-LIB package.
;;; Macros.l should be self-contained.
;;;
;;; Revision 1.56  2003/11/13 05:37:11  rtoy
;;; Add macro WITH-MULTI-ARRAY-DATA.  Basically like WITH-ARRAY-DATA, but
;;; takes a list of array info so we don't get deeply nested code when
;;; there are lots of arrays.
;;;
;;; Keep WITH-ARRAY-DATA around for backward compatibility.
;;;
;;; Revision 1.55  2003/11/12 05:33:22  rtoy
;;; Macro to handle assigned gotos was wrong.  Fix it.
;;;
;;; Revision 1.54  2003/09/25 03:43:43  rtoy
;;; Need to check for reserved names in the fdo macro.  (I think.)
;;;
;;; Revision 1.53  2003/01/07 18:44:52  rtoy
;;; Add new implementations of aint.  Speeds up mpnorm by a factor of 5 on
;;; CMUCL/sparc!
;;;
;;; Revision 1.52  2002/09/13 17:50:19  rtoy
;;; From Douglas Crosher:
;;;
;;; o Make this work with lower-case Lisps
;;; o Fix a few typos
;;; o Make a safer fortran reader.
;;;
;;; Revision 1.51  2002/06/30 13:08:51  rtoy
;;; Add some declarations to AINT so that CMUCL can completely inline the
;;; call to ftruncate.
;;;
;;; Revision 1.50  2002/05/05 23:41:17  rtoy
;;; Typo: extra paren.
;;;
;;; Revision 1.49  2002/05/05 23:38:47  rtoy
;;; The int-sub macro didn't handle things like (- 3 m m) correctly.  It
;;; was returning (- 3 (- m m)) instead of (- (- 3 m) m)!
;;;
;;; Revision 1.48  2002/05/03 17:48:06  rtoy
;;; GCL doesn't have least-positive-normalized-{single/double}-float, so
;;; use just least-positive-{single/double}-float.
;;;
;;; Revision 1.47  2002/05/03 17:44:36  rtoy
;;; Replace row-major-aref with just aref because we don't need it and
;;; because gcl doesn't have it.
;;;
;;; Revision 1.46  2002/03/19 02:23:09  rtoy
;;; According to the rules of Fortran, the initializers in a DATA
;;; statement are supposed to be converted to match the type of the
;;; variable that is being initialized.  Make it so by passing the
;;; variable type to the macro DATA-IMPLIED-DO so that the conversion can
;;; be done.
;;;
;;; Revision 1.45  2002/03/18 23:34:16  rtoy
;;; Was not correctly handling some implied do loops containing multiple
;;; variables in the loop in data statements.  Fix that and clean up some
;;; of the processing.  (Should probably do this kind of work in the f2cl
;;; compiler instead of at runtime, but it's only done once at runtime, so
;;; it's not a big deal.)
;;;
;;; Revision 1.44  2002/03/11 16:44:00  rtoy
;;; o Remove an extra paren.
;;; o Indent FIND-ARRAY-DATA better.
;;; o Declare the iteration count to be of type INTEGER4.
;;; o Added macros INT-ADD, INT-SUB, INT-MUL to tell the compiler that the
;;;   integer operation can't overflow.  (First try.)
;;; o Tell the compiler that the result of truncate is an INTEGER4 in INT.
;;;
;;; Revision 1.43  2002/03/06 23:07:19  rtoy
;;; o Make INT return an integer4 type, not integer.
;;; o log10 was thinking it could generate complex result, but that's not
;;;   true.  Declare the arg correctly so the compiler knows it can't.
;;;
;;; Revision 1.42  2002/03/06 03:21:16  rtoy
;;; o Speed up FIND-ARRAY-DATA a little by declaring the offset to be a
;;;   fixnum, which it has to be since it's an index to an array.
;;; o Remove the truncate/ftruncate-towards-zero functions.
;;; o For INT, AINT, and friends, TRUNCATE and FTRUNCATE are the right
;;;   functions we want to use.  (Stupid me!)
;;; o Update/correct some random comments.
;;;
;;; Revision 1.41  2002/02/17 15:55:29  rtoy
;;; o For all array accessors, wrap the offset calculations with (the
;;;   fixnum ...) since they have to be anyway.  Speeds up calculations
;;;   quite a bit.
;;; o FREF takes an additional optional OFFSET arg to specify an offset
;;;   for the new array slicing method.
;;; o Added WITH-ARRAY-DATA and FIND-ARRAY-DATA to support the new
;;;   array-slicing method.
;;; o For FDO, add (the integer4 ...) for loop index calculations.
;;; o Add some more assertions for ISIGN and LOG10 to help the compiler
;;;   generate better code.
;;;
;;; Revision 1.40  2002/02/10 03:43:51  rtoy
;;; Partial support for WRITE statements writing to a string instead of
;;; logical unit.
;;;
;;; Revision 1.39  2002/02/09 15:59:26  rtoy
;;; o Add more and better comments
;;; o AINT was broken because it should accept any range of floats.
;;; o DIM and friends computed the wrong thing!
;;; o Change DPROD to convert to doubles first.
;;; o Some cleanup of MAX and MIN
;;;
;;; Revision 1.38  2002/02/08 23:38:36  rtoy
;;; Use ARRAY-TOTAL-SIZE to compute how many elements are in the slice
;;; instead of the f2cl declared/derived bounds so that we can dynamically
;;; change the size of the array.  Useful for an array in a common block.
;;;
;;; Revision 1.37  2002/02/07 03:23:15  rtoy
;;; Add functions to initialize F2CL's Fortran I/O and to close all of
;;; F2CL's open units.
;;;
;;; Revision 1.36  2002/02/04 03:23:46  rtoy
;;; o Make *lun-hash* a defparameter instead of a defvar.
;;; o Fix up i1mach so that the unit numbers match *lun-hash*.
;;;
;;; Revision 1.35  2002/01/13 16:29:00  rtoy
;;; o This file is in the f2cl-lib package now
;;; o Deleted some unused code.
;;; o Moved *INTRINSIC-FUNCTION-NAMES* to f2cl1.l
;;;
;;; Revision 1.34  2002/01/06 23:11:04  rtoy
;;; o Rename *intrinsic_function_names* to use dashes.
;;; o Comment out some unused functions and macros.
;;;
;;; Revision 1.33  2001/04/30 15:38:12  rtoy
;;; Add a version of I1MACH.
;;;
;;; Revision 1.32  2001/04/26 17:49:19  rtoy
;;; o SIGN and DIM are Fortran generic instrinsics.  Make it so.
;;; o Added D1MACH and R1MACH because they're very common in Fortran
;;;   libraries.
;;;
;;; Revision 1.31  2001/02/26 15:38:23  rtoy
;;; Move *check-array-bounds* from f2cl1.l to macros.l since the generated
;;; code refers to it.  Export this variable too.
;;;
;;; Revision 1.30  2000/08/30 17:00:42  rtoy
;;; o In EXECUTE-FORMAT, handle the case where the group is supposed to be
;;;   repeated "forever" (as indicated by a repetition factor of T).
;;; o Remove some more unused code.
;;;
;;; Revision 1.29  2000/08/27 16:36:07  rtoy
;;; Clean up handling of format statements.  Should handle many more
;;; formats correctly now.
;;;
;;; Revision 1.28  2000/08/07 19:00:47  rtoy
;;; Add type ARRAY-STRINGS to denote an array of strings.
;;;
;;; Revision 1.27  2000/08/03 13:45:53  rtoy
;;; Make FFORMAT1 handle lists that we get from implied do loops.
;;;
;;; The whole FFORMAT stuff needs to be rethought if we really want to
;;; support Fortran output.
;;;
;;; Revision 1.26  2000/08/01 22:10:41  rtoy
;;; o Try to make the Fortran functions to convert to integers work the
;;;   way Fortran says they should.
;;; o Declaim most of the intrinsics as inline so we don't have an
;;;   additional function call for simple things.
;;; o Add some compiler macros for Fortran max/min functions to call the
;;;   Lisp max/min functions withouth using #'apply.
;;; o Try to declare the args to functions with branchs appropriately,
;;;   even in the face of signed zeroes.
;;;
;;; Revision 1.25  2000/07/28 22:10:05  rtoy
;;; Remove unused var from ARRAY-SLICE.
;;;
;;; Revision 1.24  2000/07/28 17:09:13  rtoy
;;; o We are in the f2cl package now.
;;; o Remove the export expression.
;;; o // is now called F2CL-//, to prevent problems with the lisp variable
;;;   //.
;;; o REAL is now called FREAL, to prevent problems with the lisp type
;;;   REAL.
;;;
;;; Revision 1.23  2000/07/27 16:39:17  rtoy
;;; We want to be in the CL-USER package, not the USER package.
;;;
;;; Revision 1.22  2000/07/20 13:44:38  rtoy
;;; o Remove old fref macro
;;; o Add some comments
;;; o Add macro ARRAY-INITIALIZE to handle creating the appropriate for to
;;;   give to make-array :initial-contents.
;;;
;;; Revision 1.21  2000/07/19 13:54:27  rtoy
;;; o Add the types ARRAY-DOUBLE-FLOAT, ARRAY-SINGLE-FLOAT, and
;;;   ARRAY-INTEGER4.
;;; o All arrays are 1-D now to support slicing of Fortran arrays
;;;   correctly.
;;; o All arrays are in column-major order just like Fortran (and the
;;;   opposite of Lisp).  This is to support slicing of arrays.  Modified
;;;   FREF to support this by taking an extra arg for the dimensions of
;;;   the array.
;;; o Added macro ARRAY-SLICE to slice the array properly.
;;; o Optimized routine DMIN1 a bit.   (Need to do that for more routines.)
;;;
;;; Revision 1.20  2000/07/14 15:50:59  rtoy
;;; Get rid of *dummy_var*.  It's not used anymore.
;;;
;;; Revision 1.19  2000/07/13 16:55:34  rtoy
;;; To satisfy the Copyright statement, we have placed the RCS logs in
;;; each source file in f2cl.  (Hope this satisfies the copyright.)
;;;
;;;-----------------------------------------------------------------------------
