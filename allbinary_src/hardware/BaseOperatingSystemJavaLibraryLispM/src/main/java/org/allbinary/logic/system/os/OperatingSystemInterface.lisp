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
;;;; package org.allbinary.logic.system.os

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OperatingSystemInterface (JObject)
  ())

(defun OperatingSystemInterface.jnew_0 ()
  (let ((this (make-instance 'OperatingSystemInterface)))
    this))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this OperatingSystemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getName")))

    
(unless (fboundp 'jm_getVersion_0) (defgeneric jm_getVersion_0 (this)))
(defmethod jm_getVersion_0 ((this OperatingSystemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getVersion")))

    
(unless (fboundp 'jm_getArch_0) (defgeneric jm_getArch_0 (this)))
(defmethod jm_getArch_0 ((this OperatingSystemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getArch")))

    
(unless (fboundp 'jm_getCharacterSet_0) (defgeneric jm_getCharacterSet_0 (this)))
(defmethod jm_getCharacterSet_0 ((this OperatingSystemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getCharacterSet")))

    
(unless (fboundp 'jm_isOverScan_0) (defgeneric jm_isOverScan_0 (this)))
(defmethod jm_isOverScan_0 ((this OperatingSystemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isOverScan")))

    
(unless (fboundp 'jm_getOverScanXPercent_0) (defgeneric jm_getOverScanXPercent_0 (this)))
(defmethod jm_getOverScanXPercent_0 ((this OperatingSystemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getOverScanXPercent")))

    
(unless (fboundp 'jm_getOverScanYPercent_0) (defgeneric jm_getOverScanYPercent_0 (this)))
(defmethod jm_getOverScanYPercent_0 ((this OperatingSystemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getOverScanYPercent")))

    
(unless (fboundp 'jm_isScalable_0) (defgeneric jm_isScalable_0 (this)))
(defmethod jm_isScalable_0 ((this OperatingSystemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isScalable")))

    
(unless (fboundp 'jm_isAutoHide_0) (defgeneric jm_isAutoHide_0 (this)))
(defmethod jm_isAutoHide_0 ((this OperatingSystemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isAutoHide")))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this OperatingSystemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "toString")))



