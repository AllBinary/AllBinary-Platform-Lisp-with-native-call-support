;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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

(defclass J2SECacheInterface (JObject)
  ())

(defun J2SECacheInterface.jnew_0 ()
  (let ((this (make-instance 'J2SECacheInterface)))
    this))

    
(unless (fboundp 'jm_keySet_0) (defgeneric jm_keySet_0 (this)))
(defmethod jm_keySet_0 ((this J2SECacheInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "keySet")))



