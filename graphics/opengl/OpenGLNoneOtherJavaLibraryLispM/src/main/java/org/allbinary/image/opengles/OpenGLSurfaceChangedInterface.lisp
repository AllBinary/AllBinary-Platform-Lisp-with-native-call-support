;;;; Generated Code Do Not Modify
;;;; package org.allbinary.image.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLSurfaceChangedInterface (JObject)
  ())

(defun OpenGLSurfaceChangedInterface.jnew_0 ()
  (let ((this (make-instance 'OpenGLSurfaceChangedInterface)))
    this))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this OpenGLSurfaceChangedInterface) _gl)
  (declare (ignorable this _gl))
  (error (JR.newException "AbstractMethodError" "set")))



