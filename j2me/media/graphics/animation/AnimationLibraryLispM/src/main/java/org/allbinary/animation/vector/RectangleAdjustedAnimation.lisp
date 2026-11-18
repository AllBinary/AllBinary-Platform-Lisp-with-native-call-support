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

(defclass RectangleAdjustedAnimation (Animation)
  ((f_width :initform 0)
   (f_height :initform 0)
   (f_offsetX :initform 0)
   (f_offsetY :initform 0)))

    
(defun RectangleAdjustedAnimation.jnew_5 (_width _height _offsetX _offsetY _basicColor)
  (declare (ignorable _width _height _offsetX _offsetY _basicColor))
  (let ((this (make-instance 'RectangleAdjustedAnimation)))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_width) _width)
        (setf (slot-value this 'f_height) _height)
        (setf (slot-value this 'f_offsetX) _offsetX)
        (setf (slot-value this 'f_offsetY) _offsetY)
        (jm_setBasicColorP_1 this _basicColor)))
    this))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this RectangleAdjustedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this RectangleAdjustedAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_setBasicColorP3_3 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this) (jm_getColor_0 this))
        (jm_drawRect_4 _graphics (JR.i32 (+ _x (slot-value this 'f_offsetX))) (JR.i32 (+ _y (slot-value this 'f_offsetY))) (slot-value this 'f_width) (slot-value this 'f_height)))))

    
(unless (fboundp 'jm_setWidth_1) (defgeneric jm_setWidth_1 (this p1)))
(defmethod jm_setWidth_1 ((this RectangleAdjustedAnimation) _width)
  (declare (ignorable this _width))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_width) _width))))

    
(unless (fboundp 'jm_setHeight_1) (defgeneric jm_setHeight_1 (this p1)))
(defmethod jm_setHeight_1 ((this RectangleAdjustedAnimation) _height)
  (declare (ignorable this _height))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_height) _height))))

    
(unless (fboundp 'jm_setOffsetX_1) (defgeneric jm_setOffsetX_1 (this p1)))
(defmethod jm_setOffsetX_1 ((this RectangleAdjustedAnimation) _offsetX)
  (declare (ignorable this _offsetX))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_offsetX) _offsetX))))

    
(unless (fboundp 'jm_setOffsetY_1) (defgeneric jm_setOffsetY_1 (this p1)))
(defmethod jm_setOffsetY_1 ((this RectangleAdjustedAnimation) _offsetY)
  (declare (ignorable this _offsetY))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_offsetY) _offsetY))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this RectangleAdjustedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this RectangleAdjustedAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (call-next-method this _basicColor))))



