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
;;;; package org.allbinary.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Layer (JObject)
  ((f_logUtil :initform nil)
   (f_x :initform 0)
   (f_y :initform 0)
   (f_z :initform 0)
   (f_width :initform 0)
   (f_height :initform 0)
   (f_visible :initform nil)))

(defvar Layer.jcell_ID :jnone)
(defun Layer.jstatic_ID ()
  (when (eq Layer.jcell_ID :jnone) (setf Layer.jcell_ID (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 0)))
  Layer.jcell_ID)
(defun (setf Layer.jstatic_ID) (value) (setf Layer.jcell_ID value))

    
(defun Layer.jnew_2 (_width _height)
  (declare (ignorable _width _height))
  (let ((this (make-instance 'Layer)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_z) 3)
    
    
    (setf (slot-value this 'f_visible) t)
  (let ()
    (block jreturn
        (jm_setLayerWidth_1 this _width)
        (jm_setLayerHeight_1 this _height)))
    this))

    
(unless (fboundp 'jm_setPosition_3) (defgeneric jm_setPosition_3 (this p1 p2 p3)))
(defmethod jm_setPosition_3 ((this Layer) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_x) _x)
        (setf (slot-value this 'f_y) _y)
        (setf (slot-value this 'f_z) _z))))

    
(unless (fboundp 'jm_moveDXY_2) (defgeneric jm_moveDXY_2 (this p1 p2)))
(defmethod jm_moveDXY_2 ((this Layer) _dx _dy)
  (declare (ignorable this _dx _dy))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_x) (JR.i32 (+ (slot-value this 'f_x) _dx)))
        (setf (slot-value this 'f_y) (JR.i32 (+ (slot-value this 'f_y) _dy))))))

    
(unless (fboundp 'jm_moveDXYZ_3) (defgeneric jm_moveDXYZ_3 (this p1 p2 p3)))
(defmethod jm_moveDXYZ_3 ((this Layer) _dx _dy _dz)
  (declare (ignorable this _dx _dy _dz))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_x) (JR.i32 (+ (slot-value this 'f_x) _dx)))
        (setf (slot-value this 'f_y) (JR.i32 (+ (slot-value this 'f_y) _dy)))
        (setf (slot-value this 'f_z) (JR.i32 (+ (slot-value this 'f_z) _dz))))))

    
(unless (fboundp 'jm_getXP_0) (defgeneric jm_getXP_0 (this)))
(defmethod jm_getXP_0 ((this Layer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_x)))))

    
(unless (fboundp 'jm_getYP_0) (defgeneric jm_getYP_0 (this)))
(defmethod jm_getYP_0 ((this Layer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_y)))))

    
(unless (fboundp 'jm_getZP_0) (defgeneric jm_getZP_0 (this)))
(defmethod jm_getZP_0 ((this Layer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_z)))))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this Layer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_width)))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this Layer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_height)))))

    
(unless (fboundp 'jm_getDepth_0) (defgeneric jm_getDepth_0 (this)))
(defmethod jm_getDepth_0 ((this Layer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_setVisible_1) (defgeneric jm_setVisible_1 (this p1)))
(defmethod jm_setVisible_1 ((this Layer) _visible)
  (declare (ignorable this _visible))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_visible) _visible))))

    
(unless (fboundp 'jm_isVisible_0) (defgeneric jm_isVisible_0 (this)))
(defmethod jm_isVisible_0 ((this Layer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_visible)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this Layer) _graphics)
  (declare (ignorable this _graphics))
  (let (_commonStrings _canvasStrings)
  (declare (ignorable _commonStrings _canvasStrings))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (setf _canvasStrings (CanvasStrings.jm_getInstance_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_NOT_IMPLEMENTED) this (slot-value _canvasStrings 'f_PAINT)))))

    
(unless (fboundp 'jm_setLayerWidth_1) (defgeneric jm_setLayerWidth_1 (this p1)))
(defmethod jm_setLayerWidth_1 ((this Layer) _width)
  (declare (ignorable this _width))
  (let ()
    (block jreturn
        (if (< _width 0)
            (progn
            (error (JR.newException "IllegalArgumentException"))))
        (setf (slot-value this 'f_width) _width))))

    
(unless (fboundp 'jm_setLayerHeight_1) (defgeneric jm_setLayerHeight_1 (this p1)))
(defmethod jm_setLayerHeight_1 ((this Layer) _height)
  (declare (ignorable this _height))
  (let ()
    (block jreturn
        (if (< _height 0)
            (progn
            (error (JR.newException "IllegalArgumentException"))))
        (setf (slot-value this 'f_height) _height))))

    
(unless (fboundp 'jm_toStringAppend_1) (defgeneric jm_toStringAppend_1 (this p1)))
(defmethod jm_toStringAppend_1 ((this Layer) _stringBuffer)
  (declare (ignorable this _stringBuffer))
  (let ()
    (block jreturn nil)))



