;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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

(defclass ImageAnimationFactory (BaseImageAnimationFactory)
  ())

    
(defun ImageAnimationFactory.jm_createFactory_1 (_image)
  (declare (ignorable _image))
  (let ()
    (block jreturn
        (return-from jreturn (ImageAnimationFactory.jnew_6 _image (jm_getWidth_0 _image) (jm_getHeight_0 _image) 0 0 (AnimationBehaviorFactory.jm_getInstance_0))))))

    
(defun ImageAnimationFactory.jnew_6 (_image _width _height _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _width _height _dx _dy _animationBehaviorFactory))
  (let ((this (make-instance 'ImageAnimationFactory)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this ImageAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_scaledImage _openGLUtil)
  (declare (ignorable _scaledImage _openGLUtil))
    (block jreturn
        (setf _scaledImage (jm_createImage_5 (slot-value this 'f_animationFactoryImageScaleUtil) (jm_getImage_0 this) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_height) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleWidth) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight)))
        (setf _openGLUtil (OpenGLUtil.jm_getInstance_0))
        (setf _scaledImage (jm_addImage_1 _openGLUtil _scaledImage))
        (if (or (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) 0)) (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) 0)))
            (progn
            (jm_processAdjust_1 (slot-value this 'f_animationFactoryImageScaleUtil) this)
            (return-from jreturn (AdjustedImageAnimation.jnew_4 _scaledImage (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))
            (progn
            (return-from jreturn (ImageAnimation.jnew_2 _scaledImage (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))))



