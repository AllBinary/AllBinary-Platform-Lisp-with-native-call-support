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

(defclass TouchButtonRecognizer (JObject)
  ((f_logUtil :initform nil)
   (f_rectangleCollisionUtil :initform nil)
   (f_upGameKeyEventHandler :initform nil)
   (f_downGameKeyEventHandler :initform nil)
   (f_lastPressedTouchButtonInput :initform nil)
   (f_currentlyPressedTouchButtonSingleton :initform nil)
   (f_releaseHelper :initform nil)))

    
(defun TouchButtonRecognizer.jnew_0 ()
  (let ((this (make-instance 'TouchButtonRecognizer)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_rectangleCollisionUtil) (RectangleCollisionUtil.jm_getInstance_0))
    (setf (slot-value this 'f_upGameKeyEventHandler) (UpGameKeyEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_downGameKeyEventHandler) (DownGameKeyEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_lastPressedTouchButtonInput) (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_NONE))
    (setf (slot-value this 'f_currentlyPressedTouchButtonSingleton) (CurrentlyPressedTouchButtonSingleton.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (if (jm_isMultiTouch_0 (TouchScreenFactory.jm_getInstance_0))
            (progn
            (setf (slot-value this 'f_releaseHelper) (MultitouchReleaseHelper.jnew_1 this)))
            (progn
            (setf (slot-value this 'f_releaseHelper) (ReleaseHelper.jnew_1 this))))))
    this))

    
(unless (fboundp 'jm_processRelease_2) (defgeneric jm_processRelease_2 (this p1 p2)))
(defmethod jm_processRelease_2 ((this TouchButtonRecognizer) _touchButtonInput _deviceId)
  (declare (ignorable this _touchButtonInput _deviceId))
  (let (_gameKeyEvent)
  (declare (ignorable _gameKeyEvent))
    (block jreturn
        (jm_release_2 (slot-value this 'f_releaseHelper) _touchButtonInput _deviceId)
        (setf _gameKeyEvent (jm_getGameKeyEvent_0 _touchButtonInput))
        (jm_fireEvent_1 (slot-value this 'f_upGameKeyEventHandler) _gameKeyEvent)
        (jm_fireEvent_1 (jm_getInstanceForDevice_1 (slot-value this 'f_upGameKeyEventHandler) _deviceId) _gameKeyEvent)
        (jm_remove_1 (slot-value this 'f_currentlyPressedTouchButtonSingleton) _touchButtonInput))))

    
(unless (fboundp 'jm_releaseTouchButtonInput_3) (defgeneric jm_releaseTouchButtonInput_3 (this p1 p2 p3)))
(defmethod jm_releaseTouchButtonInput_3 ((this TouchButtonRecognizer) _x _y _deviceId)
  (declare (ignorable this _x _y _deviceId))
  (let (_touchButtonInput _list _rectangle _point _touchButton _index)
  (declare (ignorable _touchButtonInput _list _rectangle _point _touchButton _index))
    (block jreturn
        (setf _touchButtonInput (slot-value this 'f_lastPressedTouchButtonInput))
        (if (jm_contains_1 (slot-value this 'f_currentlyPressedTouchButtonSingleton) _touchButtonInput)
            (progn
            (setf (slot-value this 'f_lastPressedTouchButtonInput) (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_NONE))
            (jm_processRelease_2 this _touchButtonInput _deviceId)
            (return-from jreturn t))
            (progn
            (setf _list (jm_getList_0 (TouchButtonFactory.jm_getInstance_0)))
            (setf _rectangle nil)
            (setf _point nil)
            (setf _touchButton nil)
            (progn
                (setf _index (JR.i32 (- (jm_size_0 _list) 1)))
                (block jbreak (loop while (>= _index 0) do
                    (block jcontinue
                (setf _touchButton (aref (slot-value _list 'f_objectArray) _index))
                (setf _rectangle (jm_getRectangle_0 _touchButton))
                (setf _point (jm_getPoint_0 _rectangle))
                (if (jm_isInside_6 (slot-value this 'f_rectangleCollisionUtil) (jm_getX_0 _point) (jm_getY_0 _point) (jm_getMaxX_0 _rectangle) (jm_getMaxY_0 _rectangle) _x _y)
                    (progn
                    (setf _touchButtonInput (jm_getTouchButtonInput_0 _touchButton))
                    (jm_processRelease_2 this _touchButtonInput _deviceId)
                    (return-from jreturn t))))
                    (setf _index (JR.i32 (- _index 1))))))))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_pressTouchButtonInput_3) (defgeneric jm_pressTouchButtonInput_3 (this p1 p2 p3)))
(defmethod jm_pressTouchButtonInput_3 ((this TouchButtonRecognizer) _x _y _deviceId)
  (declare (ignorable this _x _y _deviceId))
  (let (_list _rectangle _point _touchButton _touchButtonInput _gameKeyEvent _index)
  (declare (ignorable _list _rectangle _point _touchButton _touchButtonInput _gameKeyEvent _index))
    (block jreturn
        (setf _list (jm_getList_0 (TouchButtonFactory.jm_getInstance_0)))
        (setf _rectangle nil)
        (setf _point nil)
        (setf _touchButton nil)
        (setf _touchButtonInput nil)
        (setf _gameKeyEvent nil)
        (progn
            (setf _index (JR.i32 (- (jm_size_0 _list) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _touchButton (aref (slot-value _list 'f_objectArray) _index))
            (setf _rectangle (jm_getRectangle_0 _touchButton))
            (setf _point (jm_getPoint_0 _rectangle))
            (if (jm_isInside_6 (slot-value this 'f_rectangleCollisionUtil) (jm_getX_0 _point) (jm_getY_0 _point) (jm_getMaxX_0 _rectangle) (jm_getMaxY_0 _rectangle) _x _y)
                (progn
                (setf _touchButtonInput (jm_getTouchButtonInput_0 _touchButton))
                (if (not (jm_contains_1 (slot-value this 'f_currentlyPressedTouchButtonSingleton) _touchButtonInput))
                    (progn
                    (jm_release_2 (slot-value this 'f_releaseHelper) _touchButtonInput _deviceId)
                    (setf (slot-value this 'f_lastPressedTouchButtonInput) _touchButtonInput)
                    (jm_add_1 (slot-value this 'f_currentlyPressedTouchButtonSingleton) _touchButtonInput)
                    (setf _gameKeyEvent (jm_getGameKeyEvent_0 _touchButtonInput))
                    (jm_fireEvent_1 (slot-value this 'f_downGameKeyEventHandler) _gameKeyEvent)
                    (jm_fireEvent_1 (jm_getInstanceForDevice_1 (slot-value this 'f_downGameKeyEventHandler) _deviceId) _gameKeyEvent)))
                (return-from jreturn t))))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn nil))))



