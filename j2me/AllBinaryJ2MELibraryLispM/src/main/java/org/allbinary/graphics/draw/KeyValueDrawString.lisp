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

(defclass KeyValueDrawString (JObject)
  ((f_myFontProcessor :initform nil)
   (f_LABEL :initform nil)
   (f_labelX :initform 0)
   (f_valueX :initform 0)
   (f_value :initform nil)))

    
(defun KeyValueDrawString.jnew_2 (_label _x)
  (declare (ignorable _label _x))
  (let ((this (make-instance 'KeyValueDrawString)))
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    
    
    
    (setf (slot-value this 'f_value) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_LABEL) _label)
        (setf (slot-value this 'f_labelX) _x)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this KeyValueDrawString) _graphics)
  (declare (ignorable this _graphics))
  (let (_labelWidth)
  (declare (ignorable _labelWidth))
    (block jreturn
        (setf _labelWidth (JR.i32 (- (jm_stringWidth_1 (jm_getFont_0 _graphics) (slot-value this 'f_LABEL)) (length (slot-value this 'f_LABEL)))))
        (setf (slot-value this 'f_valueX) (JR.i32 (+ _labelWidth (slot-value this 'f_labelX))))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_paint_2) (defgeneric jm_paint_2 (this p1 p2)))
(defmethod jm_paint_2 ((this KeyValueDrawString) _graphics _y)
  (declare (ignorable this _graphics _y))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_drawString_4 _graphics (slot-value this 'f_LABEL) (slot-value this 'f_labelX) _y 0)
        (jm_drawString_4 _graphics (slot-value this 'f_value) (slot-value this 'f_valueX) _y 0))))

    
(unless (fboundp 'jm_update_1) (defgeneric jm_update_1 (this p1)))
(defmethod jm_update_1 ((this KeyValueDrawString) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_value) _value))))



