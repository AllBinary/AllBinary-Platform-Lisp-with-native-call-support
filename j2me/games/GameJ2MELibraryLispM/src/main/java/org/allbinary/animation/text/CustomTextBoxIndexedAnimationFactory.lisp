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

(defclass CustomTextBoxIndexedAnimationFactory (JObject)
  ((f_logUtil :initform nil)
   (f_scaleProperties :initform nil)
   (f_maxLength :initform 0)))

    
(defun CustomTextBoxIndexedAnimationFactory.jnew_2 (_fontSize _maxLength)
  (declare (ignorable _fontSize _maxLength))
  (let ((this (make-instance 'CustomTextBoxIndexedAnimationFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scaleProperties) (ScaleProperties.jnew_0))
        (setf (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight) _fontSize)
        (setf (slot-value this 'f_maxLength) _maxLength)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this CustomTextBoxIndexedAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_abToGBUtil _abCanvas _font _customTextBox)
  (declare (ignorable _abToGBUtil _abCanvas _font _customTextBox))
    (block jreturn
        (setf _abToGBUtil (ABToGBUtil.jm_getInstance_0))
        (setf _abCanvas (slot-value _abToGBUtil 'f_abCanvas))
        (setf _font (Font.jm_getFont_3 (Font.jstatic_FACE_SYSTEM) (Font.jstatic_STYLE_PLAIN) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight)))
        (setf _customTextBox (CustomTextBox2.jnew_8 (jm_getCustomCommandListener_0 _abCanvas) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (slot-value this 'f_maxLength) (TextField.jstatic_ANY) _font (jm_getBackgroundBasicColor_0 (jm_getLayerManager_0 _abCanvas)) (jm_getForegroundBasicColor_0 (jm_getLayerManager_0 _abCanvas))))
        (return-from jreturn (CustomTextBoxIndexedAnimation.jnew_1 _customTextBox)))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this CustomTextBoxIndexedAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let (_fontSize)
  (declare (ignorable _fontSize))
    (block jreturn
        (setf _fontSize (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight))
        (setf (slot-value this 'f_scaleProperties) _scaleProperties)
        (if (< (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight) 6)
            (progn
            (setf (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight) _fontSize))))))



