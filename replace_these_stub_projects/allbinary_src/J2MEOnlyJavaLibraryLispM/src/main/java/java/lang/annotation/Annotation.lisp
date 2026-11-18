;;;; Generated Code Do Not Modify
;;;; package java.lang.annotation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Annotation (JObject)
  ())

(defun Annotation.jnew_0 ()
  (let ((this (make-instance 'Annotation)))
    this))

    
(unless (fboundp 'jm_annotationType_0) (defgeneric jm_annotationType_0 (this)))
(defmethod jm_annotationType_0 ((this Annotation))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "annotationType")))



