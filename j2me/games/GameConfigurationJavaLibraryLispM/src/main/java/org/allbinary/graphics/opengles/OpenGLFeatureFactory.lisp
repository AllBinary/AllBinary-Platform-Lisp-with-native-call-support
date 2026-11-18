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

(defclass OpenGLFeatureFactory (JObject)
  ((f_OPENGL_OPTIONS :initform nil)
   (f_OPENGL :initform nil)
   (f_OPENGL_SURFACE_VIEW :initform nil)
   (f_OPENGL_2D :initform nil)
   (f_OPENGL_3D :initform nil)
   (f_OPENGL_2D_AND_3D :initform nil)
   (f_OPENGL_AUTO_SELECT :initform nil)
   (f_OPENGL_MINIMUM :initform nil)
   (f_OPENGL_AS_GAME_THREAD :initform nil)
   (f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS :initform nil)
   (f_IMAGE_COLOR_DEPTH_4444 :initform nil)
   (f_IMAGE_COLOR_DEPTH_8888 :initform nil)
   (f_IMAGE_COLOR_DEPTH_565 :initform nil)
   (f_OPENGL_COLOR_DEPTH_4444 :initform nil)
   (f_OPENGL_COLOR_DEPTH_8888 :initform nil)
   (f_OPENGL_COLOR_DEPTH_565 :initform nil)
   (f_OPENGL_DRAW_TEXTURE :initform nil)
   (f_OPENGL_VERTEX_BUFFER_OBJECT :initform nil)
   (f_OPENGL_SIMPLE_OBJECT3D_PROCESSOR :initform nil)
   (f_OPENGL_COMPLEX_OBJECT3D_PROCESSOR :initform nil)
   (f_OPENGL_SIMPLE_TEXTURE_PROCESSOR :initform nil)
   (f_OPENGL_COMPLEX_TEXTURE_PROCESSOR :initform nil)))

(defvar OpenGLFeatureFactory.jcell_instance :jnone)
(defun OpenGLFeatureFactory.jstatic_instance ()
  (when (eq OpenGLFeatureFactory.jcell_instance :jnone) (setf OpenGLFeatureFactory.jcell_instance (OpenGLFeatureFactory.jnew_0)))
  OpenGLFeatureFactory.jcell_instance)
(defun (setf OpenGLFeatureFactory.jstatic_instance) (value) (setf OpenGLFeatureFactory.jcell_instance value))

    
(defun OpenGLFeatureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLFeatureFactory.jstatic_instance)))))

    
(defun OpenGLFeatureFactory.jnew_0 ()
  (let ((this (make-instance 'OpenGLFeatureFactory)))
    (setf (slot-value this 'f_OPENGL_OPTIONS) (OpenGLFeature.jnew_1 "OpenGL Options"))
    (setf (slot-value this 'f_OPENGL) (OpenGLFeature.jnew_1 "OpenGL"))
    (setf (slot-value this 'f_OPENGL_SURFACE_VIEW) (OpenGLFeature.jnew_1 "GLSurfaceView"))
    (setf (slot-value this 'f_OPENGL_2D) (OpenGLFeature.jnew_1 "OpenGL 2D"))
    (setf (slot-value this 'f_OPENGL_3D) (OpenGLFeature.jnew_1 "OpenGL 3D"))
    (setf (slot-value this 'f_OPENGL_2D_AND_3D) (OpenGLFeature.jnew_1 "OpenGL 2D/3D"))
    (setf (slot-value this 'f_OPENGL_AUTO_SELECT) (OpenGLFeature.jnew_1 "Auto Select"))
    (setf (slot-value this 'f_OPENGL_MINIMUM) (OpenGLFeature.jnew_1 "Minimum"))
    (setf (slot-value this 'f_OPENGL_AS_GAME_THREAD) (OpenGLFeature.jnew_1 "As game thread"))
    (setf (slot-value this 'f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS) (OpenGLFeature.jnew_1 "As different threads"))
    (setf (slot-value this 'f_IMAGE_COLOR_DEPTH_4444) (OpenGLFeature.jnew_1 "4444"))
    (setf (slot-value this 'f_IMAGE_COLOR_DEPTH_8888) (OpenGLFeature.jnew_1 "8888"))
    (setf (slot-value this 'f_IMAGE_COLOR_DEPTH_565) (OpenGLFeature.jnew_1 "565"))
    (setf (slot-value this 'f_OPENGL_COLOR_DEPTH_4444) (OpenGLFeature.jnew_1 "4444"))
    (setf (slot-value this 'f_OPENGL_COLOR_DEPTH_8888) (OpenGLFeature.jnew_1 "8888"))
    (setf (slot-value this 'f_OPENGL_COLOR_DEPTH_565) (OpenGLFeature.jnew_1 "565"))
    (setf (slot-value this 'f_OPENGL_DRAW_TEXTURE) (OpenGLFeature.jnew_1 "GL_OES_draw_texture"))
    (setf (slot-value this 'f_OPENGL_VERTEX_BUFFER_OBJECT) (OpenGLFeature.jnew_1 "vertex_buffer_object"))
    (setf (slot-value this 'f_OPENGL_SIMPLE_OBJECT3D_PROCESSOR) (OpenGLFeature.jnew_1 "Simple Object3d Processor"))
    (setf (slot-value this 'f_OPENGL_COMPLEX_OBJECT3D_PROCESSOR) (OpenGLFeature.jnew_1 "Complex Object3d Processor"))
    (setf (slot-value this 'f_OPENGL_SIMPLE_TEXTURE_PROCESSOR) (OpenGLFeature.jnew_1 "Simple Texture Processor"))
    (setf (slot-value this 'f_OPENGL_COMPLEX_TEXTURE_PROCESSOR) (OpenGLFeature.jnew_1 "Complex Texture Processor"))
  (let ()
    (block jreturn nil))
    this))



