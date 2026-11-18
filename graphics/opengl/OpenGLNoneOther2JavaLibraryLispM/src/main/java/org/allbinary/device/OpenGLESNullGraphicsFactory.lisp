;;;; Generated Code Do Not Modify
;;;; package org.allbinary.device

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLESNullGraphicsFactory (JObject)
  ())

(defvar OpenGLESNullGraphicsFactory.jcell_instance :jnone)
(defun OpenGLESNullGraphicsFactory.jstatic_instance ()
  (when (eq OpenGLESNullGraphicsFactory.jcell_instance :jnone) (setf OpenGLESNullGraphicsFactory.jcell_instance (OpenGLESGraphics.jnew_0)))
  OpenGLESNullGraphicsFactory.jcell_instance)
(defun (setf OpenGLESNullGraphicsFactory.jstatic_instance) (value) (setf OpenGLESNullGraphicsFactory.jcell_instance value))

(defun OpenGLESNullGraphicsFactory.jnew_0 ()
  (let ((this (make-instance 'OpenGLESNullGraphicsFactory)))
    this))

    
(defun OpenGLESNullGraphicsFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLESNullGraphicsFactory.jstatic_instance)))))



