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
;;;; package org.allbinary.input.motion.gesture

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MirrorMotionGestureEventUtil (JObject)
  ((f_motionEventCircularPool :initform nil)))

(defvar MirrorMotionGestureEventUtil.jcell_instance :jnone)
(defun MirrorMotionGestureEventUtil.jstatic_instance ()
  (when (eq MirrorMotionGestureEventUtil.jcell_instance :jnone) (setf MirrorMotionGestureEventUtil.jcell_instance (MirrorMotionGestureEventUtil.jnew_0)))
  MirrorMotionGestureEventUtil.jcell_instance)
(defun (setf MirrorMotionGestureEventUtil.jstatic_instance) (value) (setf MirrorMotionGestureEventUtil.jcell_instance value))

    
(defun MirrorMotionGestureEventUtil.jnew_0 ()
  (let ((this (make-instance 'MirrorMotionGestureEventUtil)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_motionEventCircularPool) (MotionEventCircularPool.jm_createPool_1 (Integer.jstatic_MAX_VALUE)))))
    this))

    
(unless (fboundp 'jm_mirrorVerticle_2) (defgeneric jm_mirrorVerticle_2 (this p1 p2)))
(defmethod jm_mirrorVerticle_2 ((this MirrorMotionGestureEventUtil) _motionGestureEvent _halfWidth)
  (declare (ignorable this _motionGestureEvent _halfWidth))
  (let (_event _previousNewX _currentNewX _pointFactory _mirroredPreviousPoint _mirroredCurrentPoint)
  (declare (ignorable _event _previousNewX _currentNewX _pointFactory _mirroredPreviousPoint _mirroredCurrentPoint))
    (block jreturn
        (setf _event (jm_getInstance_1 (slot-value this 'f_motionEventCircularPool) (jm_getMotionGesture_0 _motionGestureEvent)))
        (setf _previousNewX (jm_getNewX_2 this (jm_getX_0 (jm_getPreviousPoint_0 _motionGestureEvent)) _halfWidth))
        (setf _currentNewX (jm_getNewX_2 this (jm_getX_0 (jm_getCurrentPoint_0 _motionGestureEvent)) _halfWidth))
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (setf _mirroredPreviousPoint (jm_createXY_2 _pointFactory _previousNewX (jm_getY_0 (jm_getPreviousPoint_0 _motionGestureEvent))))
        (setf _mirroredCurrentPoint (jm_createXY_2 _pointFactory _currentNewX (jm_getY_0 (jm_getCurrentPoint_0 _motionGestureEvent))))
        (jm_setPreviousPoint_1 _event _mirroredPreviousPoint)
        (jm_setCurrentPoint_1 _event _mirroredCurrentPoint)
        (return-from jreturn _event))))

    
(unless (fboundp 'jm_getNewX_2) (defgeneric jm_getNewX_2 (this p1 p2)))
(defmethod jm_getNewX_2 ((this MirrorMotionGestureEventUtil) _x _halfWidth)
  (declare (ignorable this _x _halfWidth))
  (let (_newX)
  (declare (ignorable _newX))
    (block jreturn
        (setf _newX 0)
        (if (> _x _halfWidth)
            (progn
            (setf _newX (JR.i32 (- _halfWidth (JR.i32 (- _x _halfWidth))))))
            (progn
            (setf _newX (JR.i32 (+ _halfWidth (JR.i32 (- _halfWidth _x)))))))
        (return-from jreturn _newX))))

    
(defun MirrorMotionGestureEventUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MirrorMotionGestureEventUtil.jstatic_instance)))))



