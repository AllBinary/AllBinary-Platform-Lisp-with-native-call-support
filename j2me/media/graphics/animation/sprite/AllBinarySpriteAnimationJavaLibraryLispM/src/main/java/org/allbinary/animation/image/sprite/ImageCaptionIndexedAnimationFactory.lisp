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

(defclass ImageCaptionIndexedAnimationFactory (JObject)
  ((f_animationFactoryImageScaleUtil :initform nil)
   (f_animationFactorySpriteScaleUtil :initform nil)
   (f_captionImage :initform nil)
   (f_spriteMovieImage :initform nil)
   (f_frameWidth :initform 0)
   (f_frameHeight :initform 0)
   (f_captionDx :initform 0)
   (f_captionDy :initform 0)
   (f_dx :initform 0)
   (f_dy :initform 0)
   (f_time :initform 0)
   (f_soundInterface :initform nil)
   (f_scaleProperties :initform nil)
   (f_animationBehaviorFactory :initform nil)))

    
(defun ImageCaptionIndexedAnimationFactory.jnew_11 (_captionImage _spriteMovieImage _soundInterface _frameWidth _frameHeight _captionDx _captionDy _dx _dy _time _animationBehaviorFactory)
  (declare (ignorable _captionImage _spriteMovieImage _soundInterface _frameWidth _frameHeight _captionDx _captionDy _dx _dy _time _animationBehaviorFactory))
  (let ((this (make-instance 'ImageCaptionIndexedAnimationFactory)))
    (setf (slot-value this 'f_animationFactoryImageScaleUtil) (AnimationFactoryImageScaleUtil.jm_getInstance_0))
    (setf (slot-value this 'f_animationFactorySpriteScaleUtil) (AnimationFactorySpriteScaleUtil.jm_getInstance_0))
    
    
    
    
    
    
    
    
    
    
    (setf (slot-value this 'f_scaleProperties) (ScaleProperties.jstatic_instance))
    
  (let ()
    (block jreturn
        (if (eq _animationBehaviorFactory (AnimationBehaviorFactory.jm_getInstance_0))
            (progn
            (ForcedLogUtil.jm_log_2 "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)))
        (setf (slot-value this 'f_captionImage) _captionImage)
        (setf (slot-value this 'f_spriteMovieImage) _spriteMovieImage)
        (setf (slot-value this 'f_frameWidth) _frameWidth)
        (setf (slot-value this 'f_frameHeight) _frameHeight)
        (setf (slot-value this 'f_captionDx) _captionDx)
        (setf (slot-value this 'f_captionDy) _captionDy)
        (setf (slot-value this 'f_dx) _dx)
        (setf (slot-value this 'f_dy) _dy)
        (setf (slot-value this 'f_time) _time)
        (setf (slot-value this 'f_soundInterface) _soundInterface)
        (setf (slot-value this 'f_animationBehaviorFactory) _animationBehaviorFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this ImageCaptionIndexedAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_scaledImage _animationInterface _sprite _movieIndexedAnimationInterface _player)
  (declare (ignorable _scaledImage _animationInterface _sprite _movieIndexedAnimationInterface _player))
    (block jreturn
        (setf _scaledImage (jm_createImage_5 (slot-value this 'f_animationFactoryImageScaleUtil) (slot-value this 'f_captionImage) (jm_getWidth_0 (slot-value this 'f_captionImage)) (jm_getHeight_0 (slot-value this 'f_captionImage)) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleWidth) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight)))
        (setf _animationInterface (ImageAnimation.jnew_2 _scaledImage (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory))))
        (setf _sprite (jm_createImage_5 (slot-value this 'f_animationFactorySpriteScaleUtil) (slot-value this 'f_spriteMovieImage) (slot-value this 'f_frameWidth) (slot-value this 'f_frameHeight) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleWidth) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight)))
        (setf _movieIndexedAnimationInterface (SpriteIndexedAnimation.jnew_4 _sprite (slot-value this 'f_spriteMovieImage) (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ZERO_ARRAY) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory))))
        (setf _player (jm_getPlayerP_0 (slot-value this 'f_soundInterface)))
        (if (null _player)
            (progn
            (error (JR.newException "Exception" "Sound Was not Initialized"))))
        (return-from jreturn (CaptionIndexedAnimation.jnew_9 _animationInterface _movieIndexedAnimationInterface _player (slot-value this 'f_captionDx) (slot-value this 'f_captionDy) (slot-value this 'f_dx) (slot-value this 'f_dy) (slot-value this 'f_time) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this ImageCaptionIndexedAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scaleProperties) _scaleProperties))))



