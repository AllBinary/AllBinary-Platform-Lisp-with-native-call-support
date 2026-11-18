;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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

(defclass CustomTextBoxIndexedAnimation (IndexedAnimation)
  ((f_customTextBox :initform nil)
   (f_lastText :initform nil)
   (f_hasChanged :initform nil)
   (f_textChangeListener :initform nil)))

    
(defun CustomTextBoxIndexedAnimation.jnew_1 (_customTextBox)
  (declare (ignorable _customTextBox))
  (let ((this (make-instance 'CustomTextBoxIndexedAnimation)))
    
    (setf (slot-value this 'f_lastText) (slot-value (StringUtil.jm_getInstance_0) 'f_INIT_STRING))
    (setf (slot-value this 'f_hasChanged) t)
    (setf (slot-value this 'f_textChangeListener) (TextChangeListener.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_customTextBox) _customTextBox)))
    this))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this CustomTextBoxIndexedAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (jm_setForegroundBasicColorP_1 (jm_getTextFieldItem_0 (slot-value this 'f_customTextBox)) _basicColor))))

    
(unless (fboundp 'jm_setBackgroundBasicColorP_1) (defgeneric jm_setBackgroundBasicColorP_1 (this p1)))
(defmethod jm_setBackgroundBasicColorP_1 ((this CustomTextBoxIndexedAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (jm_setBackgroundBasicColorP_1 (jm_getTextFieldItem_0 (slot-value this 'f_customTextBox)) _basicColor))))

    
(unless (fboundp 'jm_setTextWithOnMeasure_2) (defgeneric jm_setTextWithOnMeasure_2 (this p1 p2)))
(defmethod jm_setTextWithOnMeasure_2 ((this CustomTextBoxIndexedAnimation) _text _textChangeListener)
  (declare (ignorable this _text _textChangeListener))
  (let ()
    (block jreturn
        (jm_setText_1 this _text)
        (setf (slot-value this 'f_textChangeListener) _textChangeListener))))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this CustomTextBoxIndexedAnimation) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (jm_onMeasure_0 (slot-value this 'f_textChangeListener))
        (setf (slot-value this 'f_textChangeListener) (TextChangeListener.jm_getInstance_0)))))

    
(unless (fboundp 'jm_setText_1) (defgeneric jm_setText_1 (this p1)))
(defmethod jm_setText_1 ((this CustomTextBoxIndexedAnimation) _text)
  (declare (ignorable this _text))
  (let ()
    (block jreturn
        (if (not (eq (slot-value this 'f_lastText) _text))
            (progn
            (setf (slot-value this 'f_hasChanged) t)
            (setf (slot-value this 'f_lastText) _text)
            (jm_setString_1 (jm_getTextFieldItem_0 (slot-value this 'f_customTextBox)) _text))))))

    
(unless (fboundp 'jm_getText_0) (defgeneric jm_getText_0 (this)))
(defmethod jm_getText_0 ((this CustomTextBoxIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getString_0 (jm_getTextFieldItem_0 (slot-value this 'f_customTextBox)))))))

    
(unless (fboundp 'jm_onEventRaw_3) (defgeneric jm_onEventRaw_3 (this p1 p2 p3)))
(defmethod jm_onEventRaw_3 ((this CustomTextBoxIndexedAnimation) _keyCode _deviceId _repeated)
  (declare (ignorable this _keyCode _deviceId _repeated))
  (let ()
    (block jreturn
        (jm_onEventRaw_3 (slot-value this 'f_customTextBox) _keyCode _deviceId _repeated))))

    
(unless (fboundp 'jm_getFontHeight_0) (defgeneric jm_getFontHeight_0 (this)))
(defmethod jm_getFontHeight_0 ((this CustomTextBoxIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getFontHeight_0 (jm_getTextFieldItem_0 (slot-value this 'f_customTextBox)))))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this CustomTextBoxIndexedAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_paintXY_3 (slot-value this 'f_customTextBox) _graphics _x _y))))

    
(unless (fboundp 'jm_paintThreedXYZ_4) (defgeneric jm_paintThreedXYZ_4 (this p1 p2 p3 p4)))
(defmethod jm_paintThreedXYZ_4 ((this CustomTextBoxIndexedAnimation) _graphics _x _y _z)
  (declare (ignorable this _graphics _x _y _z))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this CustomTextBoxIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))



