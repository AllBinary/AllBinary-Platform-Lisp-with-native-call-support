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
;;;; package org.allbinary.logic.util.cache

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BaseCircularPool (JObject)
  ((f_circularIndexUtil :initform nil)
   (f_OBJECT_ARRAY :initform nil)))

(defun BaseCircularPool.jnew_0 ()
  (let ((this (make-instance 'BaseCircularPool)))
    (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL))
    (setf (slot-value this 'f_OBJECT_ARRAY) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT_ARRAY))
    this))

    
(unless (fboundp 'jm_getNextInstance_0) (defgeneric jm_getNextInstance_0 (this)))
(defmethod jm_getNextInstance_0 ((this BaseCircularPool))
  (declare (ignorable this))
  (let (_anyType)
  (declare (ignorable _anyType))
    (block jreturn
        (setf _anyType (aref (slot-value this 'f_OBJECT_ARRAY) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))
        (jm_next_0 (slot-value this 'f_circularIndexUtil))
        (return-from jreturn _anyType))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this BaseCircularPool) _allBinaryObjectFactoryInterface)
  (declare (ignorable this _allBinaryObjectFactoryInterface))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (jm_setIndex_1 (slot-value this 'f_circularIndexUtil) 0)
        (setf _size (jm_getSize_0 (slot-value this 'f_circularIndexUtil)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref (slot-value this 'f_OBJECT_ARRAY) _index) (jm_getInstance_0 _allBinaryObjectFactoryInterface)))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this BaseCircularPool) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_OBJECT_ARRAY) _index)))))



