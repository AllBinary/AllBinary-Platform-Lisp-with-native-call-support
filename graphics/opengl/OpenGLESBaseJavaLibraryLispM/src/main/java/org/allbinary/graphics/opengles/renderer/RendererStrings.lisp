;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.graphics.opengles.renderer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RendererStrings (JObject)
  ((f_ON_SURFACE_CREATED :initform nil)
   (f_ON_SURFACE_CHANGED :initform nil)
   (f_ON_DRAW_FRAME :initform nil)
   (f_ON_DRAW_FRAME_THREED :initform nil)
   (f_ON_DRAW_FRAME_2D :initform nil)))

(defvar RendererStrings.jcell_instance :jnone)
(defun RendererStrings.jstatic_instance ()
  (when (eq RendererStrings.jcell_instance :jnone) (setf RendererStrings.jcell_instance (RendererStrings.jnew_0)))
  RendererStrings.jcell_instance)
(defun (setf RendererStrings.jstatic_instance) (value) (setf RendererStrings.jcell_instance value))

(defun RendererStrings.jnew_0 ()
  (let ((this (make-instance 'RendererStrings)))
    (setf (slot-value this 'f_ON_SURFACE_CREATED) "onSurfaceCreated")
    (setf (slot-value this 'f_ON_SURFACE_CHANGED) "onSurfaceChanged")
    (setf (slot-value this 'f_ON_DRAW_FRAME) "onDrawFrame")
    (setf (slot-value this 'f_ON_DRAW_FRAME_THREED) "onDrawFrameThreed")
    (setf (slot-value this 'f_ON_DRAW_FRAME_2D) "onDrawFrame2d")
    this))

    
(defun RendererStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (RendererStrings.jstatic_instance)))))



