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

(defclass ImageArrayAnimationFactory (JObject)
  ((f_dx :initform 0)
   (f_dy :initform 0)
   (f_imageArray :initform nil)
   (f_animationBehaviorFactory :initform nil)))

    
(defun ImageArrayAnimationFactory.jnew_4 (_imageArray _dx _dy _animationBehaviorFactory)
  (declare (ignorable _imageArray _dx _dy _animationBehaviorFactory))
  (let ((this (make-instance 'ImageArrayAnimationFactory)))
    (setf (slot-value this 'f_dx) 0)
    (setf (slot-value this 'f_dy) 0)
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_imageArray) _imageArray)
        (setf (slot-value this 'f_animationBehaviorFactory) _animationBehaviorFactory)
        (setf (slot-value this 'f_dx) _dx)
        (setf (slot-value this 'f_dy) _dy)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this ImageArrayAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (if (or (/= (slot-value this 'f_dx) 0) (/= (slot-value this 'f_dy) 0))
            (progn
            (return-from jreturn (AdjustedImageArrayAnimation.jnew_4 (slot-value this 'f_imageArray) (slot-value this 'f_dx) (slot-value this 'f_dy) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))
            (progn
            (return-from jreturn (ImageArrayAnimation.jnew_2 (slot-value this 'f_imageArray) (AnimationBehavior.jm_getInstance_0))))))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this ImageArrayAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



