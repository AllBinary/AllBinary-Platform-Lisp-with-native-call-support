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

(defclass AllCommandsVisitor (Visitor)
  ())

    
(defun AllCommandsVisitor.jnew_0 ()
  (let ((this (make-instance 'AllCommandsVisitor)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this AllCommandsVisitor) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE)))))



