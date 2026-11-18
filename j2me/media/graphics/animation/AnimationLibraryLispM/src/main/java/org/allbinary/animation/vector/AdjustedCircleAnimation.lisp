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
;;;; package org.allbinary.animation.vector

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AdjustedCircleAnimation (CircleAnimation)
  ((f_xAdjustment :initform 0)
   (f_yAdjustment :initform 0)))

    
(defun AdjustedCircleAnimation.jm_createAnimation_5 (_width _height _xAdjustment _yAdjustment _basicColor)
  (declare (ignorable _width _height _xAdjustment _yAdjustment _basicColor))
  (let (_adjustedCircleAnimation)
  (declare (ignorable _adjustedCircleAnimation))
    (block jreturn
        (setf _adjustedCircleAnimation (AdjustedCircleAnimation.jnew_3 _width _height _basicColor))
        (jm_initXY_2 _adjustedCircleAnimation _xAdjustment _yAdjustment)
        (return-from jreturn _adjustedCircleAnimation))))

    
(defun AdjustedCircleAnimation.jm_createW_4 (_width _height _innerWidth _basicColor)
  (declare (ignorable _width _height _innerWidth _basicColor))
  (let (_adjustedCircleAnimation)
  (declare (ignorable _adjustedCircleAnimation))
    (block jreturn
        (setf _adjustedCircleAnimation (AdjustedCircleAnimation.jnew_3 _width _height _basicColor))
        (jm_init_1 _adjustedCircleAnimation _innerWidth)
        (return-from jreturn _adjustedCircleAnimation))))

    
(defun AdjustedCircleAnimation.jnew_3 (_width _height _basicColor)
  (declare (ignorable _width _height _basicColor))
  (let ((this (make-instance 'AdjustedCircleAnimation)))
    
    
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_initXY_2) (defgeneric jm_initXY_2 (this p1 p2)))
(defmethod jm_initXY_2 ((this AdjustedCircleAnimation) _xAdjustment _yAdjustment)
  (declare (ignorable this _xAdjustment _yAdjustment))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_xAdjustment) _xAdjustment)
        (setf (slot-value this 'f_yAdjustment) _yAdjustment))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this AdjustedCircleAnimation) _innerWidth)
  (declare (ignorable this _innerWidth))
  (let (_widthPortion)
  (declare (ignorable _widthPortion))
    (block jreturn
        (if (AndroidUtil.jm_isAndroid_0)
            (progn
            (setf _widthPortion (JR.idiv (JR.i32 (* (JR.idiv _innerWidth 3) 10)) 7))
            (setf (slot-value this 'f_xAdjustment) (JR.i32 (- (JR.i32 (- (ash (slot-value this 'f_width) (- (logand 1 31))) _widthPortion)))))
            (setf (slot-value this 'f_yAdjustment) (slot-value this 'f_xAdjustment)))
            (progn
            (setf (slot-value this 'f_xAdjustment) (JR.i32 (- (JR.i32 (- (ash (slot-value this 'f_width) (- (logand 1 31))) _innerWidth)))))
            (setf (slot-value this 'f_yAdjustment) (slot-value this 'f_xAdjustment)))))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this AdjustedCircleAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_setBasicColorP3_3 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this) (jm_getColor_0 this))
        (jm_drawArc_6 _graphics (JR.i32 (+ _x (slot-value this 'f_xAdjustment))) (JR.i32 (+ _y (slot-value this 'f_yAdjustment))) (slot-value this 'f_width) (slot-value this 'f_height) 0 (slot-value this 'f_TOTAL_ANGLE)))))



