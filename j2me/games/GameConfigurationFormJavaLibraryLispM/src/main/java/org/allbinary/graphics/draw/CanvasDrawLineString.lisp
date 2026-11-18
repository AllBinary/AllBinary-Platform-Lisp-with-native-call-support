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
;;;; package org.allbinary.graphics.draw

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CanvasDrawLineString (JObject)
  ((f_drawStringUtil :initform nil)
   (f_myFontProcessor :initform nil)
   (f_x :initform 0)
   (f_y :initform 0)
   (f_fontHeight :initform 0)))

(defvar CanvasDrawLineString.jcell_NULL_CANVAS_DRAW_LINE_STRING :jnone)
(defun CanvasDrawLineString.jstatic_NULL_CANVAS_DRAW_LINE_STRING ()
  (when (eq CanvasDrawLineString.jcell_NULL_CANVAS_DRAW_LINE_STRING :jnone) (setf CanvasDrawLineString.jcell_NULL_CANVAS_DRAW_LINE_STRING (CanvasDrawLineString.jnew_2 0 0)))
  CanvasDrawLineString.jcell_NULL_CANVAS_DRAW_LINE_STRING)
(defun (setf CanvasDrawLineString.jstatic_NULL_CANVAS_DRAW_LINE_STRING) (value) (setf CanvasDrawLineString.jcell_NULL_CANVAS_DRAW_LINE_STRING value))

    
(defun CanvasDrawLineString.jnew_2 (_x _y)
  (declare (ignorable _x _y))
  (let ((this (make-instance 'CanvasDrawLineString)))
    (setf (slot-value this 'f_drawStringUtil) (DrawStringUtil.jm_getInstance_0))
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    
    
    (setf (slot-value this 'f_fontHeight) 0)
  (let ()
    (block jreturn
        (setf (slot-value this 'f_x) _x)
        (setf (slot-value this 'f_y) _y)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this CanvasDrawLineString) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_fontHeight) (jm_getHeight_0 _font))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_paint_3) (defgeneric jm_paint_3 (this p1 p2 p3)))
(defmethod jm_paint_3 ((this CanvasDrawLineString) _graphics _string _line)
  (declare (ignorable this _graphics _string _line))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_drawCenterString_6 (slot-value this 'f_drawStringUtil) _graphics _string 0 (length _string) (slot-value this 'f_x) (JR.i32 (+ (slot-value this 'f_y) (JR.i32 (* _line (slot-value this 'f_fontHeight)))))))))



