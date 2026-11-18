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

(defclass UniformTextureOpenGLProcessor (OpenGLObject3dProcessor)
  ())

    
(defun UniformTextureOpenGLProcessor.jnew_2 (_shaderComposite _handleIndex)
  (declare (ignorable _shaderComposite _handleIndex))
  (let ((this (make-instance 'UniformTextureOpenGLProcessor)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_3) (defgeneric jm_process_3 (this p1 p2 p3)))
(defmethod jm_process_3 ((this UniformTextureOpenGLProcessor) _gl _unused _index)
  (declare (ignorable this _gl _unused _index))
  (let ()
    (block jreturn nil)))



