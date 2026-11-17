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
;;;; package org.allbinary.logic.util.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullEventListener (JObject)
  ())

(defvar NullEventListener.jcell_NULL_EVENT_LISTENER :jnone)
(defun NullEventListener.jstatic_NULL_EVENT_LISTENER ()
  (when (eq NullEventListener.jcell_NULL_EVENT_LISTENER :jnone) (setf NullEventListener.jcell_NULL_EVENT_LISTENER (NullEventListener.jnew_0)))
  NullEventListener.jcell_NULL_EVENT_LISTENER)

(defun NullEventListener.jnew_0 ()
  (let ((this (make-instance 'NullEventListener)))
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this NullEventListener) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn nil)))



