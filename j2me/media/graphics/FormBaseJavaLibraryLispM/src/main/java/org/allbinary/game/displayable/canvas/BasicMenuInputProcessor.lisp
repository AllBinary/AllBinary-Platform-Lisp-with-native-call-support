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

(defclass BasicMenuInputProcessor (PlayerGameInput)
  ((f_motionGestureEventList :initform nil)
   (f_canvas :initform nil)))

    
(defun BasicMenuInputProcessor.jnew_3 (_gameKeyEventList _playerInputId _gameCanvas)
  (declare (ignorable _gameKeyEventList _playerInputId _gameCanvas))
  (let ((this (make-instance 'BasicMenuInputProcessor)))
    (setf (slot-value this 'f_motionGestureEventList) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_canvas) (NullCanvas.jstatic_NULL_CANVAS))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_canvas) _gameCanvas)))
    this))

    
(unless (fboundp 'jm_onMotionGestureEvent_1) (defgeneric jm_onMotionGestureEvent_1 (this p1)))
(defmethod jm_onMotionGestureEvent_1 ((this BasicMenuInputProcessor) _motionGestureEvent)
  (declare (ignorable this _motionGestureEvent))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_motionGestureEventList) _motionGestureEvent))))

    
(unless (fboundp 'jm_onScrolledMotionGestureEvent_1) (defgeneric jm_onScrolledMotionGestureEvent_1 (this p1)))
(defmethod jm_onScrolledMotionGestureEvent_1 ((this BasicMenuInputProcessor) _motionGestureEvent)
  (declare (ignorable this _motionGestureEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setCanvas_1) (defgeneric jm_setCanvas_1 (this p1)))
(defmethod jm_setCanvas_1 ((this BasicMenuInputProcessor) _canvas)
  (declare (ignorable this _canvas))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_canvas) _canvas))))

    
(unless (fboundp 'jm_getCanvas_0) (defgeneric jm_getCanvas_0 (this)))
(defmethod jm_getCanvas_0 ((this BasicMenuInputProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_canvas)))))

    
(unless (fboundp 'jm_processInputList_0) (defgeneric jm_processInputList_0 (this)))
(defmethod jm_processInputList_0 ((this BasicMenuInputProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))



