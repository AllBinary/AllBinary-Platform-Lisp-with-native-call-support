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

(defclass GyroSensorFactory (JObject)
  ())

(defvar GyroSensorFactory.jcell_allBinaryGyroSensor :jnone)
(defun GyroSensorFactory.jstatic_allBinaryGyroSensor ()
  (when (eq GyroSensorFactory.jcell_allBinaryGyroSensor :jnone) (setf GyroSensorFactory.jcell_allBinaryGyroSensor (AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR)))
  GyroSensorFactory.jcell_allBinaryGyroSensor)
(defun (setf GyroSensorFactory.jstatic_allBinaryGyroSensor) (value) (setf GyroSensorFactory.jcell_allBinaryGyroSensor value))

(defun GyroSensorFactory.jnew_0 ()
  (let ((this (make-instance 'GyroSensorFactory)))
    this))

    
(defun GyroSensorFactory.jm_init_0 ()
  (let ()
    (block jreturn
        (setf (GyroSensorFactory.jstatic_allBinaryGyroSensor) (NoGyroSensor.jnew_0)))))

    
(defun GyroSensorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GyroSensorFactory.jstatic_allBinaryGyroSensor)))))



