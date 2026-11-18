;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullOpenGLProcessorFactory (JObject)
  ())

(defvar NullOpenGLProcessorFactory.jcell_instance :jnone)
(defun NullOpenGLProcessorFactory.jstatic_instance ()
  (when (eq NullOpenGLProcessorFactory.jcell_instance :jnone) (setf NullOpenGLProcessorFactory.jcell_instance (OpenGLProcessor.jnew_0)))
  NullOpenGLProcessorFactory.jcell_instance)
(defun (setf NullOpenGLProcessorFactory.jstatic_instance) (value) (setf NullOpenGLProcessorFactory.jcell_instance value))

(defun NullOpenGLProcessorFactory.jnew_0 ()
  (let ((this (make-instance 'NullOpenGLProcessorFactory)))
    this))

    
(defun NullOpenGLProcessorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullOpenGLProcessorFactory.jstatic_instance)))))



