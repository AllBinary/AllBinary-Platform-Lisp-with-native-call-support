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
;;;; package org.allbinary.animation.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageRotationAnimationFactory (BaseImageAnimationFactory)
  ((f_angleIncrement :initform 0)))

    
(defun ImageRotationAnimationFactory.jnew_7 (_image _width _height _dx _dy _angleIncrement _animationBehaviorFactory)
  (declare (ignorable _image _width _height _dx _dy _angleIncrement _animationBehaviorFactory))
  (let ((this (make-instance 'ImageRotationAnimationFactory)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_angleIncrement) _angleIncrement)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) _dx)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) _dy)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this ImageRotationAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (if (or (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) 0)) (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) 0)))
            (progn
            (jm_processAdjust_1 (slot-value this 'f_animationFactoryImageScaleUtil) this)
            (return-from jreturn (AdjustedImageBaseRotationAnimation.jnew_6 (jm_getImage_0 this) (AngleInfo.jm_getInstance_1 (slot-value this 'f_angleIncrement)) (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))
            (progn
            (return-from jreturn (ImageBaseRotationAnimation.jnew_4 (jm_getImage_0 this) (AngleInfo.jm_getInstance_1 (slot-value this 'f_angleIncrement)) (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))))

    
(unless (fboundp 'jm_getAngleIncrementP_0) (defgeneric jm_getAngleIncrementP_0 (this)))
(defmethod jm_getAngleIncrementP_0 ((this ImageRotationAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_angleIncrement)))))



