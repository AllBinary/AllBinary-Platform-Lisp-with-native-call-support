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

(defclass OpenGLFeatureUtil (JObject)
  ())

(defvar OpenGLFeatureUtil.jcell_instance :jnone)
(defun OpenGLFeatureUtil.jstatic_instance ()
  (when (eq OpenGLFeatureUtil.jcell_instance :jnone) (setf OpenGLFeatureUtil.jcell_instance (OpenGLFeatureUtil.jnew_0)))
  OpenGLFeatureUtil.jcell_instance)
(defun (setf OpenGLFeatureUtil.jstatic_instance) (value) (setf OpenGLFeatureUtil.jcell_instance value))

    
(defun OpenGLFeatureUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLFeatureUtil.jstatic_instance)))))

    
(defun OpenGLFeatureUtil.jnew_0 ()
  (let ((this (make-instance 'OpenGLFeatureUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_isAnyThreed_0) (defgeneric jm_isAnyThreed_0 (this)))
(defmethod jm_isAnyThreed_0 ((this OpenGLFeatureUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



