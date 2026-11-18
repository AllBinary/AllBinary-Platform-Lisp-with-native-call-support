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
;;;; package org.allbinary.logic.io

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullCloseable (JObject)
  ())

(defvar NullCloseable.jcell_NULL_CLOSEABLE :jnone)
(defun NullCloseable.jstatic_NULL_CLOSEABLE ()
  (when (eq NullCloseable.jcell_NULL_CLOSEABLE :jnone) (setf NullCloseable.jcell_NULL_CLOSEABLE (NullCloseable.jnew_0)))
  NullCloseable.jcell_NULL_CLOSEABLE)
(defun (setf NullCloseable.jstatic_NULL_CLOSEABLE) (value) (setf NullCloseable.jcell_NULL_CLOSEABLE value))

(defun NullCloseable.jnew_0 ()
  (let ((this (make-instance 'NullCloseable)))
    this))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this NullCloseable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



