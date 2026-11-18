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
;;;; package org.allbinary.game.input.motion.action

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoCompleteMotionGestureInputEventListener (JObject)
  ())

(defvar NoCompleteMotionGestureInputEventListener.jcell_instance :jnone)
(defun NoCompleteMotionGestureInputEventListener.jstatic_instance ()
  (when (eq NoCompleteMotionGestureInputEventListener.jcell_instance :jnone) (setf NoCompleteMotionGestureInputEventListener.jcell_instance (NoCompleteMotionGestureInputEventListener.jnew_0)))
  NoCompleteMotionGestureInputEventListener.jcell_instance)
(defun (setf NoCompleteMotionGestureInputEventListener.jstatic_instance) (value) (setf NoCompleteMotionGestureInputEventListener.jcell_instance value))

    
(defun NoCompleteMotionGestureInputEventListener.jnew_0 ()
  (let ((this (make-instance 'NoCompleteMotionGestureInputEventListener)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this NoCompleteMotionGestureInputEventListener) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onCompleteMotionGestureInputEvent_1) (defgeneric jm_onCompleteMotionGestureInputEvent_1 (this p1)))
(defmethod jm_onCompleteMotionGestureInputEvent_1 ((this NoCompleteMotionGestureInputEventListener) _completeMotionGestureInputEvent)
  (declare (ignorable this _completeMotionGestureInputEvent))
  (let ()
    (block jreturn nil)))

    
(defun NoCompleteMotionGestureInputEventListener.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoCompleteMotionGestureInputEventListener.jstatic_instance)))))



