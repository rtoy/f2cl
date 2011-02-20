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
(defun tst4-qng (&key alpha (limit 200) (relerr 1d-8))
  (labels ((soln (alpha)
	     (declare (double-float alpha))
	     (expt (+ 1d0 alpha) -2))
	   (quad-qng (alpha)
	     (declare (double-float alpha))
	     (multiple-value-bind (junk a b epsabs epsrel result abserr neval ier)
		 (quadpack:dqng #'(lambda (x)
				    (declare (type (double-float 0d0) x))
				    (* (expt x alpha)
				       (log (/ x))))
				0d0 1d0 0d0 relerr 
				0d0 0d0 0 0)
	       (declare (ignorable junk a b epsabs epsrel result abserr neval ier))
	       (values result abserr neval ier
		       (soln alpha) (abs-error result (soln alpha))))))
    (quad-qng alpha)))

(rt:deftest test4-qng.-0.9
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha -0.9d0)
      (if (and (= ier 1) (<= abserr 67.78d0))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.-0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha -0.8d0)
      (if (and (= ier 1) (< abserr 8.080d0))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.-0.7
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha -0.7d0)
      (if (and (= ier 1) (<= abserr 1.477d0))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.-0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha -0.6d0)
      (if (and (= ier 1) (< abserr 0.3113d0))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.-0.5
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha -0.5d0)
      (if (and (= ier 1) (< abserr .06943d0))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.-0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha -0.4d0)
      (if (and (= ier 1) (< 0.01570d0))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.-0.3
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha -0.3d0)
      (if (and (= ier 1) (<= abserr .003479d0))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.-0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha -0.2d0)
      (if (and (= ier 1) (< abserr 7.273d-4))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.-0.1
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha -0.1d0)
      (if (and (= ier 1) (< abserr 1.333d-4))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.0.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 0.0d0)
      (if (and (= ier 1) (< abserr 1.677d-5))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 0.2d0)
      (if (and (= ier 1) (< abserr 2.071d-6))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 0.4d0)
      (if (and (= ier 1) (< abserr 4.103d-7))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 0.6d0)
      (if (and (= ier 1) (< abserr 4.374d-8))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 0.8d0)
      (if (and (= ier 1) (< abserr 3.042d-9))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.1.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 1.0d0)
      (if (and (= ier 1) (< abserr 7.809d-11))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.1.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 1.2d0)
      (if (and (= ier 0) (< abserr 1.027d-11))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.1.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 1.4d0)
      (if (and (= ier 0) (< abserr 5.152d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.1.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 1.6d0)
      (if (and (= ier 0) (< abserr 3.592d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.1.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 1.8d0)
      (if (and (= ier 0) (< abserr 1.94d-12))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.2.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 2.0d0)
      (if (and (= ier 0) (< abserr 1.262d-12))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.2.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 2.2d0)
      (if (and (= ier 0) (< abserr 9.808d-14))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.2.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 2.4d0)
      (if (and (= ier 0) (< abserr 2.162d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest test4-qng.2.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(tst4-qng :alpha 2.6d0)
      (if (and (= ier 0) (< abserr 9.544d-14))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

