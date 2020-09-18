(defpackage :fftpack5
  (:use :common-lisp))

(in-package :fftpack5)

(defvar *wsave-cache*
  (make-hash-table)
  "Cache for different wsave tables.  The key is the FFT size; the
  value is a the wsave table needed by the FFT routines.")

(defun convert-rfft (x)
  "Convert the output of FFTPACK RFFT1F (forward real FFT) into a more
  user-friendly format with complex values"
 (declare (type
  (simple-array single-float (*)) x)) (let* ((n (length x))
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

(defun get-wsave-entry (n)
  "Get the wsave array and it's length that is needed for computing
  the (forward and inverse) FFTs.  The value is cached, so if it's the
  cache, return it.  Otherwise compute a new value and save it in the
  cache."
  (let ((entry (gethash n *wsave-cache*)))
    (if entry
	entry
	(let* ((lensav (+ n 4 (floor (log n 2))))
	       (wsave (make-array lensav :element-type 'single-float)))
	  (multiple-value-bind (ignore-0 ignore-1 ignore-2 ier)
	      (rfft1i n wsave lensav 0)
	    (declare (ignore ignore-0 ignore-1 ignore-2))
	    (unless (zerop ier)
	      (error "lensav is not big enough"))
	    (setf (gethash n *wsave-cache*) wsave)
	    wsave)))))

(defun rfft (x)
  (declare (type (simple-array single-float (*)) x))
  ;; Initialize the wave table if needed
  (let* ((n (length x))
	 (work (make-array n :element-type 'single-float))
	 (wsave (get-wsave-entry n))
	 (lensav (length wsave)))
    (let ((ier
	    (nth-value 8
		       (rfft1f n 1 x n wsave lensav work n 0))))
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
      (convert-rfft x))))

(defun convert-inverse-rfft (x n)
  (declare (type (simple-array (complex single-float) (*)) x))
  (let ((res (make-array n :element-type 'single-float)))
    (setf (aref res 0) (realpart (aref x 0)))
    (loop for j from 1 below (length x)
	  for k from 1 by 2
	  do
	     (let ((z (aref x j)))
	       (setf (aref res k) (* 2 (realpart z)))
	       (setf (aref res (1+ k)) (* 2 (imagpart z)))))
    (when (evenp n)
      (setf (aref res (1- n)) (realpart (aref x (1- (length x))))))
    res))

(defun inverse-rfft (x n)
  (declare (type (simple-array (complex single-float) (*)) x))
  ;; Initialize the wave table if needed
  (let* ((inv (convert-inverse-rfft x n))
	 (work (make-array n :element-type 'single-float))
	 (wsave (get-wsave-entry n))
	 (lensav (length wsave)))
    (let* ((ier
	     (progn
	       (format t "converted ~A~%" inv)
	       (nth-value 8
			  (rfft1b n 1 inv n wsave lensav work n 0)))))
      (unless (zerop ier)
	(error "rfft1b failed with code ~A" ier))
      inv)))
