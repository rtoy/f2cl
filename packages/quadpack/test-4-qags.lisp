(in-package #:quadpack-tests)

;; Test 4 (same integral as 1)
;; Compute integral e^(alpha*x)*log(1/x) from 0 to 1.  The analytical
;; solution is e^((1+alpha)^(-2)).
;;
;; DQNG, DQAGS, DQAG (key = 1)
;;
;; Failures:
;; DQNG: alpha <= 1.0 (ier = 1)
;; DQAG: alpha = -0.9 (ier = 3)
(defun tst4-qags (&key alpha (limit 200) (relerr 1d-8))
  (labels ((soln (alpha)
	     (declare (double-float alpha))
	     (expt (+ 1d0 alpha) -2))
	   (quad-qags (alpha)
	     (declare (double-float alpha))
	     (let* ((lenw (* 4 limit))
		    (work (make-array lenw :element-type 'double-float))
		    (iwork (make-array limit :element-type 'f2cl-lib:integer4)))
	       (multiple-value-bind (junk a b epsabs epsrel result abserr neval ier z-limit z-lenw last)
		   (quadpack:dqags #'(lambda (x)
				       (declare (type (double-float 0d0) x))
				       (* (expt x alpha)
					  (log (/ x))))
				   0d0 1d0 0d0 relerr 
				   0d0 0d0 0 0
				   limit lenw 0 iwork work)
		 (declare (ignorable junk a b epsabs epsrel result abserr neval ier z-limit z-lenw last))
		 (values result abserr neval ier
			 (soln alpha) (abs-error result (soln alpha)))))))
    (quad-qags alpha)))

(rt:deftest test4-qags.-0.9
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha -0.9d0)
      (if (and (= ier 0) (<= abserr 1.118d-9))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.-0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha -0.8d0)
      (if (and (= ier 0) (< abserr 9.750d-11))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.-0.7
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha -0.7d0)
      (if (and (= ier 0) (<= abserr 1.759d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.-0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha -0.6d0)
      (if (and (= ier 0) (< abserr 2.310d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.-0.5
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha -0.5d0)
      (if (and (= ier 0) (< abserr 7.1055d-14))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.-0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha -0.4d0)
      (if (and (= ier 0) (< abserr 2.088d-14))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.-0.3
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha -0.3d0)
      (if (and (= ier 0) (<= abserr 4.885d-15))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.-0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha -0.2d0)
      (if (and (= ier 0) (< abserr 3.775d-15))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.-0.1
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha -0.1d0)
      (if (and (= ier 0) (< abserr 3.997d-15))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.0.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 0.0d0)
      (if (and (= ier 0) (< abserr 1.111d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 0.2d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 0.4d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 0.6d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 0.8d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.1.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 1.0d0)
      (if (and (= ier 0) (< abserr 8.327d-17))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.1.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 1.2d0)
      (if (and (= ier 0) (< abserr 2.776d-17))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.1.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 1.4d0)
      (if (and (= ier 0) (< abserr 2.776d-17))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.1.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 1.6d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.1.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 1.8d0)
      (if (and (= ier 0) (< abserr 1.401d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.2.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 2.0d0)
      (if (and (= ier 0) (< abserr 4.383d-14))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.2.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 2.2d0)
      (if (and (= ier 0) (< abserr 5.099d-12))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.2.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 2.4d0)
      (if (and (= ier 0) (< abserr 3.676d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qags.2.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qags :alpha 2.6d0)
      (if (and (= ier 0) (< abserr 3.069d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

