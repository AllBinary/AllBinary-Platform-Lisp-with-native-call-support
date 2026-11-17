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
;;;; package org.allbinary.thread

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullPriorityRunnable (JObject)
  ())

(defun NullPriorityRunnable.jnew_0 ()
  (let ((this (make-instance 'NullPriorityRunnable)))
    this))

    
(unless (fboundp 'jm_getPriority_0) (defgeneric jm_getPriority_0 (this)))
(defmethod jm_getPriority_0 ((this NullPriorityRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_isDone_0) (defgeneric jm_isDone_0 (this)))
(defmethod jm_isDone_0 ((this NullPriorityRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_reset_0) (defgeneric jm_reset_0 (this)))
(defmethod jm_reset_0 ((this NullPriorityRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this NullPriorityRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



