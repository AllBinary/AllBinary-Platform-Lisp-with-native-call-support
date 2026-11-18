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
;;;; package org.allbinary.animation.text

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CustomTextAnimationFactory (JObject)
  ((f_logUtil :initform nil)
   (f_animationBehaviorFactory :initform nil)
   (f_basicColor :initform nil)
   (f_text :initform nil)
   (f_initScaleHeight :initform 0)
   (f_dx :initform 0)
   (f_dy :initform 0)
   (f_font :initform nil)
   (f_scaleProperties :initform nil)))

    
(defun CustomTextAnimationFactory.jm_createDXY_5 (_text _fontSize _dx _dy _animationBehaviorFactory)
  (declare (ignorable _text _fontSize _dx _dy _animationBehaviorFactory))
  (let (_customTextAnimationFactory)
  (declare (ignorable _customTextAnimationFactory))
    (block jreturn
        (setf _customTextAnimationFactory (CustomTextAnimationFactory.jnew_3 _text _fontSize _animationBehaviorFactory))
        (setf (slot-value _customTextAnimationFactory 'f_dx) _dx)
        (setf (slot-value _customTextAnimationFactory 'f_dy) _dy)
        (return-from jreturn _customTextAnimationFactory))))

    
(defun CustomTextAnimationFactory.jnew_3 (_text _fontSize _animationBehaviorFactory)
  (declare (ignorable _text _fontSize _animationBehaviorFactory))
  (let ((this (make-instance 'CustomTextAnimationFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK))
    
    
    (setf (slot-value this 'f_dx) 0)
    (setf (slot-value this 'f_dy) 0)
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scaleProperties) (ScaleProperties.jnew_0))
        (setf (slot-value this 'f_text) _text)
        (setf (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight) (JR.i32 (- _fontSize (JR.idiv _fontSize 4))))
        (setf (slot-value this 'f_initScaleHeight) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight))
        (setf (slot-value this 'f_animationBehaviorFactory) _animationBehaviorFactory)
        (setf (slot-value this 'f_font) (Font.jm_getFont_3 (Font.jstatic_FACE_SYSTEM) (Font.jstatic_STYLE_PLAIN) (slot-value this 'f_initScaleHeight)))))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this CustomTextAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_customTextAnimation)
  (declare (ignorable _customTextAnimation))
    (block jreturn
        (setf _customTextAnimation nil)
        (if (or (/= (slot-value this 'f_dx) 0) (/= (slot-value this 'f_dy) 0))
            (progn
            (setf _customTextAnimation (AdjustCustomTextAnimation.jnew_5 (slot-value this 'f_text) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight) (slot-value this 'f_dx) (slot-value this 'f_dy) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))
            (progn
            (setf _customTextAnimation (CustomTextAnimation.jnew_3 (slot-value this 'f_text) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory))))))
        (jm_setBasicColorP_1 _customTextAnimation (slot-value this 'f_basicColor))
        (return-from jreturn _customTextAnimation))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this CustomTextAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this CustomTextAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_stringWidth_1 (slot-value this 'f_font) (slot-value this 'f_text))))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this CustomTextAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getHeight_0 (slot-value this 'f_font))))))



