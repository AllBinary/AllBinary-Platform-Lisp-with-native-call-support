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
;;;; package org.allbinary.animation.caption

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CaptionAnimation (Animation)
  ((f_animationInterface :initform nil)
   (f_overlayAnimationInterface :initform nil)
   (f_captionDx :initform 0)
   (f_captionDy :initform 0)
   (f_dx :initform 0)
   (f_dy :initform 0)))

    
(defun CaptionAnimation.jnew_6 (_animationInterface _overlayAnimationInterface _captionDx _captionDy _dx _dy)
  (declare (ignorable _animationInterface _overlayAnimationInterface _captionDx _captionDy _dx _dy))
  (let ((this (make-instance 'CaptionAnimation)))
    
    
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationInterface) _animationInterface)
        (setf (slot-value this 'f_overlayAnimationInterface) _overlayAnimationInterface)
        (setf (slot-value this 'f_captionDx) _captionDx)
        (setf (slot-value this 'f_captionDy) _captionDy)
        (setf (slot-value this 'f_dx) _dx)
        (setf (slot-value this 'f_dy) _dy)))
    this))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this CaptionAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this CaptionAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics (JR.i32 (+ _x (slot-value this 'f_captionDx))) (JR.i32 (+ _y (slot-value this 'f_captionDy))))
        (jm_paintXY_3 (slot-value this 'f_overlayAnimationInterface) _graphics (JR.i32 (+ (JR.i32 (+ _x (slot-value this 'f_captionDx))) (slot-value this 'f_dx))) (JR.i32 (+ (JR.i32 (+ _y (slot-value this 'f_captionDy))) (slot-value this 'f_dy)))))))

    
(unless (fboundp 'jm_paintThreedXYZ_4) (defgeneric jm_paintThreedXYZ_4 (this p1 p2 p3 p4)))
(defmethod jm_paintThreedXYZ_4 ((this CaptionAnimation) _graphics _x _y _z)
  (declare (ignorable this _graphics _x _y _z))
  (let ()
    (block jreturn
        (jm_paintThreedXYZ_4 (slot-value this 'f_animationInterface) _graphics (JR.i32 (+ _x (slot-value this 'f_captionDx))) (JR.i32 (+ _y (slot-value this 'f_captionDy))) _z)
        (jm_paintThreedXYZ_4 (slot-value this 'f_overlayAnimationInterface) _graphics (JR.i32 (+ (JR.i32 (+ _x (slot-value this 'f_captionDx))) (slot-value this 'f_dx))) (JR.i32 (+ (JR.i32 (+ _y (slot-value this 'f_captionDy))) (slot-value this 'f_dy))) _z))))



