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

(defclass GameKeyCompleteMotionGestureInputEventFactory (JObject)
  ((f_logUtil :initform nil)
   (f_eventList :initform nil)))

(defvar GameKeyCompleteMotionGestureInputEventFactory.jcell_SINGLETON :jnone)
(defun GameKeyCompleteMotionGestureInputEventFactory.jstatic_SINGLETON ()
  (when (eq GameKeyCompleteMotionGestureInputEventFactory.jcell_SINGLETON :jnone) (setf GameKeyCompleteMotionGestureInputEventFactory.jcell_SINGLETON (GameKeyCompleteMotionGestureInputEventFactory.jnew_0)))
  GameKeyCompleteMotionGestureInputEventFactory.jcell_SINGLETON)
(defun (setf GameKeyCompleteMotionGestureInputEventFactory.jstatic_SINGLETON) (value) (setf GameKeyCompleteMotionGestureInputEventFactory.jcell_SINGLETON value))

(defun GameKeyCompleteMotionGestureInputEventFactory.jnew_0 ()
  (let ((this (make-instance 'GameKeyCompleteMotionGestureInputEventFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_eventList) (BasicArrayListD.jnew_0))
    this))

    
(defun GameKeyCompleteMotionGestureInputEventFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameKeyCompleteMotionGestureInputEventFactory.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this GameKeyCompleteMotionGestureInputEventFactory) _gameKeyCompleteMotionGestureInputEvent)
  (declare (ignorable this _gameKeyCompleteMotionGestureInputEvent))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_eventList) _gameKeyCompleteMotionGestureInputEvent))))

    
(unless (fboundp 'jm_updateAll_0) (defgeneric jm_updateAll_0 (this)))
(defmethod jm_updateAll_0 ((this GameKeyCompleteMotionGestureInputEventFactory))
  (declare (ignorable this))
  (let (_gameKeyCompleteMotionGestureInputEvent _index)
  (declare (ignorable _gameKeyCompleteMotionGestureInputEvent _index))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) (jm_size_0 (slot-value this 'f_eventList)))) this "updateAll")
        (progn
            (setf _index (JR.i32 (- (jm_size_0 (slot-value this 'f_eventList)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _gameKeyCompleteMotionGestureInputEvent (aref (slot-value (slot-value this 'f_eventList) 'f_objectArray) _index))
            (jm_update_0 _gameKeyCompleteMotionGestureInputEvent))
                (setf _index (JR.i32 (- _index 1)))))))))



