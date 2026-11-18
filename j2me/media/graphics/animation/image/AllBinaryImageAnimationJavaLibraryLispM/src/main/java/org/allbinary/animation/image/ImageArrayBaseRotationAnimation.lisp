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

(defclass ImageArrayBaseRotationAnimation (RotationAnimation)
  ((f_imageModifierUtil :initform nil)
   (f_originalImageArray :initform nil)
   (f_imageArray :initform nil)
   (f_currentImage :initform nil)
   (f_totalFrames :initform 0)
   (f_anchor :initform 0)))

    
(defun ImageArrayBaseRotationAnimation.jnew_3 (_originalImageArray _angleInfo _animationBehavior)
  (declare (ignorable _originalImageArray _angleInfo _animationBehavior))
  (let ((this (make-instance 'ImageArrayBaseRotationAnimation)))
    (setf (slot-value this 'f_imageModifierUtil) (ImageModifierUtil.jm_getInstanceOrCreate_0))
    
    (setf (slot-value this 'f_imageArray) (NullImage.jstatic_NULL_IMAGE_ARRAY))
    
    
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_originalImageArray) _originalImageArray)
        (jm_setImageArray_1 this (jm_getImageArray_1 (slot-value this 'f_imageModifierUtil) _originalImageArray))
        (setf (slot-value this 'f_currentImage) (aref (slot-value this 'f_imageArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))))
    this))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this ImageArrayBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 this)))))

    
(unless (fboundp 'jm_setAlpha_1) (defgeneric jm_setAlpha_1 (this p1)))
(defmethod jm_setAlpha_1 ((this ImageArrayBaseRotationAnimation) _alpha)
  (declare (ignorable this _alpha))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (if (not (eq (slot-value this 'f_alphaP) _alpha))
            (progn
            (call-next-method this _alpha)
            (jm_reset_0 (slot-value this 'f_imageModifierUtil))
            (setf _index (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
            (jm_setAlpha_4 (slot-value this 'f_imageModifierUtil) (aref (slot-value this 'f_originalImageArray) _index) (aref (slot-value this 'f_imageArray) _index) _index (slot-value this 'f_alphaP)))))))

    
(unless (fboundp 'jm_nextRotation_0) (defgeneric jm_nextRotation_0 (this)))
(defmethod jm_nextRotation_0 ((this ImageArrayBaseRotationAnimation))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this)
        (setf _index (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
        (jm_setAlpha_4 (slot-value this 'f_imageModifierUtil) (aref (slot-value this 'f_originalImageArray) _index) (aref (slot-value this 'f_imageArray) _index) _index (slot-value this 'f_alphaP))
        (setf (slot-value this 'f_currentImage) (aref (slot-value this 'f_imageArray) _index)))))

    
(unless (fboundp 'jm_previousRotation_0) (defgeneric jm_previousRotation_0 (this)))
(defmethod jm_previousRotation_0 ((this ImageArrayBaseRotationAnimation))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this)
        (setf _index (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
        (jm_setAlpha_4 (slot-value this 'f_imageModifierUtil) (aref (slot-value this 'f_originalImageArray) _index) (aref (slot-value this 'f_imageArray) _index) _index (slot-value this 'f_alphaP))
        (setf (slot-value this 'f_currentImage) (aref (slot-value this 'f_imageArray) _index)))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this ImageArrayBaseRotationAnimation) _index2)
  (declare (ignorable this _index2))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this _index2)
        (setf _index (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
        (jm_setAlpha_4 (slot-value this 'f_imageModifierUtil) (aref (slot-value this 'f_originalImageArray) _index) (aref (slot-value this 'f_imageArray) _index) _index (slot-value this 'f_alphaP))
        (setf (slot-value this 'f_currentImage) (aref (slot-value this 'f_imageArray) _index)))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this ImageArrayBaseRotationAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this ImageArrayBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_setImageArray_1) (defgeneric jm_setImageArray_1 (this p1)))
(defmethod jm_setImageArray_1 ((this ImageArrayBaseRotationAnimation) _imageArray)
  (declare (ignorable this _imageArray))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_imageArray) _imageArray)
        (setf (slot-value this 'f_totalFrames) (length _imageArray))
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 (slot-value this 'f_totalFrames))))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this ImageArrayBaseRotationAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_drawImage_4 _graphics (slot-value this 'f_currentImage) _x _y (slot-value this 'f_anchor)))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this ImageArrayBaseRotationAnimation))
  (declare (ignorable this))
  (let (_disposalUtil _size2 _index _size)
  (declare (ignorable _disposalUtil _size2 _index _size))
    (block jreturn
        (setf _disposalUtil (DisposalUtil.jm_getInstance_0))
        (setf _size2 (length (slot-value this 'f_imageArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size2) do
                (block jcontinue
            (jm_disposeImage_1 _disposalUtil (aref (slot-value this 'f_imageArray) _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _size (length (slot-value this 'f_originalImageArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_disposeImage_1 _disposalUtil (aref (slot-value this 'f_originalImageArray) _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_disposeImage_1 _disposalUtil (slot-value this 'f_currentImage)))))

    
(unless (fboundp 'jm_finalize_0) (defgeneric jm_finalize_0 (this)))
(defmethod jm_finalize_0 ((this ImageArrayBaseRotationAnimation))
  (declare (ignorable this))
  (let (_disposalUtil _size2 _index _size)
  (declare (ignorable _disposalUtil _size2 _index _size))
    (block jreturn
        (setf _disposalUtil (DisposalUtil.jm_getInstance_0))
        (setf _size2 (length (slot-value this 'f_imageArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size2) do
                (block jcontinue
            (jm_disposeImage_1 _disposalUtil (aref (slot-value this 'f_imageArray) _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _size (length (slot-value this 'f_originalImageArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_disposeImage_1 _disposalUtil (aref (slot-value this 'f_originalImageArray) _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_disposeImage_1 _disposalUtil (slot-value this 'f_currentImage)))))



