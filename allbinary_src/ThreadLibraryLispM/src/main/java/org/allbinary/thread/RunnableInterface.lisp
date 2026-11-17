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
;;;; package org.allbinary.thread

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RunnableInterface (JObject)
  ())

(defun RunnableInterface.jnew_0 ()
  (let ((this (make-instance 'RunnableInterface)))
    this))

    
(unless (fboundp 'jm_isRunning_0) (defgeneric jm_isRunning_0 (this)))
(defmethod jm_isRunning_0 ((this RunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isRunning")))

    
(unless (fboundp 'jm_setRunning_1) (defgeneric jm_setRunning_1 (this p1)))
(defmethod jm_setRunning_1 ((this RunnableInterface) _isRunning)
  (declare (ignorable this _isRunning))
  (error (JR.newException "AbstractMethodError" "setRunning")))

    
(unless (fboundp 'jm_setThread_1) (defgeneric jm_setThread_1 (this p1)))
(defmethod jm_setThread_1 ((this RunnableInterface) _thread)
  (declare (ignorable this _thread))
  (error (JR.newException "AbstractMethodError" "setThread")))



