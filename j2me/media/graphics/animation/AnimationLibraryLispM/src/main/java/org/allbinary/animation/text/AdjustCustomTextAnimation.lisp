;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.animation.text

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AdjustCustomTextAnimation (CustomTextAnimation)
  ((f_dx :initform 0)
   (f_dy :initform 0)))

    
(defun AdjustCustomTextAnimation.jnew_5 (_text _fontSize _dx _dy _animationBehavior)
  (declare (ignorable _text _fontSize _dx _dy _animationBehavior))
  (let ((this (make-instance 'AdjustCustomTextAnimation)))
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_dx) _dx)
        (setf (slot-value this 'f_dy) _dy)))
    this))

    
(unless (fboundp 'jm_getDx_0) (defgeneric jm_getDx_0 (this)))
(defmethod jm_getDx_0 ((this AdjustCustomTextAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dx)))))

    
(unless (fboundp 'jm_setDx_1) (defgeneric jm_setDx_1 (this p1)))
(defmethod jm_setDx_1 ((this AdjustCustomTextAnimation) _dx)
  (declare (ignorable this _dx))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dx) _dx))))

    
(unless (fboundp 'jm_getDy_0) (defgeneric jm_getDy_0 (this)))
(defmethod jm_getDy_0 ((this AdjustCustomTextAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dy)))))

    
(unless (fboundp 'jm_setDy_1) (defgeneric jm_setDy_1 (this p1)))
(defmethod jm_setDy_1 ((this AdjustCustomTextAnimation) _dy)
  (declare (ignorable this _dy))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dy) _dy))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this AdjustCustomTextAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (call-next-method this _graphics (JR.i32 (+ _x (slot-value this 'f_dx))) (JR.i32 (+ _y (slot-value this 'f_dy)))))))



