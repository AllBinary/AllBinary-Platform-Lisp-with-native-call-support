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

(defclass CacheInterface (JObject)
  ())

(defun CacheInterface.jnew_0 ()
  (let ((this (make-instance 'CacheInterface)))
    this))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this CacheInterface) _cacheableInterface)
  (declare (ignorable this _cacheableInterface))
  (error (JR.newException "AbstractMethodError" "add")))

    
(unless (fboundp 'jm_addArray_1) (defgeneric jm_addArray_1 (this p1)))
(defmethod jm_addArray_1 ((this CacheInterface) _cacheableInterfaces)
  (declare (ignorable this _cacheableInterfaces))
  (error (JR.newException "AbstractMethodError" "addArray")))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this CacheInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "clear")))



