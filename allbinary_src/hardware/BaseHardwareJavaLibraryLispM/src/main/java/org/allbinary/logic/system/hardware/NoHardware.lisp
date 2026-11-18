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
;;;; package org.allbinary.logic.system.hardware

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoHardware (JObject)
  ())

(defvar NoHardware.jcell_instance :jnone)
(defun NoHardware.jstatic_instance ()
  (when (eq NoHardware.jcell_instance :jnone) (setf NoHardware.jcell_instance (NoHardware.jnew_0)))
  NoHardware.jcell_instance)
(defun (setf NoHardware.jstatic_instance) (value) (setf NoHardware.jcell_instance value))

(defun NoHardware.jnew_0 ()
  (let ((this (make-instance 'NoHardware)))
    this))

    
(defun NoHardware.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoHardware.jstatic_instance)))))

    
(unless (fboundp 'jm_getComponent_1) (defgeneric jm_getComponent_1 (this p1)))
(defmethod jm_getComponent_1 ((this NoHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (return-from jreturn (NoHardwareComponent.jm_getInstance_0)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this NoHardware))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn "No Hardware"))))

    
(unless (fboundp 'jm_compareTo_1) (defgeneric jm_compareTo_1 (this p1)))
(defmethod jm_compareTo_1 ((this NoHardware) _hardwareInterface)
  (declare (ignorable this _hardwareInterface))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_difference_1) (defgeneric jm_difference_1 (this p1)))
(defmethod jm_difference_1 ((this NoHardware) _hardwareInterface)
  (declare (ignorable this _hardwareInterface))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StdUtil.jm_getInstance_0) 'f_NULL_TABLE)))))



