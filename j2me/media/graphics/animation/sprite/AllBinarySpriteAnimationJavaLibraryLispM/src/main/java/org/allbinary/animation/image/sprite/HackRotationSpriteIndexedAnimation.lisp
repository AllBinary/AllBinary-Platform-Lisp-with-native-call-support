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
;;;; package org.allbinary.animation.image.sprite

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HackRotationSpriteIndexedAnimation (RotationAnimation)
  ((f_sprite :initform nil)
   (f_image :initform nil)))

    
(defun HackRotationSpriteIndexedAnimation.jnew_4 (_sprite _image _angleInfo _animationBehavior)
  (declare (ignorable _sprite _image _angleInfo _animationBehavior))
  (let ((this (make-instance 'HackRotationSpriteIndexedAnimation)))
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_sprite) _sprite)
        (setf (slot-value this 'f_image) _image)))
    this))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this HackRotationSpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 this)))))

    
(unless (fboundp 'jm_paintFrame_4) (defgeneric jm_paintFrame_4 (this p1 p2 p3 p4)))
(defmethod jm_paintFrame_4 ((this HackRotationSpriteIndexedAnimation) _g _frame _x _y)
  (declare (ignorable this _g _frame _x _y))
  (let ()
    (block jreturn
        (jm_setFrame_1 this _frame)
        (jm_paintXY_3 this _g _x _y))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this HackRotationSpriteIndexedAnimation) _g _x _y)
  (declare (ignorable this _g _x _y))
  (let ()
    (block jreturn
        (jm_setPosition_2 (slot-value this 'f_sprite) _x _y)
        (jm_paint_1 this _g))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this HackRotationSpriteIndexedAnimation) _g)
  (declare (ignorable this _g))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_sprite) _g))))

    
(unless (fboundp 'jm_nextRotation_0) (defgeneric jm_nextRotation_0 (this)))
(defmethod jm_nextRotation_0 ((this HackRotationSpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_nextFrame_0 (slot-value this 'f_sprite)))))

    
(unless (fboundp 'jm_previousRotation_0) (defgeneric jm_previousRotation_0 (this)))
(defmethod jm_previousRotation_0 ((this HackRotationSpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_prevFrame_0 (slot-value this 'f_sprite)))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this HackRotationSpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRawFrameCount_0 (slot-value this 'f_sprite))))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this HackRotationSpriteIndexedAnimation) _frame)
  (declare (ignorable this _frame))
  (let ()
    (block jreturn
        (jm_setFrame_1 (slot-value this 'f_sprite) _frame))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this HackRotationSpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getFrame_0 (slot-value this 'f_sprite))))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this HackRotationSpriteIndexedAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this HackRotationSpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))



