;;; Compiled by f2cl version:
;;; ("f2cl1.l,v 5ee73ed2713b 2011/11/23 21:02:33 toy $"
;;;  "f2cl2.l,v 96616d88fb7e 2008/02/22 22:19:34 rtoy $"
;;;  "f2cl3.l,v 96616d88fb7e 2008/02/22 22:19:34 rtoy $"
;;;  "f2cl4.l,v 96616d88fb7e 2008/02/22 22:19:34 rtoy $"
;;;  "f2cl5.l,v 11bea7dae5a0 2011/06/11 17:53:39 toy $"
;;;  "f2cl6.l,v 1d5cbacbb977 2008/08/24 00:56:27 rtoy $"
;;;  "macros.l,v 5ee73ed2713b 2011/11/23 21:02:33 toy $")

;;; Using Lisp CMU Common Lisp 20c release-20c (20C Unicode)
;;; 
;;; Options: ((:prune-labels nil) (:auto-save t) (:relaxed-array-decls t)
;;;           (:coerce-assigns :as-needed) (:array-type ':array)
;;;           (:array-slicing t) (:declare-common nil)
;;;           (:float-format single-float))

(in-package :common-lisp-user)


(defun tst ()
  (prog ((j 0) (k 0))
    (declare (type (f2cl-lib:integer4) k j))
    (f2cl-lib:fdo (k 1 (f2cl-lib:int-add k 1))
                  ((> k 5) nil)
      (tagbody
        (f2cl-lib:fformat t :list-directed "k = " k)
        (cond
          ((< k 3)
           (go continue)))
        (f2cl-lib:fdo (j 1 (f2cl-lib:int-add j 1))
                      ((> j 10) nil)
          (tagbody
            (cond
              ((< j 3)
               (go continue)))
            (cond
              ((= j 4)
               (go f2cl-lib::exit)))
            (f2cl-lib:fformat t :list-directed "j = " j)
           label100001))
        (cond
          ((= k 4)
           (go f2cl-lib::exit)))
       label100000))
   end_label
    (return nil)))

(in-package #-gcl #:cl-user #+gcl "CL-USER")
#+#.(cl:if (cl:find-package '#:f2cl) '(and) '(or))
(eval-when (:load-toplevel :compile-toplevel :execute)
  (setf (gethash 'fortran-to-lisp::tst fortran-to-lisp::*f2cl-function-info*)
          (fortran-to-lisp::make-f2cl-finfo :arg-types 'nil
                                            :return-values 'nil
                                            :calls 'nil)))

