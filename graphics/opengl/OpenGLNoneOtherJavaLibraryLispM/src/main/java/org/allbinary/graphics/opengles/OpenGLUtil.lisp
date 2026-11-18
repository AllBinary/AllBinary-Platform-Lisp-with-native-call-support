;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLUtil (JObject)
  ())

(defvar OpenGLUtil.jcell_instance :jnone)
(defun OpenGLUtil.jstatic_instance ()
  (when (eq OpenGLUtil.jcell_instance :jnone) (setf OpenGLUtil.jcell_instance (OpenGLUtil.jnew_0)))
  OpenGLUtil.jcell_instance)
(defun (setf OpenGLUtil.jstatic_instance) (value) (setf OpenGLUtil.jcell_instance value))

(defun OpenGLUtil.jnew_0 ()
  (let ((this (make-instance 'OpenGLUtil)))
    this))

    
(defun OpenGLUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_addImage_1) (defgeneric jm_addImage_1 (this p1)))
(defmethod jm_addImage_1 ((this OpenGLUtil) _image)
  (declare (ignorable this _image))
  (let ()
    (block jreturn
        (return-from jreturn _image))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this OpenGLUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_addRunnable_1) (defgeneric jm_addRunnable_1 (this p1)))
(defmethod jm_addRunnable_1 ((this OpenGLUtil) _runnable)
  (declare (ignorable this _runnable))
  (let ()
    (block jreturn nil)))



