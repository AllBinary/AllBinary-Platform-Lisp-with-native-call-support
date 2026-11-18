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

(defclass BasicArrayListResetablePool (AbstractArrayListPool)
  ())

    
(defun BasicArrayListResetablePool.jnew_1 (_cacheableInterfaceFactoryInterface)
  (declare (ignorable _cacheableInterfaceFactoryInterface))
  (let ((this (make-instance 'BasicArrayListResetablePool)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this BasicArrayListResetablePool))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this BasicArrayListResetablePool) _key)
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



