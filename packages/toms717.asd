;;; -*- Mode: lisp -*-
;;;

;; Need f2cl to be loaded before we can even read this file.
(load-system "f2cl")

(in-package :f2cl-asdf)

(defsystem "toms717"
  :description "F2CL conversion of TOMS 717: Max- and quasi-likelihood estimation in non-linear regression"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "TOMS717" :array-slicing t :array-type :array :keep-lisp-file t :relaxed-array-decls t)
  :pathname "toms/717/"
  :components
  ((:cl-source-file "package")
   (:module "717"
            :pathname ""
	    :depends-on ("package")
	    :components
	    (;;(:file "dglfg")
	     (:file "df7hes"
		    :depends-on ("dv7cpy"))
	     (:file "dg2lrd"
		    :depends-on ("dl7sqr" "dv7cpy" "dv2axy" "dl7srt" "dv7scp"
					  "dl7ivm" "dl7itv" "ds7lvm" "dd7tpr"
					  ))
	     (:file "dg7lit"
		    :depends-on ("dmdc" "dl7svx" "dl7svn" "dl7srt"
					"df7hes" "ds7lup" "dl7vml" "dl7tvm"
					"dd7tpr" "ds7lvm" "da7sst" "drldst"
					"dg7qts" "dl7mst" "stopx" "dv7cpy"
					"ditsum" "dl7sqr" "dv2axy" "dv2nrm"
					"dv7scp" "dparck"))
	     (:file "dglf"
		    :depends-on ("divset" "drglg" "dv7cpy" "dv7scp"))
	     (:file "dglg"
		    :depends-on ("divset" "drglg"))
	     (:file "dl7nvr")
	     (:file "dl7tsq")
	     (:file "dn3rdp")

	     ;;(:file "dglfgb")
	     ;;(:file "dgletc")
	     ;; dgletc split into one function per file
	     (:file "da7sst")
	     (:file "dd7tpr")
	     (:file "dd7up5")
	     (:file "dg7qts"
		    :depends-on ("dmdc" "dv2nrm" "dl7srt" "dl7itv"))
	     (:file "ditsum")
	     (:file "divset"
		    :depends-on ("dmdc" "dv7dfl"))
	     (:file "dl7itv")
	     (:file "dl7ivm"
		    :depends-on ("dd7tpr"))
	     (:file "dl7mst"
		    :depends-on ("dmdc" "dl7svn" "dv2nrm" "dv7cpy"))
	     (:file "dl7sqr")
	     (:file "dl7srt")
	     (:file "dl7svn"
		    :depends-on ("dv2axy" "dv2nrm"))
	     (:file "dl7svx"
		    :depends-on ("dv2axy" "dv2nrm"))
	     (:file "dl7tvm")
	     (:file "dl7vml")
	     (:file "do7prd")
	     (:file "dparck"
		    :depends-on ("dv7dfl" "dmdc" "dv7cpy" "divset"))
	     (:file "dq7adr")
	     (:file "drldst")
	     (:file "ds7lup"
		    :depends-on ("dv2nrm" "ds7lvm"))
	     (:file "ds7lvm"
		    :depends-on ("dd7tpr"))
	     (:file "dv2axy")
	     (:file "dv2nrm"
		    :depends-on ("dmdc"))
	     (:file "dv7cpy")
	     (:file "dv7dfl"
		    :depends-on ("dmdc"))
	     (:file "dv7scl")
	     (:file "dv7scp")
	     (:file "dvsum")
	     (:file "stopx")

	     (:file "dmdc")

	     ;;(:file "mecdf")
	     ;; mecdf split into 1 function/file
	     (:file "alnorm")
	     (:file "phi")
	     (:file "mecdf"
		    :depends-on ("alnorm" "phi"))

	     ;;(:file "mnpsubs")
	     (:file "drglg"
		    :depends-on ("dv7scl" "dq7adr" "dl7vml" "dl7svx" "do7prd"
					  "dvsum" "dd7up5" "dl7nvr" "dl7tsq"
					  "ditsum" "dn3rdp"))
	     ;; dglgf split into 1 function per file.
	     (:file "dglgb"
		    :depends-on ("drglgb"))
	     (:file "dglfb"
		    :depends-on ("drglgb"))
	     (:file "drglgb"
		    :depends-on ("dg7itb"))
	     (:file "dd7mlp")
	     (:file "df7dhb")
	     (:file "dg7itb"
		    :depends-on ("i7shft" "dq7rsh" "dv7vmp" "dv7ipr" "ds7ipr"
					  "dl7msb" "i7copy" "ds7dmp" "dg7qsb"
					  "i7pnvr" "df7dhb"))
	     (:file "dg7qsb"
		    :depends-on ("dv7ipr" "dv7vmp" "ds7bqn"))
	     (:file "dh2rfa")
	     (:file "dh2rfg")
	     (:file "dl7msb"
		    :depends-on ("dv7ipr" "dv7vmp" "ds7bqn" "dq7rsh"
					  "dd7mlp"))
	     (:file "dq7rsh"
		    :depends-on ("dh2rfg" "dh2rfa"))
	     (:file "ds7bqn"
		    :depends-on ("i7shft" "dv7shf" "dv7ipr"))
	     (:file "ds7dmp")
	     (:file "ds7ipr")
	     (:file "dv7ipr")
	     (:file "dv7shf")
	     (:file "dv7vmp")
	     (:file "i7copy")
	     (:file "i7pnvr")
	     (:file "i7shft")
	     )))
  :in-order-to ((test-op (test-op "toms717/tests"))))

(defsystem "toms717/tests"
  :class f2cl-system
  :default-component-class :fortran-file
  :f2cl-options (:package "TOMS717" :array-slicing t :array-type :array :keep-lisp-file t :relaxed-array-decls t)
  :pathname "toms/"
  :depends-on ("toms717")
  :components
  ((:module "tests"
	    :pathname "717"
	    :components
	    (;; This test appears to work and matches madsen.sgi,
	     ;; more or less.  Run (madsen).
	     (:file "madsen"
		    :depends-on ("madrj" "rhols"))
	     (:file "madrj")
	     (:file "rhols")

	     ;; This test appears to work and matches madsenb.sgi,
	     ;; more or less.  Run (madsenb)
	     (:file "madsenb"
		    :depends-on ("madrj" "rhols"))

	     ;; The following tests don't work with f2cl for the following reasons:
	     ;;
	     ;; o dpmain uses an equivalence of 2 arrays (of the
	     ;;   same type).  This isn't supported by f2cl.
	     ;; o mlmnp uses an implied-do loop in a read statement,
	     ;;   which isn't supported.
	     ;; o mlmnpb uses an implied-do loop in a read statement,
	     ;;   which isn't supported.
	     ;;(:file "dpmain")

	     ;; dpmain.f split into 1 file per function.
					#||
	     (:file "pmain")
	     (:file "brj")
	     (:file "brj1")
	     (:file "chkder")
	     (:file "rpoil0")
	     (:file "devian")
	     (:file "dzero")
	     (:file "invcn"
	     :compiler-options (:declare-common t))
	     (:file "cnerr")
	     (:file "louchk")
	     (:file "pnorms")
	     (:file "poisx0")
	     (:file "poix0")
	     (:file "pregrh")
	     (:file "pregrv")
	     (:file "prgrh1")
	     (:file "rhpoil"
	     :compiler-options (:declare-common t))
	     (:file "lpn")
	     ||#

	     ;;(:file "mlmnp")
	     ;;(:file "mlmnpb")
	     )))
  :perform (test-op (o c)
             (format t "~&*** MADSEN test~%")
             (symbol-call :toms717 :madsen)
             (format t "~4&*** MADSENB test~%")
             (symbol-call :toms717 :madsenb)))
