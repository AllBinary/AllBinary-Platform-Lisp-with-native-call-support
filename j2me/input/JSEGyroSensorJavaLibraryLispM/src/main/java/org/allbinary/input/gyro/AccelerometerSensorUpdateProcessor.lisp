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

(defclass AccelerometerSensorUpdateProcessor (Processor)
  ())

(defun AccelerometerSensorUpdateProcessor.jnew_0 ()
  (let ((this (make-instance 'AccelerometerSensorUpdateProcessor)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this AccelerometerSensorUpdateProcessor))
  (declare (ignorable this))
  (let (_sensorFeatureFactory)
  (declare (ignorable _sensorFeatureFactory))
    (block jreturn
        (setf _sensorFeatureFactory (SensorFeatureFactory.jm_getInstance_0))
        (if (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value _sensorFeatureFactory 'f_ORIENTATION_SENSORS))
            (progn
            (jm_setCompleteMotionGestureInputEventListener_1 (AccelerometerSensorFactory.jm_getInstance_0) (SingleKeyPressGameKeyFromMotionGestureEventListener.jnew_0)))
            (if (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value _sensorFeatureFactory 'f_SIMULATED_ORIENTATION_SENSORS))
            (progn
            (jm_setCompleteMotionGestureInputEventListener_1 (AccelerometerSensorFactory.jm_getInstance_0) (SingleKeyPressGameKeyFromMotionGestureEventListener.jnew_0)))
            (if (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value _sensorFeatureFactory 'f_NO_ORIENTATION))
            (progn
            (jm_setCompleteMotionGestureInputEventListener_1 (AccelerometerSensorFactory.jm_getInstance_0) (NoCompleteMotionGestureInputEventListener.jm_getInstance_0)))
            (progn
            (error (JR.newException "Exception" "Sensor Feature Not Set")))))))))



