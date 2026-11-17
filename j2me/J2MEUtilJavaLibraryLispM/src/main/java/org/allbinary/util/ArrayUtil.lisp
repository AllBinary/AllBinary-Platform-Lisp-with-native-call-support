;;;; Generated Code Do Not Modify
;;;; package org.allbinary.util

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ArrayUtil (JObject)
  ((f_mathUtil :initform nil)))

(defvar ArrayUtil.jcell_instance :jnone)
(defun ArrayUtil.jstatic_instance ()
  (when (eq ArrayUtil.jcell_instance :jnone) (setf ArrayUtil.jcell_instance (ArrayUtil.jnew_0)))
  ArrayUtil.jcell_instance)

(defun ArrayUtil.jnew_0 ()
  (let ((this (make-instance 'ArrayUtil)))
    (setf (slot-value this 'f_mathUtil) (MathUtil.jm_getInstance_0))
    this))

    
(defun ArrayUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ArrayUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_copyOf_2) (defgeneric jm_copyOf_2 (this p1 p2)))
(defmethod jm_copyOf_2 ((this ArrayUtil) _original _newLength)
  (declare (ignorable this _original _newLength))
  (let ()
    (block jreturn
        (return-from jreturn (jm_copyOfType_3 this _original _newLength (JR.className _original))))))

    
(unless (fboundp 'jm_copyOfType_3) (defgeneric jm_copyOfType_3 (this p1 p2 p3)))
(defmethod jm_copyOfType_3 ((this ArrayUtil) _original _newLength _newType)
  (declare (ignorable this _original _newLength _newType))
  (let (_copy)
  (declare (ignorable _copy))
    (block jreturn
        (setf _copy (JR.newArray nil _newLength))
        (JR.arraycopy _original 0 _copy 0 (jm_min_2 (slot-value this 'f_mathUtil) (length _original) _newLength))
        (return-from jreturn _copy))))

    
(unless (fboundp 'jm_copyOfbyte_2) (defgeneric jm_copyOfbyte_2 (this p1 p2)))
(defmethod jm_copyOfbyte_2 ((this ArrayUtil) _original _newLength)
  (declare (ignorable this _original _newLength))
  (let (_copy)
  (declare (ignorable _copy))
    (block jreturn
        (setf _copy (JR.newArray 0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (jm_min_2 (slot-value this 'f_mathUtil) (length _original) _newLength))
        (return-from jreturn _copy))))

    
(unless (fboundp 'jm_copyOfshort_2) (defgeneric jm_copyOfshort_2 (this p1 p2)))
(defmethod jm_copyOfshort_2 ((this ArrayUtil) _original _newLength)
  (declare (ignorable this _original _newLength))
  (let (_copy)
  (declare (ignorable _copy))
    (block jreturn
        (setf _copy (JR.newArray 0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (jm_min_2 (slot-value this 'f_mathUtil) (length _original) _newLength))
        (return-from jreturn _copy))))

    
(unless (fboundp 'jm_copyOfint_2) (defgeneric jm_copyOfint_2 (this p1 p2)))
(defmethod jm_copyOfint_2 ((this ArrayUtil) _original _newLength)
  (declare (ignorable this _original _newLength))
  (let (_copy)
  (declare (ignorable _copy))
    (block jreturn
        (setf _copy (JR.newArray 0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (jm_min_2 (slot-value this 'f_mathUtil) (length _original) _newLength))
        (return-from jreturn _copy))))

    
(unless (fboundp 'jm_copyOflong_2) (defgeneric jm_copyOflong_2 (this p1 p2)))
(defmethod jm_copyOflong_2 ((this ArrayUtil) _original _newLength)
  (declare (ignorable this _original _newLength))
  (let (_copy)
  (declare (ignorable _copy))
    (block jreturn
        (setf _copy (JR.newArray 0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (jm_min_2 (slot-value this 'f_mathUtil) (length _original) _newLength))
        (return-from jreturn _copy))))

    
(unless (fboundp 'jm_copyOfchar_2) (defgeneric jm_copyOfchar_2 (this p1 p2)))
(defmethod jm_copyOfchar_2 ((this ArrayUtil) _original _newLength)
  (declare (ignorable this _original _newLength))
  (let (_copy)
  (declare (ignorable _copy))
    (block jreturn
        (setf _copy (JR.newArray 0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (jm_min_2 (slot-value this 'f_mathUtil) (length _original) _newLength))
        (return-from jreturn _copy))))

    
(unless (fboundp 'jm_copyOffloat_2) (defgeneric jm_copyOffloat_2 (this p1 p2)))
(defmethod jm_copyOffloat_2 ((this ArrayUtil) _original _newLength)
  (declare (ignorable this _original _newLength))
  (let (_copy)
  (declare (ignorable _copy))
    (block jreturn
        (setf _copy (JR.newArray 0.0f0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (jm_min_2 (slot-value this 'f_mathUtil) (length _original) _newLength))
        (return-from jreturn _copy))))

    
(unless (fboundp 'jm_copyOfdouble_2) (defgeneric jm_copyOfdouble_2 (this p1 p2)))
(defmethod jm_copyOfdouble_2 ((this ArrayUtil) _original _newLength)
  (declare (ignorable this _original _newLength))
  (let (_copy)
  (declare (ignorable _copy))
    (block jreturn
        (setf _copy (JR.newArray 0.0d0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (jm_min_2 (slot-value this 'f_mathUtil) (length _original) _newLength))
        (return-from jreturn _copy))))

    
(unless (fboundp 'jm_copyOfboolean_2) (defgeneric jm_copyOfboolean_2 (this p1 p2)))
(defmethod jm_copyOfboolean_2 ((this ArrayUtil) _original _newLength)
  (declare (ignorable this _original _newLength))
  (let (_copy)
  (declare (ignorable _copy))
    (block jreturn
        (setf _copy (JR.newArray nil _newLength))
        (JR.arraycopy _original 0 _copy 0 (jm_min_2 (slot-value this 'f_mathUtil) (length _original) _newLength))
        (return-from jreturn _copy))))

    
(unless (fboundp 'jm_reverse_1) (defgeneric jm_reverse_1 (this p1)))
(defmethod jm_reverse_1 ((this ArrayUtil) _intArray)
  (declare (ignorable this _intArray))
  (let (_length _temp _size _index)
  (declare (ignorable _length _temp _size _index))
    (block jreturn
        (setf _length (JR.i32 (- (length _intArray) 1)))
        (setf _temp 0)
        (setf _size (JR.idiv _length 2))
        (progn
            (setf _index 0)
            (block jbreak (loop while (<= _index _size) do
                (block jcontinue
            (setf _temp (aref _intArray _index))
            (setf (aref _intArray _index) (aref _intArray (JR.i32 (- _length _index))))
            (setf (aref _intArray (JR.i32 (- _length _index))) _temp))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_flip_3) (defgeneric jm_flip_3 (this p1 p2 p3)))
(defmethod jm_flip_3 ((this ArrayUtil) _intArray _width _height)
  (declare (ignorable this _intArray _width _height))
  (let (_length _temp _index _rowIndex _x _y)
  (declare (ignorable _length _temp _index _rowIndex _x _y))
    (block jreturn
        (setf _length (JR.i32 (- _height 1)))
        (setf _temp 0)
        (setf _index 0)
        (setf _rowIndex 0)
        (progn
            (setf _y 0)
            (block jbreak (loop while (<= _y (JR.idiv _length 2)) do
                (block jcontinue
            (progn
                (setf _x 0)
                (block jbreak (loop while (< _x _width) do
                    (block jcontinue
                (setf _rowIndex (JR.i32 (* (JR.i32 (- _length _y)) _width)))
                (setf _index (JR.i32 (+ _x (JR.i32 (* _y _width)))))
                (setf _temp (aref _intArray _index))
                (setf (aref _intArray _index) (aref _intArray (JR.i32 (+ _rowIndex _x))))
                (setf (aref _intArray (JR.i32 (+ _rowIndex _x))) _temp))
                    (setf _x (JR.i32 (+ _x 1)))))))
                (setf _y (JR.i32 (+ _y 1)))))))))

    
(unless (fboundp 'jm_toStringFromTwoDimensionaArray_1) (defgeneric jm_toStringFromTwoDimensionaArray_1 (this p1)))
(defmethod jm_toStringFromTwoDimensionaArray_1 ((this ArrayUtil) _twoDimensionalIntArray)
  (declare (ignorable this _twoDimensionalIntArray))
  (let (_stringBuffer _commonSeps _endIndex _endIndex2 _index2 _index)
  (declare (ignorable _stringBuffer _commonSeps _endIndex _endIndex2 _index2 _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf _endIndex (length _twoDimensionalIntArray))
        (setf _endIndex2 (length (aref _twoDimensionalIntArray 0)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _endIndex) do
                (block jcontinue
            (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_BRACE_OPEN))
            (progn
                (setf _index2 0)
                (block jbreak (loop while (< _index2 _endIndex2) do
                    (block jcontinue
                (jm_appendint_1 _stringBuffer (aref (aref _twoDimensionalIntArray _index) _index2))
                (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA_SEP)))
                    (setf _index2 (JR.i32 (+ _index2 1))))))
            (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_BRACE_CLOSE))
            (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_NEW_LINE)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_toStringFromObjectArray_1) (defgeneric jm_toStringFromObjectArray_1 (this p1)))
(defmethod jm_toStringFromObjectArray_1 ((this ArrayUtil) _objectArray)
  (declare (ignorable this _objectArray))
  (let (_stringBuffer _commonSeps _index)
  (declare (ignorable _stringBuffer _commonSeps _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _objectArray)) do
                (block jcontinue
            (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) (aref _objectArray _index)))
            (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA_SEP)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_toStringFromByteArray_1) (defgeneric jm_toStringFromByteArray_1 (this p1)))
(defmethod jm_toStringFromByteArray_1 ((this ArrayUtil) _byteArray)
  (declare (ignorable this _byteArray))
  (let (_stringBuffer _commonSeps _index)
  (declare (ignorable _stringBuffer _commonSeps _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _byteArray)) do
                (block jcontinue
            (jm_appendbyte_1 _stringBuffer (aref _byteArray _index))
            (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA_SEP)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



