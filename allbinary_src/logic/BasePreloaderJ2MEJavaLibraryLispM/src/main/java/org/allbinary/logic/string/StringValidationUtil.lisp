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
;;;; package org.allbinary.logic.string

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass StringValidationUtil (JObject)
  ((f_stringUtil :initform nil)
   (f_tsUtil :initform nil)))

(defvar StringValidationUtil.jcell_instance :jnone)
(defun StringValidationUtil.jstatic_instance ()
  (when (eq StringValidationUtil.jcell_instance :jnone) (setf StringValidationUtil.jcell_instance (StringValidationUtil.jnew_0)))
  StringValidationUtil.jcell_instance)

    
(defun StringValidationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (StringValidationUtil.jstatic_instance)))))

    
(defun StringValidationUtil.jnew_0 ()
  (let ((this (make-instance 'StringValidationUtil)))
    (setf (slot-value this 'f_stringUtil) (StringUtil.jm_getInstance_0))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_containsSpaces_1) (defgeneric jm_containsSpaces_1 (this p1)))
(defmethod jm_containsSpaces_1 ((this StringValidationUtil) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (if (>= (JR.indexOf _value (char-code #\ )) 0)
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isNumber_1) (defgeneric jm_isNumber_1 (this p1)))
(defmethod jm_isNumber_1 ((this StringValidationUtil) _value)
  (declare (ignorable this _value))
  (let (_numberOfDecimalPoints _digit _index)
  (declare (ignorable _numberOfDecimalPoints _digit _index))
    (block jreturn
        (setf _numberOfDecimalPoints 0)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _value)) do
                (block jcontinue
            (setf _digit (JR.charAt _value _index))
            (if (and (not (jm_isNumberFromChar_1 this _digit)) (/= _digit (char-code #\.)))
                (progn
                (return-from jreturn nil)))
            (if (= _digit (char-code #\.))
                (progn
                (setf _numberOfDecimalPoints (JR.i32 (+ _numberOfDecimalPoints 1)))
                (if (> _numberOfDecimalPoints 1)
                    (progn
                    (return-from jreturn nil))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isNumberFromChar_1) (defgeneric jm_isNumberFromChar_1 (this p1)))
(defmethod jm_isNumberFromChar_1 ((this StringValidationUtil) _digit)
  (declare (ignorable this _digit))
  (let ()
    (block jreturn
        (if (and (and (and (and (and (and (and (and (and (/= _digit (char-code #\0)) (/= _digit (char-code #\1))) (/= _digit (char-code #\2))) (/= _digit (char-code #\3))) (/= _digit (char-code #\4))) (/= _digit (char-code #\5))) (/= _digit (char-code #\6))) (/= _digit (char-code #\7))) (/= _digit (char-code #\8))) (/= _digit (char-code #\9)))
            (progn
            (return-from jreturn nil)))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isValidRequired_3) (defgeneric jm_isValidRequired_3 (this p1 p2 p3)))
(defmethod jm_isValidRequired_3 ((this StringValidationUtil) _value _min _max)
  (declare (ignorable this _value _min _max))
  (let ()
    (block jreturn
        (if (or (< (length _value) _min) (> (length _value) _max))
            (progn
            (return-from jreturn nil)))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isValidRequiredNumber_3) (defgeneric jm_isValidRequiredNumber_3 (this p1 p2 p3)))
(defmethod jm_isValidRequiredNumber_3 ((this StringValidationUtil) _value _min _max)
  (declare (ignorable this _value _min _max))
  (let ()
    (block jreturn
        (if (or (or (jm_isEmpty_1 this _value) (< (length _value) _min)) (> (length _value) _max))
            (progn
            (return-from jreturn nil)))
        (if (not (jm_isNumber_1 this _value))
            (progn
            (return-from jreturn nil)))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isValidNotRequired_3) (defgeneric jm_isValidNotRequired_3 (this p1 p2 p3)))
(defmethod jm_isValidNotRequired_3 ((this StringValidationUtil) _value _min _max)
  (declare (ignorable this _value _min _max))
  (let ()
    (block jreturn
        (if (> (length _value) 0)
            (progn
            (if (or (< (length _value) _min) (> (length _value) _max))
                (progn
                (return-from jreturn nil)))))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isValidNotRequiredNumber_3) (defgeneric jm_isValidNotRequiredNumber_3 (this p1 p2 p3)))
(defmethod jm_isValidNotRequiredNumber_3 ((this StringValidationUtil) _value _min _max)
  (declare (ignorable this _value _min _max))
  (let ()
    (block jreturn
        (if (> (length _value) 0)
            (progn
            (if (or (or (eq (jm_compareTo_2 (slot-value this 'f_tsUtil) _value (slot-value (slot-value this 'f_stringUtil) 'f_NULL_STRING)) 0) (< (length _value) _min)) (> (length _value) _max))
                (progn
                (return-from jreturn nil)))
            (if (not (jm_isNumber_1 this _value))
                (progn
                (return-from jreturn nil)))))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isEmpty_1) (defgeneric jm_isEmpty_1 (this p1)))
(defmethod jm_isEmpty_1 ((this StringValidationUtil) _string)
  (declare (ignorable this _string))
  (let ()
    (block jreturn
        (if (and (not (eq (jm_compareTo_2 (slot-value this 'f_tsUtil) _string (slot-value (slot-value this 'f_stringUtil) 'f_NULL_STRING)) 0)) (not (eq (jm_compareTo_2 (slot-value this 'f_tsUtil) _string (slot-value (slot-value this 'f_stringUtil) 'f_EMPTY_STRING)) 0)))
            (progn
            (return-from jreturn nil))
            (progn
            (return-from jreturn t))))))



