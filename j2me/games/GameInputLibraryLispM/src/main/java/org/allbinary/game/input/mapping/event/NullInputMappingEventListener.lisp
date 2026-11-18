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
;;;; package org.allbinary.game.input.mapping.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullInputMappingEventListener (JObject)
  ())

(defvar NullInputMappingEventListener.jcell_NULL_INPUT_MAPPING_EVENT_LISTENER :jnone)
(defun NullInputMappingEventListener.jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER ()
  (when (eq NullInputMappingEventListener.jcell_NULL_INPUT_MAPPING_EVENT_LISTENER :jnone) (setf NullInputMappingEventListener.jcell_NULL_INPUT_MAPPING_EVENT_LISTENER (NullInputMappingEventListener.jnew_0)))
  NullInputMappingEventListener.jcell_NULL_INPUT_MAPPING_EVENT_LISTENER)
(defun (setf NullInputMappingEventListener.jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER) (value) (setf NullInputMappingEventListener.jcell_NULL_INPUT_MAPPING_EVENT_LISTENER value))

(defun NullInputMappingEventListener.jnew_0 ()
  (let ((this (make-instance 'NullInputMappingEventListener)))
    this))

    
(unless (fboundp 'jm_onInputMappingEvent_1) (defgeneric jm_onInputMappingEvent_1 (this p1)))
(defmethod jm_onInputMappingEvent_1 ((this NullInputMappingEventListener) _inputMappingEvent)
  (declare (ignorable this _inputMappingEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this NullInputMappingEventListener) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn nil)))



