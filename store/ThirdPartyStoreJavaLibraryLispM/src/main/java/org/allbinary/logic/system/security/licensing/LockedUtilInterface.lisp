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
;;;; package org.allbinary.logic.system.security.licensing

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LockedUtilInterface (JObject)
  ())

(defun LockedUtilInterface.jnew_0 ()
  (let ((this (make-instance 'LockedUtilInterface)))
    this))

    
(unless (fboundp 'jm_isLocked_0) (defgeneric jm_isLocked_0 (this)))
(defmethod jm_isLocked_0 ((this LockedUtilInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isLocked")))

    
(unless (fboundp 'jm_isLockedFeature_1) (defgeneric jm_isLockedFeature_1 (this p1)))
(defmethod jm_isLockedFeature_1 ((this LockedUtilInterface) _lockableFeatrue)
  (declare (ignorable this _lockableFeatrue))
  (error (JR.newException "AbstractMethodError" "isLockedFeature")))



