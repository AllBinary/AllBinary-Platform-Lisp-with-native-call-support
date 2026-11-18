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

(defclass BaseImageAnimationFactory (JObject)
  ((f_animationFactoryImageScaleUtil :initform nil)
   (f_image :initform nil)
   (f_animationBehaviorFactory :initform nil)
   (f_sequenceArray :initform nil)
   (f_animationFactoryInitializationVisitor :initform nil)
   (f_scaleProperties :initform nil)))

    
(defun BaseImageAnimationFactory.jm_createFactoryBase_5 (_image _sequenceArray _width _height _animationBehaviorFactory)
  (declare (ignorable _image _sequenceArray _width _height _animationBehaviorFactory))
  (let ()
    (block jreturn
        (return-from jreturn (BaseImageAnimationFactory.jnew_7 _image _sequenceArray _width _height 0 0 _animationBehaviorFactory)))))

    
(defun BaseImageAnimationFactory.jnew_7 (_image _sequenceArray _width _height _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _sequenceArray _width _height _dx _dy _animationBehaviorFactory))
  (let ((this (make-instance 'BaseImageAnimationFactory)))
    (setf (slot-value this 'f_animationFactoryImageScaleUtil) (AnimationFactoryImageScaleUtil.jm_getInstance_0))
    
    
    
    
    (setf (slot-value this 'f_scaleProperties) (ScaleProperties.jstatic_instance))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationFactoryInitializationVisitor) (AnimationFactoryInitializationVisitor.jnew_0))
        (setf (slot-value this 'f_image) _image)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width) _width)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_height) _height)
        (setf (slot-value this 'f_animationBehaviorFactory) _animationBehaviorFactory)
        (setf (slot-value this 'f_sequenceArray) _sequenceArray)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) _dx)
        (setf (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) _dy)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this BaseImageAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) _instanceId)))))

    
(unless (fboundp 'jm_getImage_0) (defgeneric jm_getImage_0 (this)))
(defmethod jm_getImage_0 ((this BaseImageAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_image)))))

    
(unless (fboundp 'jm_getSequenceArray_0) (defgeneric jm_getSequenceArray_0 (this)))
(defmethod jm_getSequenceArray_0 ((this BaseImageAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_sequenceArray)))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this BaseImageAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scaleProperties) _scaleProperties)
        (if (slot-value (slot-value this 'f_scaleProperties) 'f_shouldScale)
            (progn
            (setf (slot-value (slot-value this 'f_scaleProperties) 'f_scaleWidth) (JR.i32 (* (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleX))))
            (setf (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight) (JR.i32 (* (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_height) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleY)))))
            (progn
            nil)))))

    
(unless (fboundp 'jm_getAnimationFactoryInitializationVisitorP_0) (defgeneric jm_getAnimationFactoryInitializationVisitorP_0 (this)))
(defmethod jm_getAnimationFactoryInitializationVisitorP_0 ((this BaseImageAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animationFactoryInitializationVisitor)))))

    
(unless (fboundp 'jm_getScalePropertiesP_0) (defgeneric jm_getScalePropertiesP_0 (this)))
(defmethod jm_getScalePropertiesP_0 ((this BaseImageAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_scaleProperties)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BaseImageAnimationFactory))
  (declare (ignorable this))
  (let (_commonSeps _commonLabels _stringBuffer)
  (declare (ignorable _commonSeps _commonLabels _stringBuffer))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf _commonLabels (CommonLabels.jm_getInstance_0))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (call-next-method this))
        (jm_append_1 _stringBuffer (slot-value _commonLabels 'f_HEIGHT_LABEL))
        (jm_appendint_1 _stringBuffer (jm_getHeight_0 (slot-value this 'f_image)))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE))
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_animationFactoryInitializationVisitor)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



