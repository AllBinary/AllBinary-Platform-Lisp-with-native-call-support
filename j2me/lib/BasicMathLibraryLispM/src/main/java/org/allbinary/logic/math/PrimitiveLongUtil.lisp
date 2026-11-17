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
;;;; package org.allbinary.logic.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PrimitiveLongUtil (JObject)
  ((f_logUtil :initform nil)
   (f_powerOfTen :initform 0)
   (f_maxValue :initform 0)
   (f_maxDigits :initform 0)
   (f_charArray :initform nil)
   (f_currentTotalDigits :initform 0)
   (f_primitiveLongSingleton :initform nil)))

    
(defun PrimitiveLongUtil.jm_createPowerOfTen_1 (_powerOfTen)
  (declare (ignorable _powerOfTen))
  (let (_primitiveLongUtil _logUtil _commonStrings)
  (declare (ignorable _primitiveLongUtil _logUtil _commonStrings))
    (block jreturn
        (setf _primitiveLongUtil (PrimitiveLongUtil.jnew_2 _powerOfTen (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
        (if (/= (rem _powerOfTen 10) 0)
            (progn
            (setf _logUtil (LogUtil.jm_getInstance_0))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 _logUtil (slot-value _commonStrings 'f_EXCEPTION) _primitiveLongUtil (slot-value _commonStrings 'f_CONSTRUCTOR) (JR.newException "Exception" "Max must be power of 10"))))
        (return-from jreturn _primitiveLongUtil))))

    
(defun PrimitiveLongUtil.jnew_2 (_powerOfTen _unused)
  (declare (ignorable _powerOfTen _unused))
  (let ((this (make-instance 'PrimitiveLongUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    
    
    
    
    (setf (slot-value this 'f_primitiveLongSingleton) (PrimitiveLongSingleton.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_maxDigits) (jm_getTotalDigits_1 (MathUtil.jm_getInstance_0) _powerOfTen))
        (setf (slot-value this 'f_powerOfTen) _powerOfTen)
        (setf (slot-value this 'f_maxValue) (JR.i32 (- (JR.i32 (* _powerOfTen 10)) 1)))
        (setf (slot-value this 'f_charArray) (JR.newArray 0 (slot-value this 'f_maxDigits)))))
    this))

    
(unless (fboundp 'jm_getCharArray_1) (defgeneric jm_getCharArray_1 (this p1)))
(defmethod jm_getCharArray_1 ((this PrimitiveLongUtil) _value)
  (declare (ignorable this _value))
  (let (_index _div _lastValue _digit)
  (declare (ignorable _index _div _lastValue _digit))
    (block jreturn
        (if (< _value 10)
            (progn
            (jm_setCurrentTotalDigits_1 this 1)
            (return-from jreturn (aref (slot-value (slot-value this 'f_primitiveLongSingleton) 'f_NUMBER_CHAR_ARRAYS) _value))))
        (if (> _value (slot-value this 'f_maxValue))
            (progn
            (jm_setCurrentTotalDigits_1 this 3)
            (return-from jreturn (slot-value (slot-value this 'f_primitiveLongSingleton) 'f_UNK))))
        (setf _index 0)
        (setf _div (slot-value this 'f_powerOfTen))
        (setf _lastValue 0)
        (block jbreak (loop while (>= _div 1) do
                (block jcontinue
            (setf _digit (JR.idiv (JR.i32 (- _value _lastValue)) _div))
            (if (and (>= _digit 0) (< _digit 10))
                (progn
                (if (and (= _digit 0) (= _index 0))
                    (progn
                    nil)
                    (progn
                    (setf (aref (slot-value this 'f_charArray) (prog1 _index (setf _index (JR.i32 (+ _index 1))))) (aref (slot-value (slot-value this 'f_primitiveLongSingleton) 'f_NUMBER_CHAR_ARRAY) _digit))))
                (setf _lastValue (JR.i32 (+ _lastValue (JR.i32 (* _digit _div)))))))
            (setf _div (JR.idiv _div 10)))))
        (jm_setCurrentTotalDigits_1 this _index)
        (return-from jreturn (slot-value this 'f_charArray)))))

    
(unless (fboundp 'jm_setCurrentTotalDigits_1) (defgeneric jm_setCurrentTotalDigits_1 (this p1)))
(defmethod jm_setCurrentTotalDigits_1 ((this PrimitiveLongUtil) _currentTotalDigits)
  (declare (ignorable this _currentTotalDigits))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentTotalDigits) _currentTotalDigits))))

    
(unless (fboundp 'jm_getCurrentTotalDigits_0) (defgeneric jm_getCurrentTotalDigits_0 (this)))
(defmethod jm_getCurrentTotalDigits_0 ((this PrimitiveLongUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_currentTotalDigits)))))

    
(unless (fboundp 'jm_getMaxDigits_0) (defgeneric jm_getMaxDigits_0 (this)))
(defmethod jm_getMaxDigits_0 ((this PrimitiveLongUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_maxDigits)))))



