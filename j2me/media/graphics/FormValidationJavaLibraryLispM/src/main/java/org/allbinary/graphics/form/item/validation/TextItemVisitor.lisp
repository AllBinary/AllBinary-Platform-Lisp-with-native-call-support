;;;;
;;;; AllBinary Open License Version 1
;;;; Copyright (c) 2011 AllBinary
;;;; 
;;;; By agreeing to this license you and any business entity you represent are
;;;; legally bound to the AllBinary Open License Version 1 legal agreement.
;;;; 
;;;; You may obtain the AllBinary Open License Version 1 legal agreement from
;;;; AllBinary or the root directory of AllBinary's AllBinary Platform repository.
;;;; 
;;;; Created By: Travis Berthelot
;;;;  
;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form.item.validation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TextItemVisitor (Visitor)
  ())

    
(defun TextItemVisitor.jnew_0 ()
  (let ((this (make-instance 'TextItemVisitor)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this TextItemVisitor) _anyType)
  (declare (ignorable this _anyType))
  (let (_value)
  (declare (ignorable _value))
    (block jreturn
        (setf _value _anyType)
        (if (< (length _value) 2)
            (progn
            (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE)))
            (progn
            (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE)))))))



