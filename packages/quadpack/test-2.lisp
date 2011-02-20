;;;
;;; Some simple tests of the Quadpack routines, taken from the Quadpack book.
;;;

(in-package #:quadpack-tests)

;; Test 2
;; Compute integral from 0 to 1 4^(-alpha)/((x - pi/4)^2 + 16^(-alpha))
;; Solution is atan((4-pi)*4^(alpha-1)) + atan(pi*4^(alpha-1)
;;
;; alpha = 0(1)20
;; QAG with key = 1, 3, 6
;;
;; Fails for key = 1: alpha >= 18 (ier = 2)
;; Fails for key = 3, 6: alpha >= 19 (ier = 2)
(defun test-02 (&key key alpha (limit 200) (relerr 1d-8))
  (labels ((soln (alpha)
	     (declare (double-float alpha))
	     (let ((z (expt 4d0 (- alpha 1d0))))
	       (declare (type double-float z))
	       (float (+ (atan (* (- 4d0 pi)
				  z))
			 (atan (* pi z)))
		      1d0)))
			 
	   (quad (alpha key)
	     (declare (double-float alpha))
	     (let* ((lenw (* 4 limit))
		    (work (make-array lenw :element-type 'double-float))
		    (iwork (make-array limit :element-type 'f2cl-lib:integer4)))
	       (multiple-value-bind (junk a b epsabs epsrel key result abserr neval ier z-lim z-lenw last)
		   (quadpack:dqag #'(lambda (x)
				      (declare (type (double-float 0d0) x))
				      (flet ((square (x)
					       (declare (double-float x))
					       (* x x)))
					(/ (expt 4d0 (- alpha))
					   (+ (square (- x (float (/ pi 4d0) 1d0)))
					      (expt 16d0 (- alpha))))))
				  0d0 1d0 0d0 relerr key
				  0d0 0d0 0 0 limit lenw 0 iwork work)
		 (declare (ignorable junk a b epsabs epsrel key result abserr neval ier z-lim z-lenw last))
		 (values result abserr neval ier
			 (soln alpha) (abs-error result (soln alpha)))))))
    (quad alpha key)))

(rt:deftest qag2.key1.-0.9
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha -0.9d0)
      (if (and (= ier 0) (<= abserr double-float-epsilon))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.-0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha -0.8d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.-0.7
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha -0.7d0)
      (if (and (= ier 0) (<= abserr double-float-epsilon))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.-0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha -0.6d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.-0.5
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha -0.5d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.-0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha -0.4d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.-0.3
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha -0.3d0)
      (if (and (= ier 0) (<= abserr double-float-epsilon))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.-0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha -0.2d0)
      (if (and (= ier 0) (< abserr 1.111d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.-0.1
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha -0.1d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.0.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 0.0d0)
      (if (and (= ier 0) (< abserr 1.111d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 0.2d0)
      (if (and (= ier 0) (< abserr 1.111d-15))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 0.4d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 0.6d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 0.8d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.1.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 1.0d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.1.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 1.2d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.1.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 1.4d0)
      (if (and (= ier 0) (< abserr 6.218d-15))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.1.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 1.6d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.1.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 1.8d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.2.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 2.0d0)
      (if (and (= ier 0) (< abserr 1.333d-15))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.2.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 2.2d0)
      (if (and (= ier 0) (< abserr 4.441d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.2.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 2.4d0)
      (if (and (= ier 0) (< abserr 1.151d-13))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key1.2.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 1 :alpha 2.6d0)
      (if (and (= ier 0) (< abserr 4.441d-16))
	  t
	  (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.-0.9
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha -0.9d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.-0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha -0.8d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.-0.7
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha -0.7d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.-0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha -0.6d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.-0.5
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha -0.5d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.-0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha -0.4d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.-0.3
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha -0.3d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.-0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha -0.2d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.-0.1
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha -0.1d0)
      (if (and (= ier 0) (< abserr 1.111d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.0.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 0.0d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 0.2d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 0.4d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 0.6d0)
      (if (and (= ier 0) (< abserr 4.441d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 0.8d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.1.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 1.0d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.1.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 1.2d0)
      (if (and (= ier 0) (< abserr 4.441d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.1.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 1.4d0)
      (if (and (= ier 0) (< abserr 4.441d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.1.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 1.6d0)
      (if (and (= ier 0) (< abserr 4.441d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.1.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 1.8d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.2.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 2.0d0)
      (if (and (= ier 0) (< abserr 3.553d-15))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.2.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 2.2d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.2.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 2.4d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key3.2.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 3 :alpha 2.6d0)
      (if (and (= ier 0) (< abserr 4.441d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.-0.9
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha -0.9d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.-0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha -0.8d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.-0.7
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha -0.7d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.-0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha -0.6d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.-0.5
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha -0.5d0)
      (if (and (= ier 0) (< abserr 5.552d-17))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.-0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha -0.4d0)
      (if (and (= ier 0) (< abserr 3.331d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.-0.3
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha -0.3d0)
      (if (and (= ier 0) (< abserr 1.111d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.-0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha -0.2d0)
      (if (and (= ier 0) (< abserr 1.111d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.-0.1
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha -0.1d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.0.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 0.0d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.0.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 0.2d0)
      (if (and (= ier 0) (< abserr 2.221d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.0.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 0.4d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.0.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 0.6d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.0.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 0.8d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.1.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 1.0d0)
      (if (and (= ier 0) (< abserr 4.441d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.1.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 1.2d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.1.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 1.4d0)
      (if (and (= ier 0) (< abserr 4.441d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.1.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 1.6d0)
      (if (and (= ier 0) (< abserr 2.479d-11))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.1.8
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 1.8d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.2.0
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 2.0d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.2.2
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 2.2d0)
      (if (and (= ier 0) (< abserr 4.441d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.2.4
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 2.4d0)
      (if (and (= ier 0) (< abserr 8.882d-16))
	  t (values result est-abserr neval ier soln abserr)))
  t)

(rt:deftest qag2.key5.2.6
    (multiple-value-bind (result est-abserr neval ier soln abserr)
	(test-02 :key 5 :alpha 2.6d0)
      (if (and (= ier 0) (< abserr double-float-epsilon))
	  t (values result est-abserr neval ier soln abserr)))
  t)


