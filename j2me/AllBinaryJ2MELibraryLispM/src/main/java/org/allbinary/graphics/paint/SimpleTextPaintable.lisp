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
;;;; package org.allbinary.graphics.paint

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SimpleTextPaintable (Paintable)
  ((f_displayInfoSingleton :initform nil)
   (f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_text :initform nil)
   (f_basicColor :initform nil)
   (f_topScoresWidth :initform 0)
   (f_fontHeight :initform 0)
   (f_anchor :initform 0)))

    
(defun SimpleTextPaintable.jnew_2 (_text _basicColor)
  (declare (ignorable _text _basicColor))
  (let ((this (make-instance 'SimpleTextPaintable)))
    (setf (slot-value this 'f_displayInfoSingleton) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
    
    
    (setf (slot-value this 'f_topScoresWidth) 0)
    (setf (slot-value this 'f_fontHeight) 0)
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_text) _text)
        (setf (slot-value this 'f_basicColor) _basicColor)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this SimpleTextPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_topScoresWidth) (ash (jm_stringWidth_1 _font (slot-value this 'f_text)) (- (logand 1 31))))
        (setf (slot-value this 'f_fontHeight) (jm_getHeight_0 _font))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this SimpleTextPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_width)
  (declare (ignorable _width))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _width (aref (jm_getLast_0 (slot-value this 'f_displayInfoSingleton)) (slot-value (slot-value this 'f_displayInfoSingleton) 'f_WIDTH)))
        (jm_setColor_1 _graphics (jm_intValue_0 (jm_getBasicColorP_0 this)))
        (jm_drawString_4 _graphics (slot-value this 'f_text) (JR.i32 (- (ash _width (- (logand 1 31))) (slot-value this 'f_topScoresWidth))) (slot-value this 'f_fontHeight) (slot-value this 'f_anchor)))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this SimpleTextPaintable) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this SimpleTextPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))

    
(unless (fboundp 'jm_setText_1) (defgeneric jm_setText_1 (this p1)))
(defmethod jm_setText_1 ((this SimpleTextPaintable) _text)
  (declare (ignorable this _text))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_text) _text)
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_getText_0) (defgeneric jm_getText_0 (this)))
(defmethod jm_getText_0 ((this SimpleTextPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_text)))))



