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

(defclass SWTProcessorUtil (JObject)
  ((f_swtProcessor :initform nil)))

(defvar SWTProcessorUtil.jcell_instance :jnone)
(defun SWTProcessorUtil.jstatic_instance ()
  (when (eq SWTProcessorUtil.jcell_instance :jnone) (setf SWTProcessorUtil.jcell_instance (SWTProcessorUtil.jnew_0)))
  SWTProcessorUtil.jcell_instance)
(defun (setf SWTProcessorUtil.jstatic_instance) (value) (setf SWTProcessorUtil.jcell_instance value))

(defun SWTProcessorUtil.jnew_0 ()
  (let ((this (make-instance 'SWTProcessorUtil)))
    (setf (slot-value this 'f_swtProcessor) (SWTProcessor.jm_getInstance_0))
    this))

    
(defun SWTProcessorUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SWTProcessorUtil.jstatic_instance)))))



