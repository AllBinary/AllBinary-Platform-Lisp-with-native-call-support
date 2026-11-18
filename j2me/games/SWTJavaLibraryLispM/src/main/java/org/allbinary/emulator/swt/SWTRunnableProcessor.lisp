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

(defclass SWTRunnableProcessor (SWTProcessor)
  ())

(defvar SWTRunnableProcessor.jcell_instanceR :jnone)
(defun SWTRunnableProcessor.jstatic_instanceR ()
  (when (eq SWTRunnableProcessor.jcell_instanceR :jnone) (setf SWTRunnableProcessor.jcell_instanceR (SWTRunnableProcessor.jnew_0)))
  SWTRunnableProcessor.jcell_instanceR)
(defun (setf SWTRunnableProcessor.jstatic_instanceR) (value) (setf SWTRunnableProcessor.jcell_instanceR value))

    
(defun SWTRunnableProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SWTRunnableProcessor.jstatic_instanceR)))))

    
(defun SWTRunnableProcessor.jnew_0 ()
  (let ((this (make-instance 'SWTRunnableProcessor)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this SWTRunnableProcessor) _display)
  (declare (ignorable this _display))
  (let ()
    (block jreturn
        (jm_run_0 (slot-value this 'f_runnable)))))



