;;;;
;;;; AllBinary Open License Version 1
;;;; Copyright (c) 2011 AllBinary
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
;;;; package org.allbinary.graphics.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLCapabilities (JObject)
  ((f_CUSTOM_GL_SURFACE_VIEW :initform nil)
   (f_VERSION_1_0 :initform nil)
   (f_VERSION_1_1 :initform nil)
   (f_VERSION_2_0 :initform nil)
   (f_VERSION_3_0 :initform nil)
   (f_VERSION_3_1 :initform nil)
   (f_VERSION_3_2 :initform nil)
   (f_VERSION_HIGHER_THAN_EXISTS :initform nil)
   (f_glVersion :initform nil)
   (f_shaderVersion :initform 0)
   (f_glInstanceVersion :initform nil)
   (f_maxTextureSize :initform 0)))

(defvar OpenGLCapabilities.jcell_instance :jnone)
(defun OpenGLCapabilities.jstatic_instance ()
  (when (eq OpenGLCapabilities.jcell_instance :jnone) (setf OpenGLCapabilities.jcell_instance (OpenGLCapabilities.jnew_0)))
  OpenGLCapabilities.jcell_instance)
(defun (setf OpenGLCapabilities.jstatic_instance) (value) (setf OpenGLCapabilities.jcell_instance value))

    
(defun OpenGLCapabilities.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLCapabilities.jstatic_instance)))))

    
(defun OpenGLCapabilities.jnew_0 ()
  (let ((this (make-instance 'OpenGLCapabilities)))
    (setf (slot-value this 'f_CUSTOM_GL_SURFACE_VIEW) t)
    (setf (slot-value this 'f_VERSION_1_0) "1.0")
    (setf (slot-value this 'f_VERSION_1_1) "1.1")
    (setf (slot-value this 'f_VERSION_2_0) "2.0")
    (setf (slot-value this 'f_VERSION_3_0) "3.0")
    (setf (slot-value this 'f_VERSION_3_1) "3.1")
    (setf (slot-value this 'f_VERSION_3_2) "3.2")
    (setf (slot-value this 'f_VERSION_HIGHER_THAN_EXISTS) "999.999")
    (setf (slot-value this 'f_glVersion) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_shaderVersion) 0)
    (setf (slot-value this 'f_glInstanceVersion) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_maxTextureSize) 64)
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_isInitialized_0) (defgeneric jm_isInitialized_0 (this)))
(defmethod jm_isInitialized_0 ((this OpenGLCapabilities))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_initCapabilities_1) (defgeneric jm_initCapabilities_1 (this p1)))
(defmethod jm_initCapabilities_1 ((this OpenGLCapabilities) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isGlExtensionDrawTexture_0) (defgeneric jm_isGlExtensionDrawTexture_0 (this)))
(defmethod jm_isGlExtensionDrawTexture_0 ((this OpenGLCapabilities))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getGlVersion_0) (defgeneric jm_getGlVersion_0 (this)))
(defmethod jm_getGlVersion_0 ((this OpenGLCapabilities))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_glVersion)))))

    
(unless (fboundp 'jm_isVertexBufferObjectSupport_0) (defgeneric jm_isVertexBufferObjectSupport_0 (this)))
(defmethod jm_isVertexBufferObjectSupport_0 ((this OpenGLCapabilities))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isTextureSizeValid_1) (defgeneric jm_isTextureSizeValid_1 (this p1)))
(defmethod jm_isTextureSizeValid_1 ((this OpenGLCapabilities) _widthAndHeight)
  (declare (ignorable this _widthAndHeight))
  (let ()
    (block jreturn
        (return-from jreturn t))))



