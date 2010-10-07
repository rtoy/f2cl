;; -*- Mode: lisp; Package: F2CL -*-

(in-package :f2cl)

;; This doesn't work yet.
(defun make-cmucl-ffi (name info)
  (let ((arg-info (mapcar #'(lambda (arg ret)
			      (if ret
				  `(,arg :in-out)
				  `(,arg)))
			  (f2cl-finfo-arg-types info)
			  (f2cl-finfo-return-values info))))
    (format t "~A -> ~A~%" name arg-info)))

(defun make-ffi (&key (style :cmucl))
  (let ((maker-fun (ecase style
		     (:cmucl
		      #'make-cmucl-ffi))))
    (maphash maker-fun *f2cl-function-info*)))


(defun make-dependencies ()
  "Very simple routine to make a list of dependencies suitable for use
 with mk-defsys and other defsystems with similar features.  This is
 primarily useful to get the dependencies correct after a system has
 been built.

 For best effect, only run this on one system at a time.  If not, then
 all the routines will be merged together into one giant list.  Also,
 each routine is assumed to be in its own file with the same name as
 the routine, in lower case."
  (when (plusp (hash-table-count *f2cl-function-info*))
    (let ((file-list nil))
      (maphash #'(lambda (k v)
		   (let ((file (string-downcase (symbol-name k)))
			 (deps (mapcar #'(lambda (name)
					   (string-downcase (symbol-name name)))
				       (f2cl-finfo-calls v))))
		     ;; Since d1mach and i1mach are builtin to f2cl, remove those dependencies.
		     (setf deps (remove-if #'(lambda (x)
					       (member x '("d1mach" "i1mach") :test #'string=))
					   deps))
		     (setf deps (sort deps #'string-lessp))
		     ;; Skip over the d1mach and i1mach routines too.
		     (unless (member file '("d1mach" "i1mach") :test #'string=)
		       (push (if deps
				 `(:file ,file :depends-on ,deps)
				 `(:file ,file))
			     file-list))))
	       *f2cl-function-info*)
      (setf file-list (sort file-list #'string-lessp :key #'second))
      `(,@file-list))))