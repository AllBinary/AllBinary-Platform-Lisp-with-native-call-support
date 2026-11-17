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

(defclass ABRunnable (JObject)
  ((f_running :initform nil)))

(defun ABRunnable.jnew_0 ()
  (let ((this (make-instance 'ABRunnable)))
    (setf (slot-value this 'f_running) nil)
    this))

    
(unless (fboundp 'jm_setThread_1) (defgeneric jm_setThread_1 (this p1)))
(defmethod jm_setThread_1 ((this ABRunnable) _thread)
  (declare (ignorable this _thread))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isRunning_0) (defgeneric jm_isRunning_0 (this)))
(defmethod jm_isRunning_0 ((this ABRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_running)))))

    
(unless (fboundp 'jm_setRunning_1) (defgeneric jm_setRunning_1 (this p1)))
(defmethod jm_setRunning_1 ((this ABRunnable) _running)
  (declare (ignorable this _running))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_running) _running))))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this ABRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this ABRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))



