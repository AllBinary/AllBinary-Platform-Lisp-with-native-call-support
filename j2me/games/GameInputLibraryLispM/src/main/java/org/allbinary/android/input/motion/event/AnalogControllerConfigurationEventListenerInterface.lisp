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
;;;; package org.allbinary.android.input.motion.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnalogControllerConfigurationEventListenerInterface (JObject)
  ())

(defun AnalogControllerConfigurationEventListenerInterface.jnew_0 ()
  (let ((this (make-instance 'AnalogControllerConfigurationEventListenerInterface)))
    this))

    
(unless (fboundp 'jm_onAnalogControllerConfigurationEvent_1) (defgeneric jm_onAnalogControllerConfigurationEvent_1 (this p1)))
(defmethod jm_onAnalogControllerConfigurationEvent_1 ((this AnalogControllerConfigurationEventListenerInterface) _analogControllerConfigurationEvent)
  (declare (ignorable this _analogControllerConfigurationEvent))
  (error (JR.newException "AbstractMethodError" "onAnalogControllerConfigurationEvent")))



