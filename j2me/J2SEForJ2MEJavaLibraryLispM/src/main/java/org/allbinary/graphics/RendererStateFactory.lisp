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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RendererStateFactory (JObject)
  ((f_loaded :initform nil)
   (f_surfaceChanged :initform nil)))

(defvar RendererStateFactory.jcell_instance :jnone)
(defun RendererStateFactory.jstatic_instance ()
  (when (eq RendererStateFactory.jcell_instance :jnone) (setf RendererStateFactory.jcell_instance (RendererStateFactory.jnew_0)))
  RendererStateFactory.jcell_instance)
(defun (setf RendererStateFactory.jstatic_instance) (value) (setf RendererStateFactory.jcell_instance value))

(defun RendererStateFactory.jnew_0 ()
  (let ((this (make-instance 'RendererStateFactory)))
    (setf (slot-value this 'f_loaded) nil)
    (setf (slot-value this 'f_surfaceChanged) nil)
    this))

    
(defun RendererStateFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (RendererStateFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_setLoaded_1) (defgeneric jm_setLoaded_1 (this p1)))
(defmethod jm_setLoaded_1 ((this RendererStateFactory) _loaded)
  (declare (ignorable this _loaded))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_loaded) _loaded))))

    
(unless (fboundp 'jm_isLoaded_0) (defgeneric jm_isLoaded_0 (this)))
(defmethod jm_isLoaded_0 ((this RendererStateFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_loaded)))))

    
(unless (fboundp 'jm_setSurfaceChanged_1) (defgeneric jm_setSurfaceChanged_1 (this p1)))
(defmethod jm_setSurfaceChanged_1 ((this RendererStateFactory) _initialized)
  (declare (ignorable this _initialized))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_surfaceChanged) _initialized))))

    
(unless (fboundp 'jm_isSurfaceChanged_0) (defgeneric jm_isSurfaceChanged_0 (this)))
(defmethod jm_isSurfaceChanged_0 ((this RendererStateFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_surfaceChanged)))))



