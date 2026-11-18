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

(defclass MotionEventCircularPool (JObject)
  ((f_MIN :initform 0)
   (f_eventPool :initform nil)))

    
(defun MotionEventCircularPool.jm_createPool_1 (_id)
  (declare (ignorable _id))
  (let ()
    (block jreturn
        (return-from jreturn (MotionEventCircularPool.jnew_1 _id)))))

    
(defun MotionEventCircularPool.jnew_1 (_id)
  (declare (ignorable _id))
  (let ((this (make-instance 'MotionEventCircularPool)))
    (setf (slot-value this 'f_MIN) (jm_getId_0 (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_LAST_MOTION)))
    (setf (slot-value this 'f_eventPool) (AllBinaryEventCircularPool.jnew_1 (JR.i32 (- (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 1)) (slot-value this 'f_MIN)))))
  (let ()
    (block jreturn
        (jm_initAllBinaryEventCircularPool_1 (slot-value this 'f_eventPool) (MotionEventFactory.jnew_2 (slot-value this 'f_eventPool) _id))))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this MotionEventCircularPool) _motionGestureInput)
  (declare (ignorable this _motionGestureInput))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInstance_1 (slot-value this 'f_eventPool) (JR.i32 (- (jm_getId_0 _motionGestureInput) (slot-value this 'f_MIN))))))))



