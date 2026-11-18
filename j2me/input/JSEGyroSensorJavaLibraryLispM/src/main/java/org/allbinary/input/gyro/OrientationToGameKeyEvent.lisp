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

(defclass OrientationToGameKeyEvent (JObject)
  ((f_allBinaryGyroSensor :initform nil)
   (f_MIN :initform 0)))

    
(defun OrientationToGameKeyEvent.jnew_0 ()
  (let ((this (make-instance 'OrientationToGameKeyEvent)))
    
    (setf (slot-value this 'f_MIN) 15)
  (let ()
    (block jreturn
        (if (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value (SensorFeatureFactory.jm_getInstance_0) 'f_NO_ORIENTATION))
            (progn
            (setf (slot-value this 'f_allBinaryGyroSensor) (NoGyroSensor.jnew_0)))
            (progn
            (error (JR.newException "Exception" "Not Such Feature"))))))
    this))

    
(unless (fboundp 'jm_setAllBinaryGyroSensor_1) (defgeneric jm_setAllBinaryGyroSensor_1 (this p1)))
(defmethod jm_setAllBinaryGyroSensor_1 ((this OrientationToGameKeyEvent) _allBinaryGyroSensor)
  (declare (ignorable this _allBinaryGyroSensor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allBinaryGyroSensor) _allBinaryGyroSensor))))

    
(unless (fboundp 'jm_getAllBinaryGyroSensor_0) (defgeneric jm_getAllBinaryGyroSensor_0 (this)))
(defmethod jm_getAllBinaryGyroSensor_0 ((this OrientationToGameKeyEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_allBinaryGyroSensor)))))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this OrientationToGameKeyEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_updateGameKeyEvents_4) (defgeneric jm_updateGameKeyEvents_4 (this p1 p2 p3 p4)))
(defmethod jm_updateGameKeyEvents_4 ((this OrientationToGameKeyEvent) _orientation _yaw _pitch _roll)
  (declare (ignorable this _orientation _yaw _pitch _roll))
  (let ()
    (block jreturn nil)))



