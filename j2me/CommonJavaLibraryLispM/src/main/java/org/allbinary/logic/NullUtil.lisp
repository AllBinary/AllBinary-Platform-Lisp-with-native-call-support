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

;ActualPlatform
(defclass NullUtil (JObject)
  ((f_NULL_OBJECT :initform nil)
   (f_NULL_CLASS :initform nil)
   (f_NULL_OBJECT_ARRAY :initform nil)
   (f_NULL_CHAR_ARRAY :initform nil)
   (f_NULL_BYTE_ARRAY :initform nil)
   (f_NULL_SHORT_ARRAY_ARRAY :initform nil)
   (f_NULL_INT_ARRAY :initform nil)
   (f_NULL_INT_ARRAY_ARRAY :initform nil)
   (f_NULL_INT_ARRAY_ARRAY_ARRAY :initform nil)
   (f_NULL_FLOAT_ARRAY :initform nil)))

(defvar NullUtil.jcell_instance :jnone)
(defun NullUtil.jstatic_instance ()
  (when (eq NullUtil.jcell_instance :jnone) (setf NullUtil.jcell_instance (NullUtil.jnew_0)))
  NullUtil.jcell_instance)

(defun NullUtil.jnew_0 ()
  (let ((this (make-instance 'NullUtil)))
    (setf (slot-value this 'f_NULL_OBJECT) (JR.newJObject "Object"))
    (setf (slot-value this 'f_NULL_CLASS) (JR.className (slot-value this 'f_NULL_OBJECT)))
    (setf (slot-value this 'f_NULL_OBJECT_ARRAY) (JR.newArray nil 0))
    (setf (slot-value this 'f_NULL_CHAR_ARRAY) (JR.newArray 0 0))
    (setf (slot-value this 'f_NULL_BYTE_ARRAY) (JR.newArray 0 0))
    (setf (slot-value this 'f_NULL_SHORT_ARRAY_ARRAY) (JR.newArray 0 0 0))
    (setf (slot-value this 'f_NULL_INT_ARRAY) (JR.newArray 0 0))
    (setf (slot-value this 'f_NULL_INT_ARRAY_ARRAY) (JR.newArray 0 0 0))
    (setf (slot-value this 'f_NULL_INT_ARRAY_ARRAY_ARRAY) (JR.newArray 0 0 0 0))
    (setf (slot-value this 'f_NULL_FLOAT_ARRAY) (JR.newArray 0.0f0 0))
    this))

    
(defun NullUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullUtil.jstatic_instance)))))



