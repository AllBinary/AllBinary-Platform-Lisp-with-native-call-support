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
;;;; package org.allbinary.animation.text

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TextAnimation (IndexedAnimation)
  ((f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_textArrayP :initform nil)
   (f_anchor :initform 0)
   (f_fontHeight :initform 0)
   (f_offsetY :initform 0)
   (f_textChangeListener :initform nil)))

    
(defun TextAnimation.jnew_2 (_text _animationBehavior)
  (declare (ignorable _text _animationBehavior))
  (let ((this (make-instance 'TextAnimation)))
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
    (setf (slot-value this 'f_textArrayP) (slot-value (StringUtil.jm_getInstance_0) 'f_ONE_EMPTY_STRING_ARRAY))
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
    (setf (slot-value this 'f_fontHeight) 0)
    (setf (slot-value this 'f_offsetY) 0)
    (setf (slot-value this 'f_textChangeListener) (TextChangeListener.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (jm_setText_1 this _text)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this TextAnimation) _graphics)
  (declare (ignorable this _graphics))
  (let (_font _adjustedFontHeight)
  (declare (ignorable _font _adjustedFontHeight))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_fontHeight) (jm_getHeight_0 _font))
        (setf _adjustedFontHeight (JR.d2i (- (* (coerce (slot-value this 'f_fontHeight) 'double-float) 2.00d0))))
        (setf (slot-value this 'f_offsetY) (if (jm_isJOGL_0 (SWTJOGLProcessor.jm_getInstance_0)) _adjustedFontHeight 0))
        (jm_onMeasure_0 (slot-value this 'f_textChangeListener))
        (setf (slot-value this 'f_textChangeListener) (TextChangeListener.jm_getInstance_0))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this TextAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this TextAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_paintXYNoUpdate_3 this _graphics _x _y))))

    
(unless (fboundp 'jm_paintXYNoUpdate_3) (defgeneric jm_paintXYNoUpdate_3 (this p1 p2 p3)))
(defmethod jm_paintXYNoUpdate_3 ((this TextAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (jm_setBasicColorP3_3 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this) (jm_getColor_0 this))
        (setf _size (length (slot-value this 'f_textArrayP)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_drawString_4 _graphics (aref (slot-value this 'f_textArrayP) _index) _x (JR.i32 (+ (JR.i32 (+ _y (slot-value this 'f_offsetY))) (JR.i32 (* _index (slot-value this 'f_fontHeight))))) (slot-value this 'f_anchor)))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_setTextWithOnMeasure_2) (defgeneric jm_setTextWithOnMeasure_2 (this p1 p2)))
(defmethod jm_setTextWithOnMeasure_2 ((this TextAnimation) _text _textChangeListener)
  (declare (ignorable this _text _textChangeListener))
  (let ()
    (block jreturn
        (jm_setText_1 this _text)
        (setf (slot-value this 'f_textChangeListener) _textChangeListener))))

    
(unless (fboundp 'jm_setText_1) (defgeneric jm_setText_1 (this p1)))
(defmethod jm_setText_1 ((this TextAnimation) _text)
  (declare (ignorable this _text))
  (let (_list _index _startIndex _endIndex _textArray _size)
  (declare (ignorable _list _index _startIndex _endIndex _textArray _size))
    (block jreturn
        (setf _list (BasicArrayListD.jnew_0))
        (if (> (length _text) 0)
            (progn
            (setf _index 0)
            (setf _startIndex 0)
            (setf _endIndex 0)
            (block jbreak (loop while (>= _index 0) do
                    (block jcontinue
                (setf _startIndex _index)
                (setf _index (JR.indexOf _text 10 _startIndex))
                (setf _endIndex _index)
                (if (< _index 0)
                    (progn
                    (setf _endIndex (length _text))))
                (jm_add_1 _list (JR.substring _text _startIndex _endIndex))
                (if (< _index 0)
                    (progn
                    (return-from jbreak)))
                (setf _index (JR.i32 (+ _index 1))))))))
        (if (> (jm_size_0 _list) 0)
            (progn
            (setf _textArray (JR.newArray nil (jm_size_0 _list)))
            (setf _size (jm_size_0 _list))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf (aref _textArray _index) (jm_get_1 _list _index)))
                    (setf _index (JR.i32 (+ _index 1))))))
            (setf (slot-value this 'f_textArrayP) _textArray))
            (progn
            (setf (slot-value this 'f_textArrayP) (slot-value (StringUtil.jm_getInstance_0) 'f_ONE_EMPTY_STRING_ARRAY))))
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_getTextArray_0) (defgeneric jm_getTextArray_0 (this)))
(defmethod jm_getTextArray_0 ((this TextAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_textArrayP)))))

    
(unless (fboundp 'jm_getFontHeight_0) (defgeneric jm_getFontHeight_0 (this)))
(defmethod jm_getFontHeight_0 ((this TextAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_fontHeight)))))



