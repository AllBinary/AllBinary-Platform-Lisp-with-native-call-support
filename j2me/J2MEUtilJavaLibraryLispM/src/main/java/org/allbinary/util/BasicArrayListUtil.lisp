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
;;;; package org.allbinary.util

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicArrayListUtil (JObject)
  ((f_NULL_ARRAY_OF_ARRAY :initform nil)
   (f_myRandomFactory :initform nil)
   (f_immutableInstance :initform nil)))

(defvar BasicArrayListUtil.jcell_instance :jnone)
(defun BasicArrayListUtil.jstatic_instance ()
  (when (eq BasicArrayListUtil.jcell_instance :jnone) (setf BasicArrayListUtil.jcell_instance (BasicArrayListUtil.jnew_0)))
  BasicArrayListUtil.jcell_instance)

(defun BasicArrayListUtil.jnew_0 ()
  (let ((this (make-instance 'BasicArrayListUtil)))
    (setf (slot-value this 'f_NULL_ARRAY_OF_ARRAY) (JR.newArray nil 0 0))
    (setf (slot-value this 'f_myRandomFactory) (MyRandomFactory.jm_getInstance_0))
    (setf (slot-value this 'f_immutableInstance) (ImmutableBasicArrayList.jnew_2 "Immutable" 0))
    this))

    
(defun BasicArrayListUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicArrayListUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getRandom_1) (defgeneric jm_getRandom_1 (this p1)))
(defmethod jm_getRandom_1 ((this BasicArrayListUtil) _list)
  (declare (ignorable this _list))
  (let (_i_random)
  (declare (ignorable _i_random))
    (block jreturn
        (setf _i_random (jm_getRandomIndex_1 this _list))
        (return-from jreturn (aref (slot-value _list 'f_objectArray) _i_random)))))

    
(unless (fboundp 'jm_getRandomIndex_1) (defgeneric jm_getRandomIndex_1 (this p1)))
(defmethod jm_getRandomIndex_1 ((this BasicArrayListUtil) _list)
  (declare (ignorable this _list))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getAbsoluteNextInt_1 (slot-value this 'f_myRandomFactory) (jm_size_0 _list))))))

    
(unless (fboundp 'jm_reverse_1) (defgeneric jm_reverse_1 (this p1)))
(defmethod jm_reverse_1 ((this BasicArrayListUtil) _list)
  (declare (ignorable this _list))
  (let (_lastMinusOneIndex _temp _size _secondSwapIndex _index)
  (declare (ignorable _lastMinusOneIndex _temp _size _secondSwapIndex _index))
    (block jreturn
        (setf _lastMinusOneIndex (JR.i32 (- (jm_size_0 _list) 2)))
        (setf _temp nil)
        (setf _size (JR.idiv _lastMinusOneIndex 2))
        (setf _secondSwapIndex 0)
        (progn
            (setf _index 0)
            (block jbreak (loop while (<= _index _size) do
                (block jcontinue
            (setf _secondSwapIndex (JR.i32 (- _lastMinusOneIndex _index)))
            (setf _temp (jm_removeAt_1 _list _index))
            (jm_addAt_2 _list _index (jm_removeAt_1 _list _secondSwapIndex))
            (jm_addAt_2 _list (JR.i32 (+ _secondSwapIndex 1)) _temp))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_log_1) (defgeneric jm_log_1 (this p1)))
(defmethod jm_log_1 ((this BasicArrayListUtil) _list)
  (declare (ignorable this _list))
  (let (_S_LABEL _size _stringBuffer _usedList _index)
  (declare (ignorable _S_LABEL _size _stringBuffer _usedList _index))
    (block jreturn
        (setf _S_LABEL " s: ")
        (setf _size (jm_size_0 _list))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (slot-value (CommonLabels.jm_getInstance_0) 'f_TOTAL_LABEL))
        (jm_appendint_1 _stringBuffer _size)
        (progn
            (setf _index (JR.i32 (- _size 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _usedList (aref (slot-value _list 'f_objectArray) _index))
            (jm_append_1 _stringBuffer _S_LABEL)
            (jm_appendint_1 _stringBuffer (jm_size_0 _usedList)))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getImmutableInstance_0) (defgeneric jm_getImmutableInstance_0 (this)))
(defmethod jm_getImmutableInstance_0 ((this BasicArrayListUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_immutableInstance)))))

    
(defun BasicArrayListUtil.jm_main_1 (_args)
  (declare (ignorable _args))
  (let (_commonPhoneStrings _list)
  (declare (ignorable _commonPhoneStrings _list))
    (block jreturn
        (setf _commonPhoneStrings (CommonPhoneStrings.jm_getInstance_0))
        (setf _list (BasicArrayListD.jnew_0))
        (jm_add_1 _list (slot-value _commonPhoneStrings 'f_ONE))
        (jm_add_1 _list (slot-value _commonPhoneStrings 'f_TWO))
        (jm_add_1 _list (slot-value _commonPhoneStrings 'f_THREE))
        (jm_add_1 _list (slot-value _commonPhoneStrings 'f_FOUR))
        (jm_add_1 _list (slot-value _commonPhoneStrings 'f_FIVE))
        (jm_add_1 _list (slot-value _commonPhoneStrings 'f_SIX))
        (jm_add_1 _list (slot-value _commonPhoneStrings 'f_SEVEN))
        (jm_add_1 _list (slot-value _commonPhoneStrings 'f_EIGHT))
        (jm_add_1 _list (slot-value _commonPhoneStrings 'f_NINE))
        (jm_reverse_1 (BasicArrayListUtil.jm_getInstance_0) _list)
        (JR.println (jm_toString_0 _list)))))



