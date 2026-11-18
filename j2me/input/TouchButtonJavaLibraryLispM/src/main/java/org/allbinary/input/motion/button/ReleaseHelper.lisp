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

(defclass ReleaseHelper (JObject)
  ((f_touchButtonRecognizer :initform nil)))

    
(defun ReleaseHelper.jnew_1 (_touchButtonRecognizer)
  (declare (ignorable _touchButtonRecognizer))
  (let ((this (make-instance 'ReleaseHelper)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_touchButtonRecognizer) _touchButtonRecognizer)))
    this))

    
(unless (fboundp 'jm_release_2) (defgeneric jm_release_2 (this p1 p2)))
(defmethod jm_release_2 ((this ReleaseHelper) _touchButtonInput _deviceId)
  (declare (ignorable this _touchButtonInput _deviceId))
  (let (_nextTouchButtonInput _gameKeyEvent _index)
  (declare (ignorable _nextTouchButtonInput _gameKeyEvent _index))
    (block jreturn
        (setf _nextTouchButtonInput nil)
        (setf _gameKeyEvent nil)
        (progn
            (setf _index (JR.i32 (- (jm_size_0 (slot-value (slot-value this 'f_touchButtonRecognizer) 'f_currentlyPressedTouchButtonSingleton)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _nextTouchButtonInput (jm_get_1 (slot-value (slot-value this 'f_touchButtonRecognizer) 'f_currentlyPressedTouchButtonSingleton) _index))
            (setf _gameKeyEvent (jm_getGameKeyEvent_0 _nextTouchButtonInput))
            (jm_fireEvent_1 (slot-value (slot-value this 'f_touchButtonRecognizer) 'f_upGameKeyEventHandler) _gameKeyEvent)
            (jm_fireEvent_1 (jm_getInstanceForDevice_1 (slot-value (slot-value this 'f_touchButtonRecognizer) 'f_upGameKeyEventHandler) _deviceId) _gameKeyEvent)
            (jm_removeAt_1 (slot-value (slot-value this 'f_touchButtonRecognizer) 'f_currentlyPressedTouchButtonSingleton) _index))
                (setf _index (JR.i32 (- _index 1)))))))))



