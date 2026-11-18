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

(defclass RectangleAnimation (Animation)
  ((f_width :initform 0)
   (f_height :initform 0)))

    
(defun RectangleAnimation.jnew_3 (_width _height _basicColor)
  (declare (ignorable _width _height _basicColor))
  (let ((this (make-instance 'RectangleAnimation)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_width) _width)
        (setf (slot-value this 'f_height) _height)
        (jm_setBasicColorP_1 this _basicColor)))
    this))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this RectangleAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this RectangleAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_setBasicColorP3_3 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this) (jm_getColor_0 this))
        (jm_drawRect_4 _graphics _x _y (slot-value this 'f_width) (slot-value this 'f_height)))))

    
(unless (fboundp 'jm_setWidth_1) (defgeneric jm_setWidth_1 (this p1)))
(defmethod jm_setWidth_1 ((this RectangleAnimation) _width)
  (declare (ignorable this _width))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_width) _width))))

    
(unless (fboundp 'jm_setHeight_1) (defgeneric jm_setHeight_1 (this p1)))
(defmethod jm_setHeight_1 ((this RectangleAnimation) _height)
  (declare (ignorable this _height))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_height) _height))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this RectangleAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this RectangleAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (call-next-method this _basicColor))))



