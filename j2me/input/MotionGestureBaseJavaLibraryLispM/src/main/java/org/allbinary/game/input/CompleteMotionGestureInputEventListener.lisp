;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CompleteMotionGestureInputEventListener (JObject)
  ())

(defun CompleteMotionGestureInputEventListener.jnew_0 ()
  (let ((this (make-instance 'CompleteMotionGestureInputEventListener)))
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this CompleteMotionGestureInputEventListener) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onCompleteMotionGestureInputEvent_1) (defgeneric jm_onCompleteMotionGestureInputEvent_1 (this p1)))
(defmethod jm_onCompleteMotionGestureInputEvent_1 ((this CompleteMotionGestureInputEventListener) _completeMotionGestureInputEvent)
  (declare (ignorable this _completeMotionGestureInputEvent))
  (let ()
    (block jreturn nil)))



