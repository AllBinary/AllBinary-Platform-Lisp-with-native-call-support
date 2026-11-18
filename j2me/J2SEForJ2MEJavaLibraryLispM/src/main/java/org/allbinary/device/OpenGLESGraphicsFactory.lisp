;;;; Generated Code Do Not Modify
;;;; package org.allbinary.device

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLESGraphicsFactory (JObject)
  ())

(defun OpenGLESGraphicsFactory.jnew_0 ()
  (let ((this (make-instance 'OpenGLESGraphicsFactory)))
    this))

    
(unless (fboundp 'jm_getOpenGLESGraphicsInstance_0) (defgeneric jm_getOpenGLESGraphicsInstance_0 (this)))
(defmethod jm_getOpenGLESGraphicsInstance_0 ((this OpenGLESGraphicsFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLESNullGraphicsFactory.jm_getInstance_0)))))



