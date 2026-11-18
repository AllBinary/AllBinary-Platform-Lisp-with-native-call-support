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

(defclass OneRowSpriteIndexedAnimationFactory (BaseImageAnimationFactory)
  ((f_animationFactorySpriteScaleUtil :initform nil)))

    
(defun OneRowSpriteIndexedAnimationFactory.jm_createFactoryDX_3 (_image _dx _animationBehaviorFactory)
  (declare (ignorable _image _dx _animationBehaviorFactory))
  (let (_oneRowSpriteIndexedAnimationFactory)
  (declare (ignorable _oneRowSpriteIndexedAnimationFactory))
    (block jreturn
        (setf _oneRowSpriteIndexedAnimationFactory (OneRowSpriteIndexedAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (jm_getHeight_0 _image) (jm_getHeight_0 _image) 0 0 _animationBehaviorFactory))
        (jm_initW_1 _oneRowSpriteIndexedAnimationFactory _dx)
        (return-from jreturn _oneRowSpriteIndexedAnimationFactory))))

    
(defun OneRowSpriteIndexedAnimationFactory.jm_createFactoryDXY_4 (_image _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _dx _dy _animationBehaviorFactory))
  (let (_oneRowSpriteIndexedAnimationFactory)
  (declare (ignorable _oneRowSpriteIndexedAnimationFactory))
    (block jreturn
        (setf _oneRowSpriteIndexedAnimationFactory (OneRowSpriteIndexedAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (jm_getHeight_0 _image) (jm_getHeight_0 _image) 0 0 _animationBehaviorFactory))
        (jm_init_2 _oneRowSpriteIndexedAnimationFactory _dx _dy)
        (return-from jreturn _oneRowSpriteIndexedAnimationFactory))))

    
(defun OneRowSpriteIndexedAnimationFactory.jm_createFactoryWH_4 (_image _width _height _animationBehaviorFactory)
  (declare (ignorable _image _width _height _animationBehaviorFactory))
  (let ()
    (block jreturn
        (return-from jreturn (OneRowSpriteIndexedAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) _width _height 0 0 _animationBehaviorFactory)))))

    
(defun OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 (_image _animationBehaviorFactory)
  (declare (ignorable _image _animationBehaviorFactory))
  (let ()
    (block jreturn
        (return-from jreturn (OneRowSpriteIndexedAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (jm_getHeight_0 _image) (jm_getHeight_0 _image) 0 0 _animationBehaviorFactory)))))

    
(defun OneRowSpriteIndexedAnimationFactory.jnew_7 (_image _sequenceArray _width _height _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _sequenceArray _width _height _dx _dy _animationBehaviorFactory))
  (let ((this (make-instance 'OneRowSpriteIndexedAnimationFactory)))
    (setf (slot-value this 'f_animationFactorySpriteScaleUtil) (AnimationFactorySpriteScaleUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this OneRowSpriteIndexedAnimationFactory) _dx _dy)
  (declare (ignorable this _dx _dy))
  (let ()
    (block jreturn
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) _dx)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) _dy))))

    
(unless (fboundp 'jm_initW_1) (defgeneric jm_initW_1 (this p1)))
(defmethod jm_initW_1 ((this OneRowSpriteIndexedAnimationFactory) _dx)
  (declare (ignorable this _dx))
  (let ()
    (block jreturn
        (jm_init_2 this _dx 0)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (JR.i32 (+ (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (JR.i32 (- (ash (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width) (- (logand 2 31)))))))))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this OneRowSpriteIndexedAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_sprite)
  (declare (ignorable _sprite))
    (block jreturn
        (setf _sprite (jm_createImage_5 (slot-value this 'f_animationFactorySpriteScaleUtil) (jm_getImage_0 this) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_height) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleWidth) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight)))
        (if (or (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) 0)) (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) 0)))
            (progn
            (return-from jreturn (AdjustedSpriteIndexedAnimation.jnew_6 _sprite (jm_getImage_0 this) (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ZERO_ARRAY) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))
            (progn
            (return-from jreturn (SpriteIndexedAnimation.jnew_4 _sprite (jm_getImage_0 this) (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ZERO_ARRAY) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))))



