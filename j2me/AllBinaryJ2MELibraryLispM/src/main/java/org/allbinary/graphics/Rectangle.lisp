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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Rectangle (JObject)
  ((f_point :initform nil)
   (f_width :initform 0)
   (f_height :initform 0)))

    
(defun Rectangle.jnew_3 (_point _width _height)
  (declare (ignorable _point _width _height))
  (let ((this (make-instance 'Rectangle)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_point) _point)
        (setf (slot-value this 'f_width) _width)
        (setf (slot-value this 'f_height) _height)))
    this))

    
(unless (fboundp 'jm_getPoint_0) (defgeneric jm_getPoint_0 (this)))
(defmethod jm_getPoint_0 ((this Rectangle))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_point)))))

    
(unless (fboundp 'jm_setPoint_1) (defgeneric jm_setPoint_1 (this p1)))
(defmethod jm_setPoint_1 ((this Rectangle) _point)
  (declare (ignorable this _point))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_point) _point))))

    
(unless (fboundp 'jm_getMaxX_0) (defgeneric jm_getMaxX_0 (this)))
(defmethod jm_getMaxX_0 ((this Rectangle))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getX_0 (slot-value this 'f_point)) (slot-value this 'f_width)))))))

    
(unless (fboundp 'jm_getMaxY_0) (defgeneric jm_getMaxY_0 (this)))
(defmethod jm_getMaxY_0 ((this Rectangle))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getY_0 (slot-value this 'f_point)) (slot-value this 'f_height)))))))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this Rectangle))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_width)))))

    
(unless (fboundp 'jm_setWidth_1) (defgeneric jm_setWidth_1 (this p1)))
(defmethod jm_setWidth_1 ((this Rectangle) _width)
  (declare (ignorable this _width))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_width) _width))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this Rectangle))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_height)))))

    
(unless (fboundp 'jm_setHeight_1) (defgeneric jm_setHeight_1 (this p1)))
(defmethod jm_setHeight_1 ((this Rectangle) _height)
  (declare (ignorable this _height))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_height) _height))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this Rectangle))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (jm_toString_0 (jm_getPoint_0 this)))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value (CommonLabels.jm_getInstance_0) 'f_WIDTH_LABEL))
        (jm_appendint_1 _stringBuffer (jm_getWidth_0 this))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value (CommonLabels.jm_getInstance_0) 'f_HEIGHT_LABEL))
        (jm_appendint_1 _stringBuffer (jm_getHeight_0 this))
        (jm_append_1 _stringBuffer " MaxX: ")
        (jm_appendint_1 _stringBuffer (jm_getMaxX_0 this))
        (jm_append_1 _stringBuffer " MaxY: ")
        (jm_appendint_1 _stringBuffer (jm_getMaxY_0 this))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



