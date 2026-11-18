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
;;;; package org.allbinary.graphics.opengles.shader

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Shader (JObject)
  ((f_shaderName :initform nil)
   (f_shaderStringList :initform nil)
   (f_shaderAsString :initform nil)
   (f_shaderHandle :initform 0)))

(defun Shader.jnew_0 ()
  (let ((this (make-instance 'Shader)))
    (setf (slot-value this 'f_shaderName) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_shaderStringList) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))
    (setf (slot-value this 'f_shaderAsString) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    
    this))



