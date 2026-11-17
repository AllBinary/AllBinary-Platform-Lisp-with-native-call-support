;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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

(defclass PriorityRunnable (JObject)
  ())

(defun PriorityRunnable.jnew_0 ()
  (let ((this (make-instance 'PriorityRunnable)))
    this))

    
(unless (fboundp 'jm_getPriority_0) (defgeneric jm_getPriority_0 (this)))
(defmethod jm_getPriority_0 ((this PriorityRunnable))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getPriority")))

    
(unless (fboundp 'jm_isDone_0) (defgeneric jm_isDone_0 (this)))
(defmethod jm_isDone_0 ((this PriorityRunnable))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isDone")))

    
(unless (fboundp 'jm_reset_0) (defgeneric jm_reset_0 (this)))
(defmethod jm_reset_0 ((this PriorityRunnable))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "reset")))



