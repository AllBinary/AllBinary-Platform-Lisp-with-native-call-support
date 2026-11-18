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
;;;; package org.allbinary.logic.java.byteutil

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ByteUtil (JObject)
  ())

(defvar ByteUtil.jcell_instance :jnone)
(defun ByteUtil.jstatic_instance ()
  (when (eq ByteUtil.jcell_instance :jnone) (setf ByteUtil.jcell_instance (ByteUtil.jnew_0)))
  ByteUtil.jcell_instance)
(defun (setf ByteUtil.jstatic_instance) (value) (setf ByteUtil.jcell_instance value))

    
(defun ByteUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ByteUtil.jstatic_instance)))))

    
(defun ByteUtil.jnew_0 ()
  (let ((this (make-instance 'ByteUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_xor_2) (defgeneric jm_xor_2 (this p1 p2)))
(defmethod jm_xor_2 ((this ByteUtil) _array _mask)
  (declare (ignorable this _array _mask))
  (let (_bytes _size _index _currentByte)
  (declare (ignorable _bytes _size _index _currentByte))
    (block jreturn
        (setf _bytes (JR.newArray 0 (length _array)))
        (setf _size (length _array))
        (setf _index 0)
        (setf _currentByte 0)
        (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _currentByte (aref _array _index))
            (setf (aref _bytes _index) (JR.i8 (logxor _currentByte _mask)))
            (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _bytes))))

    
(unless (fboundp 'jm_not_1) (defgeneric jm_not_1 (this p1)))
(defmethod jm_not_1 ((this ByteUtil) _array)
  (declare (ignorable this _array))
  (let (_bytes _size _index)
  (declare (ignorable _bytes _size _index))
    (block jreturn
        (setf _bytes (JR.newArray 0 (length _array)))
        (setf _size (length _array))
        (setf _index 0)
        (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref _bytes _index) (JR.i8 (lognot (aref _array _index))))
            (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _bytes))))

    
(unless (fboundp 'jm_xorByte_2) (defgeneric jm_xorByte_2 (this p1 p2)))
(defmethod jm_xorByte_2 ((this ByteUtil) _array _index)
  (declare (ignorable this _array _index))
  (let (_mask)
  (declare (ignorable _mask))
    (block jreturn
        (setf _mask 0)
        (if (= _index 0)
            (progn
            (setf _mask 1)))
        (if (= _index 1)
            (progn
            (setf _mask 2)))
        (if (= _index 2)
            (progn
            (setf _mask 4)))
        (if (= _index 3)
            (progn
            (setf _mask 8)))
        (if (= _index 4)
            (progn
            (setf _mask 16)))
        (if (= _index 5)
            (progn
            (setf _mask 32)))
        (if (= _index 6)
            (progn
            (setf _mask 64)))
        (if (= _index 7)
            (progn
            (setf _mask (JR.i8 (JR.i32 (- 127))))))
        (return-from jreturn (jm_xor_2 this _array _mask)))))

    
(unless (fboundp 'jm_compare_2) (defgeneric jm_compare_2 (this p1 p2)))
(defmethod jm_compare_2 ((this ByteUtil) _newByteArray _oldByteArray)
  (declare (ignorable this _newByteArray _oldByteArray))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (if (/= (length _newByteArray) (length _oldByteArray))
            (progn
            (return-from jreturn nil))
            (progn
            nil))
        (setf _size (length _newByteArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (if (/= (aref _newByteArray _index) (aref _oldByteArray _index))
                (progn
                (return-from jreturn nil))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_compareWithStats_4) (defgeneric jm_compareWithStats_4 (this p1 p2 p3 p4)))
(defmethod jm_compareWithStats_4 ((this ByteUtil) _newByteArray _newSize _oldByteArray _stats)
  (declare (ignorable this _newByteArray _newSize _oldByteArray _stats))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (if (/= _newSize (length _oldByteArray))
            (progn
            (setf (aref _stats 0) (JR.i32 (- 1)))
            (setf (aref _stats 2) _newSize)
            (setf (aref _stats 3) (length _oldByteArray))
            (return-from jreturn nil))
            (progn
            (setf (aref _stats 0) _newSize)))
        (setf (aref _stats 1) 0)
        (setf _size _newSize)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (if (/= (aref _newByteArray _index) (aref _oldByteArray _index))
                (progn
                (return-from jreturn nil)))
            (setf (aref _stats 1) (JR.i32 (+ (aref _stats 1) 1))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn t))))



