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
;;;; package org.allbinary.input.accelerometer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AccelerometerSensorFactory (JObject)
  ())

(defvar AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor :jnone)
(defun AccelerometerSensorFactory.jstatic_allBinaryAccelerometerSensor ()
  (when (eq AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor :jnone) (setf AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor (AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR)))
  AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor)
(defun (setf AccelerometerSensorFactory.jstatic_allBinaryAccelerometerSensor) (value) (setf AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor value))

(defun AccelerometerSensorFactory.jnew_0 ()
  (let ((this (make-instance 'AccelerometerSensorFactory)))
    this))

    
(defun AccelerometerSensorFactory.jm_init_0 ()
  (let (_features _sensorFeatureFactory)
  (declare (ignorable _features _sensorFeatureFactory))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (setf _sensorFeatureFactory (SensorFeatureFactory.jm_getInstance_0))
        (if (jm_isFeature_1 _features (slot-value _sensorFeatureFactory 'f_ORIENTATION_SENSORS))
            (progn
            (error (JR.newException "Exception" "No Orientation Sensors")))
            (if (jm_isFeature_1 _features (slot-value _sensorFeatureFactory 'f_SIMULATED_ORIENTATION_SENSORS))
            (progn
            (error (JR.newException "Exception" "No Simulation Sensors")))
            (if (jm_isFeature_1 _features (slot-value _sensorFeatureFactory 'f_NO_ORIENTATION))
            (progn
            (setf (AccelerometerSensorFactory.jstatic_allBinaryAccelerometerSensor) (NoAccelerometerSensor.jnew_0)))
            (progn
            (error (JR.newException "Exception" "Not Such SensorFeature")))))))))

    
(defun AccelerometerSensorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AccelerometerSensorFactory.jstatic_allBinaryAccelerometerSensor)))))



