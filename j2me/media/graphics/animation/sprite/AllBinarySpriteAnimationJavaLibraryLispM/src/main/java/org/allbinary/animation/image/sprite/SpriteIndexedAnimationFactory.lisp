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
;;;; package org.allbinary.animation.image.sprite

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SpriteIndexedAnimationFactory (BaseImageAnimationFactory)
  ((f_animationFactorySpriteScaleUtil :initform nil)
   (f_basicColorArray :initform nil)))

    
(defun SpriteIndexedAnimationFactory.jm_createCWHDXY_7 (_image _basicColorArray _width _height _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _basicColorArray _width _height _dx _dy _animationBehaviorFactory))
  (let ()
    (block jreturn
        (return-from jreturn (SpriteIndexedAnimationFactory.jnew_8 _image _basicColorArray (PrimitiveIntUtil.jm_getArrayInstance_0) _width _height _dx _dy _animationBehaviorFactory)))))

    
(defun SpriteIndexedAnimationFactory.jm_createCWH_5 (_image _basicColorArray _width _height _animationBehaviorFactory)
  (declare (ignorable _image _basicColorArray _width _height _animationBehaviorFactory))
  (let (_spriteIndexedAnimationFactory)
  (declare (ignorable _spriteIndexedAnimationFactory))
    (block jreturn
        (setf _spriteIndexedAnimationFactory (SpriteIndexedAnimationFactory.jnew_8 _image _basicColorArray (PrimitiveIntUtil.jm_getArrayInstance_0) _width _height 0 0 _animationBehaviorFactory))
        (jm_initHWH_0 _spriteIndexedAnimationFactory)
        (return-from jreturn _spriteIndexedAnimationFactory))))

    
(defun SpriteIndexedAnimationFactory.jm_createWH_4 (_image _width _height _animationBehaviorFactory)
  (declare (ignorable _image _width _height _animationBehaviorFactory))
  (let ()
    (block jreturn
        (return-from jreturn (SpriteIndexedAnimationFactory.jnew_8 _image (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ZERO_ARRAY) (PrimitiveIntUtil.jm_getArrayInstance_0) _width _height 0 0 _animationBehaviorFactory)))))

    
(defun SpriteIndexedAnimationFactory.jnew_8 (_image _basicColorArray _sequenceArray _width _height _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _basicColorArray _sequenceArray _width _height _dx _dy _animationBehaviorFactory))
  (let ((this (make-instance 'SpriteIndexedAnimationFactory)))
    (setf (slot-value this 'f_animationFactorySpriteScaleUtil) (AnimationFactorySpriteScaleUtil.jm_getInstance_0))
    (setf (slot-value this 'f_basicColorArray) (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ZERO_ARRAY))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_basicColorArray) _basicColorArray)))
    this))

    
(unless (fboundp 'jm_initHWH_0) (defgeneric jm_initHWH_0 (this)))
(defmethod jm_initHWH_0 ((this SpriteIndexedAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (JR.i32 (- (ash (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width) (- (logand 2 31))))))
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (JR.i32 (- (ash (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_height) (- (logand 2 31))))))
        (if (AndroidUtil.jm_isAndroid_0)
            (progn
            (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (JR.i32 (+ (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) 3))))))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this SpriteIndexedAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_sprite)
  (declare (ignorable _sprite))
    (block jreturn
        (setf _sprite (jm_createImage_5 (slot-value this 'f_animationFactorySpriteScaleUtil) (jm_getImage_0 this) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_height) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleWidth) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight)))
        (if (or (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) 0)) (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) 0)))
            (progn
            (return-from jreturn (AdjustedSpriteIndexedAnimation.jnew_6 _sprite (jm_getImage_0 this) (slot-value this 'f_basicColorArray) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))
            (progn
            (return-from jreturn (SpriteIndexedAnimation.jnew_4 _sprite (jm_getImage_0 this) (slot-value this 'f_basicColorArray) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this SpriteIndexedAnimationFactory) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInstance_1 this 0)))))



