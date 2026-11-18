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
;;;; package org.allbinary.game.input.mapping.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InputMappingEventHandler (BasicEventHandler)
  ())

(defvar InputMappingEventHandler.jcell_gameKeyEventHandler :jnone)
(defun InputMappingEventHandler.jstatic_gameKeyEventHandler ()
  (when (eq InputMappingEventHandler.jcell_gameKeyEventHandler :jnone) (setf InputMappingEventHandler.jcell_gameKeyEventHandler (InputMappingEventHandler.jnew_0)))
  InputMappingEventHandler.jcell_gameKeyEventHandler)
(defun (setf InputMappingEventHandler.jstatic_gameKeyEventHandler) (value) (setf InputMappingEventHandler.jcell_gameKeyEventHandler value))

    
(defun InputMappingEventHandler.jnew_0 ()
  (let ((this (make-instance 'InputMappingEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(defun InputMappingEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (InputMappingEventHandler.jstatic_gameKeyEventHandler)))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this InputMappingEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_inputMappingEventListenerInterface)
  (declare (ignorable _inputMappingEventListenerInterface))
    (block jreturn
        (setf _inputMappingEventListenerInterface _eventListenerInterface)
        (jm_onInputMappingEvent_1 _inputMappingEventListenerInterface _eventObject))))



