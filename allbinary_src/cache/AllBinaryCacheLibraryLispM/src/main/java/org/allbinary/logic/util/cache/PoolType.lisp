;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2007 AllBinary 
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

(defclass PoolType (JObject)
  ((f_cacheType :initform nil)))

    
(defun PoolType.jnew_1 (_cacheType)
  (declare (ignorable _cacheType))
  (let ((this (make-instance 'PoolType)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_cacheType) _cacheType)))
    this))

    
(unless (fboundp 'jm_getCacheType_0) (defgeneric jm_getCacheType_0 (this)))
(defmethod jm_getCacheType_0 ((this PoolType))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_cacheType)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this PoolType))
  (declare (ignorable this))
  (let (_POOL_TYPE)
  (declare (ignorable _POOL_TYPE))
    (block jreturn
        (setf _POOL_TYPE "PoolType: ")
        (return-from jreturn (JR.concat _POOL_TYPE (jm_toString_0 (jm_getCacheType_0 this)))))))



