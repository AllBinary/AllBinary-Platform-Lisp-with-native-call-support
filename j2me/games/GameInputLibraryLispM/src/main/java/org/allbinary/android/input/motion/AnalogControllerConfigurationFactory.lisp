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
;;;; package org.allbinary.android.input.motion

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnalogControllerConfigurationFactory (JObject)
  ((f_SCALE_FACTOR :initform 0)
   (f_SCALE_VALUE :initform 0)
   (f_available :initform nil)
   (f_analogControllerConfigurationEvent :initform nil)))

(defvar AnalogControllerConfigurationFactory.jcell_instance :jnone)
(defun AnalogControllerConfigurationFactory.jstatic_instance ()
  (when (eq AnalogControllerConfigurationFactory.jcell_instance :jnone) (setf AnalogControllerConfigurationFactory.jcell_instance (AnalogControllerConfigurationFactory.jnew_0)))
  AnalogControllerConfigurationFactory.jcell_instance)
(defun (setf AnalogControllerConfigurationFactory.jstatic_instance) (value) (setf AnalogControllerConfigurationFactory.jcell_instance value))

    
(defun AnalogControllerConfigurationFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AnalogControllerConfigurationFactory.jstatic_instance)))))

    
(defun AnalogControllerConfigurationFactory.jnew_0 ()
  (let ((this (make-instance 'AnalogControllerConfigurationFactory)))
    (setf (slot-value this 'f_SCALE_FACTOR) (slot-value (ScaleFactorFactory.jm_getInstance_0) 'f_DEFAULT_SCALE_FACTOR))
    (setf (slot-value this 'f_SCALE_VALUE) (slot-value (ScaleFactorFactory.jm_getInstance_0) 'f_DEFAULT_SCALE_VALUE))
    
    (setf (slot-value this 'f_analogControllerConfigurationEvent) (AnalogControllerConfigurationEvent.jnew_1 this))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_isAvailable_0) (defgeneric jm_isAvailable_0 (this)))
(defmethod jm_isAvailable_0 ((this AnalogControllerConfigurationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_available)))))

    
(unless (fboundp 'jm_setAvailable_1) (defgeneric jm_setAvailable_1 (this p1)))
(defmethod jm_setAvailable_1 ((this AnalogControllerConfigurationFactory) _available)
  (declare (ignorable this _available))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_available) _available)
        (jm_fireEvent_1 (AnalogControllerConfigurationEventHandler.jm_getInstance_0) (slot-value this 'f_analogControllerConfigurationEvent)))))



