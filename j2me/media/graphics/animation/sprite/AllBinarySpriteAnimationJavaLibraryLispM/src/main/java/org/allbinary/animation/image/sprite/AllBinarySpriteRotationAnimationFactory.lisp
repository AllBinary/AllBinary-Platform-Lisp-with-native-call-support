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

(defclass AllBinarySpriteRotationAnimationFactory (BaseImageAnimationFactory)
  ((f_animationFactorySpriteScaleUtil :initform nil)))

    
(defun AllBinarySpriteRotationAnimationFactory.jm_createWHDY_4 (_image _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _dx _dy _animationBehaviorFactory))
  (let (_spriteRotationAnimationFactory)
  (declare (ignorable _spriteRotationAnimationFactory))
    (block jreturn
        (setf _spriteRotationAnimationFactory (AllBinarySpriteRotationAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (ash (jm_getHeight_0 _image) (- (logand 2 31))) (ash (jm_getHeight_0 _image) (- (logand 2 31))) 0 0 _animationBehaviorFactory))
        (jm_initWH_2 _spriteRotationAnimationFactory _dx _dy)
        (return-from jreturn _spriteRotationAnimationFactory))))

    
(defun AllBinarySpriteRotationAnimationFactory.jm_createWH_2 (_image _animationBehaviorFactory)
  (declare (ignorable _image _animationBehaviorFactory))
  (let ()
    (block jreturn
        (return-from jreturn (AllBinarySpriteRotationAnimationFactory.jm_createWHDY_4 _image 0 0 _animationBehaviorFactory)))))

    
(defun AllBinarySpriteRotationAnimationFactory.jm_createDXY_4 (_image _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _dx _dy _animationBehaviorFactory))
  (let (_spriteRotationAnimationFactory)
  (declare (ignorable _spriteRotationAnimationFactory))
    (block jreturn
        (setf _spriteRotationAnimationFactory (AllBinarySpriteRotationAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (jm_getHeight_0 _image) (jm_getHeight_0 _image) 0 0 _animationBehaviorFactory))
        (jm_init_2 _spriteRotationAnimationFactory _dx _dy)
        (return-from jreturn _spriteRotationAnimationFactory))))

    
(defun AllBinarySpriteRotationAnimationFactory.jm_createDXYQ_4 (_image _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _dx _dy _animationBehaviorFactory))
  (let (_spriteRotationAnimationFactory)
  (declare (ignorable _spriteRotationAnimationFactory))
    (block jreturn
        (setf _spriteRotationAnimationFactory (AllBinarySpriteRotationAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (ash (jm_getHeight_0 _image) (- (logand 2 31))) (ash (jm_getHeight_0 _image) (- (logand 2 31))) 0 0 _animationBehaviorFactory))
        (jm_init_2 _spriteRotationAnimationFactory _dx _dy)
        (return-from jreturn _spriteRotationAnimationFactory))))

    
(defun AllBinarySpriteRotationAnimationFactory.jm_createQ_2 (_image _animationBehaviorFactory)
  (declare (ignorable _image _animationBehaviorFactory))
  (let ()
    (block jreturn
        (return-from jreturn (AllBinarySpriteRotationAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (ash (jm_getHeight_0 _image) (- (logand 2 31))) (ash (jm_getHeight_0 _image) (- (logand 2 31))) 0 0 _animationBehaviorFactory)))))

    
(defun AllBinarySpriteRotationAnimationFactory.jm_createWHF_2 (_image _animationBehaviorFactory)
  (declare (ignorable _image _animationBehaviorFactory))
  (let ()
    (block jreturn
        (return-from jreturn (AllBinarySpriteRotationAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (jm_getHeight_0 _image) (jm_getHeight_0 _image) 0 0 _animationBehaviorFactory)))))

    
(defun AllBinarySpriteRotationAnimationFactory.jnew_7 (_image _sequenceArray _width _height _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _sequenceArray _width _height _dx _dy _animationBehaviorFactory))
  (let ((this (make-instance 'AllBinarySpriteRotationAnimationFactory)))
    (setf (slot-value this 'f_animationFactorySpriteScaleUtil) (AnimationFactorySpriteScaleUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (if (eq _animationBehaviorFactory (AnimationBehaviorFactory.jm_getInstance_0))
            (progn
            (ForcedLogUtil.jm_log_2 "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)))))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this AllBinarySpriteRotationAnimationFactory) _dx _dy)
  (declare (ignorable this _dx _dy))
  (let ()
    (block jreturn
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) _dx)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) _dy))))

    
(unless (fboundp 'jm_initWH_2) (defgeneric jm_initWH_2 (this p1 p2)))
(defmethod jm_initWH_2 ((this AllBinarySpriteRotationAnimationFactory) _dx _dy)
  (declare (ignorable this _dx _dy))
  (let ()
    (block jreturn
        (jm_init_2 this _dx _dy)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (JR.i32 (+ (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (JR.idiv (JR.i32 (- (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width))) 5))))
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (JR.i32 (+ (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (JR.idiv (JR.i32 (- (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_height))) 5)))))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this AllBinarySpriteRotationAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_sprite)
  (declare (ignorable _sprite))
    (block jreturn
        (setf _sprite (jm_createImage_5 (slot-value this 'f_animationFactorySpriteScaleUtil) (jm_getImage_0 this) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_height) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleWidth) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight)))
        (if (or (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) 0)) (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) 0)))
            (progn
            (return-from jreturn (AllBinaryAdjustedSpriteRotationAnimation.jnew_5 _sprite (jm_getImage_0 this) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))
            (progn
            (return-from jreturn (AllBinarySpriteRotationAnimation.jnew_3 _sprite (jm_getImage_0 this) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this AllBinarySpriteRotationAnimationFactory) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInstance_1 this 0)))))



