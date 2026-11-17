;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.logic.system.hardware.components.interfaces

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoHardwareComponent (JObject)
  ())

(defvar NoHardwareComponent.jcell_instance :jnone)
(defun NoHardwareComponent.jstatic_instance ()
  (when (eq NoHardwareComponent.jcell_instance :jnone) (setf NoHardwareComponent.jcell_instance (NoHardwareComponent.jnew_0)))
  NoHardwareComponent.jcell_instance)

(defun NoHardwareComponent.jnew_0 ()
  (let ((this (make-instance 'NoHardwareComponent)))
    this))

    
(defun NoHardwareComponent.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoHardwareComponent.jstatic_instance)))))

    
(unless (fboundp 'jm_compareTo_1) (defgeneric jm_compareTo_1 (this p1)))
(defmethod jm_compareTo_1 ((this NoHardwareComponent) _componentInterface)
  (declare (ignorable this _componentInterface))
  (let ()
    (block jreturn
        (if (eq this _componentInterface)
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this NoHardwareComponent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_NULL_STRING)))))



