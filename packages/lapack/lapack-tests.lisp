;;;
;;; Simple tests for selected LAPACK routines.
;;;
;;; $Id$
;;;

(in-package "LAPACK")

;; Convert the eigenvalues returned by DGEEV into an array
(defun make-eigval (wr wi)
  (let ((e-val (make-array (length wr))))
    (map-into e-val #'(lambda (r i)
		       ;; Do we really want to do this?  Should we
		       ;; just make all of the eigenvalues complex?
		       (if (zerop i)
			   r
			   (complex r i)))
	      wr wi)
    e-val))

;; Convert the eigenvalues returned by DGEEV into a more typical
;; matrix form.
(defun make-eigvec (n vr wi)
  (let ((evec (make-array (list n n))))
    (do ((col 0 (incf col))
	 (posn 0))
	((>= col n))
      (cond ((zerop (aref wi col))
	     (dotimes (row n)
	       (setf (aref evec row col) (aref vr posn))
	       (incf posn)))
	    (t
	     (dotimes (row n)
	       (let* ((next-posn (+ posn n))
		      (val+ (complex (aref vr posn) (aref vr next-posn)))
		      (val- (conjugate val+)))
		 (setf (aref evec row col) val+)
		 (setf (aref evec row (1+ col)) val-)
		 (incf posn)))
	     ;; Skip over the next column, which we've already used
	     (incf col)
	     (incf posn n))))
    evec))

;; Expected results from http://www.nag.co.uk/lapack-ex/examples/results/dgeev-ex.r
;;
;; DGEEV Example Program Results
;; 
;;  Eigenvalue( 1) =  7.9948E-01
;; 
;;  Eigenvector( 1)
;;  -6.5509E-01
;;  -5.2363E-01
;;   5.3622E-01
;;  -9.5607E-02
;; 
;;  Eigenvalue( 2) = (-9.9412E-02, 4.0079E-01)
;; 
;;  Eigenvector( 2)
;;  (-1.9330E-01, 2.5463E-01)
;;  ( 2.5186E-01,-5.2240E-01)
;;  ( 9.7182E-02,-3.0838E-01)
;;  ( 6.7595E-01, 0.0000E+00)
;; 
;;  Eigenvalue( 3) = (-9.9412E-02,-4.0079E-01)
;; 
;;  Eigenvector( 3)
;;  (-1.9330E-01,-2.5463E-01)
;;  ( 2.5186E-01, 5.2240E-01)
;;  ( 9.7182E-02, 3.0838E-01)
;;  ( 6.7595E-01,-0.0000E+00)
;; 
;;  Eigenvalue( 4) = -1.0066E-01
;; 
;;  Eigenvector( 4)
;;   1.2533E-01
;;   3.3202E-01
;;   5.9384E-01
;;   7.2209E-01
;; 
(defun print-dgeev-results (e-val e-vec)
  (format t "~2%DGEEV Example Program Results~%")
  (let ((n (length e-val)))
    (dotimes (k n)
      (format t "Eigenvalue(~D) = ~A~%" k (aref e-val k))
      (format t "~%Eigenvector(~D)~%" k)
      (dotimes (row n)
	(format t "~A~%" (aref e-vec row k)))
      (terpri))))

(defun check-eigen-val-vec (n e-val e-vec true-val true-vec &key (tol 1d-14))
  (flet ((relerr-ok (est true)
	   (let* ((re (/ (abs (- est true))
			 (abs true)))
		  (ok (<= re tol)))
	     ;; Return NIL if it's ok.  Otherwise return a list to
	     ;; indicate what failed.
	     (unless ok
	       (format t "est  = ~S~%true = ~S~%  rel  = ~S~%"
		       est true re)
	       (list est true re)))))
    (or (relerr-ok (aref e-val n) true-val)
	(dotimes (k n t)
	  (let ((res (relerr-ok (aref e-vec k n) (aref true-vec k))))
	    (when res
	      (return res)))))))
	   
;; DGEEV example based on the example from
;; http://www.nag.co.uk/lapack-ex/node87.html
(defun test-dgeev ()
  ;; The matrix is
  ;;
  ;;  0.35  0.45 -0.14 -0.17
  ;;  0.09  0.07 -0.54  0.35
  ;; -0.44 -0.33 -0.03  0.17
  ;;  0.25 -0.32 -0.13  0.11
  ;;
  ;; Recall that Fortran arrays are column-major order!
  (let* ((n 4)
	 (a-mat (make-array (* n n) :element-type 'double-float
				    :initial-contents '(0.35d0 0.09d0 -0.44d0 0.25d0
							0.45d0 0.07d0 -0.33d0 -0.32d0
							-0.14d0 -0.54d0 -0.03d0 -0.13d0
							-0.17d0 0.35d0 0.17d0 0.11d0)))
	 (wr (make-array n :element-type 'double-float))
	 (wi (make-array n :element-type 'double-float))
	 (vl (make-array 0 :element-type 'double-float))
	 (vr (make-array (* n n) :element-type 'double-float))
	 (lwork 660)
	 (work (make-array lwork :element-type 'double-float)))
    (multiple-value-bind (z-jobvl z-jobvr z-n z-a z-lda z-wr z-wi z-vl z-ldvl z-vr
			  z-ldvr z-work z-lwork info)
	(dgeev "N" "V" n a-mat n wr wi vl n vr n work lwork 0)
      (declare (ignore z-jobvl z-jobvr z-n z-a z-lda z-wr z-wi z-vl z-ldvl z-vr
		       z-ldvr z-work z-lwork))
      (let ((e-val (make-eigval wr wi))
	    (e-vec (make-eigvec n vr wi)))
	;; Display solution
	(cond ((zerop info)
	       (print-dgeev-results e-val
				    e-vec))
	      (t
	       (format t "Failure in DGEEV.  INFO = ~D~%" info)))
	;; Display workspace info
	(format t "Optimum workspace required = ~D~%" (truncate (aref work 0)))
	(format t "Workspace provided = ~D~%" lwork)

	(values e-val e-vec)))))

(rt:deftest dgeev.1
    (multiple-value-bind (e-val e-vec)
	(test-dgeev)
      (list (check-eigen-val-vec 0 e-val e-vec
				 0.799482122586210d0
				 #(-0.6550887675124076d0
				   -0.5236294609021240d0
				   0.5362184613722345d0
				   -0.0956067782012298d0))
	    (check-eigen-val-vec 1 e-val e-vec
				 #c(-0.0994124532950747d0 0.4007924719897546d0)
				 #(#c(-0.193301548264222d0 0.254631571927584d0)
				   #c(0.251856531726740d0 -0.522404734711629d0)
				   #c(0.097182458443282d0 -0.308383755897228d0)
				   #c(0.675954054254748 0d0)))
	    (check-eigen-val-vec 2 e-val e-vec
				 #c(-0.0994124532950747d0 -0.4007924719897546d0)
				 #(#c(-0.193301548264222d0 -0.254631571927584d0)
				   #c(0.251856531726740d0 0.522404734711629d0)
				   #c(0.097182458443282d0 0.308383755897228d0)
				   #c(0.675954054254748 0d0)))
	    (check-eigen-val-vec 3 e-val e-vec
				 -0.100657215996059d0
				 #(0.125332697230903d0
				   0.332022215571751d0
				   0.593837759557331d0
				   0.722087029862455d0
				   -0.6550887675124076d0))))
  (t t t t))

;; Expected results http://www.nag.co.uk/lapack-ex/examples/results/dgeevx-ex.r
;;
;; DGEEVX Example Program Results
;; 
;;  Eigenvalue( 1) =  7.9948E-01
;; 
;;  Reciprocal condition number =  9.9E-01
;;  Error bound                 =  1.3E-16
;; 
;;  Eigenvector( 1)
;;  -6.5509E-01
;;  -5.2363E-01
;;   5.3622E-01
;;  -9.5607E-02
;; 
;;  Reciprocal condition number =  8.2E-01
;;  Error bound                 =  1.6E-16
;; 
;;  Eigenvalue( 2) = (-9.9412E-02, 4.0079E-01)
;; 
;;  Reciprocal condition number =  7.0E-01
;;  Error bound                 =  1.8E-16
;; 
;;  Eigenvector( 2)
;;  (-1.9330E-01, 2.5463E-01)
;;  ( 2.5186E-01,-5.2240E-01)
;;  ( 9.7182E-02,-3.0838E-01)
;;  ( 6.7595E-01, 0.0000E+00)
;; 
;;  Reciprocal condition number =  4.0E-01
;;  Error bound                 =  3.3E-16
;; 
;;  Eigenvalue( 3) = (-9.9412E-02,-4.0079E-01)
;; 
;;  Reciprocal condition number =  7.0E-01
;;  Error bound                 =  1.8E-16
;; 
;;  Eigenvector( 3)
;;  (-1.9330E-01,-2.5463E-01)
;;  ( 2.5186E-01, 5.2240E-01)
;;  ( 9.7182E-02, 3.0838E-01)
;;  ( 6.7595E-01,-0.0000E+00)
;; 
;;  Reciprocal condition number =  4.0E-01
;;  Error bound                 =  3.3E-16
;; 
;;  Eigenvalue( 4) = -1.0066E-01
;; 
;;  Reciprocal condition number =  5.7E-01
;;  Error bound                 =  2.3E-16
;; 
;;  Eigenvector( 4)
;;   1.2533E-01
;;   3.3202E-01
;;   5.9384E-01
;;   7.2209E-01
;; 
;;  Reciprocal condition number =  3.1E-01
;;  Error bound                 =  4.2E-16
;; 
(defun print-dgeevx-results (tol e-val e-vec rconde rcondv)
  (format t "~2%DGEEVX Example Program Results~%")
  (let ((n (length e-val)))
    (dotimes (k n)
      (format t "Eigenvalue(~D) = ~A~%" k (aref e-val k))
      (let ((rcnd (aref rconde k)))
	(format t "Reciprocal condition number = ~A~%" rcnd)
	(if (plusp rcnd)
	    (format t "Error bound = ~A~%" (/ tol rcnd))
	    (format t "Error bound is infinite~%")))
      
      (format t "~%Eigenvector(~D)~%" k)
      (dotimes (row n)
	(format t "~A~%" (aref e-vec row k)))
      (let ((rcnd (aref rcondv k)))
	(format t "Reciprocal condition number = ~A~%" rcnd)
	(if (plusp rcnd)
	    (format t "Error bound = ~A~%" (/ tol rcnd))
	    (format t "Error bound is infinity~%")))
      (terpri))))

(defun test-dgeevx ()
  (let* ((n 4)
	 (a-mat (make-array (* n n) :element-type 'double-float
			    :initial-contents '(0.35d0 0.09d0 -0.44d0 0.25d0
						0.45d0 0.07d0 -0.33d0 -0.32d0
						-0.14d0 -0.54d0 -0.03d0 -0.13d0
						-0.17d0 0.35d0 0.17d0 0.11d0)))
	 (wr (make-array n :element-type 'double-float))
	 (wi (make-array n :element-type 'double-float))
	 (vl (make-array (* n n) :element-type 'double-float))
	 (vr (make-array (* n n) :element-type 'double-float))
	 (scale (make-array n :element-type 'double-float))
	 (rconde (make-array n :element-type 'double-float))
	 (rcondv (make-array n :element-type 'double-float))
	 (lwork 660)
	 (work (make-array lwork :element-type 'double-float))
	 (iwork (make-array (- (* n 2) 2) :element-type 'f2cl-lib::integer4)))
    (multiple-value-bind (z-balanc z-jobvl z-jobvr z-sense z-n z-a z-lda z-wr z-wi z-vl z-ldvl z-vr
				   z-ldvr ilo ihi z-scale abnrm z-rconde z-rcondv z-work z-lwork z-iwork
				   info)
	(dgeevx "Balance" "Vectors (left)" "Vectors (right)"
		"Both reciprocal condition numbers"
		n a-mat n wr wi vl n vr n 0 0 scale 0d0 rconde rcondv
		work lwork iwork 0)
      (declare (ignore z-balanc z-jobvl z-jobvr z-sense z-n z-a z-lda z-wr z-wi z-vl z-ldvl z-vr
				   z-ldvr z-scale z-rconde z-rcondv z-work z-lwork z-iwork))
      ;; Display solution
      (cond ((zerop info)
	     (let* ((eps (dlamch "Eps"))
		    (tol (* eps abnrm)))
	       (print-dgeevx-results tol
				     (make-eigval wr wi)
				     (make-eigvec n vr wi)
				     rconde rcondv)))
	    (t
	     (format t "Failure in DGEEV.  INFO = ~D~%" info)))
      ;; Display workspace info
      (format t "Optimum workspace required = ~D~%" (truncate (aref work 0)))
      (format t "Workspace provided = ~D~%" lwork))))  

;; Expected results (from http://www.nag.co.uk/lapack-ex/examples/results/dgesv-ex.r)
;; Solution
;;         1.0000    -1.0000     3.0000    -5.0000
;; 
;;  Details of factorization
;;              1          2          3          4
;;  1      5.2500    -2.9500    -0.9500    -3.8000
;;  2      0.3429     3.8914     2.3757     0.4129
;;  3      0.3010    -0.4631    -1.5139     0.2948
;;  4     -0.2114    -0.3299     0.0047     0.1314
;; 
;;  Pivot indices
;;              2          2          3          4
;; 
(defun print-dgesv-results (n a b ipiv)
  (format t "~2%DGESV Example Program Results~%")
  (format t "Solution~%")
  (dotimes (k n)
    (format t "~21,14e " (aref b k)))
  (format t "~&Details of factorization~%")
  (dotimes (r n)
    (dotimes (c n)
      (format t "~21,14e" (aref a (+ r (* c n)))))
    (terpri))
  (format t "Pivot indices~%")
  (dotimes (k n)
    (format t " ~d" (aref ipiv k)))
  (terpri))

(defun test-dgesv ()
  ;;
  ;; Matrix A:
  ;;  1.80   2.88   2.05  -0.89
  ;;  5.25  -2.95  -0.95  -3.80
  ;;  1.58  -2.69  -2.90  -1.04
  ;; -1.11  -0.66  -0.59   0.80  
  ;;
  ;; RHS:
  ;; 9.52  24.35   0.77  -6.22
  (let* ((n 4)
	 (a-mat (make-array (* n n) :element-type 'double-float
			    :initial-contents '(1.80d0 5.25d0 1.58d0 -1.11d0
						2.88d0 -2.95d0 -2.69d0 -0.66d0
						2.05d0 -0.95d0 -2.90d0 -0.59d0
						-0.89d0 -3.80d0 -1.04d0 0.8d0)))
	 (b (make-array n :element-type 'double-float
			:initial-contents '(9.52d0  24.35d0   0.77d0  -6.22d0)))
	 (ipiv (make-array n :element-type 'f2cl-lib:integer4)))
    (multiple-value-bind (z-n z-nrhs z-a z-lda z-ipiv z-b z-ldb info)
	(dgesv n 1 a-mat n ipiv b n 0)
      (declare (ignore z-n z-nrhs z-a z-lda z-ipiv z-b z-ldb))
      ;; Display solution
      (cond ((zerop info)
	     (print-dgesv-results n a-mat b ipiv))
	    (t
	     (format t "The (~D, ~D) element of the factor U is zero~%" info info))))))

;; Expected results (from )
;;
;; It seems, however, that the result from that page are wrong.  At
;; least they seem wrong when I run the actual test program.  The main
;; difference is that the singular vectors have the signs of some
;; entries wrong.
;;
;; The result below is what the test program actually produces.

;; DGESDD Example Program Results
;; 
;;  Singular values
;;      9.9966  3.6831  1.3569  0.5000
;;  Left singular vectors
;;           1       2       3       4
;;  1  -0.1921  0.8030 -0.0041  0.5642
;;  2   0.8794  0.3926  0.0752 -0.2587
;;  3  -0.2140  0.2980 -0.7827 -0.5027
;;  4   0.3795 -0.3351 -0.6178  0.6017
;; 
;;  Right singular vectors by row (first m rows of V**T)
;;           1       2       3       4       5       6
;;  1  -0.2774 -0.2020 -0.2918  0.0938  0.4213 -0.7816
;;  2   0.6003  0.0301 -0.3348  0.3699 -0.5266 -0.3353
;;  3   0.1277 -0.2805 -0.6453 -0.6781 -0.0413  0.1645
;;  4  -0.1323 -0.7034 -0.1906  0.5399  0.0575  0.3957
;; 
;;  Error estimate for the singular values
;;         1.1E-15
;; 
;;  Error estimates for the left singular vectors
;;         1.8E-16    4.8E-16    1.3E-15    1.3E-15
;; 
;;  Error estimates for the right singular vectors
;;         1.8E-16    4.8E-16    1.3E-15    2.2E-15
;; 
(defun print-dgesdd-results (m n s u a)
  (format t "~2%DGESDD Example Program Results~%")
  (format t "Singular values~%")
  (dotimes (k m)
    (format t "~20,14e" (aref s k)))
  (format t "~2%Left singular vectors~%")
  (dotimes (r m)
    (dotimes (c m)
      (format t "~16,7e" (aref u (+ r (* c m)))))
    (terpri))
  (format t "~%Right singular vectors (first m rows of V**T)~%")
  (dotimes (r m)
    (dotimes (c n)
      (format t "~16,7e" (aref a (+ r (* c m)))))
    (terpri))
  ;; Compute error estimates for the singular vectors
  (let ((serrbd (* (aref s 0) (dlamch "Eps")))
	(rcondu (make-array m :element-type 'double-float))
	(rcondv (make-array m :element-type 'double-float))
	(uerrbd (make-array m :element-type 'double-float))
	(verrbd (make-array m :element-type 'double-float)))
    (ddisna "Left" m n s rcondu 0)
    (ddisna "Right" m n s rcondv 0)
    (dotimes (k m)
      (setf (aref uerrbd k) (/ serrbd (aref rcondu k)))
      (setf (aref verrbd k) (/ serrbd (aref rcondv k))))
    (format t "Error estimate for the singular values~%")
    (format t "~20,15g~%" serrbd)
    (format t "~%~%Error estimates for the left singular values~%")
    (format t "~{~15,4e~^ ~}~%" (coerce uerrbd 'list))
    (format t "~%~%Error estimates for the right singular values~%")
    (format t "~{~15,4e~^ ~}~%" (coerce verrbd 'list))))

(defun test-dgesdd ()
  ;;
  ;; Matrix A:
  ;;  2.27   0.28  -0.48   1.07  -2.35   0.62
  ;; -1.54  -1.67  -3.09   1.22   2.93  -7.39
  ;;  1.15   0.94   0.99   0.79  -1.45   1.03
  ;; -1.94  -0.78  -0.21   0.63   2.30  -2.57
  (let* ((m 4)				; rows
	 (n 6)				; cols
	 (a-mat (make-array (* m n) :element-type 'double-float
			    :initial-contents '(2.27d0 -1.54d0 1.15d0 -1.94d0
						0.28d0 -1.67d0 0.94d0 -0.78d0
						-0.48d0 -3.09d0 0.99d0 -0.21d0
						1.07d0 1.22d0 0.79d0 0.63d0
						-2.35d0 2.93d0 -1.45d0 2.30d0
						0.62d0 -7.39d0 1.03d0 -2.57d0)))
	 (s (make-array (min m n) :element-type 'double-float))
	 (u (make-array (* m (min m n)):element-type 'double-float))
	 (vt (make-array (* n n) :element-type 'double-float))
	 (lwork 1000)
	 (work (make-array lwork :element-type 'double-float))
	 (iwork (make-array (* 8 (min m n)) :element-type 'f2cl-lib:integer4)))
    (multiple-value-bind (z-jobz z-m z-n z-a z-lda z-s z-u z-ldu z-vt z-ldvt z-work z-lwork z-iwork info)
	(dgesdd "Overwrite A by transpose(V)" m n a-mat m s u m vt n work lwork iwork 0)
      (declare (ignore z-jobz z-m z-n z-a z-lda z-s z-u z-ldu z-vt z-ldvt z-work z-lwork z-iwork ))
      ;; Display solution
      (cond ((zerop info)
	     (print-dgesdd-results m n s u a-mat))
	    (t
	     (format t "Failure in DGESDD.  Info = ~D~%" info)))
      (format t "Optimum workspace required = ~D~%" (truncate (aref work 0)))
      (format t "Workspace provided = ~D~%" lwork))))

;; Expected results (from http://www.nag.co.uk/lapack-ex/examples/results/dgesvd-ex.r)
;; DGESVD Example Program Results
;; 
;;  Singular values
;;      9.9966  3.6831  1.3569  0.5000
;;  Left singular vectors (first n columns of U)
;;           1       2       3       4
;;  1  -0.2774 -0.6003 -0.1277  0.1323
;;  2  -0.2020 -0.0301  0.2805  0.7034
;;  3  -0.2918  0.3348  0.6453  0.1906
;;  4   0.0938 -0.3699  0.6781 -0.5399
;;  5   0.4213  0.5266  0.0413 -0.0575
;;  6  -0.7816  0.3353 -0.1645 -0.3957
;; 
;;  Right singular vectors by row (V**T)
;;           1       2       3       4
;;  1  -0.1921  0.8794 -0.2140  0.3795
;;  2  -0.8030 -0.3926 -0.2980  0.3351
;;  3   0.0041 -0.0752  0.7827  0.6178
;;  4  -0.5642  0.2587  0.5027 -0.6017
;; 
;;  Error estimate for the singular values
;;         1.1E-15
;; 
;;  Error estimates for the left singular vectors
;;         1.8E-16    4.8E-16    1.3E-15    2.2E-15
;; 
;;  Error estimates for the right singular vectors
;;         1.8E-16    4.8E-16    1.3E-15    1.3E-15
;; 
(defun print-dgesvd-results (m n s vt a)
  (format t "~2%DGESVD Example Program Results~%")
  (format t "Singular values~%")
  (dotimes (k n)
    (format t "~20,14e" (aref s k)))
  (format t "~2%Left singular vectors~%")
  (dotimes (r m)
    (dotimes (c n)
      (format t "~16,7e" (aref a (+ r (* c m)))))
    (terpri))
  (format t "~%Right singular vectors (first m rows of V**T)~%")
  (dotimes (r n)
    (dotimes (c n)
      (format t "~16,7e" (aref vt (+ r (* c n)))))
    (terpri))
  ;; Compute error estimates for the singular vectors
  (let ((serrbd (* (aref s 0) (dlamch "Eps")))
	(rcondu (make-array n :element-type 'double-float))
	(rcondv (make-array n :element-type 'double-float))
	(uerrbd (make-array n :element-type 'double-float))
	(verrbd (make-array n :element-type 'double-float)))
    (ddisna "Left" m n s rcondu 0)
    (ddisna "Right" m n s rcondv 0)
    (dotimes (k n)
      (setf (aref uerrbd k) (/ serrbd (aref rcondu k)))
      (setf (aref verrbd k) (/ serrbd (aref rcondv k))))
    (format t "Error estimate for the singular values~%")
    (format t "~20,15g~%" serrbd)
    (format t "~%~%Error estimates for the left singular values~%")
    (format t "~{~15,4e~^ ~}~%" (coerce uerrbd 'list))
    (format t "~%~%Error estimates for the right singular values~%")
    (format t "~{~15,4e~^ ~}~%" (coerce verrbd 'list))))

(defun test-dgesvd ()
  ;;
  ;; Matrix A:
  ;;     2.27  -1.54   1.15  -1.94
  ;;     0.28  -1.67   0.94  -0.78
  ;;    -0.48  -3.09   0.99  -0.21
  ;;     1.07   1.22   0.79   0.63
  ;;    -2.35   2.93  -1.45   2.30
  ;;     0.62  -7.39   1.03  -2.57
  (let* ((m 6)				; rows
	 (n 4)				; cols
	 (a-mat (make-array (* m n) :element-type 'double-float
			    :initial-contents '(2.27d0 0.28d0 -0.48d0 1.07d0 -2.35d0 0.62d0
						-1.54d0 -1.67d0 -3.09d0 1.22d0 2.93d0 -7.39d0
						1.15d0 0.94d0 0.99d0 0.79d0 -1.45d0 1.03d0
						-1.94d0 -0.78d0 -0.21d0 0.63d0 2.30d0 -2.57d0)))
	 (s (make-array (min m n) :element-type 'double-float))
	 (u (make-array (* m (min m n)):element-type 'double-float))
	 (vt (make-array (* n n) :element-type 'double-float))
	 (lwork (+ 10 (* 4 8)
		   (* 64 (+ 10 8))))
	 (work (make-array lwork :element-type 'double-float)))
    (multiple-value-bind (z-jobz z-jobvt z-m z-n z-a z-lda z-s z-u z-ldu z-vt z-ldvt z-work z-lwork info)
	(dgesvd "Overwrite A by U" "Singular vectors (V)"
		m n a-mat m s u m vt n work lwork 0)
      (declare (ignore z-jobz z-jobvt z-m z-n z-a z-lda z-s z-u z-ldu z-vt z-ldvt z-work z-lwork))
      ;; Display solution
      (cond ((zerop info)
	     (print-dgesvd-results m n s vt a-mat))
	    (t
	     (format t "Failure in DGESDD.  Info = ~D~%" info)))
      (format t "Optimum workspace required = ~D~%" (truncate (aref work 0)))
      (format t "Workspace provided = ~D~%" lwork))))

(defun make-complex-eigvec (n vr)
  (make-array (list n n)
	      :displaced-to vr
	      :element-type (array-element-type vr)))

(defun transpose (mat)
  (let* ((nrows (array-dimension mat 0))
	 (ncols (array-dimension mat 1))
	 (trans (make-array (list ncols nrows)
			   :element-type (array-element-type mat))))
    (dotimes (r nrows)
      (dotimes (c ncols)
	(setf (aref trans c r) (aref mat r c))))
    trans))

(defun print-zgeev-results (e-val e-vec)
  (format t "~2%ZGEEV Example Program Results~%")
  (let ((n (length e-val)))
    (dotimes (k n)
      (format t "Eigenvalue(~D) = ~A~%" k (aref e-val k))
      (format t "~%Eigenvector(~D)~%" k)
      (dotimes (row n)
	(format t "~A~%" (aref e-vec row k)))
      (terpri))))

(defun test-zgeev ()
  ;; The matrix is
  ;;
  ;; #c(-3.97, -5.04)  #c(-4.11,  3.70)  #c(-0.34,  1.01)  #c( 1.29, -0.86)
  ;; #c( 0.34, -1.50)  #c( 1.52, -0.43)  #c( 1.88, -5.38)  #c( 3.36,  0.65)
  ;; #c( 3.31, -3.85)  #c( 2.50,  3.45)  #c( 0.88, -1.08)  #c( 0.64, -1.48)
  ;; #c(-1.10,  0.82)  #c( 1.81, -1.59)  #c( 3.25,  1.33)  #c( 1.57, -3.44)  
  ;;
  ;; Recall that Fortran arrays are column-major order!
  (let* ((n 4)
	 (a-mat (make-array (* n n)
			    :element-type '(complex double-float)
			    :initial-contents '(#c(-3.97d0 -5.04d0)
						#c( 0.34d0 -1.50d0)
						#c( 3.31d0 -3.85d0)
						#c(-1.10d0  0.82d0)
						#c(-4.11d0  3.70d0)
						#c( 1.52d0 -0.43d0)
						#c( 2.50d0  3.45d0)
						#c( 1.81d0 -1.59d0)
						#c(-0.34d0  1.01d0)
						#c( 1.88d0 -5.38d0)
						#c( 0.88d0 -1.08d0)
						#c( 3.25d0  1.33d0)
						#c( 1.29d0 -0.86d0)
						#c( 3.36d0  0.65d0)
						#c( 0.64d0 -1.48d0)
						#c( 1.57d0 -3.44d0))))
	 (lwork 660)
	 (w (make-array n :element-type '(complex double-float)))
	 (rw (make-array lwork :element-type 'double-float))
	 (vl (make-array 0 :element-type '(complex double-float)))
	 (vr (make-array (* n n) :element-type '(complex double-float)))
	 (work (make-array lwork :element-type '(complex double-float))))
    (multiple-value-bind (z-jobvl z-jobvr z-n z-a z-lda z-w z-vl z-ldvl z-vr
					z-ldvr z-work z-lwork z-rwork info)
	(zgeev "N" "V" n a-mat n w vl n vr n work lwork rw 0)
      (declare (ignore z-jobvl z-jobvr z-n z-a z-lda z-w z-vl z-ldvl z-vr
		       z-ldvr z-work z-lwork z-rwork))
      ;; Display solution
      (cond ((zerop info)
	     (print-zgeev-results w
				  (transpose (make-complex-eigvec n vr))))
	    (t
	     (format t "Failure in DGEEV.  INFO = ~D~%" info)))
      ;; Display workspace info
      (format t "Optimum workspace required = ~D~%" (truncate (realpart (aref work 0))))
      (format t "Workspace provided = ~D~%" lwork)
      (values w (transpose (make-complex-eigvec n vr))))))

(rt:deftest zgeev.1
    (multiple-value-bind (val vec)
	(test-zgeev)
      (list (check-eigen-val-vec 0 val vec
				 #c(-6.00042534294924d0 -6.99984337157039d0)
				 #(#c(0.845722126909561d0 +0.000000000000000d0)
				   #c(-0.017722752537655d0 +0.303607402208809d0)
				   #c(0.087521244669520d0 +0.311452829815249d0)
				   #c(-0.056147220899372d0 -0.290597986123314d0)))
	    (check-eigen-val-vec 1 val vec
				 #c(-5.00003345759697d0 +2.00602716231652d0)
				 #(#c(  -0.386549111838405d0 +0.173234631742952d0)
				   #c(-0.353928813160122d0 +0.452880967035810d0)
				   #c(0.612370054896136d0 +0.000000000000000d0)
				   #c(-0.085928358258907d0 -0.328362611341537d0)))
	    (check-eigen-val-vec 2 val vec
				 #c(7.998194516208244d0 -0.996365091392899d0)
				 #(#c(-0.172974121492221d0 +0.266896080554183d0)
				   #c(0.692423212284643d0 +0.000000000000000d0)
				   #c(0.332402268453410d0 +0.495979987128303d0)
				   #c(0.250388389801717d0 -0.014655003103538d0)))
	    (check-eigen-val-vec 3 val vec
				 #c(3.00226428433797d0 -3.99981869935322d0)
				 #(#c(-0.035613578794424d0 -0.178218041420316d0)
				   #c(0.126374262079091d0 +0.266632374107522d0)
				   #c(0.012932561333282d0 -0.296568203073541d0)
				   #c(0.889824013759239d0 +0.000000000000000d0)))))
  (t t t t))

(defun print-zheev-results (e-val e-vec)
  (format t "~2%ZHEEV Example Program Results~2%")
  (let ((n (length e-val)))
    (format t "Eigenvalues~%")
    (dotimes (k n)
      (format t " ~A" (aref e-val k)))
    (format t "~2%Eigenvectors~%")
    (dotimes (k n)
      (format t "~%Eigenvector(~D)~%" k)
      (dotimes (row n)
	(format t "~A~%" (aref e-vec row k)))
      (terpri))))

(defun test-zheev ()
  ;; The matrix is
  ;; 1       #c(2 -1) #c(3 -1) #c(4 -1)
  ;; #c(2 1)     2    #c(3 -2) #c(4 -2)
  ;; #c(3 1) #c(3 2)     3     #c(4 -3)
  ;; #c(4 1) #c(4 2)  #c(4 3)     4
  ;; Recall that Fortran arrays are column-major order!
  (let* ((n 4)
	 (a-mat (make-array (* n n)
			    :element-type '(complex double-float)
			    :initial-contents '(#c(1d0 0)
						#c(2d0 1d0)
						#c(3d0 1d0)
						#c(4d0 1d0)
						
						#c(2d0 -1d0)
						#c(2d0 0)
						#c(3d0 2d0)
						#c(4d0 2d0)

						#c(3d0 -1d0)
						#c(3d0 -2d0)
						#c(3d0 0)
						#c(4d0 3d0)

						#c(4d0 -1d0)
						#c(4d0 -2d0)
						#c(4d0 -3d0)
						#c(4d0 0))))
	 (lwork 132)
	 (w (make-array n :element-type 'double-float))
	 (work (make-array lwork :element-type '(complex double-float)))
	 (rwork (make-array (- (* 3 n) 2) :element-type 'double-float)))
    (multiple-value-bind (z-jobz z-uplo z-n z-a z-lda z-w z-work z-lwork
			  z-rwork info)
	(zheev "V" "U" n a-mat n w work lwork rwork 0)
      (declare (ignore z-jobz z-uplo z-n z-a z-lda z-w z-work z-lwork
		       z-rwork))
      (cond ((zerop info)
	     (print-zheev-results w
				  (transpose (make-complex-eigvec n a-mat))))
	    (t
	     (format t "Failure in ZHEEV.  INFO = ~D~%" info)))
      (format t "Optimum workspace required = ~D~%" (truncate (realpart (aref work 0))))
      (format t "Workspace provided = ~D~%" lwork)
      (values w (transpose (make-complex-eigvec n a-mat))))))

(rt:deftest zheev.1
  (multiple-value-bind (val vec)
      (test-zheev)
    (let ((cval (make-array 4 :element-type '(complex double-float))))
      (map-into cval #'(lambda (x)
			 (complex x 0d0))
		val)
      (list (check-eigen-val-vec 0 cval vec
				 #c(-4.244305402383179d0 0)
				 #(#C(0.38390086708134163d0 0.29405658581351474d0)
				   #C(0.4512081881756226d0 -0.11018120938621835d0)
				   #C(-0.026341826788003057d0 -0.48569831719444095d0)
				   #C(-0.5602011901552105d0 -0.0d0)))
	    (check-eigen-val-vec 1 cval vec
				 #c(-0.6885811461174348d0 0d0)
				 #(#C(-0.3975174811710425d0 0.5105011667992776d0)
				   #C(0.39532449113598805d0 -0.323828267501095d0)
				   #C(-0.43094682808194457d0 0.0382543464880426d0)
				   #C(0.36475148673610636d0 0.0d0)))
	    (check-eigen-val-vec 2 cval vec
				 #c(1.1412485214653287d0 0d0)
				 #(#C(0.37459176938191946d0 0.24136603676776178d0)
				   #C(-0.28951694726673083d0 0.4917390332315046d0)
				   #C(-0.37679299781495784d0 -0.3993997903501625d0)
				   #C(0.4174960446688179d0 0.0d0)))
	    (check-eigen-val-vec 3 cval vec
				 #c(13.791638027035287d0 0d0)
				 #(#C(0.3309009213351469d0 -0.19861339914465895d0)
				   #C(0.3727831818692677d0 -0.24193063397200412d0)
				   #C(0.4869962523459657d0 -0.19381997741123178d0)
				   #C(0.6154900747846208d0 0.0d0))))))
  (t t t t))
	    
(defun do-all-lapack-tests ()
  (test-dgeev)
  (test-dgeevx)
  (test-dgesv)
  (test-dgesdd)
  (test-dgesvd)
  (test-zgeev)
  (test-zheev))

;;; $Log$
;;; Revision 1.11  2006/12/01 04:29:29  rtoy
;;; Create packages for BLAS and LAPACK routines.
;;;
;;; blas.system:
;;; o Converted files are in the BLAS package.
;;; o Add blas-package defsystem to load the package definition.
;;;
;;; lapack.system:
;;; o Converted files are in the LAPACK package.
;;; o Add lapack-package defsystem to load the package definition.
;;;
;;; lapack/lapack-tests.lisp:
;;; o Tests are in the LAPACK package
;;;
;;; Revision 1.10  2006/11/28 15:49:01  rtoy
;;; Print out short title for each test.
;;;
;;; Revision 1.9  2006/11/27 22:22:23  rtoy
;;; Add expected results.
;;;
;;; Revision 1.8  2006/11/27 20:04:33  rtoy
;;; Add DGESVD and update files and tests appropriately.
;;;
;;; Revision 1.7  2006/11/27 15:23:29  rtoy
;;; Add function to run all the tests.
;;;
;;; Revision 1.6  2006/11/26 23:26:47  rtoy
;;; packages/lapack.system:
;;; o Add DGESDD and dependencies
;;; o Add DDISNA to compute condition number of singular vectors
;;;
;;; packages/lapack/.cvsignore:
;;; o Ignore new generated Lisp files.
;;;
;;; packages/lapack/lapack-tests.lisp:
;;; o Add test for DGESDD
;;;
;;; Revision 1.5  2006/11/26 14:26:42  rtoy
;;; Add expected results for DGESV.
;;;
;;; Revision 1.4  2006/11/26 14:24:46  rtoy
;;; packages/lapack.system:
;;; o DGESV and dependencies
;;;
;;; packages/.cvsignore:
;;; o Ignore generated dgesv.lisp and dependencies
;;;
;;; packages/lapack/lapack-tests.lisp:
;;; o Test routine for DGESV
;;;
;;; Revision 1.3  2006/11/26 05:31:16  rtoy
;;; packages/lapack.system:
;;; o Add DGEEVX and dependencies
;;;
;;; packages/lapack/lapack-tests.lisp:
;;; o Add test for DGEEVX
;;; o Add comments
;;;
;;; packages/lapack/dgeevx.f:
;;; packages/lapack/dlacon.f:
;;; packages/lapack/dlaexc.f:
;;; packages/lapack/dlaqtr.f:
;;; packages/lapack/dlasy2.f:
;;; packages/lapack/dtrexc.f:
;;; packages/lapack/dtrsna.f:
;;; o New files for DGEEVX and dependencies.
;;;
;;; Revision 1.2  2006/11/26 04:53:22  rtoy
;;; Add comments
;;;
;;; Revision 1.1  2006/11/26 04:51:05  rtoy
;;; packages/lapack.system:
;;; o Add defsystem for LAPACK tests
;;;
;;; packages/lapack/lapack-tests.lisp:
;;; o Add simple tests for LAPACK.  (Currently only DGEEV).
;;;
