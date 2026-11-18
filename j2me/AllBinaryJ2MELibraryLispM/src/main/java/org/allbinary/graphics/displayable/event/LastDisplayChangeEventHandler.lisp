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
;;;; package org.allbinary.graphics.displayable.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LastDisplayChangeEventHandler (BasicEventHandler)
  ())

(defvar LastDisplayChangeEventHandler.jcell_SINGLETON :jnone)
(defun LastDisplayChangeEventHandler.jstatic_SINGLETON ()
  (when (eq LastDisplayChangeEventHandler.jcell_SINGLETON :jnone) (setf LastDisplayChangeEventHandler.jcell_SINGLETON (LastDisplayChangeEventHandler.jnew_0)))
  LastDisplayChangeEventHandler.jcell_SINGLETON)
(defun (setf LastDisplayChangeEventHandler.jstatic_SINGLETON) (value) (setf LastDisplayChangeEventHandler.jcell_SINGLETON value))

    
(defun LastDisplayChangeEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LastDisplayChangeEventHandler.jstatic_SINGLETON)))))

    
(defun LastDisplayChangeEventHandler.jnew_0 ()
  (let ((this (make-instance 'LastDisplayChangeEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this LastDisplayChangeEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_displayChangeEventListener)
  (declare (ignorable _displayChangeEventListener))
    (block jreturn
        (setf _displayChangeEventListener _eventListenerInterface)
        (jm_onDisplayChangeEvent_1 _displayChangeEventListener _eventObject))))



