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

(defclass ImageArrayRotationAnimationInfo (JObject)
  ((f_imageArray :initform nil)
   (f_angleIncrement :initform 0)
   (f_totalAngle :initform 0)
   (f_dx :initform 0)
   (f_dy :initform 0)))

    
(defun ImageArrayRotationAnimationInfo.jnew_5 (_imageArray _angleIncrement _totalAngle _dx _dy)
  (declare (ignorable _imageArray _angleIncrement _totalAngle _dx _dy))
  (let ((this (make-instance 'ImageArrayRotationAnimationInfo)))
    
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_imageArray) _imageArray)
        (setf (slot-value this 'f_angleIncrement) _angleIncrement)
        (setf (slot-value this 'f_totalAngle) _totalAngle)
        (setf (slot-value this 'f_dx) _dx)
        (setf (slot-value this 'f_dy) _dy)))
    this))

    
(unless (fboundp 'jm_setImageArray_1) (defgeneric jm_setImageArray_1 (this p1)))
(defmethod jm_setImageArray_1 ((this ImageArrayRotationAnimationInfo) _imageArray)
  (declare (ignorable this _imageArray))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_imageArray) _imageArray))))

    
(unless (fboundp 'jm_getImageArray_0) (defgeneric jm_getImageArray_0 (this)))
(defmethod jm_getImageArray_0 ((this ImageArrayRotationAnimationInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_imageArray)))))

    
(unless (fboundp 'jm_getAngleInfoP_0) (defgeneric jm_getAngleInfoP_0 (this)))
(defmethod jm_getAngleInfoP_0 ((this ImageArrayRotationAnimationInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (AngleInfo.jm_getInstance_1 (JR.i16 (slot-value this 'f_angleIncrement)))))))

    
(unless (fboundp 'jm_setTotalAngle_1) (defgeneric jm_setTotalAngle_1 (this p1)))
(defmethod jm_setTotalAngle_1 ((this ImageArrayRotationAnimationInfo) _totalAngle)
  (declare (ignorable this _totalAngle))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_totalAngle) _totalAngle))))

    
(unless (fboundp 'jm_getTotalAngle_0) (defgeneric jm_getTotalAngle_0 (this)))
(defmethod jm_getTotalAngle_0 ((this ImageArrayRotationAnimationInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_totalAngle)))))

    
(unless (fboundp 'jm_setDx_1) (defgeneric jm_setDx_1 (this p1)))
(defmethod jm_setDx_1 ((this ImageArrayRotationAnimationInfo) _dx)
  (declare (ignorable this _dx))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dx) _dx))))

    
(unless (fboundp 'jm_getDx_0) (defgeneric jm_getDx_0 (this)))
(defmethod jm_getDx_0 ((this ImageArrayRotationAnimationInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dx)))))

    
(unless (fboundp 'jm_setDy_1) (defgeneric jm_setDy_1 (this p1)))
(defmethod jm_setDy_1 ((this ImageArrayRotationAnimationInfo) _dy)
  (declare (ignorable this _dy))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dy) _dy))))

    
(unless (fboundp 'jm_getDy_0) (defgeneric jm_getDy_0 (this)))
(defmethod jm_getDy_0 ((this ImageArrayRotationAnimationInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dy)))))



