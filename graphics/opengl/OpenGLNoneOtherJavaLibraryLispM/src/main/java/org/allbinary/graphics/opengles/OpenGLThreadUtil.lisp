;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLThreadUtil (JObject)
  ())

(defvar OpenGLThreadUtil.jcell_instance :jnone)
(defun OpenGLThreadUtil.jstatic_instance ()
  (when (eq OpenGLThreadUtil.jcell_instance :jnone) (setf OpenGLThreadUtil.jcell_instance (OpenGLThreadUtil.jnew_0)))
  OpenGLThreadUtil.jcell_instance)
(defun (setf OpenGLThreadUtil.jstatic_instance) (value) (setf OpenGLThreadUtil.jcell_instance value))

(defun OpenGLThreadUtil.jnew_0 ()
  (let ((this (make-instance 'OpenGLThreadUtil)))
    this))

    
(defun OpenGLThreadUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLThreadUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this OpenGLThreadUtil) _glSurfaceView)
  (declare (ignorable this _glSurfaceView))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onPause_0) (defgeneric jm_onPause_0 (this)))
(defmethod jm_onPause_0 ((this OpenGLThreadUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onResume_0) (defgeneric jm_onResume_0 (this)))
(defmethod jm_onResume_0 ((this OpenGLThreadUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



