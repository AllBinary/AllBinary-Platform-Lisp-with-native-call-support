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

(defclass SingleKeyPressGameKeyFromMotionGestureEventListener (CompleteMotionGestureInputEventListener)
  ((f_logUtil :initform nil)))

(defun SingleKeyPressGameKeyFromMotionGestureEventListener.jnew_0 ()
  (let ((this (make-instance 'SingleKeyPressGameKeyFromMotionGestureEventListener)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this SingleKeyPressGameKeyFromMotionGestureEventListener) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onCompleteMotionGestureInputEvent_1) (defgeneric jm_onCompleteMotionGestureInputEvent_1 (this p1)))
(defmethod jm_onCompleteMotionGestureInputEvent_1 ((this SingleKeyPressGameKeyFromMotionGestureEventListener) _completeMotionGestureInputEvent)
  (declare (ignorable this _completeMotionGestureInputEvent))
  (let (_gameKeyCompleteMotionGestureInputEvent _gameKeyEvent _commonStrings)
  (declare (ignorable _gameKeyCompleteMotionGestureInputEvent _gameKeyEvent _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _gameKeyCompleteMotionGestureInputEvent _completeMotionGestureInputEvent)
            (setf _gameKeyEvent (jm_getGameKeyEvent_0 _gameKeyCompleteMotionGestureInputEvent))
            (jm_fireEvent_1 (PressGameKeyEventHandler.jm_getInstance_0) _gameKeyEvent))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this "onCompleteMotionGestureInputEvent" _e))))))



