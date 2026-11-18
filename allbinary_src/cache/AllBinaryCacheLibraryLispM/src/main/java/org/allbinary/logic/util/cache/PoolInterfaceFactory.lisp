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

(defclass PoolInterfaceFactory (JObject)
  ())

    
(defun PoolInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'PoolInterfaceFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(defun PoolInterfaceFactory.jm_getInstance_3 (_cacheableInterfaceFactoryInterface _poolType _cachePolicy)
  (declare (ignorable _cacheableInterfaceFactoryInterface _poolType _cachePolicy))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (JR.concat "No Such PoolType: " (jm_toString_0 _poolType)))))))



