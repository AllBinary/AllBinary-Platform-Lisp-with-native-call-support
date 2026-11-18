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

(defclass ColorCompositeSpriteIndexedAnimationFactory (BaseImageAnimationFactory)
  ((f_animationFactorySpriteScaleUtil :initform nil)
   (f_basicColorArray :initform nil)))

    
(defun ColorCompositeSpriteIndexedAnimationFactory.jnew_5 (_image _basicColorArray _width _height _animationBehaviorFactory)
  (declare (ignorable _image _basicColorArray _width _height _animationBehaviorFactory))
  (let ((this (make-instance 'ColorCompositeSpriteIndexedAnimationFactory)))
    (setf (slot-value this 'f_animationFactorySpriteScaleUtil) (AnimationFactorySpriteScaleUtil.jm_getInstance_0))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_basicColorArray) _basicColorArray)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this ColorCompositeSpriteIndexedAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_sprite)
  (declare (ignorable _sprite))
    (block jreturn
        (setf _sprite (jm_createImage_5 (slot-value this 'f_animationFactorySpriteScaleUtil) (jm_getImage_0 this) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_height) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleWidth) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight)))
        (return-from jreturn (SpriteIndexedAnimation.jnew_4 _sprite (jm_getImage_0 this) (slot-value this 'f_basicColorArray) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this ColorCompositeSpriteIndexedAnimationFactory) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInstance_1 this 0)))))



