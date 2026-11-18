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

(defclass BaseMotionGestureEventListener (JObject)
  ())

(defun BaseMotionGestureEventListener.jnew_0 ()
  (let ((this (make-instance 'BaseMotionGestureEventListener)))
    this))

    
(unless (fboundp 'jm_onMotionGestureEvent_1) (defgeneric jm_onMotionGestureEvent_1 (this p1)))
(defmethod jm_onMotionGestureEvent_1 ((this BaseMotionGestureEventListener) _motionGestureEvent)
  (declare (ignorable this _motionGestureEvent))
  (error (JR.newException "AbstractMethodError" "onMotionGestureEvent")))

    
(unless (fboundp 'jm_onScrolledMotionGestureEvent_1) (defgeneric jm_onScrolledMotionGestureEvent_1 (this p1)))
(defmethod jm_onScrolledMotionGestureEvent_1 ((this BaseMotionGestureEventListener) _motionGestureEvent)
  (declare (ignorable this _motionGestureEvent))
  (error (JR.newException "AbstractMethodError" "onScrolledMotionGestureEvent")))



