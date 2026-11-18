;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABTextFieldItem (ABTextItem)
  ((f_font :initform nil)))

    
(defun ABTextFieldItem.jnew_10 (_canvas _visitor _label _value _maxSize _layout _altText _font _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _canvas _visitor _label _value _maxSize _layout _altText _font _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'ABTextFieldItem)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_font) _font)))
    this))

    
(unless (fboundp 'jm_getLabel_0) (defgeneric jm_getLabel_0 (this)))
(defmethod jm_getLabel_0 ((this ABTextFieldItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_setLabel_1) (defgeneric jm_setLabel_1 (this p1)))
(defmethod jm_setLabel_1 ((this ABTextFieldItem) _label)
  (declare (ignorable this _label))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getString_0) (defgeneric jm_getString_0 (this)))
(defmethod jm_getString_0 ((this ABTextFieldItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_setString_1) (defgeneric jm_setString_1 (this p1)))
(defmethod jm_setString_1 ((this ABTextFieldItem) _string)
  (declare (ignorable this _string))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setFocus_1) (defgeneric jm_setFocus_1 (this p1)))
(defmethod jm_setFocus_1 ((this ABTextFieldItem) _state)
  (declare (ignorable this _state))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getFontHeight_0) (defgeneric jm_getFontHeight_0 (this)))
(defmethod jm_getFontHeight_0 ((this ABTextFieldItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getHeight_0 (slot-value this 'f_font))))))

    
(unless (fboundp 'jm_setBackgroundBasicColorP_1) (defgeneric jm_setBackgroundBasicColorP_1 (this p1)))
(defmethod jm_setBackgroundBasicColorP_1 ((this ABTextFieldItem) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setForegroundBasicColorP_1) (defgeneric jm_setForegroundBasicColorP_1 (this p1)))
(defmethod jm_setForegroundBasicColorP_1 ((this ABTextFieldItem) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn nil)))



