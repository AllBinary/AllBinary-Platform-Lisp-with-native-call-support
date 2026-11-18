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
;;;; package org.allbinary.emulator.swt

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SWTProcessor (JObject)
  ((f_runnable :initform nil)))

(defvar SWTProcessor.jcell_instance :jnone)
(defun SWTProcessor.jstatic_instance ()
  (when (eq SWTProcessor.jcell_instance :jnone) (setf SWTProcessor.jcell_instance (SWTProcessor.jnew_0)))
  SWTProcessor.jcell_instance)
(defun (setf SWTProcessor.jstatic_instance) (value) (setf SWTProcessor.jcell_instance value))

    
(defun SWTProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SWTProcessor.jstatic_instance)))))

    
(defun SWTProcessor.jnew_0 ()
  (let ((this (make-instance 'SWTProcessor)))
    (setf (slot-value this 'f_runnable) (NullRunnable.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this SWTProcessor) _display)
  (declare (ignorable this _display))
  (let ()
    (block jreturn
        (jm_sleep_0 _display))))



