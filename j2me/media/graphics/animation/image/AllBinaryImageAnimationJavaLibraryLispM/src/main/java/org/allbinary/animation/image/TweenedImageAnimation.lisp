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

(defclass TweenedImageAnimation (IndexedAnimation)
  ((f_image :initform nil)
   (f_dx :initform 0)
   (f_dy :initform 0)
   (f_totalFrames :initform 0)
   (f_circularIndexUtil :initform nil)
   (f_anchor :initform 0)))

    
(defun TweenedImageAnimation.jnew_5 (_image _dx _dy _totalFrames _animationBehavior)
  (declare (ignorable _image _dx _dy _totalFrames _animationBehavior))
  (let ((this (make-instance 'TweenedImageAnimation)))
    
    
    
    
    
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_image) _image)
        (setf (slot-value this 'f_dx) _dx)
        (setf (slot-value this 'f_dy) _dy)
        (setf (slot-value this 'f_totalFrames) _totalFrames)
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 (slot-value this 'f_totalFrames)))))
    this))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this TweenedImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 this)))))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this TweenedImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_next_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this TweenedImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_previous_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this TweenedImageAnimation) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (jm_setIndex_1 (slot-value this 'f_circularIndexUtil) _index))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this TweenedImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this TweenedImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_totalFrames)))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this TweenedImageAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this TweenedImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this TweenedImageAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let (_frame _currentX _currentY)
  (declare (ignorable _frame _currentX _currentY))
    (block jreturn
        (setf _frame (jm_getFrame_0 this))
        (setf _currentX (JR.i32 (* (slot-value this 'f_dx) _frame)))
        (setf _currentY (JR.i32 (* (slot-value this 'f_dy) _frame)))
        (jm_drawImage_4 _graphics (slot-value this 'f_image) (JR.i32 (+ _x _currentX)) (JR.i32 (+ _y _currentY)) (slot-value this 'f_anchor)))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this TweenedImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_disposeImage_1 (DisposalUtil.jm_getInstance_0) (slot-value this 'f_image)))))

    
(unless (fboundp 'jm_finalize_0) (defgeneric jm_finalize_0 (this)))
(defmethod jm_finalize_0 ((this TweenedImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_disposeImage_1 (DisposalUtil.jm_getInstance_0) (slot-value this 'f_image)))))



