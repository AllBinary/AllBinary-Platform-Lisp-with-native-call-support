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

(defclass ImageBaseRotationAnimation (RotationAnimation)
  ((f_image :initform nil)
   (f_anchor :initform 0)))

    
(defun ImageBaseRotationAnimation.jnew_4 (_image _angleInfo _totalAngle _animationBehavior)
  (declare (ignorable _image _angleInfo _totalAngle _animationBehavior))
  (let ((this (make-instance 'ImageBaseRotationAnimation)))
    
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_image) _image)))
    this))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this ImageBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 this)))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this ImageBaseRotationAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this ImageBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this ImageBaseRotationAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_drawImage_4 _graphics (slot-value this 'f_image) _x _y (slot-value this 'f_anchor)))))

    
(unless (fboundp 'jm_getImage_0) (defgeneric jm_getImage_0 (this)))
(defmethod jm_getImage_0 ((this ImageBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_image)))))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this ImageBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getWidth_0 (slot-value this 'f_image))))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this ImageBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getHeight_0 (slot-value this 'f_image))))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this ImageBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_disposeImage_1 (DisposalUtil.jm_getInstance_0) (slot-value this 'f_image)))))

    
(unless (fboundp 'jm_finalize_0) (defgeneric jm_finalize_0 (this)))
(defmethod jm_finalize_0 ((this ImageBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_disposeImage_1 (DisposalUtil.jm_getInstance_0) (slot-value this 'f_image)))))



