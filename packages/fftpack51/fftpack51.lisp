(defpackage :fftpack51
  (:use :common-lisp))

(in-package :fftpack51)
(defvar *wsave-cache*
  (make-hash-table) "Hash table containing cached *wsave* tables used
  by the FFT routines.  The key is the order of the FFT.")

(defun rfft (x)
  (declare (type (simple-array single-float (*)) x))
  ;; Initialize the wave table if needed
  (let* ((n (length x))
	 (lensav (+ n (floor (log n 2)) 4))
	 (work (make-array n :element-type 'single-float)))
    (unless (gethash n *wsave-cache*)
      (let* ((wsave (make-array lensav :element-type 'single-float)))
	(multiple-value-bind (ignore-0 ignore-1 ignore-2 ier)
	    (rfft1i n wsave lensav 0)
	  (declare (ignore ignore-0 ignore-1 ignore-2))
	  (unless (zerop ier)
	    (error "lensav is not big enough"))
	  (setf (gethash n *wsave-cache*) wsave))))
    (let ((ier
	    (nth-value 8
		       (rfft1f n 1 x n (gethash n *wsave-cache*) lensav work n 0))))
      (unless (zerop ier)
	(error "rfft1f failed with code ~A" ier))
      ;; If X is the transformed value, then the output from rfftf is:
      ;; 0: X(0) / N
      ;; 1: 2*realpart(X(1))/N
      ;; 2: 2*imagpart(X(1))/N
      ;; 3: 2*realpart(X(2))/N
      ;; 4: 2*realpart(X(2))/N
      ;; ...
      ;; N-1: X(N-1)/N
      ;; The last term exists only if N is even.
      x)))

(defun inverse-rfft (x)
  (declare (type (simple-array single-float (*)) x))
  ;; Initialize the wave table if needed
  (let* ((n (length x))
	(lensav (+ n (floor (log n 2)) 4))
	(work (make-array n :element-type 'single-float)))
    (unless (gethash n *wsave-cache*)
      (let* ((wsave (make-array lensav :element-type 'single-float)))
	(multiple-value-bind (ignore-0 ignore-1 ignore-2 ier)
	    (rfft1i n wsave lensav 0)
	  (declare (ignore ignore-0 ignore-1 ignore-2))
	  (unless (zerop ier)
	    (error "lensav is not big enough"))
	  (setf (gethash n *wsave-cache*) wsave))))
    (let ((ier
	    (nth-value 8
		       (rfft1b n 1 x n (gethash n *wsave-cache*) lensav work n 0))))
      (unless (zerop ier)
	(error "rfft1b failed with code ~A" ier))

      x)))

(defun convert-rfft-to-cfft (x)
  (declare (type (simple-array single-float (*)) x))
  (let* ((n (length x))
	 (nhalf (floor (/ n 2)))
	 (out (make-array n :element-type '(complex single-float))))
    (setf (aref out 0) (complex (* n (aref x 0)) 0.0))
    (loop for j from 1 to (1- nhalf)
	  do
	     (setf (aref out j) (complex (* n (aref x (1- (* 2 j))) 0.5)
					 (* n (aref x (* 2 j)) 0.5)))
	     (setf (aref out (- n j)) (conjugate (aref out j))))
    (when (evenp n)
      (setf (aref out nhalf)
	    (complex (* n (aref x (1- n))) 0.0)))
    out))

(defun convert-rfft (x)
  (declare (type (simple-array single-float (*)) x))
  (let* ((n (length x))
	 (nhalf (floor (/ n 2)))
	 (out (make-array (+ 1 nhalf) :element-type '(complex single-float))))
    (setf (aref out 0) (complex (aref x 0) 0.0))
    (loop for j from 1 to (if (evenp n) (1- nhalf) nhalf)
	  for k from 1 by 2
	  do
	     (setf (aref out j) (complex (* 0.5 (aref x k))
					 (* 0.5 (aref x (1+ k))))))
    (when (evenp n)
      (setf (aref out nhalf)
	    (complex (aref x (1- n)) 0.0)))
    out))