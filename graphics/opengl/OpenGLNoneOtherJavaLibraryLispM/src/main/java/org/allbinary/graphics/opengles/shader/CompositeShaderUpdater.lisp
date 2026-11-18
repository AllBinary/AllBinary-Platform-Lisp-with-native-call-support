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

(defclass CompositeShaderUpdater (ShaderUpdater)
  ((f_commonSeps :initform nil)))

(defvar CompositeShaderUpdater.jcell_instanceC :jnone)
(defun CompositeShaderUpdater.jstatic_instanceC ()
  (when (eq CompositeShaderUpdater.jcell_instanceC :jnone) (setf CompositeShaderUpdater.jcell_instanceC (CompositeShaderUpdater.jnew_4 (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0)) (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0)) (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0)) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY))))
  CompositeShaderUpdater.jcell_instanceC)
(defun (setf CompositeShaderUpdater.jstatic_instanceC) (value) (setf CompositeShaderUpdater.jcell_instanceC value))

    
(defun CompositeShaderUpdater.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CompositeShaderUpdater.jstatic_instanceC)))))

    
(defun CompositeShaderUpdater.jnew_4 (_uniformBlockArray _uniformArray _attributeArray _attributeHandleArray)
  (declare (ignorable _uniformBlockArray _uniformArray _attributeArray _attributeHandleArray))
  (let ((this (make-instance 'CompositeShaderUpdater)))
    (setf (slot-value this 'f_commonSeps) (CommonSeps.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_onSurfaceCreated_3) (defgeneric jm_onSurfaceCreated_3 (this p1 p2 p3)))
(defmethod jm_onSurfaceCreated_3 ((this CompositeShaderUpdater) _gl _eglConfig _programHandle)
  (declare (ignorable this _gl _eglConfig _programHandle))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onSurfaceDestroyed_1) (defgeneric jm_onSurfaceDestroyed_1 (this p1)))
(defmethod jm_onSurfaceDestroyed_1 ((this CompositeShaderUpdater) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn nil)))



