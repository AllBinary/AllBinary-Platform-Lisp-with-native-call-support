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

;TWB - Adjustments should be done in the resource creation and not at the animation level
(defclass PooledImageArrayRotationAnimationFactory (JObject)
  ((f_allBinaryImageRotationAnimationInfo :initform nil)
   (f_animationBehaviorFactory :initform nil)))

    
(defun PooledImageArrayRotationAnimationFactory.jm_createFactory_2 (_image _animationBehaviorFactory)
  (declare (ignorable _image _animationBehaviorFactory))
  (let (_totalAngle _angleIncrement)
  (declare (ignorable _totalAngle _angleIncrement))
    (block jreturn
        (setf _totalAngle (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE))
        (setf _angleIncrement (JR.idiv _totalAngle (jm_getGameControlFidelity_0 (GameConfigurationCentral.jm_getInstance_0))))
        (return-from jreturn (PooledImageArrayRotationAnimationFactory.jnew_7 _image (jm_getWidth_0 _image) (jm_getHeight_0 _image) (JR.i32 (- (ash (jm_getWidth_0 _image) (- (logand 2 31))))) (JR.i32 (- (ash (jm_getHeight_0 _image) (- (logand 2 31))))) _angleIncrement _animationBehaviorFactory)))))

    
(defun PooledImageArrayRotationAnimationFactory.jm_createDXY_4 (_image _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _dx _dy _animationBehaviorFactory))
  (let (_totalAngle _angleIncrement)
  (declare (ignorable _totalAngle _angleIncrement))
    (block jreturn
        (setf _totalAngle (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE))
        (setf _angleIncrement (JR.idiv _totalAngle (jm_getGameControlFidelity_0 (GameConfigurationCentral.jm_getInstance_0))))
        (return-from jreturn (PooledImageArrayRotationAnimationFactory.jnew_7 _image (jm_getWidth_0 _image) (jm_getHeight_0 _image) _dx _dy _angleIncrement _animationBehaviorFactory)))))

    
(defun PooledImageArrayRotationAnimationFactory.jnew_7 (_image _width _height _dx _dy _angleIncrement _animationBehaviorFactory)
  (declare (ignorable _image _width _height _dx _dy _angleIncrement _animationBehaviorFactory))
  (let ((this (make-instance 'PooledImageArrayRotationAnimationFactory)))
    (setf (slot-value this 'f_allBinaryImageRotationAnimationInfo) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
    
  (let (_totalAngle _imageArray)
  (declare (ignorable _totalAngle _imageArray))
    (block jreturn
        (setf (slot-value this 'f_animationBehaviorFactory) _animationBehaviorFactory)
        (setf _totalAngle (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE))
        (setf _imageArray (jm_generate_3 (ImageToRotationImageArrayUtil.jm_getInstance_0) _image _angleIncrement _totalAngle))
        (setf (slot-value this 'f_allBinaryImageRotationAnimationInfo) (ImageArrayRotationAnimationInfo.jnew_5 _imageArray _angleIncrement _totalAngle _dx _dy))))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this PooledImageArrayRotationAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (return-from jreturn (AdjustedImageArrayRotationAnimation.jm_createAdjustedImageArrayRotationAnimationInfo_2 (slot-value this 'f_allBinaryImageRotationAnimationInfo) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this PooledImageArrayRotationAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



