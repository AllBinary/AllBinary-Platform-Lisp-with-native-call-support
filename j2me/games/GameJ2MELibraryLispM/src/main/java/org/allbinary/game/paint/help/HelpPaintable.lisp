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
;;;; package org.allbinary.game.paint.help

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HelpPaintable (Paintable)
  ((f_displayInfo :initform nil)
   (f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_anchor :initform 0)
   (f_title :initform nil)
   (f_inputInfo :initform nil)
   (f_basicColor :initform nil)
   (f_titleBeginWidth :initform 0)
   (f_beginWidthArray :initform nil)
   (f_charHeight :initform 0)))

    
(defun HelpPaintable.jnew_3 (_title _backgroundBasicColor _basicColor)
  (declare (ignorable _title _backgroundBasicColor _basicColor))
  (let ((this (make-instance 'HelpPaintable)))
    (setf (slot-value this 'f_displayInfo) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
    
    (setf (slot-value this 'f_inputInfo) (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0)))
    
    
    (setf (slot-value this 'f_beginWidthArray) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_title) _title)
        (setf (slot-value this 'f_basicColor) _basicColor)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this HelpPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font _size _index)
  (declare (ignorable _font _size _index))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_titleBeginWidth) (ash (jm_stringWidth_1 _font (slot-value this 'f_title)) (- (logand 1 31))))
        (setf (slot-value this 'f_charHeight) (jm_getHeight_0 _font))
        (setf _size (length (slot-value this 'f_inputInfo)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref (slot-value this 'f_beginWidthArray) _index) (ash (jm_stringWidth_1 _font (aref (slot-value this 'f_inputInfo) _index)) (- (logand 1 31)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_setInputInfoP_1) (defgeneric jm_setInputInfoP_1 (this p1)))
(defmethod jm_setInputInfoP_1 ((this HelpPaintable) _inputInfo)
  (declare (ignorable this _inputInfo))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_inputInfo) _inputInfo)
        (setf (slot-value this 'f_beginWidthArray) (JR.newArray 0 (length (slot-value this 'f_inputInfo))))
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this HelpPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_halfWidth _size _index)
  (declare (ignorable _halfWidth _size _index))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _halfWidth (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfo)))
        (jm_setColor_1 _graphics (jm_intValue_0 (slot-value this 'f_basicColor)))
        (jm_drawString_4 _graphics (slot-value this 'f_title) (JR.i32 (- _halfWidth (slot-value this 'f_titleBeginWidth))) (slot-value this 'f_charHeight) (slot-value this 'f_anchor))
        (setf _size (length (slot-value this 'f_inputInfo)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_drawString_4 _graphics (aref (slot-value this 'f_inputInfo) _index) (JR.i32 (- _halfWidth (aref (slot-value this 'f_beginWidthArray) _index))) (JR.i32 (* (JR.i32 (+ _index 3)) (slot-value this 'f_charHeight))) (slot-value this 'f_anchor)))
                (setf _index (JR.i32 (+ _index 1)))))))))



