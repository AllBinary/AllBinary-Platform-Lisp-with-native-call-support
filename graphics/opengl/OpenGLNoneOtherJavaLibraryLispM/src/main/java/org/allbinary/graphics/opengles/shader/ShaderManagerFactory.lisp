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

(defclass ShaderManagerFactory (JObject)
  ())

(defvar ShaderManagerFactory.jcell_instance :jnone)
(defun ShaderManagerFactory.jstatic_instance ()
  (when (eq ShaderManagerFactory.jcell_instance :jnone) (setf ShaderManagerFactory.jcell_instance (ShaderManagerFactory.jnew_0)))
  ShaderManagerFactory.jcell_instance)
(defun (setf ShaderManagerFactory.jstatic_instance) (value) (setf ShaderManagerFactory.jcell_instance value))

(defun ShaderManagerFactory.jnew_0 ()
  (let ((this (make-instance 'ShaderManagerFactory)))
    this))

    
(defun ShaderManagerFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ShaderManagerFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_create_0) (defgeneric jm_create_0 (this)))
(defmethod jm_create_0 ((this ShaderManagerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (ShaderManager.jm_getInstance_0)))))



