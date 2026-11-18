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
;;;; package org.allbinary.graphics.form.item.validation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TextFieldItemValidator (ValidatorBase)
  ((f_textFieldItem :initform nil)
   (f_min :initform 0)
   (f_max :initform 0)
   (f_allowOnEmpty :initform nil)))

    
(defun TextFieldItemValidator.jnew_4 (_textFieldItem _min _max _allowOnEmpty)
  (declare (ignorable _textFieldItem _min _max _allowOnEmpty))
  (let ((this (make-instance 'TextFieldItemValidator)))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_textFieldItem) _textFieldItem)
        (setf (slot-value this 'f_min) _min)
        (setf (slot-value this 'f_max) _max)
        (setf (slot-value this 'f_allowOnEmpty) _allowOnEmpty)))
    this))

    
(unless (fboundp 'jm_isValid_0) (defgeneric jm_isValid_0 (this)))
(defmethod jm_isValid_0 ((this TextFieldItemValidator))
  (declare (ignorable this))
  (let (_booleanFactory _result _string _textLength)
  (declare (ignorable _booleanFactory _result _string _textLength))
    (block jreturn
        (setf _booleanFactory (BooleanFactory.jm_getInstance_0))
        (setf _result (slot-value _booleanFactory 'f_TRUE))
        (setf _string (jm_getString_0 (slot-value this 'f_textFieldItem)))
        (setf _textLength (length _string))
        (if (or (and (= _textLength 0) (slot-value this 'f_allowOnEmpty)) (and (> _textLength (slot-value this 'f_min)) (< _textLength (slot-value this 'f_max))))
            (progn
            nil)
            (progn
            (if (< _textLength (slot-value this 'f_min))
                (progn
                (setf _result (slot-value _booleanFactory 'f_FALSE)))
                (if (> _textLength (slot-value this 'f_max))
                (progn
                (setf _result (slot-value _booleanFactory 'f_FALSE)))))))
        (return-from jreturn _result))))

    
(unless (fboundp 'jm_toList_0) (defgeneric jm_toList_0 (this)))
(defmethod jm_toList_0 ((this TextFieldItemValidator))
  (declare (ignorable this))
  (let (_list _string _textLength _label _name)
  (declare (ignorable _list _string _textLength _label _name))
    (block jreturn
        (setf _list (BasicArrayListD.jnew_0))
        (setf _string (jm_getString_0 (slot-value this 'f_textFieldItem)))
        (setf _textLength (length _string))
        (if (and (> _textLength (slot-value this 'f_min)) (< _textLength (slot-value this 'f_max)))
            (progn
            nil)
            (progn
            (setf _label (jm_getLabel_0 (slot-value this 'f_textFieldItem)))
            (setf _name (JR.substring _label 0 (JR.i32 (- (length _label) 2))))
            (if (< _textLength (slot-value this 'f_min))
                (progn
                (jm_add_1 _list (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) _name) " is to short"))))
                (if (> _textLength (slot-value this 'f_max))
                (progn
                (jm_add_1 _list (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) _name) " is to long"))))))))
        (return-from jreturn _list))))



