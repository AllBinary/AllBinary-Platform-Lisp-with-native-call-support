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

(defclass ShaderManager (JObject)
  ((f_LOAD_SHADER :initform nil)
   (f_commonStrings :initform nil)
   (f_GL_VERTEX_SHADER :initform 0)
   (f_GL_FRAGMENT_SHADER :initform 0)))

(defvar ShaderManager.jcell_instance :jnone)
(defun ShaderManager.jstatic_instance ()
  (when (eq ShaderManager.jcell_instance :jnone) (setf ShaderManager.jcell_instance (ShaderManager.jnew_2 (JR.i32 (- 1)) (JR.i32 (- 1)))))
  ShaderManager.jcell_instance)
(defun (setf ShaderManager.jstatic_instance) (value) (setf ShaderManager.jcell_instance value))

    
(defun ShaderManager.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ShaderManager.jstatic_instance)))))

    
(defun ShaderManager.jnew_2 (_GL_VERTEX_SHADER _GL_FRAGMENT_SHADER)
  (declare (ignorable _GL_VERTEX_SHADER _GL_FRAGMENT_SHADER))
  (let ((this (make-instance 'ShaderManager)))
    (setf (slot-value this 'f_LOAD_SHADER) "loadShader")
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_GL_VERTEX_SHADER) _GL_VERTEX_SHADER)
        (setf (slot-value this 'f_GL_FRAGMENT_SHADER) _GL_FRAGMENT_SHADER)))
    this))

    
(unless (fboundp 'jm_load_4) (defgeneric jm_load_4 (this p1 p2 p3 p4)))
(defmethod jm_load_4 ((this ShaderManager) _gl _resource _shaderAsStringArray _shaderType)
  (declare (ignorable this _gl _resource _shaderAsStringArray _shaderType))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_loadShader_4) (defgeneric jm_loadShader_4 (this p1 p2 p3 p4)))
(defmethod jm_loadShader_4 ((this ShaderManager) _gl _resource _stringList _shaderType)
  (declare (ignorable this _gl _resource _stringList _shaderType))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))



