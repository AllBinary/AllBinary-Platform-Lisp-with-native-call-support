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

(defclass AbstractArrayListPool (JObject)
  ((f_commonStrings :initform nil)
   (f_buffers :initform nil)
   (f_cacheableInterfaceFactoryInterface :initform nil)))

    
(defun AbstractArrayListPool.jnew_1 (_cacheableInterfaceFactoryInterface)
  (declare (ignorable _cacheableInterfaceFactoryInterface))
  (let ((this (make-instance 'AbstractArrayListPool)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_buffers) (BasicArrayListD.jnew_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_cacheableInterfaceFactoryInterface) _cacheableInterfaceFactoryInterface)))
    this))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this AbstractArrayListPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this AbstractArrayListPool) _key)
  (declare (ignorable this _key))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this AbstractArrayListPool) _cacheableInterface)
  (declare (ignorable this _cacheableInterface))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_buffers) _cacheableInterface))))

    
(unless (fboundp 'jm_addArray_1) (defgeneric jm_addArray_1 (this p1)))
(defmethod jm_addArray_1 ((this AbstractArrayListPool) _cacheableInterfaces)
  (declare (ignorable this _cacheableInterfaces))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _cacheableInterfaces)) do
                (block jcontinue
            (jm_add_1 (slot-value this 'f_buffers) (aref _cacheableInterfaces _index)))
                (setf _index (JR.i32 (+ _index 1)))))))))



