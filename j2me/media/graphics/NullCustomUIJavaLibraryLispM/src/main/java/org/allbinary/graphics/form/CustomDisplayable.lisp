;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CustomDisplayable (JObject)
  ())

(defun CustomDisplayable.jnew_0 ()
  (let ((this (make-instance 'CustomDisplayable)))
    this))

    
(unless (fboundp 'jm_setTitle_1) (defgeneric jm_setTitle_1 (this p1)))
(defmethod jm_setTitle_1 ((this CustomDisplayable) _title)
  (declare (ignorable this _title))
  (let ()
    (block jreturn nil)))



