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

(defclass FormInputProcessor (InputProcessor)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_gameKeyEventFactory :initform nil)
   (f_downKeyEventHandler :initform nil)
   (f_upGameKeyEventHandler :initform nil)
   (f_inputFactory :initform nil)
   (f_platformKeyFactory :initform nil)
   (f_allBinaryGameCanvas :initform nil)))

    
(defun FormInputProcessor.jnew_1 (_allBinaryGameCanvas)
  (declare (ignorable _allBinaryGameCanvas))
  (let ((this (make-instance 'FormInputProcessor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_gameKeyEventFactory) (GameKeyEventFactory.jm_getInstance_0))
    (setf (slot-value this 'f_downKeyEventHandler) (DownKeyEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_upGameKeyEventHandler) (UpGameKeyEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_inputFactory) (InputFactory.jm_getInstance_0))
    (setf (slot-value this 'f_platformKeyFactory) (PlatformKeyFactory.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allBinaryGameCanvas) _allBinaryGameCanvas)))
    this))

    
(unless (fboundp 'jm_keyPressedByDevice_2) (defgeneric jm_keyPressedByDevice_2 (this p1 p2)))
(defmethod jm_keyPressedByDevice_2 ((this FormInputProcessor) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let (_input _gameKeyEvent)
  (declare (ignorable _input _gameKeyEvent))
    (block jreturn
        (handler-case (progn
            (PreLogUtil.jm_put_3 (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_inputFactory) 'f_KEY_CODE_LABEL)) _keyCode) (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE)) (slot-value (slot-value this 'f_inputFactory) 'f_DEVICE_ID_LABEL)) _deviceId)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_KEY_PRESSED))
            (setf _input (jm_getInstanceById_1 (slot-value this 'f_inputFactory) _keyCode))
            (setf _gameKeyEvent (jm_getInstanceForInput_2 (slot-value this 'f_gameKeyEventFactory) (slot-value this 'f_allBinaryGameCanvas) _input))
            (jm_fireEventForGameKeyEvent_1 (slot-value this 'f_downKeyEventHandler) _gameKeyEvent))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_gameInputStrings) 'f_ADD_KEY_EVENT) _e))))))

    
(unless (fboundp 'jm_keyReleasedByDevice_3) (defgeneric jm_keyReleasedByDevice_3 (this p1 p2 p3)))
(defmethod jm_keyReleasedByDevice_3 ((this FormInputProcessor) _canvas _keyCode _deviceId)
  (declare (ignorable this _canvas _keyCode _deviceId))
  (let (_input _gameKey _gameKeyEventSourceInterface _gameKeyEvent)
  (declare (ignorable _input _gameKey _gameKeyEventSourceInterface _gameKeyEvent))
    (block jreturn
        (handler-case (progn
            (setf _input (jm_getInstanceById_1 (slot-value this 'f_inputFactory) _keyCode))
            (if (jm_isEnter_1 (slot-value this 'f_platformKeyFactory) _input)
                (progn
                (PreLogUtil.jm_put_3 (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_inputFactory) 'f_KEY_CODE_LABEL)) _keyCode) (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE)) (slot-value (slot-value this 'f_inputFactory) 'f_DEVICE_ID_LABEL)) _deviceId)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_KEY_RELEASED))
                (setf _gameKey (slot-value (GameKeyFactory.jm_getInstance_0) 'f_KEY_NUM0))
                (setf _gameKeyEventSourceInterface _canvas)
                (setf _gameKeyEvent (jm_getInstanceForInput_2 (slot-value this 'f_gameKeyEventFactory) _gameKeyEventSourceInterface _gameKey))
                (jm_fireEvent_1 (slot-value this 'f_upGameKeyEventHandler) _gameKeyEvent)
                (jm_fireEvent_1 (jm_getInstanceForDevice_1 (slot-value this 'f_upGameKeyEventHandler) _deviceId) _gameKeyEvent))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_gameInputStrings) 'f_ADD_KEY_EVENT) _e))))))



