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
;;;; package org.allbinary.device

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullGL10 (JObject)
  ())

(defvar NullGL10.jcell_NULL_GL10 :jnone)
(defun NullGL10.jstatic_NULL_GL10 ()
  (when (eq NullGL10.jcell_NULL_GL10 :jnone) (setf NullGL10.jcell_NULL_GL10 (NullGL10.jnew_0)))
  NullGL10.jcell_NULL_GL10)
(defun (setf NullGL10.jstatic_NULL_GL10) (value) (setf NullGL10.jcell_NULL_GL10 value))

(defun NullGL10.jnew_0 ()
  (let ((this (make-instance 'NullGL10)))
    this))



