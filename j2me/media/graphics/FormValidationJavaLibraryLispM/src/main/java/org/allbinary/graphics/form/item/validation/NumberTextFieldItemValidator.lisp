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

(defclass NumberTextFieldItemValidator (ValidatorBase)
  ((f_textFieldItem :initform nil)
   (f_min :initform 0)
   (f_max :initform 0)
   (f_maxChars :initform 0)))

    
(defun NumberTextFieldItemValidator.jnew_4 (_textFieldItem _maxChars _min _max)
  (declare (ignorable _textFieldItem _maxChars _min _max))
  (let ((this (make-instance 'NumberTextFieldItemValidator)))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_textFieldItem) _textFieldItem)
        (setf (slot-value this 'f_min) _min)
        (setf (slot-value this 'f_max) _max)
        (setf (slot-value this 'f_maxChars) _maxChars)))
    this))

    
(unless (fboundp 'jm_isNumberValid_1) (defgeneric jm_isNumberValid_1 (this p1)))
(defmethod jm_isNumberValid_1 ((this NumberTextFieldItemValidator) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE)))))

    
(unless (fboundp 'jm_toNumberVector_1) (defgeneric jm_toNumberVector_1 (this p1)))
(defmethod jm_toNumberVector_1 ((this NumberTextFieldItemValidator) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn (BasicArrayListD.jnew_0)))))

    
(unless (fboundp 'jm_isValid_0) (defgeneric jm_isValid_0 (this)))
(defmethod jm_isValid_0 ((this NumberTextFieldItemValidator))
  (declare (ignorable this))
  (let (_result _string _textLength)
  (declare (ignorable _result _string _textLength))
    (block jreturn
        (setf _result (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE))
        (setf _string (jm_getString_0 (slot-value this 'f_textFieldItem)))
        (setf _textLength (length _string))
        (if (and (> _textLength 0) (< _textLength (slot-value this 'f_maxChars)))
            (progn
            (handler-case (progn
                (Integer.jm_parseInt_1 (jm_getString_0 (slot-value this 'f_textFieldItem))))
                (error (_e) (declare (ignorable _e))
                (setf _result (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE)))))
            (progn
            (if (< _textLength 1)
                (progn
                (setf _result (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE)))
                (if (> _textLength (slot-value this 'f_maxChars))
                (progn
                (setf _result (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE)))))))
        (return-from jreturn _result))))

    
(unless (fboundp 'jm_toList_0) (defgeneric jm_toList_0 (this)))
(defmethod jm_toList_0 ((this NumberTextFieldItemValidator))
  (declare (ignorable this))
  (let (_list _string _textLength _label _name _smallIntegerSingletonFactory _stringMaker _number)
  (declare (ignorable _list _string _textLength _label _name _smallIntegerSingletonFactory _stringMaker _number))
    (block jreturn
        (setf _list (BasicArrayListD.jnew_0))
        (setf _string (jm_getString_0 (slot-value this 'f_textFieldItem)))
        (setf _textLength (length _string))
        (setf _label (jm_getLabel_0 (slot-value this 'f_textFieldItem)))
        (setf _name (JR.substring _label 0 (JR.i32 (- (length _label) 2))))
        (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (setf _stringMaker (StringMaker.jnew_0))
        (if (and (> _textLength 0) (< _textLength (slot-value this 'f_maxChars)))
            (progn
            (handler-case (progn
                (setf _number (jm_createInstance_1 _smallIntegerSingletonFactory (Integer.jm_parseInt_1 (jm_getString_0 (slot-value this 'f_textFieldItem)))))
                (if (> (jm_intValue_0 _number) (slot-value this 'f_min))
                    (progn
                    (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                    (jm_add_1 _list (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker _name) " is to small"))))
                    (if (> (jm_intValue_0 _number) (slot-value this 'f_max))
                    (progn
                    (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                    (jm_add_1 _list (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker _name) " is to large")))))))
                (error (_e) (declare (ignorable _e))
                (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                (jm_add_1 _list (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker _name) " is not a number"))))))
            (progn
            (if (< _textLength 1)
                (progn
                (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                (jm_add_1 _list (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker _name) " is to short"))))
                (if (> _textLength (slot-value this 'f_maxChars))
                (progn
                (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                (jm_add_1 _list (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker _name) " is to long"))))))))
        (return-from jreturn _list))))



