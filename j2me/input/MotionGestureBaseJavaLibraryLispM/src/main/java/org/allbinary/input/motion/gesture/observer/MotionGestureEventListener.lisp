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

(defclass MotionGestureEventListener (JObject)
  ())

(defun MotionGestureEventListener.jnew_0 ()
  (let ((this (make-instance 'MotionGestureEventListener)))
    this))

    
(unless (fboundp 'jm_onPressedMotionGestureEvent_1) (defgeneric jm_onPressedMotionGestureEvent_1 (this p1)))
(defmethod jm_onPressedMotionGestureEvent_1 ((this MotionGestureEventListener) _ev)
  (declare (ignorable this _ev))
  (error (JR.newException "AbstractMethodError" "onPressedMotionGestureEvent")))

    
(unless (fboundp 'jm_onUpMotionGestureEvent_1) (defgeneric jm_onUpMotionGestureEvent_1 (this p1)))
(defmethod jm_onUpMotionGestureEvent_1 ((this MotionGestureEventListener) _ev)
  (declare (ignorable this _ev))
  (error (JR.newException "AbstractMethodError" "onUpMotionGestureEvent")))

    
(unless (fboundp 'jm_onDownMotionGestureEvent_1) (defgeneric jm_onDownMotionGestureEvent_1 (this p1)))
(defmethod jm_onDownMotionGestureEvent_1 ((this MotionGestureEventListener) _ev)
  (declare (ignorable this _ev))
  (error (JR.newException "AbstractMethodError" "onDownMotionGestureEvent")))

    
(unless (fboundp 'jm_onLeftMotionGestureEvent_1) (defgeneric jm_onLeftMotionGestureEvent_1 (this p1)))
(defmethod jm_onLeftMotionGestureEvent_1 ((this MotionGestureEventListener) _ev)
  (declare (ignorable this _ev))
  (error (JR.newException "AbstractMethodError" "onLeftMotionGestureEvent")))

    
(unless (fboundp 'jm_onRightMotionGestureEvent_1) (defgeneric jm_onRightMotionGestureEvent_1 (this p1)))
(defmethod jm_onRightMotionGestureEvent_1 ((this MotionGestureEventListener) _ev)
  (declare (ignorable this _ev))
  (error (JR.newException "AbstractMethodError" "onRightMotionGestureEvent")))

    
(unless (fboundp 'jm_onDiagonalDownRightMotionGestureEvent_1) (defgeneric jm_onDiagonalDownRightMotionGestureEvent_1 (this p1)))
(defmethod jm_onDiagonalDownRightMotionGestureEvent_1 ((this MotionGestureEventListener) _ev)
  (declare (ignorable this _ev))
  (error (JR.newException "AbstractMethodError" "onDiagonalDownRightMotionGestureEvent")))

    
(unless (fboundp 'jm_onDiagonalDownLeftMotionGestureEvent_1) (defgeneric jm_onDiagonalDownLeftMotionGestureEvent_1 (this p1)))
(defmethod jm_onDiagonalDownLeftMotionGestureEvent_1 ((this MotionGestureEventListener) _ev)
  (declare (ignorable this _ev))
  (error (JR.newException "AbstractMethodError" "onDiagonalDownLeftMotionGestureEvent")))

    
(unless (fboundp 'jm_onDiagonalUpRightMotionGestureEvent_1) (defgeneric jm_onDiagonalUpRightMotionGestureEvent_1 (this p1)))
(defmethod jm_onDiagonalUpRightMotionGestureEvent_1 ((this MotionGestureEventListener) _ev)
  (declare (ignorable this _ev))
  (error (JR.newException "AbstractMethodError" "onDiagonalUpRightMotionGestureEvent")))

    
(unless (fboundp 'jm_onDiagonalUpLeftMotionGestureEvent_1) (defgeneric jm_onDiagonalUpLeftMotionGestureEvent_1 (this p1)))
(defmethod jm_onDiagonalUpLeftMotionGestureEvent_1 ((this MotionGestureEventListener) _ev)
  (declare (ignorable this _ev))
  (error (JR.newException "AbstractMethodError" "onDiagonalUpLeftMotionGestureEvent")))

    
(unless (fboundp 'jm_released_1) (defgeneric jm_released_1 (this p1)))
(defmethod jm_released_1 ((this MotionGestureEventListener) _ev)
  (declare (ignorable this _ev))
  (error (JR.newException "AbstractMethodError" "released")))



