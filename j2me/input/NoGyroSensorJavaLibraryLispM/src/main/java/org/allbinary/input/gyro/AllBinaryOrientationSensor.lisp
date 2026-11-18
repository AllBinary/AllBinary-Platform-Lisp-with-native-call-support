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
;;;; package org.allbinary.input.gyro

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryOrientationSensor (AllBinarySensor)
  ((f_listener :initform nil)))

(defvar AllBinaryOrientationSensor.jcell_NULL_ALLBINARY_ORIENTATION_SENSOR :jnone)
(defun AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR ()
  (when (eq AllBinaryOrientationSensor.jcell_NULL_ALLBINARY_ORIENTATION_SENSOR :jnone) (setf AllBinaryOrientationSensor.jcell_NULL_ALLBINARY_ORIENTATION_SENSOR (AllBinaryOrientationSensor.jnew_0)))
  AllBinaryOrientationSensor.jcell_NULL_ALLBINARY_ORIENTATION_SENSOR)
(defun (setf AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR) (value) (setf AllBinaryOrientationSensor.jcell_NULL_ALLBINARY_ORIENTATION_SENSOR value))

    
(unless (fboundp 'jm_setListener_1) (defgeneric jm_setListener_1 (this p1)))
(defmethod jm_setListener_1 ((this AllBinaryOrientationSensor) _completeMotionGestureInputEventListenerInterface)
  (declare (ignorable this _completeMotionGestureInputEventListenerInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_listener) _completeMotionGestureInputEventListenerInterface))))

    
(defun AllBinaryOrientationSensor.jnew_0 ()
  (let ((this (make-instance 'AllBinaryOrientationSensor)))
    (setf (slot-value this 'f_listener) (NoCompleteMotionGestureInputEventListener.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getOrientation_0) (defgeneric jm_getOrientation_0 (this)))
(defmethod jm_getOrientation_0 ((this AllBinaryOrientationSensor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))



