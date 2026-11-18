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
;;;; package org.allbinary.input.motion.gesture.observer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ReleaseControlledMotionGestureListener (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_currentMotionGesture :initform nil)
   (f_isMouseGestureOccurring :initform nil)
   (f_motionGestureCollection :initform nil)
   (f_signed :initform nil)))

    
(defun ReleaseControlledMotionGestureListener.jnew_1 (_signed)
  (declare (ignorable _signed))
  (let ((this (make-instance 'ReleaseControlledMotionGestureListener)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_currentMotionGesture) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_NO_MOTION))
    (setf (slot-value this 'f_isMouseGestureOccurring) nil)
    (setf (slot-value this 'f_motionGestureCollection) (BasicArrayListD.jnew_0))
    
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (setf (slot-value this 'f_signed) _signed)))
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this ReleaseControlledMotionGestureListener) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED) this))))

    
(unless (fboundp 'jm_onUpMotionGestureEvent_1) (defgeneric jm_onUpMotionGestureEvent_1 (this p1)))
(defmethod jm_onUpMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let ()
    (block jreturn
        (jm_onMotionGestureEvent_1 this _ev))))

    
(unless (fboundp 'jm_onDownMotionGestureEvent_1) (defgeneric jm_onDownMotionGestureEvent_1 (this p1)))
(defmethod jm_onDownMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let ()
    (block jreturn
        (jm_onMotionGestureEvent_1 this _ev))))

    
(unless (fboundp 'jm_onLeftMotionGestureEvent_1) (defgeneric jm_onLeftMotionGestureEvent_1 (this p1)))
(defmethod jm_onLeftMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let ()
    (block jreturn
        (jm_onMotionGestureEvent_1 this _ev))))

    
(unless (fboundp 'jm_onRightMotionGestureEvent_1) (defgeneric jm_onRightMotionGestureEvent_1 (this p1)))
(defmethod jm_onRightMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let ()
    (block jreturn
        (jm_onMotionGestureEvent_1 this _ev))))

    
(unless (fboundp 'jm_onDiagonalDownRightMotionGestureEvent_1) (defgeneric jm_onDiagonalDownRightMotionGestureEvent_1 (this p1)))
(defmethod jm_onDiagonalDownRightMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let ()
    (block jreturn
        (jm_onMotionGestureEvent_1 this _ev))))

    
(unless (fboundp 'jm_onDiagonalDownLeftMotionGestureEvent_1) (defgeneric jm_onDiagonalDownLeftMotionGestureEvent_1 (this p1)))
(defmethod jm_onDiagonalDownLeftMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let ()
    (block jreturn
        (jm_onMotionGestureEvent_1 this _ev))))

    
(unless (fboundp 'jm_onDiagonalUpRightMotionGestureEvent_1) (defgeneric jm_onDiagonalUpRightMotionGestureEvent_1 (this p1)))
(defmethod jm_onDiagonalUpRightMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let ()
    (block jreturn
        (jm_onMotionGestureEvent_1 this _ev))))

    
(unless (fboundp 'jm_onDiagonalUpLeftMotionGestureEvent_1) (defgeneric jm_onDiagonalUpLeftMotionGestureEvent_1 (this p1)))
(defmethod jm_onDiagonalUpLeftMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let ()
    (block jreturn
        (jm_onMotionGestureEvent_1 this _ev))))

    
(unless (fboundp 'jm_onPressedMotionGestureEvent_1) (defgeneric jm_onPressedMotionGestureEvent_1 (this p1)))
(defmethod jm_onPressedMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_isMouseGestureOccurring) t)
        (setf (slot-value this 'f_currentMotionGesture) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_NO_MOTION))
        (jm_onMotionGestureEvent_1 this _ev))))

    
(unless (fboundp 'jm_onScrolledMotionGestureEvent_1) (defgeneric jm_onScrolledMotionGestureEvent_1 (this p1)))
(defmethod jm_onScrolledMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _motionGestureEvent)
  (declare (ignorable this _motionGestureEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_released_1) (defgeneric jm_released_1 (this p1)))
(defmethod jm_released_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let ()
    (block jreturn
        (handler-case (progn
            (if (eq (slot-value this 'f_isMouseGestureOccurring) nil)
                (progn
                (return-from jreturn)))
            (setf (slot-value this 'f_isMouseGestureOccurring) nil)
            (jm_onMotionGestureCompleted_1 (slot-value this 'f_signed) (slot-value this 'f_motionGestureCollection))
            (jm_clear_0 (slot-value this 'f_motionGestureCollection)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION_LABEL)) (jm_toString_1 (StringUtil.jm_getInstance_0) (jm_getMotionGesture_0 _ev)))) this "release" _e))))))

    
(unless (fboundp 'jm_onMotionGestureEvent_1) (defgeneric jm_onMotionGestureEvent_1 (this p1)))
(defmethod jm_onMotionGestureEvent_1 ((this ReleaseControlledMotionGestureListener) _ev)
  (declare (ignorable this _ev))
  (let (_motionGestureInput)
  (declare (ignorable _motionGestureInput))
    (block jreturn
        (if (eq (slot-value this 'f_isMouseGestureOccurring) nil)
            (progn
            (return-from jreturn)))
        (setf _motionGestureInput (jm_getMotionGesture_0 _ev))
        (if (eq _motionGestureInput (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_PRESSED))
            (progn
            (jm_onPressedMotionGestureEvent_1 this _ev))
            (if (eq _motionGestureInput (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_RELEASED))
            (progn
            (jm_released_1 this _ev))
            (progn
            (if (not (eq (slot-value this 'f_currentMotionGesture) _motionGestureInput))
                (progn
                (setf (slot-value this 'f_currentMotionGesture) _motionGestureInput)
                (jm_add_1 (slot-value this 'f_motionGestureCollection) (jm_getMotionGesture_0 _ev))))))))))



