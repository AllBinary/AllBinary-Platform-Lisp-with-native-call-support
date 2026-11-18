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
;;;; package org.allbinary.graphics.displayable.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DisplayChangeEventHandler (BasicEventHandler)
  ())

(defvar DisplayChangeEventHandler.jcell_SINGLETON :jnone)
(defun DisplayChangeEventHandler.jstatic_SINGLETON ()
  (when (eq DisplayChangeEventHandler.jcell_SINGLETON :jnone) (setf DisplayChangeEventHandler.jcell_SINGLETON (DisplayChangeEventHandler.jnew_0)))
  DisplayChangeEventHandler.jcell_SINGLETON)
(defun (setf DisplayChangeEventHandler.jstatic_SINGLETON) (value) (setf DisplayChangeEventHandler.jcell_SINGLETON value))

    
(defun DisplayChangeEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DisplayChangeEventHandler.jstatic_SINGLETON)))))

    
(defun DisplayChangeEventHandler.jnew_0 ()
  (let ((this (make-instance 'DisplayChangeEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this DisplayChangeEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_displayChangeEventListener)
  (declare (ignorable _displayChangeEventListener))
    (block jreturn
        (setf _displayChangeEventListener _eventListenerInterface)
        (jm_onDisplayChangeEvent_1 _displayChangeEventListener _eventObject))))



