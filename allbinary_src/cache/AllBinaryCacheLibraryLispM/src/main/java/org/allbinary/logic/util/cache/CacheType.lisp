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

(defclass CacheType (JObject)
  ((f_vendor :initform nil)
   (f_type :initform nil)))

    
(defun CacheType.jnew_2 (_vendor _type)
  (declare (ignorable _vendor _type))
  (let ((this (make-instance 'CacheType)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_vendor) _vendor)
        (setf (slot-value this 'f_type) _type)))
    this))

    
(unless (fboundp 'jm_getVendor_0) (defgeneric jm_getVendor_0 (this)))
(defmethod jm_getVendor_0 ((this CacheType))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_vendor)))))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this CacheType))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_type)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this CacheType))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "CacheType: Vendor: ")
        (jm_append_1 _stringBuffer (jm_getVendor_0 this))
        (jm_append_1 _stringBuffer " Type: ")
        (jm_append_1 _stringBuffer (jm_getType_0 this))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



