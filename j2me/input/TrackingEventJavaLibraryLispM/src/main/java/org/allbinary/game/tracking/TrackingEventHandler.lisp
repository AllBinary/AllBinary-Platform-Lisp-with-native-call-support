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
;;;; package org.allbinary.game.tracking

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TrackingEventHandler (BasicEventHandler)
  ())

(defvar TrackingEventHandler.jcell_instance :jnone)
(defun TrackingEventHandler.jstatic_instance ()
  (when (eq TrackingEventHandler.jcell_instance :jnone) (setf TrackingEventHandler.jcell_instance (TrackingEventHandler.jnew_0)))
  TrackingEventHandler.jcell_instance)
(defun (setf TrackingEventHandler.jstatic_instance) (value) (setf TrackingEventHandler.jcell_instance value))

    
(defun TrackingEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TrackingEventHandler.jstatic_instance)))))

    
(defun TrackingEventHandler.jnew_0 ()
  (let ((this (make-instance 'TrackingEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this TrackingEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_trackingEventListenerInterface)
  (declare (ignorable _trackingEventListenerInterface))
    (block jreturn
        (setf _trackingEventListenerInterface _eventListenerInterface)
        (jm_onMovement_1 _trackingEventListenerInterface _eventObject))))



