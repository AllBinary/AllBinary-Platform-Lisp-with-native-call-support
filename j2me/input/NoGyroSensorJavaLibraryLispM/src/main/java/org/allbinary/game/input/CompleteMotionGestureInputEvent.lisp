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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CompleteMotionGestureInputEvent (AllBinaryEventObject)
  ((f_logUtil :initform nil)
   (f_name :initform nil)
   (f_motionGestureInput :initform nil)))

    
(defun CompleteMotionGestureInputEvent.jnew_2 (_name _motionGestureInput)
  (declare (ignorable _name _motionGestureInput))
  (let ((this (make-instance 'CompleteMotionGestureInputEvent)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_name) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_motionGestureInput) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_NO_MOTION))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        nil
        (jm_setName_1 this _name)
        (handler-case (progn
            (jm_setMotionGestureInput_1 this _motionGestureInput))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this "InputToGameKeyEventAction" _e)))))
    this))

    
(unless (fboundp 'jm_setName_1) (defgeneric jm_setName_1 (this p1)))
(defmethod jm_setName_1 ((this CompleteMotionGestureInputEvent) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this CompleteMotionGestureInputEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_setMotionGestureInput_1) (defgeneric jm_setMotionGestureInput_1 (this p1)))
(defmethod jm_setMotionGestureInput_1 ((this CompleteMotionGestureInputEvent) _motionGestureInput)
  (declare (ignorable this _motionGestureInput))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_motionGestureInput) _motionGestureInput))))

    
(unless (fboundp 'jm_getMotionGestureInput_0) (defgeneric jm_getMotionGestureInput_0 (this)))
(defmethod jm_getMotionGestureInput_0 ((this CompleteMotionGestureInputEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_motionGestureInput)))))



