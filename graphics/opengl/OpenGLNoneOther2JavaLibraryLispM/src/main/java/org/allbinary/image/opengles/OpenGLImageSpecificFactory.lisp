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
;;;; package org.allbinary.image.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLImageSpecificFactory (JObject)
  ((f_updating :initform nil)))

(defvar OpenGLImageSpecificFactory.jcell_instance :jnone)
(defun OpenGLImageSpecificFactory.jstatic_instance ()
  (when (eq OpenGLImageSpecificFactory.jcell_instance :jnone) (setf OpenGLImageSpecificFactory.jcell_instance (OpenGLImageSpecificFactory.jnew_0)))
  OpenGLImageSpecificFactory.jcell_instance)
(defun (setf OpenGLImageSpecificFactory.jstatic_instance) (value) (setf OpenGLImageSpecificFactory.jcell_instance value))

(defun OpenGLImageSpecificFactory.jnew_0 ()
  (let ((this (make-instance 'OpenGLImageSpecificFactory)))
    (setf (slot-value this 'f_updating) nil)
    this))

    
(defun OpenGLImageSpecificFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLImageSpecificFactory.jstatic_instance)))))



