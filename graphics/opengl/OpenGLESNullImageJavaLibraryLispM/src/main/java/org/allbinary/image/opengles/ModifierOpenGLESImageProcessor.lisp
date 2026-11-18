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
;;;; package org.allbinary.image.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ModifierOpenGLESImageProcessor (OpenGLESImageProcessor)
  ())

(defvar ModifierOpenGLESImageProcessor.jcell_instanceC :jnone)
(defun ModifierOpenGLESImageProcessor.jstatic_instanceC ()
  (when (eq ModifierOpenGLESImageProcessor.jcell_instanceC :jnone) (setf ModifierOpenGLESImageProcessor.jcell_instanceC (ModifierOpenGLESImageProcessor.jnew_0)))
  ModifierOpenGLESImageProcessor.jcell_instanceC)
(defun (setf ModifierOpenGLESImageProcessor.jstatic_instanceC) (value) (setf ModifierOpenGLESImageProcessor.jcell_instanceC value))

(defun ModifierOpenGLESImageProcessor.jnew_0 ()
  (let ((this (make-instance 'ModifierOpenGLESImageProcessor)))
    this))

    
(defun ModifierOpenGLESImageProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ModifierOpenGLESImageProcessor.jstatic_instanceC)))))



