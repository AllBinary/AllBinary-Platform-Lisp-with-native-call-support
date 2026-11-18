;;;; Generated Code Do Not Modify
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullRotationAnimation (RotationAnimation)
  ())

    
(defun NullRotationAnimation.jm_createTotalAngle_3 (_angleInfo _totalAngle _animationBehavior)
  (declare (ignorable _angleInfo _totalAngle _animationBehavior))
  (let ()
    (block jreturn
        (return-from jreturn (NullRotationAnimation.jnew_3 _angleInfo (CircularIndexUtil.jm_createInstance_1 (JR.idiv _totalAngle (jm_getAngleIncrement_0 (jm_getAngleIncrementInfo_0 _angleInfo)))) _animationBehavior)))))

    
(defun NullRotationAnimation.jm_createQuarter_1 (_animationBehavior)
  (declare (ignorable _animationBehavior))
  (let ()
    (block jreturn
        (return-from jreturn (NullRotationAnimation.jnew_3 (AngleInfo.jm_getInstance_1 (slot-value (AngleFactory.jm_getInstance_0) 'f_QUARTER_TOTAL_ANGLE)) (CircularIndexUtil.jm_createInstance_1 4) _animationBehavior)))))

    
(defun NullRotationAnimation.jnew_3 (_angleInfo _circularIndexUtil _animationBehavior)
  (declare (ignorable _angleInfo _circularIndexUtil _animationBehavior))
  (let ((this (make-instance 'NullRotationAnimation)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this NullRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



