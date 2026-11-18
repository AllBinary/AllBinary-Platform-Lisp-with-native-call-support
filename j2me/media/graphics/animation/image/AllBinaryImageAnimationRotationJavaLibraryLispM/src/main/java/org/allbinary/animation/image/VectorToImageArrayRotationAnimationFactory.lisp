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

(defclass VectorToImageArrayRotationAnimationFactory (BaseImageAnimationFactory)
  ((f_imageArray :initform nil)
   (f_angleIncrement :initform 0)))

    
(defun VectorToImageArrayRotationAnimationFactory.jnew_3 (_vectorInfo _basicColor _animationBehaviorFactory)
  (declare (ignorable _vectorInfo _basicColor _animationBehaviorFactory))
  (let ((this (make-instance 'VectorToImageArrayRotationAnimationFactory)))
    (setf (slot-value this 'f_imageArray) (NullImage.jstatic_NULL_IMAGE_ARRAY))
    
  (let ()
    (block jreturn
        nil
        (jm_init_0 this)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this VectorToImageArrayRotationAnimationFactory))
  (declare (ignorable this))
  (let (_angleFactory)
  (declare (ignorable _angleFactory))
    (block jreturn
        (setf _angleFactory (AngleFactory.jm_getInstance_0))
        (setf (slot-value this 'f_angleIncrement) (JR.idiv (slot-value _angleFactory 'f_TOTAL_ANGLE) (jm_getGameControlFidelity_0 (GameConfigurationCentral.jm_getInstance_0))))
        (setf (slot-value this 'f_imageArray) (jm_generate_3 (ImageToRotationImageArrayUtil.jm_getInstance_0) (jm_getImage_0 this) (jm_getAngleIncrement_0 this) (slot-value _angleFactory 'f_TOTAL_ANGLE))))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this VectorToImageArrayRotationAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (if (or (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) 0)) (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) 0)))
            (progn
            (return-from jreturn (AdjustedImageArrayRotationAnimation.jnew_6 (slot-value this 'f_imageArray) (AngleInfo.jm_getInstance_1 (JR.i16 (jm_getAngleIncrement_0 this))) (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))
            (progn
            (return-from jreturn (AdjustedImageArrayRotationAnimation.jm_createAnimation_4 (slot-value this 'f_imageArray) (AngleInfo.jm_getInstance_1 (JR.i16 (slot-value this 'f_angleIncrement))) (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))))

    
(unless (fboundp 'jm_getAngleIncrement_0) (defgeneric jm_getAngleIncrement_0 (this)))
(defmethod jm_getAngleIncrement_0 ((this VectorToImageArrayRotationAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_angleIncrement)))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this VectorToImageArrayRotationAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



