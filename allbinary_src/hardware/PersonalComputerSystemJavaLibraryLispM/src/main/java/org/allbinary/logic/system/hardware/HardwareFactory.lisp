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
  ())

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
  (let ()
    (block jreturn nil))
    this))

    
(defun HardwareFactory.jm_getInstance_1 (_os)
  (declare (ignorable _os))
  (let (_operatingSystems)
  (declare (ignorable _operatingSystems))
    (block jreturn
        (handler-case (progn
            (setf _operatingSystems (OperatingSystems.jm_getInstance_0))
            (if (eq (jm_compareTo_1 (jm_getName_0 _os) (slot-value _operatingSystems 'f_LINUX)) 0)
                (progn
                (return-from jreturn (LinuxHardware.jnew_0)))
                (if (>= (jm_indexOf_1 (jm_getName_0 _os) (slot-value _operatingSystems 'f_WINDOWS)) 0)
                (progn
                (return-from jreturn (WindowsHardware.jnew_0)))))
            (error (JR.newException "Exception" (JR.concat "No Hardware Imp for: " (jm_getName_0 _os)))))
            (error (_e) (declare (ignorable _e))
            (error _e))))))



