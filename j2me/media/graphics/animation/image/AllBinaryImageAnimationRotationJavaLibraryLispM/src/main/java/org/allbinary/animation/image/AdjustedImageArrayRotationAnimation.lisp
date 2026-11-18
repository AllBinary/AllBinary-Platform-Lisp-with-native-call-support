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

;TWB - Adjustments should be done in the resource creation and not at the animation level
(defclass AdjustedImageArrayRotationAnimation (ImageArrayRotationAnimation)
  ((f_dx :initform 0)
   (f_dy :initform 0)))

    
(defun AdjustedImageArrayRotationAnimation.jm_createAdjustedImageArrayRotationAnimationInfo_2 (_anyType _animationBehavior)
  (declare (ignorable _anyType _animationBehavior))
  (let (_imageRotationAnimationInfo)
  (declare (ignorable _imageRotationAnimationInfo))
    (block jreturn
        (setf _imageRotationAnimationInfo _anyType)
        (return-from jreturn (AdjustedImageArrayRotationAnimation.jnew_6 (jm_getImageArray_0 _imageRotationAnimationInfo) (jm_getAngleInfoP_0 _imageRotationAnimationInfo) (jm_getTotalAngle_0 _imageRotationAnimationInfo) (jm_getDx_0 _imageRotationAnimationInfo) (jm_getDy_0 _imageRotationAnimationInfo) _animationBehavior)))))

    
(defun AdjustedImageArrayRotationAnimation.jm_createAnimation_4 (_imageArray _angleInfo _totalAngle _animationBehavior)
  (declare (ignorable _imageArray _angleInfo _totalAngle _animationBehavior))
  (let ()
    (block jreturn
        (return-from jreturn (AdjustedImageArrayRotationAnimation.jnew_6 _imageArray _angleInfo _totalAngle (JR.i32 (- (ash (jm_getWidth_0 (aref _imageArray 0)) (- (logand 2 31))))) (JR.i32 (- (ash (jm_getHeight_0 (aref _imageArray 0)) (- (logand 2 31))))) _animationBehavior)))))

    
(defun AdjustedImageArrayRotationAnimation.jnew_6 (_imageArray _angleInfo _totalAngle _dx _dy _animationBehavior)
  (declare (ignorable _imageArray _angleInfo _totalAngle _dx _dy _animationBehavior))
  (let ((this (make-instance 'AdjustedImageArrayRotationAnimation)))
    
    
  (let ()
    (block jreturn
        nil
        (jm_init_2 this _dx _dy)))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this AdjustedImageArrayRotationAnimation) _dx _dy)
  (declare (ignorable this _dx _dy))
  (let ()
    (block jreturn
        (jm_setDx_1 this _dx)
        (jm_setDy_1 this _dy))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this AdjustedImageArrayRotationAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (call-next-method this _graphics (JR.i32 (+ _x (slot-value this 'f_dx))) (JR.i32 (+ _y (slot-value this 'f_dy)))))))

    
(unless (fboundp 'jm_setDx_1) (defgeneric jm_setDx_1 (this p1)))
(defmethod jm_setDx_1 ((this AdjustedImageArrayRotationAnimation) _dx)
  (declare (ignorable this _dx))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dx) _dx))))

    
(unless (fboundp 'jm_getDx_0) (defgeneric jm_getDx_0 (this)))
(defmethod jm_getDx_0 ((this AdjustedImageArrayRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dx)))))

    
(unless (fboundp 'jm_setDy_1) (defgeneric jm_setDy_1 (this p1)))
(defmethod jm_setDy_1 ((this AdjustedImageArrayRotationAnimation) _dy)
  (declare (ignorable this _dy))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dy) _dy))))

    
(unless (fboundp 'jm_getDy_0) (defgeneric jm_getDy_0 (this)))
(defmethod jm_getDy_0 ((this AdjustedImageArrayRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dy)))))



