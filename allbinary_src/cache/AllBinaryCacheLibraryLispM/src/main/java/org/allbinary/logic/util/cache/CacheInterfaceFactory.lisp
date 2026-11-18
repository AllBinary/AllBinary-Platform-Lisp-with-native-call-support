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

(defclass CacheInterfaceFactory (JObject)
  ())

    
(defun CacheInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'CacheInterfaceFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(defun CacheInterfaceFactory.jm_getInstance_2 (_cacheType _cachePolicy)
  (declare (ignorable _cacheType _cachePolicy))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (JR.concat "No such " (jm_toString_0 _cacheType)))))))



