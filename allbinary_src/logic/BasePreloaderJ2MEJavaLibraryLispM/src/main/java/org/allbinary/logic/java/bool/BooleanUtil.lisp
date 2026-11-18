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
;;;; package org.allbinary.logic.java.bool

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BooleanUtil (JObject)
  ((f_tsUtil :initform nil)))

(defvar BooleanUtil.jcell_instance :jnone)
(defun BooleanUtil.jstatic_instance ()
  (when (eq BooleanUtil.jcell_instance :jnone) (setf BooleanUtil.jcell_instance (BooleanUtil.jnew_0)))
  BooleanUtil.jcell_instance)
(defun (setf BooleanUtil.jstatic_instance) (value) (setf BooleanUtil.jcell_instance value))

    
(defun BooleanUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BooleanUtil.jstatic_instance)))))

    
(defun BooleanUtil.jnew_0 ()
  (let ((this (make-instance 'BooleanUtil)))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getFromString_1) (defgeneric jm_getFromString_1 (this p1)))
(defmethod jm_getFromString_1 ((this BooleanUtil) _booleanString)
  (declare (ignorable this _booleanString))
  (let (_stringValidationUtil _booleanFactory _booleanStringLowerCase)
  (declare (ignorable _stringValidationUtil _booleanFactory _booleanStringLowerCase))
    (block jreturn
        (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (setf _booleanFactory (BooleanFactory.jm_getInstance_0))
        (if (jm_isEmpty_1 _stringValidationUtil _booleanString)
            (progn
            (return-from jreturn nil)))
        (setf _booleanStringLowerCase (JR.toLowerCase _booleanString))
        (if (eq (jm_compareTo_2 (slot-value this 'f_tsUtil) _booleanStringLowerCase (slot-value _booleanFactory 'f_TRUE_STRING)) 0)
            (progn
            (return-from jreturn t))
            (if (eq (jm_compareTo_2 (slot-value this 'f_tsUtil) _booleanStringLowerCase (slot-value _booleanFactory 'f_FALSE_STRING)) 0)
            (progn
            (return-from jreturn nil))
            (progn
            (error (JR.newException "Exception" "Invalid booleanString - Must be true or false"))))))))

    
(unless (fboundp 'jm_isStringBoolean_1) (defgeneric jm_isStringBoolean_1 (this p1)))
(defmethod jm_isStringBoolean_1 ((this BooleanUtil) _booleanString)
  (declare (ignorable this _booleanString))
  (let (_booleanFactory _booleanStringLowerCase)
  (declare (ignorable _booleanFactory _booleanStringLowerCase))
    (block jreturn
        (setf _booleanFactory (BooleanFactory.jm_getInstance_0))
        (setf _booleanStringLowerCase (JR.toLowerCase _booleanString))
        (if (or (eq (JR.compareTo _booleanStringLowerCase (slot-value _booleanFactory 'f_TRUE_STRING)) 0) (eq (JR.compareTo _booleanStringLowerCase (slot-value _booleanFactory 'f_FALSE_STRING)) 0))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_toStringFromBooleanArray_1) (defgeneric jm_toStringFromBooleanArray_1 (this p1)))
(defmethod jm_toStringFromBooleanArray_1 ((this BooleanUtil) _booleanArray)
  (declare (ignorable this _booleanArray))
  (let (_stringMaker _size _index)
  (declare (ignorable _stringMaker _size _index))
    (block jreturn
        (setf _stringMaker (StringMaker.jnew_0))
        (setf _size (length _booleanArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_appendboolean_1 _stringMaker (aref _booleanArray _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringMaker)))))



