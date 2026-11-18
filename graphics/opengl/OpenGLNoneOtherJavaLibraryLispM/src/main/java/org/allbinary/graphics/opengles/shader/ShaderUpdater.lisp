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

(defclass ShaderUpdater (JObject)
  ((f_commonStrings :initform nil)
   (f_rendererStrings :initform nil)))

(defvar ShaderUpdater.jcell_instance :jnone)
(defun ShaderUpdater.jstatic_instance ()
  (when (eq ShaderUpdater.jcell_instance :jnone) (setf ShaderUpdater.jcell_instance (ShaderUpdater.jnew_0)))
  ShaderUpdater.jcell_instance)
(defun (setf ShaderUpdater.jstatic_instance) (value) (setf ShaderUpdater.jcell_instance value))

(defun ShaderUpdater.jnew_0 ()
  (let ((this (make-instance 'ShaderUpdater)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_rendererStrings) (RendererStrings.jm_getInstance_0))
    this))

    
(defun ShaderUpdater.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ShaderUpdater.jstatic_instance)))))

    
(unless (fboundp 'jm_onSurfaceCreated_2) (defgeneric jm_onSurfaceCreated_2 (this p1 p2)))
(defmethod jm_onSurfaceCreated_2 ((this ShaderUpdater) _gl _eglConfig)
  (declare (ignorable this _gl _eglConfig))
  (let ()
    (block jreturn nil)))



