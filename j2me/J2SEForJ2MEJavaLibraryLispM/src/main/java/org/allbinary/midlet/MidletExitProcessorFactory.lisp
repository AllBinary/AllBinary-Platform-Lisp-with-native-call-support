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
;;;; package org.allbinary.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MidletExitProcessorFactory (JObject)
  ())

(defvar MidletExitProcessorFactory.jcell_instance :jnone)
(defun MidletExitProcessorFactory.jstatic_instance ()
  (when (eq MidletExitProcessorFactory.jcell_instance :jnone) (setf MidletExitProcessorFactory.jcell_instance (MidletExitProcessorFactory.jnew_0)))
  MidletExitProcessorFactory.jcell_instance)
(defun (setf MidletExitProcessorFactory.jstatic_instance) (value) (setf MidletExitProcessorFactory.jcell_instance value))

(defun MidletExitProcessorFactory.jnew_0 ()
  (let ((this (make-instance 'MidletExitProcessorFactory)))
    this))

    
(defun MidletExitProcessorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MidletExitProcessorFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getExitInstance_1) (defgeneric jm_getExitInstance_1 (this p1)))
(defmethod jm_getExitInstance_1 ((this MidletExitProcessorFactory) _midlet)
  (declare (ignorable this _midlet))
  (let ()
    (block jreturn
        (if (or (AppletUtil.jm_isAppletLoader_1 _midlet) (J2MEUtil.jm_isJ2ME_0))
            (progn
            (return-from jreturn (Processor.jm_getInstance_0)))
            (progn
            (return-from jreturn (MidletExitProcessor.jnew_1 _midlet)))))))



