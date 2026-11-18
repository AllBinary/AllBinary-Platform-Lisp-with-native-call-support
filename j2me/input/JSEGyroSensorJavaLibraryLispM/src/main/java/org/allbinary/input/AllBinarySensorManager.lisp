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
;;;; package org.allbinary.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinarySensorManager (JObject)
  ((f_ORIENTATION_SENSOR_INPUT :initform nil)
   (f_ORIENTATION_TYPE :initform nil)
   (f_list :initform nil)))

(defvar AllBinarySensorManager.jcell_instance :jnone)
(defun AllBinarySensorManager.jstatic_instance ()
  (when (eq AllBinarySensorManager.jcell_instance :jnone) (setf AllBinarySensorManager.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  AllBinarySensorManager.jcell_instance)
(defun (setf AllBinarySensorManager.jstatic_instance) (value) (setf AllBinarySensorManager.jcell_instance value))

    
(defun AllBinarySensorManager.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (AllBinarySensorManager.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (AllBinarySensorManager.jstatic_instance) (AllBinarySensorManager.jnew_0))))
        (return-from jreturn (AllBinarySensorManager.jstatic_instance)))))

    
(defun AllBinarySensorManager.jnew_0 ()
  (let ((this (make-instance 'AllBinarySensorManager)))
    (setf (slot-value this 'f_ORIENTATION_SENSOR_INPUT) "Orientation Sensor Input")
    (setf (slot-value this 'f_ORIENTATION_TYPE) "Orientation Type")
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this AllBinarySensorManager))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSensorNamesList_0) (defgeneric jm_getSensorNamesList_0 (this)))
(defmethod jm_getSensorNamesList_0 ((this AllBinarySensorManager))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))

    
(unless (fboundp 'jm_shutdown_0) (defgeneric jm_shutdown_0 (this)))
(defmethod jm_shutdown_0 ((this AllBinarySensorManager))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



