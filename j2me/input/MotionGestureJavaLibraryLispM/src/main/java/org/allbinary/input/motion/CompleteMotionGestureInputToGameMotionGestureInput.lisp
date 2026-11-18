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
;;;; package org.allbinary.input.motion

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CompleteMotionGestureInputToGameMotionGestureInput (JObject)
  ((f_logUtil :initform nil)))

(defvar CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance :jnone)
(defun CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance ()
  (when (eq CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance :jnone) (setf CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance (CompleteMotionGestureInputToGameMotionGestureInput.jnew_0)))
  CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance)
(defun (setf CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance) (value) (setf CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance value))

(defun CompleteMotionGestureInputToGameMotionGestureInput.jnew_0 ()
  (let ((this (make-instance 'CompleteMotionGestureInputToGameMotionGestureInput)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(defun CompleteMotionGestureInputToGameMotionGestureInput.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this CompleteMotionGestureInputToGameMotionGestureInput))
  (declare (ignorable this))
  (let (_commonStrings _motionGestureConfiguration _touchMotionGestureFactory _list)
  (declare (ignorable _commonStrings _motionGestureConfiguration _touchMotionGestureFactory _list))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (handler-case (progn
            (PreLogUtil.jm_put_3 "Compound Motion Gestures" this (slot-value _commonStrings 'f_INIT))
            (setf _motionGestureConfiguration (MotionGestureConfigurationFactory.jm_getInstance_0))
            (setf _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
            (setf _list (BasicArrayListD.jnew_0))
            (jm_add_1 _list (slot-value _touchMotionGestureFactory 'f_DIAGONAL_DOWN_LEFT))
            (jm_addMotionGestureAction_2 _motionGestureConfiguration _list (DiagonalDownLeftTouchInputToGameKeyEventAction.jm_getInstance_0))
            (setf _list (BasicArrayListD.jnew_0))
            (jm_add_1 _list (slot-value _touchMotionGestureFactory 'f_DIAGONAL_DOWN_RIGHT))
            (jm_addMotionGestureAction_2 _motionGestureConfiguration _list (DiagonalDownRightTouchInputToGameKeyEventAction.jm_getInstance_0))
            (setf _list (BasicArrayListD.jnew_0))
            (jm_add_1 _list (slot-value _touchMotionGestureFactory 'f_DIAGONAL_UP_LEFT))
            (jm_addMotionGestureAction_2 _motionGestureConfiguration _list (DiagonalUpLeftTouchInputToGameKeyEventAction.jm_getInstance_0))
            (setf _list (BasicArrayListD.jnew_0))
            (jm_add_1 _list (slot-value _touchMotionGestureFactory 'f_DIAGONAL_UP_RIGHT))
            (jm_addMotionGestureAction_2 _motionGestureConfiguration _list (DiagonalUpRightTouchInputToGameKeyEventAction.jm_getInstance_0))
            (setf _list (BasicArrayListD.jnew_0))
            (jm_add_1 _list (slot-value _touchMotionGestureFactory 'f_LEFT))
            (jm_addMotionGestureAction_2 _motionGestureConfiguration _list (LeftTouchInputToGameKeyEventAction.jm_getInstance_0))
            (setf _list (BasicArrayListD.jnew_0))
            (jm_add_1 _list (slot-value _touchMotionGestureFactory 'f_RIGHT))
            (jm_addMotionGestureAction_2 _motionGestureConfiguration _list (RightTouchInputToGameKeyEventAction.jm_getInstance_0))
            (setf _list (BasicArrayListD.jnew_0))
            (jm_add_1 _list (slot-value _touchMotionGestureFactory 'f_DOWN))
            (jm_addMotionGestureAction_2 _motionGestureConfiguration _list (DownTouchInputToGameKeyEventAction.jm_getInstance_0))
            (setf _list (BasicArrayListD.jnew_0))
            (jm_add_1 _list (slot-value _touchMotionGestureFactory 'f_UP))
            (jm_addMotionGestureAction_2 _motionGestureConfiguration _list (UpTouchInputToGameKeyEventAction.jm_getInstance_0))
            (setf _list (BasicArrayListD.jnew_0))
            (jm_add_1 _list (slot-value _touchMotionGestureFactory 'f_RELEASED))
            (jm_addMotionGestureAction_2 _motionGestureConfiguration _list (ReleaseTouchInputToGameKeyEventAction.jm_getInstance_0)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_INIT) _e))))))



