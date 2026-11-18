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
;;;; package org.allbinary.input.motion.gesture.observer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MovedMotionGesturesHandler (BasicEventHandler)
  ())

(defvar MovedMotionGesturesHandler.jcell_SINGLETON :jnone)
(defun MovedMotionGesturesHandler.jstatic_SINGLETON ()
  (when (eq MovedMotionGesturesHandler.jcell_SINGLETON :jnone) (setf MovedMotionGesturesHandler.jcell_SINGLETON (MovedMotionGesturesHandler.jnew_0)))
  MovedMotionGesturesHandler.jcell_SINGLETON)
(defun (setf MovedMotionGesturesHandler.jstatic_SINGLETON) (value) (setf MovedMotionGesturesHandler.jcell_SINGLETON value))

    
(defun MovedMotionGesturesHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MovedMotionGesturesHandler.jstatic_SINGLETON)))))

    
(defun MovedMotionGesturesHandler.jnew_0 ()
  (let ((this (make-instance 'MovedMotionGesturesHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this MovedMotionGesturesHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_baseMotionGestureEventListener)
  (declare (ignorable _baseMotionGestureEventListener))
    (block jreturn
        (setf _baseMotionGestureEventListener _eventListenerInterface)
        (jm_onMotionGestureEvent_1 _baseMotionGestureEventListener _eventObject))))



