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

(defclass NullOpenGLTextureProcessor (JObject)
  ())

(defvar NullOpenGLTextureProcessor.jcell_instance :jnone)
(defun NullOpenGLTextureProcessor.jstatic_instance ()
  (when (eq NullOpenGLTextureProcessor.jcell_instance :jnone) (setf NullOpenGLTextureProcessor.jcell_instance (OpenGLObject3dProcessor.jnew_0)))
  NullOpenGLTextureProcessor.jcell_instance)
(defun (setf NullOpenGLTextureProcessor.jstatic_instance) (value) (setf NullOpenGLTextureProcessor.jcell_instance value))

(defun NullOpenGLTextureProcessor.jnew_0 ()
  (let ((this (make-instance 'NullOpenGLTextureProcessor)))
    this))

    
(defun NullOpenGLTextureProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullOpenGLTextureProcessor.jstatic_instance)))))



