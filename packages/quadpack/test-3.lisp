(in-package #:quadpack-rt)

;; Test 3
;; integral 0 pi cos(2^alpha*sin(x)) = pi * J0(2^alpha)
;;
;; alpha = 0(1)10
;;
;; QAG with Key 1, 3, 6
;;
(defun test-qag-3 (&key alpha key (limit 200) (relerr 1d-8))
  (labels ((soln (alpha)
	     (declare (double-float alpha))
	     (if (fboundp 'besj0)
		 (float (* pi (besj0 (expt 2 alpha)))
			1d0)
		 0d0))
			 
	   (quad (alpha key)
	     (declare (double-float alpha))
	     (let* ((lenw (* 4 limit))
		    (work (make-array lenw :element-type 'double-float))
		    (iwork (make-array limit :element-type 'f2cl-lib:integer4)))
	       (multiple-value-bind (junk a b epsabs epsrel key result abserr neval ier z-lim z-lenw last)
		   (quadpack:dqag #'(lambda (x)
				      (declare (type (double-float 0d0) x))
				      (cos (* (expt 2 alpha) (sin x))))
				  0d0 (float pi 1d0) 0d0 relerr key
				  0d0 0d0 0 0 limit lenw 0 iwork work)
		 (declare (ignorable junk a b epsabs epsrel key result abserr neval ier z-lim z-lenw last))
		 (values result abserr neval ier
			 (soln alpha) (abs-error result (soln alpha)))))))
    (quad alpha key)))

(rt:deftest qag3.key1.-0.9
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha -0.9d0)
      (if (and (= ier 1) (< abserr 7.788d-4))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.-0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha -0.8d0)
      (if (and (= ier 0) (< abserr 8.625d-8))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.-0.7
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha -0.7d0)
      (if (and (= ier 0) (< abserr 1.873d-8))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.-0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha -0.6d0)
      (if (and (= ier 0) (< abserr 5.732d-9))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.-0.5
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha -0.5d0)
      (if (and (= ier 0) (< abserr 2.210d-9))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.-0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha -0.4d0)
      (if (and (= ier 0) (< abserr 6.780d-10))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.-0.3
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha -0.3d0)
      (if (and (= ier 0) (< abserr 3.087d-10))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.-0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha -0.2d0)
      (if (and (= ier 0) (< abserr 1.325d-10))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.-0.1
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha -0.1d0)
      (if (and (= ier 0) (< abserr 5.852d-11))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.0.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 0.0d0)
      (if (and (= ier 0) (< abserr 1.262d-11))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 0.2d0)
      (if (and (= ier 0) (< abserr 6.410d-12))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 0.4d0)
      (if (and (= ier 0) (< abserr 1.923d-12))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 0.6d0)
      (if (and (= ier 0) (< abserr 8.179d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 0.8d0)
      (if (and (= ier 0) (< abserr 1.855d-12))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.1.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 1.0d0)
      (if (and (= ier 0) (< abserr 1.394d-12))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.1.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 1.2d0)
      (if (and (= ier 0) (< abserr 6.841d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.1.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 1.4d0)
      (if (and (= ier 0) (< abserr 5.935d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.1.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 1.6d0)
      (if (and (= ier 0) (< abserr 3.501d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.1.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 1.8d0)
      (if (and (= ier 0) (< abserr 1.641d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.2.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 2.0d0)
      (if (and (= ier 0) (< abserr 2.381d-14))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.2.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 2.2d0)
      (if (and (= ier 0) (< abserr 5.509d-12))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.2.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 2.4d0)
      (if (and (= ier 0) (< abserr 2.462d-14))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key1.2.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 1 :alpha 2.6d0)
      (if (and (= ier 0) (< abserr 2.111d-14))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.-0.9
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha -0.9d0)
      (if (and (= ier 1) (< abserr 6.796d-4))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.-0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha -0.8d0)
      (if (and (= ier 0) (< abserr 5.713d-8))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.-0.7
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha -0.7d0)
      (if (and (= ier 0) (< abserr 1.231d-8))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.-0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha -0.6d0)
      (if (and (= ier 0) (< abserr 3.274d-9))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.-0.5
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha -0.5d0)
      (if (and (= ier 0) (< abserr 7.849d-10))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.-0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha -0.4d0)
      (if (and (= ier 0) (< abserr 2.918d-10))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.-0.3
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha -0.3d0)
      (if (and (= ier 0) (< abserr 1.153d-10))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.-0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha -0.2d0)
      (if (and (= ier 0) (< abserr 4.283d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.-0.1
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha -0.1d0)
      (if (and (= ier 0) (< abserr 1.633d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.0.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 0.0d0)
      (if (and (= ier 0) (< abserr 5.860d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 0.2d0)
      (if (and (= ier 0) (< abserr 5.888d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 0.4d0)
      (if (and (= ier 0) (< abserr 4.425d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 0.6d0)
      (if (and (= ier 0) (< abserr 6.206d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 0.8d0)
      (if (and (= ier 0) (< abserr 5.438d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.1.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 1.0d0)
      (if (and (= ier 0) (< abserr 4.736d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.1.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 1.2d0)
      (if (and (= ier 0) (< abserr 1.201d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.1.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 1.4d0)
      (if (and (= ier 0) (< abserr 2.403d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.1.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 1.6d0)
      (if (and (= ier 0) (< abserr 1.581d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.1.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 1.8d0)
      (if (and (= ier 0) (< abserr 8.039d-13))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.2.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 2.0d0)
      (if (and (= ier 0) (< abserr 8.129d-14))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.2.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 2.2d0)
      (if (and (= ier 0) (< abserr 3.996d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.2.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 2.4d0)
      (if (and (= ier 0) (< abserr 2.335d-13))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key3.2.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 3 :alpha 2.6d0)
      (if (and (= ier 0) (< abserr 2.077d-13))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.-0.9
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha -0.9d0)
      (if (and (= ier 1) (< abserr 6.190d-4))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.-0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha -0.8d0)
      (if (and (= ier 0) (< abserr 4.719d-8))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.-0.7
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha -0.7d0)
      (if (and (= ier 0) (< abserr 7.565d-9))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.-0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha -0.6d0)
      (if (and (= ier 0) (< abserr 1.709d-9))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.-0.5
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha -0.5d0)
      (if (and (= ier 0) (< abserr 4.856d-10))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.-0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha -0.4d0)
      (if (and (= ier 0) (< abserr 1.639d-10))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.-0.3
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha -0.3d0)
      (if (and (= ier 0) (< abserr 5.871d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.-0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha -0.2d0)
      (if (and (= ier 0) (< abserr 1.978d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.-0.1
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha -0.1d0)
      (if (and (= ier 0) (< abserr 1.251d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.0.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 0.0d0)
      (if (and (= ier 0) (< abserr 1.730d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 0.2d0)
      (if (and (= ier 0) (< abserr 9.198d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 0.4d0)
      (if (and (= ier 0) (< abserr 7.473d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 0.6d0)
      (if (and (= ier 0) (< abserr 1.131d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 0.8d0)
      (if (and (= ier 0) (< abserr 1.072d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.1.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 1.0d0)
      (if (and (= ier 0) (< abserr 1.028d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.1.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 1.2d0)
      (if (and (= ier 0) (< abserr 2.265d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.1.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 1.4d0)
      (if (and (= ier 0) (< abserr 5.853d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.1.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 1.6d0)
      (if (and (= ier 0) (< abserr 4.165d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.1.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 1.8d0)
      (if (and (= ier 0) (< abserr 2.282d-12))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.2.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 2.0d0)
      (if (and (= ier 0) (< abserr 2.156d-13))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.2.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 2.2d0)
      (if (and (= ier 0) (< abserr 1.272d-13))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.2.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 2.4d0)
      (if (and (= ier 0) (< abserr 9.795d-14))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag3.key5.2.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-01 :key 5 :alpha 2.6d0)
      (if (and (= ier 0) (< abserr 7.539d-14))
	  t (values result est-abserr neval ier soln abserr)))
  t)

