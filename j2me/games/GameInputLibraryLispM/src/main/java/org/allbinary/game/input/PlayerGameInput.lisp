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

(defclass PlayerGameInput (GameInput)
  ((f_gameInputStrings :initform nil)
   (f_playerInputId :initform 0)))

    
(defun PlayerGameInput.jnew_3 (_gameKeyEventList _removalGameKeyEventList _playerInputId)
  (declare (ignorable _gameKeyEventList _removalGameKeyEventList _playerInputId))
  (let ((this (make-instance 'PlayerGameInput)))
    (setf (slot-value this 'f_gameInputStrings) (GameInputStrings.jm_getInstance_0))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_playerInputId) _playerInputId)))
    this))

    
(unless (fboundp 'jm_onPressGameKeyEvent_1) (defgeneric jm_onPressGameKeyEvent_1 (this p1)))
(defmethod jm_onPressGameKeyEvent_1 ((this PlayerGameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (jm_add_1 this _gameKeyEvent)
        (jm_addForRemoval_1 this _gameKeyEvent))))

    
(unless (fboundp 'jm_onDownGameKeyEvent_1) (defgeneric jm_onDownGameKeyEvent_1 (this p1)))
(defmethod jm_onDownGameKeyEvent_1 ((this PlayerGameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (jm_add_1 this _gameKeyEvent))))

    
(unless (fboundp 'jm_onDownKeyEvent_1) (defgeneric jm_onDownKeyEvent_1 (this p1)))
(defmethod jm_onDownKeyEvent_1 ((this PlayerGameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (jm_add_1 this _gameKeyEvent)
        (jm_addForRemoval_1 this _gameKeyEvent))))

    
(unless (fboundp 'jm_onDownKey_1) (defgeneric jm_onDownKey_1 (this p1)))
(defmethod jm_onDownKey_1 ((this PlayerGameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) (jm_toString_0 _gameKeyEvent))) this (slot-value (slot-value this 'f_gameInputStrings) 'f_ON_DOWN_GAME_KEY)))))

    
(unless (fboundp 'jm_onUpGameKeyEvent_1) (defgeneric jm_onUpGameKeyEvent_1 (this p1)))
(defmethod jm_onUpGameKeyEvent_1 ((this PlayerGameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (jm_addForRemoval_1 this _gameKeyEvent))))

    
(unless (fboundp 'jm_onUpKeyEvent_1) (defgeneric jm_onUpKeyEvent_1 (this p1)))
(defmethod jm_onUpKeyEvent_1 ((this PlayerGameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this PlayerGameInput) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_getPlayerInputId_0) (defgeneric jm_getPlayerInputId_0 (this)))
(defmethod jm_getPlayerInputId_0 ((this PlayerGameInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_playerInputId)))))



