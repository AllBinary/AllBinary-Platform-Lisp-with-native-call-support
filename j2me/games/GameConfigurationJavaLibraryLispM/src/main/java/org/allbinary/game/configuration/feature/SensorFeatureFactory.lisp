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
;;;; package org.allbinary.game.configuration.feature

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SensorFeatureFactory (JObject)
  ((f_NO_ORIENTATION :initform nil)
   (f_ORIENTATION_SENSORS :initform nil)
   (f_SIMULATED_ORIENTATION_SENSORS :initform nil)
   (f_YAW :initform nil)
   (f_YAW_MINUS_RIGHT_PLUS_LEFT :initform nil)
   (f_YAW_MINUS_LEFT_PLUS_RIGHT :initform nil)
   (f_PITCH :initform nil)
   (f_ROLL :initform nil)))

(defvar SensorFeatureFactory.jcell_instance :jnone)
(defun SensorFeatureFactory.jstatic_instance ()
  (when (eq SensorFeatureFactory.jcell_instance :jnone) (setf SensorFeatureFactory.jcell_instance (SensorFeatureFactory.jnew_0)))
  SensorFeatureFactory.jcell_instance)
(defun (setf SensorFeatureFactory.jstatic_instance) (value) (setf SensorFeatureFactory.jcell_instance value))

    
(defun SensorFeatureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SensorFeatureFactory.jstatic_instance)))))

    
(defun SensorFeatureFactory.jnew_0 ()
  (let ((this (make-instance 'SensorFeatureFactory)))
    (setf (slot-value this 'f_NO_ORIENTATION) (SensorFeature.jnew_1 "No Orientation"))
    (setf (slot-value this 'f_ORIENTATION_SENSORS) (SensorFeature.jnew_1 "Orientation Sensors"))
    (setf (slot-value this 'f_SIMULATED_ORIENTATION_SENSORS) (SensorFeature.jnew_1 "Simulated Orientation Sensors"))
    (setf (slot-value this 'f_YAW) (SensorFeature.jnew_1 "Yaw"))
    (setf (slot-value this 'f_YAW_MINUS_RIGHT_PLUS_LEFT) (SensorFeature.jnew_1 "Yaw -Right +Left"))
    (setf (slot-value this 'f_YAW_MINUS_LEFT_PLUS_RIGHT) (SensorFeature.jnew_1 "Yaw -Left +Right "))
    (setf (slot-value this 'f_PITCH) (SensorFeature.jnew_1 "Pitch"))
    (setf (slot-value this 'f_ROLL) (SensorFeature.jnew_1 "Roll"))
  (let ()
    (block jreturn nil))
    this))



