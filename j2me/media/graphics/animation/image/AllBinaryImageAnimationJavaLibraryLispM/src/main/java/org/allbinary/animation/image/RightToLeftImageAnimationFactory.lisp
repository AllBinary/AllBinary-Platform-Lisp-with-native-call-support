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

(defclass RightToLeftImageAnimationFactory (BaseImageAnimationFactory)
  ())

    
(defun RightToLeftImageAnimationFactory.jnew_4 (_image _dx _dy _animationBehaviorFactory)
  (declare (ignorable _image _dx _dy _animationBehaviorFactory))
  (let ((this (make-instance 'RightToLeftImageAnimationFactory)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this RightToLeftImageAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_scaledImage)
  (declare (ignorable _scaledImage))
    (block jreturn
        (setf _scaledImage (jm_createImage_5 (slot-value this 'f_animationFactoryImageScaleUtil) (jm_getImage_0 this) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_width) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_height) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleWidth) (slot-value (slot-value this 'f_scaleProperties) 'f_scaleHeight)))
        (if (or (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) 0)) (not (eq (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) 0)))
            (progn
            (jm_processAdjust_1 (slot-value this 'f_animationFactoryImageScaleUtil) this)
            (return-from jreturn (AdjustedRightToLeftImageAnimation.jnew_4 _scaledImage (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dx) (slot-value (slot-value this 'f_animationFactoryInitializationVisitor) 'f_dy) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))
            (progn
            (return-from jreturn (RightToLeftImageAnimation.jnew_2 _scaledImage (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))))



