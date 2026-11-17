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
;;;; package org.allbinary.logic.system.hardware.components.interfaces

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CpuInterface (JObject)
  ())

(defun CpuInterface.jnew_0 ()
  (let ((this (make-instance 'CpuInterface)))
    this))

    
(unless (fboundp 'jm_getProcessor_0) (defgeneric jm_getProcessor_0 (this)))
(defmethod jm_getProcessor_0 ((this CpuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getProcessor")))

    
(unless (fboundp 'jm_getVendorId_0) (defgeneric jm_getVendorId_0 (this)))
(defmethod jm_getVendorId_0 ((this CpuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getVendorId")))

    
(unless (fboundp 'jm_getCpuFamily_0) (defgeneric jm_getCpuFamily_0 (this)))
(defmethod jm_getCpuFamily_0 ((this CpuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getCpuFamily")))

    
(unless (fboundp 'jm_getModel_0) (defgeneric jm_getModel_0 (this)))
(defmethod jm_getModel_0 ((this CpuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getModel")))

    
(unless (fboundp 'jm_getModelName_0) (defgeneric jm_getModelName_0 (this)))
(defmethod jm_getModelName_0 ((this CpuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getModelName")))

    
(unless (fboundp 'jm_getStepping_0) (defgeneric jm_getStepping_0 (this)))
(defmethod jm_getStepping_0 ((this CpuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getStepping")))

    
(unless (fboundp 'jm_getCpuSpeed_0) (defgeneric jm_getCpuSpeed_0 (this)))
(defmethod jm_getCpuSpeed_0 ((this CpuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getCpuSpeed")))

    
(unless (fboundp 'jm_getCacheSize_0) (defgeneric jm_getCacheSize_0 (this)))
(defmethod jm_getCacheSize_0 ((this CpuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getCacheSize")))

    
(unless (fboundp 'jm_compareTo_1) (defgeneric jm_compareTo_1 (this p1)))
(defmethod jm_compareTo_1 ((this CpuInterface) _cpuInterface)
  (declare (ignorable this _cpuInterface))
  (error (JR.newException "AbstractMethodError" "compareTo")))



