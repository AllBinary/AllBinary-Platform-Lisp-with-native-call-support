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

(defclass ShaderComposite (JObject)
  ((f_disableProgramShaderOpenGLProcessor :initform nil)
   (f_requiresOpenGLVersion :initform nil)
   (f_shaderArray :initform nil)
   (f_shaderInitializer :initform nil)
   (f_compositeShaderUpdater :initform nil)
   (f_modelViewProjection :initform nil)
   (f_colorOpenGLProcessor :initform nil)
   (f_vertexOpenGLProcessor :initform nil)
   (f_useProgramShaderOpenGLProcessor :initform nil)
   (f_shaderMatrixOpenGLProcessor :initform nil)
   (f_colorEnableVertexAttribArrayOpenGLProcessor :initform nil)
   (f_normalEnableVertexAttribArrayOpenGLProcessor :initform nil)
   (f_vertexEnableVertexAttribArrayOpenGLProcessor :initform nil)
   (f_textureEnableVertexAttribArrayOpenGLProcessor :initform nil)
   (f_colorDisableVertexAttribArrayOpenGLProcessor :initform nil)
   (f_normalDisableVertexAttribArrayOpenGLProcessor :initform nil)
   (f_vertexDisableVertexAttribArrayOpenGLProcessor :initform nil)
   (f_textureDisableVertexAttribArrayOpenGLProcessor :initform nil)
   (f_uniformLightPositionOpenGLProcessor :initform nil)
   (f_uniformLightColorOpenGLProcessor :initform nil)
   (f_uniformCameraPositionOpenGLProcessor :initform nil)
   (f_uniformTextureUnitOpenGLProcessor :initform nil)
   (f_programHandle :initform 0)))

    
(defun ShaderComposite.jnew_8 (_requiresOpenGLVersion _shaderArray _compositeShaderUpdater _shaderInitializer _modelViewProjection _colorOpenGLProcessor _vertexOpenGLProcessor _disableProgramShaderOpenGLProcessor)
  (declare (ignorable _requiresOpenGLVersion _shaderArray _compositeShaderUpdater _shaderInitializer _modelViewProjection _colorOpenGLProcessor _vertexOpenGLProcessor _disableProgramShaderOpenGLProcessor))
  (let ((this (make-instance 'ShaderComposite)))
    
    
    
    
    
    
    
    
    (setf (slot-value this 'f_useProgramShaderOpenGLProcessor) (NullOpenGLProcessorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_shaderMatrixOpenGLProcessor) (NullOpenGLProcessorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_colorEnableVertexAttribArrayOpenGLProcessor) (NullOpenGLProcessorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_normalEnableVertexAttribArrayOpenGLProcessor) (NullOpenGLProcessorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_vertexEnableVertexAttribArrayOpenGLProcessor) (NullOpenGLProcessorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_textureEnableVertexAttribArrayOpenGLProcessor) (NullOpenGLProcessorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_colorDisableVertexAttribArrayOpenGLProcessor) (NullOpenGLProcessorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_normalDisableVertexAttribArrayOpenGLProcessor) (NullOpenGLProcessorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_vertexDisableVertexAttribArrayOpenGLProcessor) (NullOpenGLProcessorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_textureDisableVertexAttribArrayOpenGLProcessor) (NullOpenGLProcessorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_uniformLightPositionOpenGLProcessor) (NullOpenGLTextureProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_uniformLightColorOpenGLProcessor) (NullOpenGLTextureProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_uniformCameraPositionOpenGLProcessor) (NullOpenGLTextureProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_uniformTextureUnitOpenGLProcessor) (NullOpenGLTextureProcessor.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_requiresOpenGLVersion) _requiresOpenGLVersion)
        (setf (slot-value this 'f_shaderArray) _shaderArray)
        (setf (slot-value this 'f_shaderInitializer) _shaderInitializer)
        (setf (slot-value this 'f_compositeShaderUpdater) _compositeShaderUpdater)
        (setf (slot-value this 'f_modelViewProjection) _modelViewProjection)
        (setf (slot-value this 'f_colorOpenGLProcessor) _colorOpenGLProcessor)
        (setf (slot-value this 'f_vertexOpenGLProcessor) _vertexOpenGLProcessor)
        (setf (slot-value this 'f_disableProgramShaderOpenGLProcessor) _disableProgramShaderOpenGLProcessor)))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this ShaderComposite) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_programHandle) (jm_init_3 (slot-value this 'f_shaderInitializer) _gl (slot-value this 'f_shaderArray) (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0)))))))



