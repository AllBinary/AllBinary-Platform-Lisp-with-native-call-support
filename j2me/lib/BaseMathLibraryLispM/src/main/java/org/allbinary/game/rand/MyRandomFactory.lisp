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
;;;; package org.allbinary.game.rand

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;Do not use in client code for money related things.
(defclass MyRandomFactory (JObject)
  ((f_mathUtil :initform nil)
   (f_rand :initform nil)))

(defvar MyRandomFactory.jcell_instance :jnone)
(defun MyRandomFactory.jstatic_instance ()
  (when (eq MyRandomFactory.jcell_instance :jnone) (setf MyRandomFactory.jcell_instance (MyRandomFactory.jnew_0)))
  MyRandomFactory.jcell_instance)
(defun (setf MyRandomFactory.jstatic_instance) (value) (setf MyRandomFactory.jcell_instance value))

    
(defun MyRandomFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MyRandomFactory.jstatic_instance)))))

    
(defun MyRandomFactory.jnew_0 ()
  (let ((this (make-instance 'MyRandomFactory)))
    (setf (slot-value this 'f_mathUtil) (MathUtil.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_rand) (Random.jnew_1 (JR.currentTimeMillis)))))
    this))

    
(unless (fboundp 'jm_setSeed_1) (defgeneric jm_setSeed_1 (this p1)))
(defmethod jm_setSeed_1 ((this MyRandomFactory) _seed)
  (declare (ignorable this _seed))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_rand) (Random.jnew_1 _seed)))))

    
(unless (fboundp 'jm_getNextInt_1) (defgeneric jm_getNextInt_1 (this p1)))
(defmethod jm_getNextInt_1 ((this MyRandomFactory) _range)
  (declare (ignorable this _range))
  (let (_div)
  (declare (ignorable _div))
    (block jreturn
        (setf _div (JR.i32 (+ (JR.idiv (Integer.jstatic_MAX_VALUE) _range) 1)))
        (return-from jreturn (JR.idiv (jm_nextInt_0 (slot-value this 'f_rand)) _div)))))

    
(unless (fboundp 'jm_getAbsoluteNextInt_1) (defgeneric jm_getAbsoluteNextInt_1 (this p1)))
(defmethod jm_getAbsoluteNextInt_1 ((this MyRandomFactory) _range)
  (declare (ignorable this _range))
  (let ()
    (block jreturn
        (return-from jreturn (jm_abs_1 (slot-value this 'f_mathUtil) (jm_getNextInt_1 this _range))))))

    
(unless (fboundp 'jm_getAbsoluteNextIntAllowZero_1) (defgeneric jm_getAbsoluteNextIntAllowZero_1 (this p1)))
(defmethod jm_getAbsoluteNextIntAllowZero_1 ((this MyRandomFactory) _range)
  (declare (ignorable this _range))
  (let ()
    (block jreturn
        (if (= _range 0)
            (progn
            (return-from jreturn 0))
            (progn
            (return-from jreturn (jm_abs_1 (slot-value this 'f_mathUtil) (jm_getNextInt_1 this _range))))))))

    
(unless (fboundp 'jm_shuffle_1) (defgeneric jm_shuffle_1 (this p1)))
(defmethod jm_shuffle_1 ((this MyRandomFactory) _intArray)
  (declare (ignorable this _intArray))
  (let ()
    (block jreturn
        (jm_shuffleTotal_2 this _intArray (JR.i32 (* (length _intArray) 7))))))

    
(unless (fboundp 'jm_shuffleTotal_2) (defgeneric jm_shuffleTotal_2 (this p1 p2)))
(defmethod jm_shuffleTotal_2 ((this MyRandomFactory) _intArray _shuffleTotal)
  (declare (ignorable this _intArray _shuffleTotal))
  (let (_size _randomIndex _randomIndex2 _value _index)
  (declare (ignorable _size _randomIndex _randomIndex2 _value _index))
    (block jreturn
        (setf _size (length _intArray))
        (setf _randomIndex 0)
        (setf _randomIndex2 0)
        (setf _value 0)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _shuffleTotal) do
                (block jcontinue
            (setf _randomIndex (jm_getAbsoluteNextIntAllowZero_1 this _size))
            (setf _randomIndex2 (jm_getAbsoluteNextIntAllowZero_1 this _size))
            (setf _value (aref _intArray _randomIndex))
            (setf (aref _intArray _randomIndex) (aref _intArray _randomIndex2))
            (setf (aref _intArray _randomIndex2) _value))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_shuffle2_2) (defgeneric jm_shuffle2_2 (this p1 p2)))
(defmethod jm_shuffle2_2 ((this MyRandomFactory) _intArray _intArray2)
  (declare (ignorable this _intArray _intArray2))
  (let ()
    (block jreturn
        (jm_shuffle2Total_3 this _intArray _intArray2 (JR.i32 (* (length _intArray) 7))))))

    
(unless (fboundp 'jm_shuffle2Total_3) (defgeneric jm_shuffle2Total_3 (this p1 p2 p3)))
(defmethod jm_shuffle2Total_3 ((this MyRandomFactory) _intArray _intArray2 _shuffleTotal)
  (declare (ignorable this _intArray _intArray2 _shuffleTotal))
  (let (_size _randomIndex _randomIndex2 _value _value2 _index)
  (declare (ignorable _size _randomIndex _randomIndex2 _value _value2 _index))
    (block jreturn
        (setf _size (length _intArray))
        (setf _randomIndex 0)
        (setf _randomIndex2 0)
        (setf _value 0)
        (setf _value2 0)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _shuffleTotal) do
                (block jcontinue
            (setf _randomIndex (jm_getAbsoluteNextIntAllowZero_1 this _size))
            (setf _randomIndex2 (jm_getAbsoluteNextIntAllowZero_1 this _size))
            (setf _value (aref _intArray _randomIndex))
            (setf _value2 (aref _intArray2 _randomIndex))
            (setf (aref _intArray _randomIndex) (aref _intArray _randomIndex2))
            (setf (aref _intArray _randomIndex2) _value)
            (setf (aref _intArray2 _randomIndex) (aref _intArray2 _randomIndex2))
            (setf (aref _intArray2 _randomIndex2) _value2))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(defun MyRandomFactory.jm_main_1 (_args)
  (declare (ignorable _args))
  (let (_randomFactory _stringBuilder _commonSeps _size2 _index _intArray _intArray2 _size _found _index2)
  (declare (ignorable _randomFactory _stringBuilder _commonSeps _size2 _index _intArray _intArray2 _size _found _index2))
    (block jreturn
        (setf _randomFactory (MyRandomFactory.jm_getInstance_0))
        (setf _stringBuilder (StringMaker.jnew_0))
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf _size2 100)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size2) do
                (block jcontinue
            (jm_append_1 (jm_appendint_1 _stringBuilder (jm_getAbsoluteNextInt_1 _randomFactory 3)) (slot-value _commonSeps 'f_COMMA)))
                (setf _index (JR.i32 (+ _index 1))))))
        (JR.println (jm_toString_0 _stringBuilder))
        (jm_delete_2 _stringBuilder 0 (jm_length_0 _stringBuilder))
        (setf _intArray (JR.newArray 0 52))
        (setf _intArray2 (JR.newArray 0 52))
        (setf _size (length _intArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref _intArray _index) _index)
            (setf (aref _intArray2 _index) _index))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_shuffle2_2 _randomFactory _intArray _intArray2)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_append_1 (jm_appendint_1 _stringBuilder (aref _intArray _index)) (slot-value _commonSeps 'f_COMMA)))
                (setf _index (JR.i32 (+ _index 1))))))
        (JR.println (jm_toString_0 _stringBuilder))
        (jm_delete_2 _stringBuilder 0 (jm_length_0 _stringBuilder))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_append_1 (jm_appendint_1 _stringBuilder (aref _intArray2 _index)) (slot-value _commonSeps 'f_COMMA)))
                (setf _index (JR.i32 (+ _index 1))))))
        (JR.println (jm_toString_0 _stringBuilder))
        (setf _found nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _found nil)
            (progn
                (setf _index2 0)
                (block jbreak (loop while (< _index2 _size) do
                    (block jcontinue
                (if (= (aref _intArray _index2) _index)
                    (progn
                    (setf _found t))))
                    (setf _index2 (JR.i32 (+ _index2 1))))))
            (if (not _found)
                (progn
                (error (JR.newException "RuntimeException")))))
                (setf _index (JR.i32 (+ _index 1)))))))))



