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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CompleteMotionGestureInputEventListenerInterface (JObject)
  ())

(defun CompleteMotionGestureInputEventListenerInterface.jnew_0 ()
  (let ((this (make-instance 'CompleteMotionGestureInputEventListenerInterface)))
    this))

    
(unless (fboundp 'jm_onCompleteMotionGestureInputEvent_1) (defgeneric jm_onCompleteMotionGestureInputEvent_1 (this p1)))
(defmethod jm_onCompleteMotionGestureInputEvent_1 ((this CompleteMotionGestureInputEventListenerInterface) _completeMotionGestureInputEvent)
  (declare (ignorable this _completeMotionGestureInputEvent))
  (error (JR.newException "AbstractMethodError" "onCompleteMotionGestureInputEvent")))



