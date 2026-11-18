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

(defclass PopupMenuInputProcessor (BasicMenuInputProcessor)
  ((f_rectangleCollisionUtil :initform nil)
   (f_CLICK_DELAY :initform 0)
   (f_clickTimeHelper :initform nil)
   (f_rectangle :initform nil)))

    
(defun PopupMenuInputProcessor.jnew_4 (_gameKeyEventList _playerInputId _gameCanvas _rectangle)
  (declare (ignorable _gameKeyEventList _playerInputId _gameCanvas _rectangle))
  (let ((this (make-instance 'PopupMenuInputProcessor)))
    (setf (slot-value this 'f_rectangleCollisionUtil) (RectangleCollisionUtil.jm_getInstance_0))
    (setf (slot-value this 'f_CLICK_DELAY) 120)
    (setf (slot-value this 'f_clickTimeHelper) (TimeDelayHelper.jnew_1 (slot-value this 'f_CLICK_DELAY)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_rectangle) _rectangle)))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this PopupMenuInputProcessor) _rectangle)
  (declare (ignorable this _rectangle))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_rectangle) _rectangle))))

    
(unless (fboundp 'jm_processInput_1) (defgeneric jm_processInput_1 (this p1)))
(defmethod jm_processInput_1 ((this PopupMenuInputProcessor) _key)
  (declare (ignorable this _key))
  (let (_gameCanvas)
  (declare (ignorable _gameCanvas))
    (block jreturn
        (if (= _key (Canvas.jstatic_KEY_STAR))
            (progn
            (setf _gameCanvas (jm_getCanvas_0 this))
            (jm_toggleMenu_0 _gameCanvas)
            (return-from jreturn 1)))
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_processInputList_0) (defgeneric jm_processInputList_0 (this)))
(defmethod jm_processInputList_0 ((this PopupMenuInputProcessor))
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
                (if (not (null _gameKeyEvent))
                    (progn
                    (setf _key (jm_getKey_0 _gameKeyEvent))
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
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (GameInputStrings.jm_getInstance_0) 'f_PROCESS_INPUT) _e)
            (return-from jreturn (JR.i32 (- 1))))))))

    
(unless (fboundp 'jm_processMotionInputs_0) (defgeneric jm_processMotionInputs_0 (this)))
(defmethod jm_processMotionInputs_0 ((this PopupMenuInputProcessor))
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
(defmethod jm_processMotionInput_1 ((this PopupMenuInputProcessor) _motionGestureEvent)
  (declare (ignorable this _motionGestureEvent))
  (let (_touchMotionGestureFactory _motionGestureInput _point _rectPoint _gameCanvas)
  (declare (ignorable _touchMotionGestureFactory _motionGestureInput _point _rectPoint _gameCanvas))
    (block jreturn
        (if (null _motionGestureEvent)
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Exception: Bug" this (slot-value (slot-value this 'f_gameInputStrings) 'f_PROCESS_MOTION_INPUT))
            (return-from jreturn)))
        (setf _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
        (setf _motionGestureInput (jm_getMotionGesture_0 _motionGestureEvent))
        (if (eq _motionGestureInput (slot-value _touchMotionGestureFactory 'f_RELEASED))
            (progn
            (setf _point (jm_getCurrentPoint_0 _motionGestureEvent))
            (setf _rectPoint (jm_getPoint_0 (slot-value this 'f_rectangle)))
            (if (jm_isInside_6 (slot-value this 'f_rectangleCollisionUtil) (jm_getX_0 _rectPoint) (jm_getY_0 _rectPoint) (JR.i32 (+ (jm_getMaxX_0 (slot-value this 'f_rectangle)) 20)) (jm_getMaxY_0 (slot-value this 'f_rectangle)) (jm_getX_0 _point) (jm_getY_0 _point))
                (progn
                (if (jm_isTimeTNT_0 (slot-value this 'f_clickTimeHelper))
                    (progn
                    (setf _gameCanvas (jm_getCanvas_0 this))
                    (jm_toggleMenu_0 _gameCanvas))))))))))



