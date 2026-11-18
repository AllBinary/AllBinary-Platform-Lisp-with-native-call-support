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

(defclass HardwareFactory (JObject)
  ((f_SINGLETON :initform nil)))

(defvar HardwareFactory.jcell_instance :jnone)
(defun HardwareFactory.jstatic_instance ()
  (when (eq HardwareFactory.jcell_instance :jnone) (setf HardwareFactory.jcell_instance (HardwareFactory.jnew_0)))
  HardwareFactory.jcell_instance)
(defun (setf HardwareFactory.jstatic_instance) (value) (setf HardwareFactory.jcell_instance value))

    
(defun HardwareFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (HardwareFactory.jstatic_instance)))))

    
(defun HardwareFactory.jnew_0 ()
  (let ((this (make-instance 'HardwareFactory)))
    (setf (slot-value this 'f_SINGLETON) (NoHardware.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this HardwareFactory) _os)
  (declare (ignorable this _os))
  (let ()
    (block jreturn
        (handler-case (progn
            (return-from jreturn (slot-value this 'f_SINGLETON)))
            (error (_e) (declare (ignorable _e))
            (error _e))))))



