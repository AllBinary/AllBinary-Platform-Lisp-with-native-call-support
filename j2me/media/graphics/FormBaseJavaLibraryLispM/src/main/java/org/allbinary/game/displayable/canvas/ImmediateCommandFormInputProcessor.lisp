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

(defclass ImmediateCommandFormInputProcessor (CommandFormInputProcessor)
  ((f_timeHelper :initform nil)
   (f_gameCommandCanvas :initform nil)))

    
(defun ImmediateCommandFormInputProcessor.jnew_4 (_gameKeyEventList _playerInputId _gameCommandCanvas _form)
  (declare (ignorable _gameKeyEventList _playerInputId _gameCommandCanvas _form))
  (let ((this (make-instance 'ImmediateCommandFormInputProcessor)))
    (setf (slot-value this 'f_timeHelper) (TimeDelayHelper.jnew_1 25))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_gameCommandCanvas) _gameCommandCanvas)))
    this))

    
(unless (fboundp 'jm_onPressGameKeyEvent_1) (defgeneric jm_onPressGameKeyEvent_1 (this p1)))
(defmethod jm_onPressGameKeyEvent_1 ((this ImmediateCommandFormInputProcessor) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (handler-case (progn
            (call-next-method this _gameKeyEvent)
            (if (jm_isTimeTNT_0 (slot-value this 'f_timeHelper))
                (progn
                (jm_processInputList_0 this)
                (jm_onChangeRepaint_1 (slot-value (slot-value this 'f_gameCommandCanvas) 'f_repaintBehavior) (jm_getCanvas_0 this)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_gameInputStrings) 'f_ON_PRESS_GAME_KEY) _e))))))

    
(unless (fboundp 'jm_onDownGameKeyEvent_1) (defgeneric jm_onDownGameKeyEvent_1 (this p1)))
(defmethod jm_onDownGameKeyEvent_1 ((this ImmediateCommandFormInputProcessor) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (handler-case (progn
            (call-next-method this _gameKeyEvent)
            (if (jm_isTimeTNT_0 (slot-value this 'f_timeHelper))
                (progn
                (jm_processInputList_0 this)
                (jm_onChangeRepaint_1 (slot-value (slot-value this 'f_gameCommandCanvas) 'f_repaintBehavior) (jm_getCanvas_0 this)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_gameInputStrings) 'f_ON_DOWN_GAME_KEY) _e))))))

    
(unless (fboundp 'jm_onUpGameKeyEvent_1) (defgeneric jm_onUpGameKeyEvent_1 (this p1)))
(defmethod jm_onUpGameKeyEvent_1 ((this ImmediateCommandFormInputProcessor) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (handler-case (progn
            (call-next-method this _gameKeyEvent)
            (if (jm_isTimeTNT_0 (slot-value this 'f_timeHelper))
                (progn
                (jm_processInputList_0 this)
                (jm_onChangeRepaint_1 (slot-value (slot-value this 'f_gameCommandCanvas) 'f_repaintBehavior) (jm_getCanvas_0 this)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_gameInputStrings) 'f_ON_UP_GAME_KEY) _e))))))

    
(unless (fboundp 'jm_onMotionGestureEvent_1) (defgeneric jm_onMotionGestureEvent_1 (this p1)))
(defmethod jm_onMotionGestureEvent_1 ((this ImmediateCommandFormInputProcessor) _motionGestureEvent)
  (declare (ignorable this _motionGestureEvent))
  (let ()
    (block jreturn
        (handler-case (progn
            (call-next-method this _motionGestureEvent)
            (if (jm_isTimeTNT_0 (slot-value this 'f_timeHelper))
                (progn
                (jm_processInputList_0 this)
                (jm_onChangeRepaint_1 (slot-value (slot-value this 'f_gameCommandCanvas) 'f_repaintBehavior) (jm_getCanvas_0 this)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "onMotionGestureEvent" _e))))))



