;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.logic

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;NoPlatform
(defclass StdUtil (JObject)
  ((f_EMPTY_VECTOR :initform nil)
   (f_NULL_TABLE :initform nil)
   (f_NULL_MAP :initform nil)))

(defvar StdUtil.jcell_instance :jnone)
(defun StdUtil.jstatic_instance ()
  (when (eq StdUtil.jcell_instance :jnone) (setf StdUtil.jcell_instance (StdUtil.jnew_0)))
  StdUtil.jcell_instance)

(defun StdUtil.jnew_0 ()
  (let ((this (make-instance 'StdUtil)))
    (setf (slot-value this 'f_EMPTY_VECTOR) (jm_createVector_0 this))
    (setf (slot-value this 'f_NULL_TABLE) (jm_createHashtable_0 this))
    (setf (slot-value this 'f_NULL_MAP) (jm_createHashMap_0 this))
    this))

    
(defun StdUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (StdUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_createStack_0) (defgeneric jm_createStack_0 (this)))
(defmethod jm_createStack_0 ((this StdUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (ABStack.jnew_0)))))

    
(unless (fboundp 'jm_createVector_0) (defgeneric jm_createVector_0 (this)))
(defmethod jm_createVector_0 ((this StdUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (ABVector.jnew_0)))))

    
(unless (fboundp 'jm_createHashtable_0) (defgeneric jm_createHashtable_0 (this)))
(defmethod jm_createHashtable_0 ((this StdUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (ABHashtable.jnew_0)))))

    
(unless (fboundp 'jm_createHashMap_0) (defgeneric jm_createHashMap_0 (this)))
(defmethod jm_createHashMap_0 ((this StdUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (ABHashMap.jnew_0)))))



