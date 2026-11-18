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

(defclass SingleSensorGameUpdateProcessor (SensorGameUpdateProcessor)
  ())

(defun SingleSensorGameUpdateProcessor.jnew_0 ()
  (let ((this (make-instance 'SingleSensorGameUpdateProcessor)))
    this))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this SingleSensorGameUpdateProcessor) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_sendNotifications_1) (defgeneric jm_sendNotifications_1 (this p1)))
(defmethod jm_sendNotifications_1 ((this SingleSensorGameUpdateProcessor) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn nil)))



