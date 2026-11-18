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

(defclass CustomTextAnimation (TextAnimation)
  ((f_fontDebugFactory :initform nil)
   (f_fontSize :initform 0)
   (f_font :initform nil)
   (f_lastText :initform nil)
   (f_hasChanged :initform nil)
   (f_textWidth :initform 0)))

    
(defun CustomTextAnimation.jnew_3 (_text _fontSize _animationBehavior)
  (declare (ignorable _text _fontSize _animationBehavior))
  (let ((this (make-instance 'CustomTextAnimation)))
    (setf (slot-value this 'f_fontDebugFactory) (FontDebugFactory.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_lastText) (slot-value (StringUtil.jm_getInstance_0) 'f_INIT_STRING))
    (setf (slot-value this 'f_hasChanged) t)
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_fontSize) _fontSize)
        (setf (slot-value this 'f_font) (Font.jm_getFont_3 (Font.jstatic_FACE_SYSTEM) (Font.jstatic_STYLE_PLAIN) _fontSize))))
    this))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this CustomTextAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let (_existingFont)
  (declare (ignorable _existingFont))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _existingFont (jm_getFont_0 _graphics))
        (jm_setFont_2 (slot-value this 'f_fontDebugFactory) (slot-value this 'f_font) _graphics)
        (jm_paintXYNoUpdate_3 this _graphics _x _y)
        (jm_setFont_2 (slot-value this 'f_fontDebugFactory) _existingFont _graphics))))

    
(unless (fboundp 'jm_setScale_2) (defgeneric jm_setScale_2 (this p1 p2)))
(defmethod jm_setScale_2 ((this CustomTextAnimation) _scaleX _scaleY)
  (declare (ignorable this _scaleX _scaleY))
  (let ()
    (block jreturn
        (if (/= _scaleX _scaleY)
            (progn
            (error (JR.newException "RuntimeException"))))
        (setf (slot-value this 'f_hasChanged) t)
        (setf (slot-value this 'f_font) (Font.jm_getFont_3 (Font.jstatic_FACE_SYSTEM) (Font.jstatic_STYLE_PLAIN) (JR.d2i (* (coerce (slot-value this 'f_fontSize) 'single-float) _scaleX)))))))

    
(unless (fboundp 'jm_setTextWithOnMeasure_2) (defgeneric jm_setTextWithOnMeasure_2 (this p1 p2)))
(defmethod jm_setTextWithOnMeasure_2 ((this CustomTextAnimation) _text _textChangeListener)
  (declare (ignorable this _text _textChangeListener))
  (let ()
    (block jreturn
        (call-next-method this _text _textChangeListener))))

    
(unless (fboundp 'jm_setText_1) (defgeneric jm_setText_1 (this p1)))
(defmethod jm_setText_1 ((this CustomTextAnimation) _text)
  (declare (ignorable this _text))
  (let ()
    (block jreturn
        (if (not (eq (slot-value this 'f_lastText) _text))
            (progn
            (setf (slot-value this 'f_hasChanged) t)
            (setf (slot-value this 'f_lastText) _text)
            (call-next-method this _text))))))

    
(unless (fboundp 'jm_getText_0) (defgeneric jm_getText_0 (this)))
(defmethod jm_getText_0 ((this CustomTextAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lastText)))))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this CustomTextAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (slot-value this 'f_hasChanged)
            (progn
            (setf (slot-value this 'f_textWidth) (jm_stringWidth_1 (slot-value this 'f_font) (aref (slot-value this 'f_textArrayP) 0)))
            (setf (slot-value this 'f_hasChanged) nil)))
        (return-from jreturn (slot-value this 'f_textWidth)))))

    
(unless (fboundp 'jm_getFontHeight_0) (defgeneric jm_getFontHeight_0 (this)))
(defmethod jm_getFontHeight_0 ((this CustomTextAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getHeight_0 (slot-value this 'f_font))))))



