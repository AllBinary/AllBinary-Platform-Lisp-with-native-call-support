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

(defclass ScrolledMotionGesturesHandler (BasicEventHandler)
  ())

(defvar ScrolledMotionGesturesHandler.jcell_SINGLETON :jnone)
(defun ScrolledMotionGesturesHandler.jstatic_SINGLETON ()
  (when (eq ScrolledMotionGesturesHandler.jcell_SINGLETON :jnone) (setf ScrolledMotionGesturesHandler.jcell_SINGLETON (ScrolledMotionGesturesHandler.jnew_0)))
  ScrolledMotionGesturesHandler.jcell_SINGLETON)
(defun (setf ScrolledMotionGesturesHandler.jstatic_SINGLETON) (value) (setf ScrolledMotionGesturesHandler.jcell_SINGLETON value))

    
(defun ScrolledMotionGesturesHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ScrolledMotionGesturesHandler.jstatic_SINGLETON)))))

    
(defun ScrolledMotionGesturesHandler.jnew_0 ()
  (let ((this (make-instance 'ScrolledMotionGesturesHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this ScrolledMotionGesturesHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_baseMotionGestureEventListener)
  (declare (ignorable _baseMotionGestureEventListener))
    (block jreturn
        (setf _baseMotionGestureEventListener _eventListenerInterface)
        (jm_onScrolledMotionGestureEvent_1 _baseMotionGestureEventListener _eventObject))))



