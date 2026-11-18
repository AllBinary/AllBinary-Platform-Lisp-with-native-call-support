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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CancelTouchButtonInputFactory (JObject)
  ((f_cancelInputArray :initform nil)))

(defvar CancelTouchButtonInputFactory.jcell_instance :jnone)
(defun CancelTouchButtonInputFactory.jstatic_instance ()
  (when (eq CancelTouchButtonInputFactory.jcell_instance :jnone) (setf CancelTouchButtonInputFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  CancelTouchButtonInputFactory.jcell_instance)
(defun (setf CancelTouchButtonInputFactory.jstatic_instance) (value) (setf CancelTouchButtonInputFactory.jcell_instance value))

    
(defun CancelTouchButtonInputFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (CancelTouchButtonInputFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (CancelTouchButtonInputFactory.jstatic_instance) (CancelTouchButtonInputFactory.jnew_0))))
        (return-from jreturn (CancelTouchButtonInputFactory.jstatic_instance)))))

    
(defun CancelTouchButtonInputFactory.jnew_0 ()
  (let ((this (make-instance 'CancelTouchButtonInputFactory)))
    (setf (slot-value this 'f_cancelInputArray) (JR.newArray nil (slot-value (InputFactory.jm_getInstance_0) 'f_MAX)))
  (let (_basicTouchInputFactory _index)
  (declare (ignorable _basicTouchInputFactory _index))
    (block jreturn
        (setf _basicTouchInputFactory (BasicTouchInputFactory.jm_getInstance_0))
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_cancelInputArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf (aref (slot-value this 'f_cancelInputArray) _index) (slot-value _basicTouchInputFactory 'f_NONE)))
                (setf _index (JR.i32 (- _index 1))))))
        (setf (aref (slot-value this 'f_cancelInputArray) (jm_getSourceId_0 (slot-value _basicTouchInputFactory 'f_UP))) (slot-value _basicTouchInputFactory 'f_DOWN))
        (setf (aref (slot-value this 'f_cancelInputArray) (jm_getSourceId_0 (slot-value _basicTouchInputFactory 'f_DOWN))) (slot-value _basicTouchInputFactory 'f_UP))
        (setf (aref (slot-value this 'f_cancelInputArray) (jm_getSourceId_0 (slot-value _basicTouchInputFactory 'f_LEFT))) (slot-value _basicTouchInputFactory 'f_RIGHT))
        (setf (aref (slot-value this 'f_cancelInputArray) (jm_getSourceId_0 (slot-value _basicTouchInputFactory 'f_RIGHT))) (slot-value _basicTouchInputFactory 'f_LEFT))))
    this))

    
(unless (fboundp 'jm_getCancel_1) (defgeneric jm_getCancel_1 (this p1)))
(defmethod jm_getCancel_1 ((this CancelTouchButtonInputFactory) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_cancelInputArray) (jm_getSourceId_0 _touchButtonInput))))))



