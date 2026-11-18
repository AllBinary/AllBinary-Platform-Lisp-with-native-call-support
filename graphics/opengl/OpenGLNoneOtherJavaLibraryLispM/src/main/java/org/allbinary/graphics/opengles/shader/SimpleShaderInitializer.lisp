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

(defclass SimpleShaderInitializer (ShaderInitializer)
  ())

(defvar SimpleShaderInitializer.jcell_instanceC :jnone)
(defun SimpleShaderInitializer.jstatic_instanceC ()
  (when (eq SimpleShaderInitializer.jcell_instanceC :jnone) (setf SimpleShaderInitializer.jcell_instanceC (SimpleShaderInitializer.jnew_0)))
  SimpleShaderInitializer.jcell_instanceC)
(defun (setf SimpleShaderInitializer.jstatic_instanceC) (value) (setf SimpleShaderInitializer.jcell_instanceC value))

(defun SimpleShaderInitializer.jnew_0 ()
  (let ((this (make-instance 'SimpleShaderInitializer)))
    this))

    
(defun SimpleShaderInitializer.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SimpleShaderInitializer.jstatic_instanceC)))))



