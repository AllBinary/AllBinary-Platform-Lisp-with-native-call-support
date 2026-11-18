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

(defclass ImageArrayRotationAnimation (ImageArrayBaseRotationAnimation)
  ((f_expectedTotalFrames :initform 0)))

    
(defun ImageArrayRotationAnimation.jm_createAnimation_2 (_anyType _animationBehavior)
  (declare (ignorable _anyType _animationBehavior))
  (let (_imageRotationAnimationInfo)
  (declare (ignorable _imageRotationAnimationInfo))
    (block jreturn
        (setf _imageRotationAnimationInfo _anyType)
        (return-from jreturn (ImageArrayRotationAnimation.jnew_4 (jm_getImageArray_0 _imageRotationAnimationInfo) (jm_getAngleInfoP_0 _imageRotationAnimationInfo) (jm_getTotalAngle_0 _imageRotationAnimationInfo) _animationBehavior)))))

    
(defun ImageArrayRotationAnimation.jnew_4 (_imageArray _angleInfo _totalAngle _animationBehavior)
  (declare (ignorable _imageArray _angleInfo _totalAngle _animationBehavior))
  (let ((this (make-instance 'ImageArrayRotationAnimation)))
    
  (let ()
    (block jreturn
        nil
        (jm_initImageArray_3 this _imageArray _angleInfo _totalAngle)))
    this))

    
(unless (fboundp 'jm_initImageArray_3) (defgeneric jm_initImageArray_3 (this p1 p2 p3)))
(defmethod jm_initImageArray_3 ((this ImageArrayRotationAnimation) _imageArray _angleInfo _totalAngle)
  (declare (ignorable this _imageArray _angleInfo _totalAngle))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_expectedTotalFrames) (JR.idiv _totalAngle (jm_getAngleIncrement_0 (jm_getAngleIncrementInfo_0 (slot-value this 'f_angleInfo)))))
        (jm_adjustAngle_1 (slot-value this 'f_angleInfo) 0)
        (if (/= (slot-value this 'f_expectedTotalFrames) (jm_getSize_0 this))
            (progn
            (error (JR.newException "Exception" "Wrong Number of Frames")))))))

    
(unless (fboundp 'jm_setImageArray_1) (defgeneric jm_setImageArray_1 (this p1)))
(defmethod jm_setImageArray_1 ((this ImageArrayRotationAnimation) _imageArray)
  (declare (ignorable this _imageArray))
  (let ()
    (block jreturn
        (call-next-method this _imageArray)
        (jm_adjustAngle_1 (slot-value this 'f_angleInfo) 0))))



