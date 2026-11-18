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
;;;; package org.allbinary.game.input.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameKeyEventFactory (JObject)
  ((f_logUtil :initform nil)
   (f_TOUCH_BUTTON_SOURCE_ID :initform 0)
   (f_MOTION_GESTURE_SOURCE_ID :initform 0)
   (f_MAX_SOURCES :initform 0)
   (f_ARRAY :initform nil)))

(defvar GameKeyEventFactory.jcell_instance :jnone)
(defun GameKeyEventFactory.jstatic_instance ()
  (when (eq GameKeyEventFactory.jcell_instance :jnone) (setf GameKeyEventFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  GameKeyEventFactory.jcell_instance)
(defun (setf GameKeyEventFactory.jstatic_instance) (value) (setf GameKeyEventFactory.jcell_instance value))

    
(defun GameKeyEventFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (GameKeyEventFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (GameKeyEventFactory.jstatic_instance) (GameKeyEventFactory.jnew_0))))
        (return-from jreturn (GameKeyEventFactory.jstatic_instance)))))

    
(defun GameKeyEventFactory.jnew_0 ()
  (let ((this (make-instance 'GameKeyEventFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_TOUCH_BUTTON_SOURCE_ID) 2)
    (setf (slot-value this 'f_MOTION_GESTURE_SOURCE_ID) 3)
    (setf (slot-value this 'f_MAX_SOURCES) 4)
    (setf (slot-value this 'f_ARRAY) (JR.newArray nil (slot-value this 'f_MAX_SOURCES) (slot-value (InputFactory.jm_getInstance_0) 'f_MAX)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this GameKeyEventFactory))
  (declare (ignorable this))
  (let (_nullUtil _size _index2 _index)
  (declare (ignorable _nullUtil _size _index2 _index))
    (block jreturn
        (setf _nullUtil (NullUtil.jm_getInstance_0))
        (setf _size (slot-value (InputFactory.jm_getInstance_0) 'f_MAX))
        (progn
            (setf _index (slot-value this 'f_MAX_SOURCES))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (progn
                (setf _index2 _size)
                (block jbreak (loop while (>= (setf _index2 (JR.i32 (- _index2 1))) 0) do
                    (block jcontinue
                (setf (aref (aref (slot-value this 'f_ARRAY) _index) _index2) (GameKeyEvent.jm_createEvent_3 (slot-value _nullUtil 'f_NULL_OBJECT) _index _index2)))))))))))))

    
(unless (fboundp 'jm_getInstanceForKey_2) (defgeneric jm_getInstanceForKey_2 (this p1 p2)))
(defmethod jm_getInstanceForKey_2 ((this GameKeyEventFactory) _anyType _key)
  (declare (ignorable this _anyType _key))
  (let (_gameKeyEvent)
  (declare (ignorable _gameKeyEvent))
    (block jreturn
        (setf _gameKeyEvent (aref (aref (slot-value this 'f_ARRAY) (jm_getSourceId_0 _anyType)) _key))
        (return-from jreturn _gameKeyEvent))))

    
(unless (fboundp 'jm_getInstanceForInput_2) (defgeneric jm_getInstanceForInput_2 (this p1 p2)))
(defmethod jm_getInstanceForInput_2 ((this GameKeyEventFactory) _anyType _input)
  (declare (ignorable this _anyType _input))
  (let (_gameKeyEvent)
  (declare (ignorable _gameKeyEvent))
    (block jreturn
        (setf _gameKeyEvent (aref (aref (slot-value this 'f_ARRAY) (jm_getSourceId_0 _anyType)) (jm_getId_0 _input)))
        (return-from jreturn _gameKeyEvent))))



