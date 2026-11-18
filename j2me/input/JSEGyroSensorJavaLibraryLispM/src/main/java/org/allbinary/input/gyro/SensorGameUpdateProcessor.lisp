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

(defclass SensorGameUpdateProcessor (JObject)
  ((f_inputSensor :initform nil)))

(defun SensorGameUpdateProcessor.jnew_0 ()
  (let ((this (make-instance 'SensorGameUpdateProcessor)))
    
    this))

    
(unless (fboundp 'jm_setInputSensor_1) (defgeneric jm_setInputSensor_1 (this p1)))
(defmethod jm_setInputSensor_1 ((this SensorGameUpdateProcessor) _inputSensor)
  (declare (ignorable this _inputSensor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_inputSensor) _inputSensor))))

    
(unless (fboundp 'jm_getInputSensor_0) (defgeneric jm_getInputSensor_0 (this)))
(defmethod jm_getInputSensor_0 ((this SensorGameUpdateProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_inputSensor)))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this SensorGameUpdateProcessor) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_sendNotifications_1) (defgeneric jm_sendNotifications_1 (this p1)))
(defmethod jm_sendNotifications_1 ((this SensorGameUpdateProcessor) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isAnySensor_0) (defgeneric jm_isAnySensor_0 (this)))
(defmethod jm_isAnySensor_0 ((this SensorGameUpdateProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (eq (slot-value this 'f_inputSensor) (NoAllBinarySensor.jm_getInstance_0))
            (progn
            (return-from jreturn nil))
            (progn
            (return-from jreturn t))))))

    
(unless (fboundp 'jm_setNoSensors_0) (defgeneric jm_setNoSensors_0 (this)))
(defmethod jm_setNoSensors_0 ((this SensorGameUpdateProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setCompleteMotionGestureInputEventListener_1 (GyroSensorFactory.jm_getInstance_0) (NoCompleteMotionGestureInputEventListener.jm_getInstance_0))
        (jm_setCompleteMotionGestureInputEventListener_1 (AccelerometerSensorFactory.jm_getInstance_0) (NoCompleteMotionGestureInputEventListener.jm_getInstance_0))
        (jm_setInputSensor_1 this (NoAllBinarySensor.jm_getInstance_0)))))



