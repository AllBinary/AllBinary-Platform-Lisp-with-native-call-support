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

(defclass AllBinaryArrayImageRotationAnimationFactory (BaseImageAnimationFactory)
  ((f_imageArray :initform nil)
   (f_angleIncrement :initform 0)))

    
(defun AllBinaryArrayImageRotationAnimationFactory.jm_createFactory_3 (_image _dx _dy)
  (declare (ignorable _image _dx _dy))
  (let (_arrayImageRotationAnimationFactory)
  (declare (ignorable _arrayImageRotationAnimationFactory))
    (block jreturn
        (setf _arrayImageRotationAnimationFactory (AllBinaryArrayImageRotationAnimationFactory.jnew_5 _image (jm_getWidth_0 _image) (jm_getHeight_0 _image) (JR.idiv (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE) (jm_getGameControlFidelity_0 (GameConfigurationCentral.jm_getInstance_0))) (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_initDXY_2 _arrayImageRotationAnimationFactory _dx _dy)
        (return-from jreturn _arrayImageRotationAnimationFactory))))

    
(defun AllBinaryArrayImageRotationAnimationFactory.jm_createFactoryA_4 (_image _dx _dy _angleIncrement)
  (declare (ignorable _image _dx _dy _angleIncrement))
  (let (_arrayImageRotationAnimationFactory)
  (declare (ignorable _arrayImageRotationAnimationFactory))
    (block jreturn
        (setf _arrayImageRotationAnimationFactory (AllBinaryArrayImageRotationAnimationFactory.jnew_5 _image (jm_getWidth_0 _image) (jm_getHeight_0 _image) _angleIncrement (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_initDXY_2 _arrayImageRotationAnimationFactory _dx _dy)
        (return-from jreturn _arrayImageRotationAnimationFactory))))

    
(defun AllBinaryArrayImageRotationAnimationFactory.jnew_5 (_image _width _height _angleIncrement _animationBehaviorFactory)
  (declare (ignorable _image _width _height _angleIncrement _animationBehaviorFactory))
  (let ((this (make-instance 'AllBinaryArrayImageRotationAnimationFactory)))
    (setf (slot-value this 'f_imageArray) (NullImage.jstatic_NULL_IMAGE_ARRAY))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_angleIncrement) _angleIncrement)
        (jm_init_0 this)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this AllBinaryArrayImageRotationAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setImageArray_1 this (jm_generate_3 (ImageToRotationImageArrayUtil.jm_getInstance_0) (jm_getImage_0 this) (jm_getAngleIncrement_0 this) (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE))))))

    
(unless (fboundp 'jm_initDXY_2) (defgeneric jm_initDXY_2 (this p1 p2)))
(defmethod jm_initDXY_2 ((this AllBinaryArrayImageRotationAnimationFactory) _dx _dy)
  (declare (ignorable this _dx _dy))
  (let ()
    (block jreturn
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) _dx)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) _dy)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_originalDx) _dx)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_originalDy) _dy))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this AllBinaryArrayImageRotationAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_scaledImageArray _size _image _index)
  (declare (ignorable _scaledImageArray _size _image _index))
    (block jreturn
        (setf _scaledImageArray (JR.newArray nil (length (slot-value this 'f_imageArray))))
        (setf _size (length _scaledImageArray))
        (setf _image (jm_getImage_0 this))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref _scaledImageArray _index) (jm_createImage_5 (slot-value this 'f_animationFactoryImageScaleUtil) _image (jm_getWidth_0 _image) (jm_getHeight_0 _image) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleWidth) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight))))
                (setf _index (JR.i32 (+ _index 1))))))
        (if (or (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) 0)) (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) 0)))
            (progn
            (jm_processAdjust_1 (slot-value this 'f_animationFactoryImageScaleUtil) this)
            (return-from jreturn (AdjustedImageArrayRotationAnimation.jnew_6 _scaledImageArray (AngleInfo.jm_getInstance_1 (JR.i16 (jm_getAngleIncrement_0 this))) (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))
            (progn
            (return-from jreturn (ImageArrayRotationAnimation.jnew_4 _scaledImageArray (AngleInfo.jm_getInstance_1 (JR.i16 (jm_getAngleIncrement_0 this))) (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))))

    
(unless (fboundp 'jm_setImageArray_1) (defgeneric jm_setImageArray_1 (this p1)))
(defmethod jm_setImageArray_1 ((this AllBinaryArrayImageRotationAnimationFactory) _imageArray)
  (declare (ignorable this _imageArray))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_imageArray) _imageArray))))

    
(unless (fboundp 'jm_getAngleIncrement_0) (defgeneric jm_getAngleIncrement_0 (this)))
(defmethod jm_getAngleIncrement_0 ((this AllBinaryArrayImageRotationAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_angleIncrement)))))



