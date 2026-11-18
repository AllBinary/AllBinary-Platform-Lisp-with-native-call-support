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
;;;; package org.allbinary.bounds.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BoundsChangeEventHandler (BasicEventHandler)
  ())

(defvar BoundsChangeEventHandler.jcell_SINGLETON :jnone)
(defun BoundsChangeEventHandler.jstatic_SINGLETON ()
  (when (eq BoundsChangeEventHandler.jcell_SINGLETON :jnone) (setf BoundsChangeEventHandler.jcell_SINGLETON (BoundsChangeEventHandler.jnew_0)))
  BoundsChangeEventHandler.jcell_SINGLETON)
(defun (setf BoundsChangeEventHandler.jstatic_SINGLETON) (value) (setf BoundsChangeEventHandler.jcell_SINGLETON value))

    
(defun BoundsChangeEventHandler.jnew_0 ()
  (let ((this (make-instance 'BoundsChangeEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(defun BoundsChangeEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BoundsChangeEventHandler.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this BoundsChangeEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_boundsChangeEventListener)
  (declare (ignorable _boundsChangeEventListener))
    (block jreturn
        (setf _boundsChangeEventListener _eventListenerInterface)
        (jm_onBoundsChangeEvent_1 _boundsChangeEventListener _eventObject))))



