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

(defclass BasicArrayListPool (AbstractArrayListPool)
  ())

    
(defun BasicArrayListPool.jnew_1 (_cacheableInterfaceFactoryInterface)
  (declare (ignorable _cacheableInterfaceFactoryInterface))
  (let ((this (make-instance 'BasicArrayListPool)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this BasicArrayListPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_buffers)))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this BasicArrayListPool) _key)
  (declare (ignorable this _key))
  (let (_size)
  (declare (ignorable _size))
    (block jreturn
        (setf _size (jm_size_0 (slot-value this 'f_buffers)))
        (if (> _size 0)
            (progn
            (return-from jreturn (jm_removeAt_1 (slot-value this 'f_buffers) (JR.i32 (- _size 1)))))
            (progn
            (return-from jreturn (jm_getInstance_1 (slot-value this 'f_cacheableInterfaceFactoryInterface) _key)))))))

    
(unless (fboundp 'jm_addAll_1) (defgeneric jm_addAll_1 (this p1)))
(defmethod jm_addAll_1 ((this BasicArrayListPool) _usedList)
  (declare (ignorable this _usedList))
  (let (_anyType _index)
  (declare (ignorable _anyType _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 _usedList))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _anyType (aref (slot-value _usedList 'f_objectArray) _index))
            (jm_add_1 this _anyType)))))
        (jm_clear_0 _usedList))))

    
(unless (fboundp 'jm_releaseUsedBackToPool_1) (defgeneric jm_releaseUsedBackToPool_1 (this p1)))
(defmethod jm_releaseUsedBackToPool_1 ((this BasicArrayListPool) _usedList)
  (declare (ignorable this _usedList))
  (let (_list _index)
  (declare (ignorable _list _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 _usedList))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _list (aref (slot-value _usedList 'f_objectArray) _index))
            (if (= (jm_size_0 _list) 0)
                (progn
                (jm_removeAt_1 _usedList _index)
                (jm_add_1 this _list))))))))))



