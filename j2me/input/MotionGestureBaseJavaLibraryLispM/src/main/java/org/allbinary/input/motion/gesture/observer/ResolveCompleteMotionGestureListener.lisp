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

(defclass ResolveCompleteMotionGestureListener (JObject)
  ((f_logUtil :initform nil)))

    
(defun ResolveCompleteMotionGestureListener.jnew_0 ()
  (let ((this (make-instance 'ResolveCompleteMotionGestureListener)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (jm_putF_3 (slot-value this 'f_logUtil) "MotionGesture to CompleteMotionGesture Reciever" this (slot-value _commonStrings 'f_CONSTRUCTOR))
        (jm_addListener_1 (CompleteMotionGestureInputEventHandler.jm_getInstance_0) (GameKeyFromMotionGestureEventListener.jnew_0))))
    this))

    
(unless (fboundp 'jm_onMotionGestureCompleted_1) (defgeneric jm_onMotionGestureCompleted_1 (this p1)))
(defmethod jm_onMotionGestureCompleted_1 ((this ResolveCompleteMotionGestureListener) _list)
  (declare (ignorable this _list))
  (let (_configuration _commandActionsList _size _association _completeMotionGestureInputEvent _index)
  (declare (ignorable _configuration _commandActionsList _size _association _completeMotionGestureInputEvent _index))
    (block jreturn
        (setf _configuration (MotionGestureConfigurationFactory.jm_getInstance_0))
        (setf _commandActionsList (jm_getAssociateCommandActionsList_0 _configuration))
        (setf _size (jm_size_0 _commandActionsList))
        (progn
            (setf _index (JR.i32 (- _size 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _association (aref (slot-value _commandActionsList 'f_objectArray) _index))
            (if (eq (jm_isMotionGestureArrayEquals_1 _association _list) t)
                (progn
                (setf _completeMotionGestureInputEvent (jm_getCommandAction_0 _association))
                (jm_fireEvent_1 (CompleteMotionGestureInputEventHandler.jm_getInstance_0) _completeMotionGestureInputEvent)
                (return-from jbreak))))
                (setf _index (JR.i32 (- _index 1)))))))))



