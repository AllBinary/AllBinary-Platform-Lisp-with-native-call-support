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

(defclass BasicMotionGesturesHandler (BasicEventHandler)
  ())

(defvar BasicMotionGesturesHandler.jcell_SINGLETON :jnone)
(defun BasicMotionGesturesHandler.jstatic_SINGLETON ()
  (when (eq BasicMotionGesturesHandler.jcell_SINGLETON :jnone) (setf BasicMotionGesturesHandler.jcell_SINGLETON (BasicMotionGesturesHandler.jnew_0)))
  BasicMotionGesturesHandler.jcell_SINGLETON)
(defun (setf BasicMotionGesturesHandler.jstatic_SINGLETON) (value) (setf BasicMotionGesturesHandler.jcell_SINGLETON value))

    
(defun BasicMotionGesturesHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicMotionGesturesHandler.jstatic_SINGLETON)))))

    
(defun BasicMotionGesturesHandler.jnew_0 ()
  (let ((this (make-instance 'BasicMotionGesturesHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this BasicMotionGesturesHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_baseMotionGestureEventListener)
  (declare (ignorable _baseMotionGestureEventListener))
    (block jreturn
        (setf _baseMotionGestureEventListener _eventListenerInterface)
        (jm_onMotionGestureEvent_1 _baseMotionGestureEventListener _eventObject))))



