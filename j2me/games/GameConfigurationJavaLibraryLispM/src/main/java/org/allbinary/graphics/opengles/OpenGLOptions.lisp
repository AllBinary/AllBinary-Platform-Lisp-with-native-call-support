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

(defclass OpenGLOptions (JObject)
  ())

(defun OpenGLOptions.jnew_0 ()
  (let ((this (make-instance 'OpenGLOptions)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this OpenGLOptions))
  (declare (ignorable this))
  (let (_openGLFeatureFactory _openGLMultipleList _openGLVersionSelectorMultipleList _openGLImageColorMultipleList)
  (declare (ignorable _openGLFeatureFactory _openGLMultipleList _openGLVersionSelectorMultipleList _openGLImageColorMultipleList))
    (block jreturn
        (setf _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
        (if (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value _openGLFeatureFactory 'f_OPENGL_OPTIONS))
            (progn
            (setf _openGLMultipleList (BasicArrayListD.jnew_0))
            (jm_add_1 _openGLMultipleList (slot-value _openGLFeatureFactory 'f_OPENGL))
            (jm_add_2 (GameFeatureChoiceGroups.jm_getMultipleInstance_0) "OpenGL (Complete Restart)" _openGLMultipleList)
            (setf _openGLVersionSelectorMultipleList (BasicArrayListD.jnew_0))
            (jm_add_1 _openGLVersionSelectorMultipleList (slot-value _openGLFeatureFactory 'f_OPENGL_AUTO_SELECT))
            (jm_add_1 _openGLVersionSelectorMultipleList (slot-value _openGLFeatureFactory 'f_OPENGL_MINIMUM))
            (jm_add_2 (GameFeatureChoiceGroups.jm_getExclusiveInstance_0) "OpenGL Version Selector" _openGLVersionSelectorMultipleList)
            (setf _openGLImageColorMultipleList (BasicArrayListD.jnew_0))
            (jm_add_1 _openGLImageColorMultipleList (slot-value _openGLFeatureFactory 'f_IMAGE_COLOR_DEPTH_4444))
            (jm_add_1 _openGLImageColorMultipleList (slot-value _openGLFeatureFactory 'f_IMAGE_COLOR_DEPTH_8888))
            (jm_add_2 (GameFeatureChoiceGroups.jm_getExclusiveInstance_0) "OpenGL Image Color RGBA" _openGLImageColorMultipleList))))))



