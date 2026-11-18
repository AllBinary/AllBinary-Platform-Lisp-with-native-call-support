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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchButtonsPaintableComposite (ProcessPaintable)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_inputMappingInterface :initform nil)
   (f_touchButtonsPaintable :initform nil)
   (f_timeHelper :initform nil)
   (f_released :initform nil)
   (f_METHOD_NAME :initform nil)
   (f_RELEASE :initform nil)
   (f_FAST_REPEAT :initform nil)
   (f_IGNORE :initform nil)))

    
(defun TouchButtonsPaintableComposite.jnew_2 (_inputMappingInterface _basicColor)
  (declare (ignorable _inputMappingInterface _basicColor))
  (let ((this (make-instance 'TouchButtonsPaintableComposite)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_timeHelper) (TimeDelayHelper.jnew_1 250))
    (setf (slot-value this 'f_released) t)
    (setf (slot-value this 'f_METHOD_NAME) "onCompleteMotionGestureInputEvent")
    (setf (slot-value this 'f_RELEASE) "Ignoring: MotionGestureInput Release")
    (setf (slot-value this 'f_FAST_REPEAT) "Ignoring: MotionGestureInput Repeated To Quickly")
    (setf (slot-value this 'f_IGNORE) "Ignoring: Until Released")
  (let ()
    (block jreturn
        (setf (slot-value this 'f_inputMappingInterface) _inputMappingInterface)
        (jm_addListenerInterface_1 (CompleteMotionGestureInputEventHandler.jm_getInstance_0) this)
        (setf (slot-value this 'f_touchButtonsPaintable) (TouchButtonsMappingPaintable.jnew_1 _basicColor))))
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this TouchButtonsPaintableComposite) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onCompleteMotionGestureInputEvent_1) (defgeneric jm_onCompleteMotionGestureInputEvent_1 (this p1)))
(defmethod jm_onCompleteMotionGestureInputEvent_1 ((this TouchButtonsPaintableComposite) _completeMotionGestureInputEvent)
  (declare (ignorable this _completeMotionGestureInputEvent))
  (let (_touchMotionGestureFactory _gameKeyCompleteMotionGestureInputEvent _gameKey _motionGestureInput)
  (declare (ignorable _touchMotionGestureFactory _gameKeyCompleteMotionGestureInputEvent _gameKey _motionGestureInput))
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this "onCompleteMotionGestureInputEvent")
            (setf _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
            (setf _gameKeyCompleteMotionGestureInputEvent _completeMotionGestureInputEvent)
            (setf _gameKey (jm_getGameKey_0 _gameKeyCompleteMotionGestureInputEvent))
            (setf _motionGestureInput (jm_getMotionGestureInput_0 _completeMotionGestureInputEvent))
            (if (eq _motionGestureInput (slot-value _touchMotionGestureFactory 'f_RELEASED))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (slot-value this 'f_RELEASE) this (slot-value this 'f_METHOD_NAME))
                (setf (slot-value this 'f_released) t)
                (return-from jreturn)))
            (if (and (eq _motionGestureInput (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_NO_MOTION)) (not (jm_isTimeTNT_0 (slot-value this 'f_timeHelper))))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (slot-value this 'f_FAST_REPEAT) this (slot-value this 'f_METHOD_NAME))
                (return-from jreturn)))
            (if (not (slot-value this 'f_released))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (slot-value this 'f_IGNORE) this (slot-value this 'f_METHOD_NAME))
                (return-from jreturn)))
            (setf (slot-value this 'f_released) nil)
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "GameKey: ") (jm_toString_1 (StringUtil.jm_getInstance_0) _gameKey)) " MotionGestureInput: ") (jm_toString_1 (StringUtil.jm_getInstance_0) _motionGestureInput))) this (slot-value this 'f_METHOD_NAME))
            (jm_processInputMapping_2 (slot-value this 'f_inputMappingInterface) _gameKey _motionGestureInput))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value this 'f_METHOD_NAME) _e))))))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this TouchButtonsPaintableComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_removeListener_1 (CompleteMotionGestureInputEventHandler.jm_getInstance_0) this))))



