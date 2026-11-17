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
;;;; package org.allbinary.logic.system.hardware.linux

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LinuxHardware (JObject)
  ())

    
(defun LinuxHardware.jnew_0 ()
  (let ((this (make-instance 'LinuxHardware)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getMultimedia_1) (defgeneric jm_getMultimedia_1 (this p1)))
(defmethod jm_getMultimedia_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getBridge_1) (defgeneric jm_getBridge_1 (this p1)))
(defmethod jm_getBridge_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getCpu_1) (defgeneric jm_getCpu_1 (this p1)))
(defmethod jm_getCpu_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getEthernet_1) (defgeneric jm_getEthernet_1 (this p1)))
(defmethod jm_getEthernet_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getFireWire_1) (defgeneric jm_getFireWire_1 (this p1)))
(defmethod jm_getFireWire_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getHardDriveController_1) (defgeneric jm_getHardDriveController_1 (this p1)))
(defmethod jm_getHardDriveController_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getHardDrive_1) (defgeneric jm_getHardDrive_1 (this p1)))
(defmethod jm_getHardDrive_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getMachineAccessControlAddress_1) (defgeneric jm_getMachineAccessControlAddress_1 (this p1)))
(defmethod jm_getMachineAccessControlAddress_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getMonitor_1) (defgeneric jm_getMonitor_1 (this p1)))
(defmethod jm_getMonitor_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getUsb_1) (defgeneric jm_getUsb_1 (this p1)))
(defmethod jm_getUsb_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getVideo_1) (defgeneric jm_getVideo_1 (this p1)))
(defmethod jm_getVideo_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getComponent_1) (defgeneric jm_getComponent_1 (this p1)))
(defmethod jm_getComponent_1 ((this LinuxHardware) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this LinuxHardware))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_compareTo_1) (defgeneric jm_compareTo_1 (this p1)))
(defmethod jm_compareTo_1 ((this LinuxHardware) _hardwareInterface)
  (declare (ignorable this _hardwareInterface))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_difference_1) (defgeneric jm_difference_1 (this p1)))
(defmethod jm_difference_1 ((this LinuxHardware) _hardwareInterface)
  (declare (ignorable this _hardwareInterface))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StdUtil.jm_getInstance_0) 'f_NULL_TABLE)))))

    
(unless (fboundp 'jm_isNextHardware_1) (defgeneric jm_isNextHardware_1 (this p1)))
(defmethod jm_isNextHardware_1 ((this LinuxHardware) _nextLine)
  (declare (ignorable this _nextLine))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



