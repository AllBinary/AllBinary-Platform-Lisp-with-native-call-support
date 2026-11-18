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

(defclass AdjustedImageBaseRotationAnimation (ImageBaseRotationAnimation)
  ((f_dx :initform 0)
   (f_dy :initform 0)))

    
(defun AdjustedImageBaseRotationAnimation.jnew_6 (_image _angleInfo _totalAngle _dx _dy _animationBehavior)
  (declare (ignorable _image _angleInfo _totalAngle _dx _dy _animationBehavior))
  (let ((this (make-instance 'AdjustedImageBaseRotationAnimation)))
    
    
  (let ()
    (block jreturn
        nil
        (jm_init_2 this _dx _dy)))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this AdjustedImageBaseRotationAnimation) _dx _dy)
  (declare (ignorable this _dx _dy))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dx) _dx)
        (setf (slot-value this 'f_dy) _dy))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this AdjustedImageBaseRotationAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (call-next-method this _graphics (JR.i32 (+ _x (slot-value this 'f_dx))) (JR.i32 (+ _y (slot-value this 'f_dy)))))))



