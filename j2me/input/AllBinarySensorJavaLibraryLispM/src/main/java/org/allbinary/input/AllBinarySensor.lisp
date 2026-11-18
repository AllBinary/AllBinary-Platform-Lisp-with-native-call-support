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

(defclass AllBinarySensor (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)))

(defvar AllBinarySensor.jcell_NULL_ALLBINARY_SENSOR :jnone)
(defun AllBinarySensor.jstatic_NULL_ALLBINARY_SENSOR ()
  (when (eq AllBinarySensor.jcell_NULL_ALLBINARY_SENSOR :jnone) (setf AllBinarySensor.jcell_NULL_ALLBINARY_SENSOR (AllBinarySensor.jnew_0)))
  AllBinarySensor.jcell_NULL_ALLBINARY_SENSOR)
(defun (setf AllBinarySensor.jstatic_NULL_ALLBINARY_SENSOR) (value) (setf AllBinarySensor.jcell_NULL_ALLBINARY_SENSOR value))

(defvar AllBinarySensor.jcell_max :jnone)
(defun AllBinarySensor.jstatic_max ()
  (when (eq AllBinarySensor.jcell_max :jnone) (setf AllBinarySensor.jcell_max 100))
  AllBinarySensor.jcell_max)
(defun (setf AllBinarySensor.jstatic_max) (value) (setf AllBinarySensor.jcell_max value))

    
(defun AllBinarySensor.jnew_0 ()
  (let ((this (make-instance 'AllBinarySensor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this AllBinarySensor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this AllBinarySensor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(defun AllBinarySensor.jm_setMax_1 (_max)
  (declare (ignorable _max))
  (let ()
    (block jreturn
        (setf (AllBinarySensor.jstatic_max) _max))))

    
(defun AllBinarySensor.jm_getMax_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AllBinarySensor.jstatic_max)))))

    
(unless (fboundp 'jm_getId_0) (defgeneric jm_getId_0 (this)))
(defmethod jm_getId_0 ((this AllBinarySensor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (AllBinarySensor.jm_getMax_0)))))

    
(unless (fboundp 'jm_shutdown_0) (defgeneric jm_shutdown_0 (this)))
(defmethod jm_shutdown_0 ((this AllBinarySensor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this "shutdown"))))

    
(unless (fboundp 'jm_onSensorChange_0) (defgeneric jm_onSensorChange_0 (this)))
(defmethod jm_onSensorChange_0 ((this AllBinarySensor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED) this))))



