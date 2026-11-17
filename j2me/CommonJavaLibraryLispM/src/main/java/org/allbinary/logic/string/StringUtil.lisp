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

(defclass StringUtil (JObject)
  ((f_INIT_STRING :initform nil)
   (f_NULL_STRING :initform nil)
   (f_EMPTY_STRING :initform nil)
   (f_ONE_EMPTY_STRING_ARRAY :initform nil)
   (f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS :initform nil)
   (f_stringArray :initform nil)))

(defvar StringUtil.jcell_instance :jnone)
(defun StringUtil.jstatic_instance ()
  (when (eq StringUtil.jcell_instance :jnone) (setf StringUtil.jcell_instance (StringUtil.jnew_0)))
  StringUtil.jcell_instance)

    
(defun StringUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (StringUtil.jstatic_instance)))))

    
(defun StringUtil.jnew_0 ()
  (let ((this (make-instance 'StringUtil)))
    (setf (slot-value this 'f_INIT_STRING) "")
    (setf (slot-value this 'f_NULL_STRING) "null")
    (setf (slot-value this 'f_EMPTY_STRING) "")
    (setf (slot-value this 'f_ONE_EMPTY_STRING_ARRAY) (vector (slot-value this 'f_EMPTY_STRING)))
    (setf (slot-value this 'f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS) (JR.newArray nil 0 0))
    (setf (slot-value this 'f_stringArray) (JR.newArray nil 0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getNonNull_1) (defgeneric jm_getNonNull_1 (this p1)))
(defmethod jm_getNonNull_1 ((this StringUtil) _string)
  (declare (ignorable this _string))
  (let ()
    (block jreturn
        (return-from jreturn _string))))

    
(unless (fboundp 'jm_getArrayInstance_0) (defgeneric jm_getArrayInstance_0 (this)))
(defmethod jm_getArrayInstance_0 ((this StringUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_stringArray)))))

    
(unless (fboundp 'jm_count_2) (defgeneric jm_count_2 (this p1 p2)))
(defmethod jm_count_2 ((this StringUtil) _string _aChar)
  (declare (ignorable this _string _aChar))
  (let (_count _size _index)
  (declare (ignorable _count _size _index))
    (block jreturn
        (setf _count 0)
        (setf _size (length _string))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (if (eq (JR.charAt _string _index) _aChar)
                (progn
                (setf _count (JR.i32 (+ _count 1))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _count))))

    
(unless (fboundp 'jm_toString_1) (defgeneric jm_toString_1 (this p1)))
(defmethod jm_toString_1 ((this StringUtil) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (if (not (null _anyType))
            (progn
            (return-from jreturn (JR.toString _anyType)))
            (progn
            (return-from jreturn (slot-value this 'f_NULL_STRING)))))))



