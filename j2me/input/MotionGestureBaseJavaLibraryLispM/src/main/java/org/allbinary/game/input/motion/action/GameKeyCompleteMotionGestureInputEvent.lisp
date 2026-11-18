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

(defclass GameKeyCompleteMotionGestureInputEvent (CompleteMotionGestureInputEvent)
  ((f_gameKeyEventFactory :initform nil)
   (f_SOURCE_ID :initform 0)
   (f_gameKey :initform nil)
   (f_gameKeyEvent :initform nil)
   (f_inputToGameKeyMapping :initform nil)))

    
(defun GameKeyCompleteMotionGestureInputEvent.jnew_3 (_name _motionGestureInput _inputToGameKeyMapping)
  (declare (ignorable _name _motionGestureInput _inputToGameKeyMapping))
  (let ((this (make-instance 'GameKeyCompleteMotionGestureInputEvent)))
    (setf (slot-value this 'f_gameKeyEventFactory) (GameKeyEventFactory.jm_getInstance_0))
    (setf (slot-value this 'f_SOURCE_ID) (slot-value (slot-value this 'f_gameKeyEventFactory) 'f_MOTION_GESTURE_SOURCE_ID))
    (setf (slot-value this 'f_gameKey) (GameKey.jstatic_NULL_GAME_KEY))
    (setf (slot-value this 'f_gameKeyEvent) (GameKeyEvent.jstatic_NONE))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_inputToGameKeyMapping) _inputToGameKeyMapping)
        (jm_add_1 (GameKeyCompleteMotionGestureInputEventFactory.jm_getInstance_0) this)
        (jm_update_0 this)))
    this))

    
(unless (fboundp 'jm_getSourceId_0) (defgeneric jm_getSourceId_0 (this)))
(defmethod jm_getSourceId_0 ((this GameKeyCompleteMotionGestureInputEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_SOURCE_ID)))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this GameKeyCompleteMotionGestureInputEvent))
  (declare (ignorable this))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_setGameKey_1 this (jm_getInstance_1 (slot-value this 'f_inputToGameKeyMapping) (jm_getId_0 (jm_getMotionGestureInput_0 this))))
            (jm_setGameKeyEvent_1 this (jm_getInstanceForInput_2 (slot-value this 'f_gameKeyEventFactory) this (jm_getGameKey_0 this))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_UPDATE) _e))))))

    
(unless (fboundp 'jm_setGameKeyEvent_1) (defgeneric jm_setGameKeyEvent_1 (this p1)))
(defmethod jm_setGameKeyEvent_1 ((this GameKeyCompleteMotionGestureInputEvent) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameKeyEvent) _gameKeyEvent))))

    
(unless (fboundp 'jm_getGameKeyEvent_0) (defgeneric jm_getGameKeyEvent_0 (this)))
(defmethod jm_getGameKeyEvent_0 ((this GameKeyCompleteMotionGestureInputEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameKeyEvent)))))

    
(unless (fboundp 'jm_setGameKey_1) (defgeneric jm_setGameKey_1 (this p1)))
(defmethod jm_setGameKey_1 ((this GameKeyCompleteMotionGestureInputEvent) _gameKey)
  (declare (ignorable this _gameKey))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameKey) _gameKey))))

    
(unless (fboundp 'jm_getGameKey_0) (defgeneric jm_getGameKey_0 (this)))
(defmethod jm_getGameKey_0 ((this GameKeyCompleteMotionGestureInputEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameKey)))))



