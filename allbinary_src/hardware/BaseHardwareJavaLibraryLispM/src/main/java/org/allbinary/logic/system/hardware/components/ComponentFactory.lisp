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
;;;; package org.allbinary.logic.system.hardware.components

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ComponentFactory (JObject)
  ((f_VGA :initform nil)
   (f_IDE :initform nil)
   (f_SCSI :initform nil)
   (f_BRIDGE :initform nil)
   (f_ETHERNET :initform nil)
   (f_USB :initform nil)
   (f_MULTIMEDIA :initform nil)
   (f_PCI :initform nil)
   (f_RAID :initform nil)
   (f_SMBUS :initform nil)
   (f_PIC :initform nil)
   (f_Class :initform nil)
   (f_UNKNOWN :initform nil)))

(defvar ComponentFactory.jcell_instance :jnone)
(defun ComponentFactory.jstatic_instance ()
  (when (eq ComponentFactory.jcell_instance :jnone) (setf ComponentFactory.jcell_instance (ComponentFactory.jnew_0)))
  ComponentFactory.jcell_instance)

(defun ComponentFactory.jnew_0 ()
  (let ((this (make-instance 'ComponentFactory)))
    (setf (slot-value this 'f_VGA) (Component.jnew_1 "VGA"))
    (setf (slot-value this 'f_IDE) (Component.jnew_1 "IDE"))
    (setf (slot-value this 'f_SCSI) (Component.jnew_1 "SCSI"))
    (setf (slot-value this 'f_BRIDGE) (Component.jnew_1 "bridge"))
    (setf (slot-value this 'f_ETHERNET) (Component.jnew_1 "Ethernet"))
    (setf (slot-value this 'f_USB) (Component.jnew_1 "USB"))
    (setf (slot-value this 'f_MULTIMEDIA) (Component.jnew_1 "Multimedia"))
    (setf (slot-value this 'f_PCI) (Component.jnew_1 "PCI"))
    (setf (slot-value this 'f_RAID) (Component.jnew_1 "RAID"))
    (setf (slot-value this 'f_SMBUS) (Component.jnew_1 "SMBus"))
    (setf (slot-value this 'f_PIC) (Component.jnew_1 "PIC"))
    (setf (slot-value this 'f_Class) (Component.jnew_1 "Class"))
    (setf (slot-value this 'f_UNKNOWN) (Component.jnew_1 (slot-value (CommonStrings.jm_getInstance_0) 'f_UNKNOWN)))
    this))

    
(defun ComponentFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ComponentFactory.jstatic_instance)))))



