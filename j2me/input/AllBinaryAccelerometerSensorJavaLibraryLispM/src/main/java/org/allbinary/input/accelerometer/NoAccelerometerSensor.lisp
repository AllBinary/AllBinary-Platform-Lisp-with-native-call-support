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

(defclass NoAccelerometerSensor (AllBinaryOrientationSensor)
  ())

    
(defun NoAccelerometerSensor.jnew_0 ()
  (let ((this (make-instance 'NoAccelerometerSensor)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getOrientation_0) (defgeneric jm_getOrientation_0 (this)))
(defmethod jm_getOrientation_0 ((this NoAccelerometerSensor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (Orientation.jstatic_NONE)))))

    
(unless (fboundp 'jm_onSensorChange_0) (defgeneric jm_onSensorChange_0 (this)))
(defmethod jm_onSensorChange_0 ((this NoAccelerometerSensor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



