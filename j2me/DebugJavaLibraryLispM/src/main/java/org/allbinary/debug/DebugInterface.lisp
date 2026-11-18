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
;;;; package org.allbinary.debug

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DebugInterface (JObject)
  ())

(defun DebugInterface.jnew_0 ()
  (let ((this (make-instance 'DebugInterface)))
    this))

    
(unless (fboundp 'jm_start_0) (defgeneric jm_start_0 (this)))
(defmethod jm_start_0 ((this DebugInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "start")))

    
(unless (fboundp 'jm_stop_0) (defgeneric jm_stop_0 (this)))
(defmethod jm_stop_0 ((this DebugInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "stop")))

    
(unless (fboundp 'jm_getStartTime_0) (defgeneric jm_getStartTime_0 (this)))
(defmethod jm_getStartTime_0 ((this DebugInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getStartTime")))

    
(unless (fboundp 'jm_getMaxTime_0) (defgeneric jm_getMaxTime_0 (this)))
(defmethod jm_getMaxTime_0 ((this DebugInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getMaxTime")))

    
(unless (fboundp 'jm_isRunning_0) (defgeneric jm_isRunning_0 (this)))
(defmethod jm_isRunning_0 ((this DebugInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isRunning")))



