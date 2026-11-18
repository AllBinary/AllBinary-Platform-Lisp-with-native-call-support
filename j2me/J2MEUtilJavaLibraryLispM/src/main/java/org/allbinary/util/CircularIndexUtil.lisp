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

(defclass CircularIndexUtil (JObject)
  ((f_index :initform 0)
   (f_lastIndex :initform 0)
   (f_size :initform 0)))

(defvar CircularIndexUtil.jcell_NULL_CIRCULAR_INDEX_UTIL :jnone)
(defun CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL ()
  (when (eq CircularIndexUtil.jcell_NULL_CIRCULAR_INDEX_UTIL :jnone) (setf CircularIndexUtil.jcell_NULL_CIRCULAR_INDEX_UTIL (CircularIndexUtil.jnew_2 0 0)))
  CircularIndexUtil.jcell_NULL_CIRCULAR_INDEX_UTIL)
(defun (setf CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL) (value) (setf CircularIndexUtil.jcell_NULL_CIRCULAR_INDEX_UTIL value))

    
(defun CircularIndexUtil.jnew_2 (_index _size)
  (declare (ignorable _index _size))
  (let ((this (make-instance 'CircularIndexUtil)))
    (setf (slot-value this 'f_index) 0)
    (setf (slot-value this 'f_lastIndex) 0)
    (setf (slot-value this 'f_size) 0)
  (let ()
    (block jreturn
        (jm_setSize_1 this _size)
        (jm_setIndex_1 this _index)))
    this))

    
(unless (fboundp 'jm_next_0) (defgeneric jm_next_0 (this)))
(defmethod jm_next_0 ((this CircularIndexUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (>= (slot-value this 'f_index) (slot-value this 'f_lastIndex))
            (progn
            (setf (slot-value this 'f_index) 0))
            (progn
            (setf (slot-value this 'f_index) (JR.i32 (+ (slot-value this 'f_index) 1)))))
        (return-from jreturn (slot-value this 'f_index)))))

    
(unless (fboundp 'jm_previous_0) (defgeneric jm_previous_0 (this)))
(defmethod jm_previous_0 ((this CircularIndexUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (< (slot-value this 'f_index) 1)
            (progn
            (setf (slot-value this 'f_index) (slot-value this 'f_lastIndex)))
            (progn
            (setf (slot-value this 'f_index) (JR.i32 (- (slot-value this 'f_index) 1)))))
        (return-from jreturn (slot-value this 'f_index)))))

    
(unless (fboundp 'jm_setIndex_1) (defgeneric jm_setIndex_1 (this p1)))
(defmethod jm_setIndex_1 ((this CircularIndexUtil) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (if (> _index (slot-value this 'f_lastIndex))
            (progn
            (return-from jreturn)))
        (setf (slot-value this 'f_index) _index))))

    
(unless (fboundp 'jm_getIndex_0) (defgeneric jm_getIndex_0 (this)))
(defmethod jm_getIndex_0 ((this CircularIndexUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_index)))))

    
(defun CircularIndexUtil.jm_createInstance_1 (_max)
  (declare (ignorable _max))
  (let ()
    (block jreturn
        (return-from jreturn (CircularIndexUtil.jnew_2 0 _max)))))

    
(defun CircularIndexUtil.jm_createInstanceAt_2 (_index _max)
  (declare (ignorable _index _max))
  (let ()
    (block jreturn
        (return-from jreturn (CircularIndexUtil.jnew_2 _index _max)))))

    
(unless (fboundp 'jm_setSize_1) (defgeneric jm_setSize_1 (this p1)))
(defmethod jm_setSize_1 ((this CircularIndexUtil) _size)
  (declare (ignorable this _size))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_size) _size)
        (setf (slot-value this 'f_lastIndex) (JR.i32 (- _size 1)))
        (setf (slot-value this 'f_index) 0))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this CircularIndexUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_size)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this CircularIndexUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_INDEX_LABEL)) (slot-value this 'f_index)) "lastIndex: ") (slot-value this 'f_lastIndex)) "size: ") (slot-value this 'f_size)))))))



