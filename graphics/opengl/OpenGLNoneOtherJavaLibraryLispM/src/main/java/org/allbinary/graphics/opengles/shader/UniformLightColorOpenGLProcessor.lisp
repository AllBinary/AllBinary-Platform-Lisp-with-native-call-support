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

(defclass UniformLightColorOpenGLProcessor (OpenGLObject3dProcessor)
  ())

    
(defun UniformLightColorOpenGLProcessor.jnew_2 (_shaderComposite _handleIndex)
  (declare (ignorable _shaderComposite _handleIndex))
  (let ((this (make-instance 'UniformLightColorOpenGLProcessor)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this UniformLightColorOpenGLProcessor) _gl _unused)
  (declare (ignorable this _gl _unused))
  (let ()
    (block jreturn nil)))



