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

;In general allow scrolling of the menu and selection the center item
(defclass CommandFormInputProcessor (BasicMenuInputProcessor)
  ((f_MOTION_GESTURE_SOURCE_ID :initform 0)
   (f_CLICK_DELAY :initform 0)
   (f_clickTimeHelper :initform nil)
   (f_DOUBLE_CLICK_DELAY :initform 0)
   (f_doubleClickTimeHelper :initform nil)
   (f_isSingleKeyProcessing :initform nil)
   (f_form :initform nil)
   (f_hasPressed :initform nil)
   (f_PROCESS_COMMAND :initform nil)
   (f_NAME_LABEL :initform nil)))

    
(defun CommandFormInputProcessor.jnew_4 (_gameKeyEventList _playerInputId _gameCanvas _form)
  (declare (ignorable _gameKeyEventList _playerInputId _gameCanvas _form))
  (let ((this (make-instance 'CommandFormInputProcessor)))
    (setf (slot-value this 'f_MOTION_GESTURE_SOURCE_ID) (slot-value (GameKeyEventFactory.jm_getInstance_0) 'f_MOTION_GESTURE_SOURCE_ID))
    (setf (slot-value this 'f_CLICK_DELAY) 150)
    (setf (slot-value this 'f_clickTimeHelper) (TimeDelayHelper.jnew_1 (slot-value this 'f_CLICK_DELAY)))
    (setf (slot-value this 'f_DOUBLE_CLICK_DELAY) 1200)
    (setf (slot-value this 'f_doubleClickTimeHelper) (TimeDelayHelper.jnew_1 (slot-value this 'f_DOUBLE_CLICK_DELAY)))
    (setf (slot-value this 'f_isSingleKeyProcessing) (jm_isSingleKeyProcessing_0 (InputFeatureFactory.jm_getInstance_0)))
    
    (setf (slot-value this 'f_hasPressed) nil)
    (setf (slot-value this 'f_PROCESS_COMMAND) "processCommand")
    (setf (slot-value this 'f_NAME_LABEL) " ScrollSelectionForm: ")
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_form) _form)))
    this))

    
(unless (fboundp 'jm_processInput_1) (defgeneric jm_processInput_1 (this p1)))
(defmethod jm_processInput_1 ((this CommandFormInputProcessor) _key)
  (declare (ignorable this _key))
  (let ()
    (block jreturn
        (if (or (or (or (= _key (Canvas.jstatic_LEFT)) (= _key (Canvas.jstatic_RIGHT))) (= _key (Canvas.jstatic_UP))) (= _key (Canvas.jstatic_DOWN)))
            (progn
            (jm_add_1 (PrimaryPlayerQueueFactory.jm_getInstance_0) (SelectSound.jm_getInstance_0))
            (jm_processInputKey_1 (slot-value this 'f_form) _key)
            (return-from jreturn 1))
            (if (= _key (Canvas.jstatic_FIRE))
            (progn
            (jm_add_1 (PrimaryPlayerQueueFactory.jm_getInstance_0) (SelectSound.jm_getInstance_0))
            (return-from jreturn (jm_processCommand_0 this)))))
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_processCommand_0) (defgeneric jm_processCommand_0 (this)))
(defmethod jm_processCommand_0 ((this CommandFormInputProcessor))
  (declare (ignorable this))
  (let (_commandCurrentSelectionForm _command _features _openGLFeatureFactory)
  (declare (ignorable _commandCurrentSelectionForm _command _features _openGLFeatureFactory))
    (block jreturn
        (setf _commandCurrentSelectionForm (slot-value this 'f_form))
        (setf _command (jm_getSelectedCommand_0 _commandCurrentSelectionForm))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _command) this (slot-value this 'f_PROCESS_COMMAND))
        (setf _features (Features.jm_getInstance_0))
        (setf _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
        (if (and (and (SWTUtil.jstatic_isSWT) (jm_isFeature_1 _features (slot-value _openGLFeatureFactory 'f_OPENGL))) (not (eq _command (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_EXIT_COMMAND))))
            (progn
            (jm_run_0 (CommandRunnable.jnew_2 this _command)))
            (progn
            (jm_runTask_1 (PrimaryThreadPool.jm_getInstance_0) (CommandRunnable.jnew_2 this _command))))
        (if (eq _command (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_QUIT_COMMAND))
            (progn
            (return-from jreturn (JR.i32 (- 1))))
            (progn
            (return-from jreturn 1))))))

    
(unless (fboundp 'jm_processInputList_0) (defgeneric jm_processInputList_0 (this)))
(defmethod jm_processInputList_0 ((this CommandFormInputProcessor))
  (declare (ignorable this))
  (let (_motionInputsIndex _list _size _key _gameKeyEvent _index)
  (declare (ignorable _motionInputsIndex _list _size _key _gameKeyEvent _index))
    (block jreturn
        (handler-case (progn
            (setf _motionInputsIndex (jm_processMotionInputs_0 this))
            (setf _list (jm_getGameKeyEventList_0 this))
            (setf _size (jm_size_0 _list))
            (setf _key 0)
            (setf _gameKeyEvent nil)
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _gameKeyEvent (aref (slot-value _list 'f_objectArray) _index))
                (setf _key (jm_getKey_0 _gameKeyEvent))
                (if (not (eq (jm_getSourceId_0 _gameKeyEvent) (slot-value this 'f_MOTION_GESTURE_SOURCE_ID)))
                    (progn
                    (if (= (jm_processInput_1 this _key) 1)
                        (progn
                        (return-from jbreak))))))
                    (setf _index (JR.i32 (+ _index 1))))))
            (jm_clear_0 this)
            (if (or (> _size 0) (>= _motionInputsIndex 0))
                (progn
                (return-from jreturn 1))
                (progn
                (return-from jreturn (JR.i32 (- 1))))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_gameInputStrings) 'f_PROCESS_INPUT) _e)
            (return-from jreturn (JR.i32 (- 1))))))))

    
(unless (fboundp 'jm_processMotionInputs_0) (defgeneric jm_processMotionInputs_0 (this)))
(defmethod jm_processMotionInputs_0 ((this CommandFormInputProcessor))
  (declare (ignorable this))
  (let (_lastIndex _motionGestureEvent)
  (declare (ignorable _lastIndex _motionGestureEvent))
    (block jreturn
        (setf _lastIndex (JR.i32 (- (jm_size_0 (slot-value this 'f_motionGestureEventList)) 1)))
        (if (>= _lastIndex 0)
            (progn
            (setf _motionGestureEvent (aref (slot-value (slot-value this 'f_motionGestureEventList) 'f_objectArray) _lastIndex))
            (jm_processMotionInput_1 this _motionGestureEvent)))
        (jm_clear_0 (slot-value this 'f_motionGestureEventList))
        (return-from jreturn _lastIndex))))

    
(unless (fboundp 'jm_processMotionInput_1) (defgeneric jm_processMotionInput_1 (this p1)))
(defmethod jm_processMotionInput_1 ((this CommandFormInputProcessor) _motionGestureEvent)
  (declare (ignorable this _motionGestureEvent))
  (let (_touchMotionGestureFactory _motionGestureInput _point _index)
  (declare (ignorable _touchMotionGestureFactory _motionGestureInput _point _index))
    (block jreturn
        (setf _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
        (setf _motionGestureInput (jm_getMotionGesture_0 _motionGestureEvent))
        (if (eq _motionGestureInput (slot-value _touchMotionGestureFactory 'f_RELEASED))
            (progn
            (setf _point (jm_getCurrentPoint_0 _motionGestureEvent))
            (if (jm_isInForm_1 (slot-value this 'f_form) _point)
                (progn
                (setf _index (jm_getSelectedIndexForPoint_1 (slot-value this 'f_form) _point))
                (if (/= _index (JR.i32 (- 1)))
                    (progn
                    (jm_add_1 (PrimaryPlayerQueueFactory.jm_getInstance_0) (SelectSound.jm_getInstance_0))
                    (if (= _index (jm_getSelectedIndex_0 (slot-value this 'f_form)))
                        (progn
                        (if (jm_isTimeTNT_0 (slot-value this 'f_clickTimeHelper))
                            (progn
                            (jm_processCommand_0 this))))
                        (progn
                        (jm_setSelectedIndex_1 (slot-value this 'f_form) _index))))
                    (progn
                    nil))))
            (if (slot-value this 'f_hasPressed)
                (progn
                (if (not (jm_isTimeTNT_0 (slot-value this 'f_doubleClickTimeHelper)))
                    (progn
                    (jm_putF_3 (slot-value this 'f_logUtil) "Double Press" this (slot-value (slot-value this 'f_gameInputStrings) 'f_PROCESS_MOTION_INPUT))
                    (jm_processCommand_0 this)))
                (setf (slot-value (slot-value this 'f_doubleClickTimeHelper) 'f_delay) (slot-value this 'f_DOUBLE_CLICK_DELAY))
                (jm_setStartTimeTNT_0 (slot-value this 'f_doubleClickTimeHelper))))
            (setf (slot-value this 'f_hasPressed) nil))
            (if (eq _motionGestureInput (slot-value _touchMotionGestureFactory 'f_PRESSED))
            (progn
            (setf (slot-value (slot-value this 'f_doubleClickTimeHelper) 'f_delay) 0)
            (setf (slot-value this 'f_hasPressed) t)))))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this CommandFormInputProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (call-next-method this)) (slot-value this 'f_NAME_LABEL)) (jm_toString_0 (slot-value this 'f_form))))))))



