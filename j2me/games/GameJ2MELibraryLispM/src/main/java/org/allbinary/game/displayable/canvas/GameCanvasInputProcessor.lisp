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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameCanvasInputProcessor (InputProcessor)
  ((f_logUtil :initform nil)
   (f_allBinaryGameCanvas :initform nil)
   (f_downGameKeyEventHandler :initform nil)
   (f_upGameKeyEventHandler :initform nil)
   (f_downKeyEventHandler :initform nil)
   (f_smallIntegerSingletonFactory :initform nil)
   (f_inputToGameKeyMapping :initform nil)
   (f_NONE :initform nil)
   (f_gameKeyEventFactory :initform nil)))

    
(defun GameCanvasInputProcessor.jnew_1 (_allBinaryGameCanvas)
  (declare (ignorable _allBinaryGameCanvas))
  (let ((this (make-instance 'GameCanvasInputProcessor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_downGameKeyEventHandler) (DownGameKeyEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_upGameKeyEventHandler) (UpGameKeyEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_downKeyEventHandler) (DownKeyEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_smallIntegerSingletonFactory) (SmallIntegerSingletonFactory.jm_getInstance_0))
    (setf (slot-value this 'f_inputToGameKeyMapping) (jm_getInputMapping_0 (jm_getPersistentInputMappingInstance_0 (PlatformInputMappingFactory.jm_getInstance_0))))
    (setf (slot-value this 'f_NONE) (slot-value (GameKeyFactory.jm_getInstance_0) 'f_NONE))
    (setf (slot-value this 'f_gameKeyEventFactory) (GameKeyEventFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allBinaryGameCanvas) _allBinaryGameCanvas)
        (jm_init_1 (slot-value this 'f_inputToGameKeyMapping) (slot-value this 'f_allBinaryGameCanvas))))
    this))

    
(unless (fboundp 'jm_keyPressedByDevice_2) (defgeneric jm_keyPressedByDevice_2 (this p1 p2)))
(defmethod jm_keyPressedByDevice_2 ((this GameCanvasInputProcessor) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let (_gameKey _gameKeyEvent _keyCodeAsInteger)
  (declare (ignorable _gameKey _gameKeyEvent _keyCodeAsInteger))
    (block jreturn
        (handler-case (progn
            (setf _gameKey (jm_getInstanceForCanvas_2 (slot-value this 'f_inputToGameKeyMapping) (slot-value this 'f_allBinaryGameCanvas) _keyCode))
            (if (not (eq _gameKey (slot-value this 'f_NONE)))
                (progn
                (setf _gameKeyEvent (jm_getInstanceForInput_2 (slot-value this 'f_gameKeyEventFactory) (slot-value this 'f_allBinaryGameCanvas) _gameKey))
                (jm_fireEvent_1 (slot-value this 'f_downGameKeyEventHandler) _gameKeyEvent)
                (jm_fireEvent_1 (jm_getInstanceForDevice_1 (slot-value this 'f_downGameKeyEventHandler) _deviceId) _gameKeyEvent))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_gameInputStrings) 'f_NO_KEY)) _keyCode)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_ADD_KEY_EVENT))))
            (setf _keyCodeAsInteger (jm_getAtNoThrow_1 (slot-value this 'f_smallIntegerSingletonFactory) _keyCode))
            (jm_fireEventI_1 (slot-value this 'f_downKeyEventHandler) _keyCodeAsInteger)
            (jm_fireEventI_1 (jm_getInstanceForDevice_1 (slot-value this 'f_downKeyEventHandler) _deviceId) _keyCodeAsInteger))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) "Key Event Error" this (slot-value (slot-value this 'f_gameInputStrings) 'f_ADD_KEY_EVENT) _e))))))

    
(unless (fboundp 'jm_keyReleasedByDevice_3) (defgeneric jm_keyReleasedByDevice_3 (this p1 p2 p3)))
(defmethod jm_keyReleasedByDevice_3 ((this GameCanvasInputProcessor) _canvas _keyCode _deviceId)
  (declare (ignorable this _canvas _keyCode _deviceId))
  (let ()
    (block jreturn
        (jm_removeGameKeyEvent_4 this _canvas _keyCode _deviceId nil))))

    
(unless (fboundp 'jm_removeGameKeyEvent_4) (defgeneric jm_removeGameKeyEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_removeGameKeyEvent_4 ((this GameCanvasInputProcessor) _canvas _keyCode _deviceId _repeated)
  (declare (ignorable this _canvas _keyCode _deviceId _repeated))
  (let (_gameKey _gameKeyEventSourceInterface _gameKeyEvent)
  (declare (ignorable _gameKey _gameKeyEventSourceInterface _gameKeyEvent))
    (block jreturn
        (handler-case (progn
            (setf _gameKey (jm_getInstanceForCanvas_2 (slot-value this 'f_inputToGameKeyMapping) _canvas _keyCode))
            (if (not (eq _gameKey (slot-value this 'f_NONE)))
                (progn
                (setf _gameKeyEventSourceInterface _canvas)
                (setf _gameKeyEvent (jm_getInstanceForInput_2 (slot-value this 'f_gameKeyEventFactory) _gameKeyEventSourceInterface _gameKey))
                (jm_fireEvent_1 (slot-value this 'f_upGameKeyEventHandler) _gameKeyEvent)
                (jm_fireEvent_1 (jm_getInstanceForDevice_1 (slot-value this 'f_upGameKeyEventHandler) _deviceId) _gameKeyEvent))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_gameInputStrings) 'f_NO_KEY)) _keyCode)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_REMOVE_KEY_EVENT)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) "Key Event Error" this (slot-value (slot-value this 'f_gameInputStrings) 'f_REMOVE_KEY_EVENT) _e))))))



