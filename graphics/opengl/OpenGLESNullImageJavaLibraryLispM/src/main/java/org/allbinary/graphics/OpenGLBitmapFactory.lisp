;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLBitmapFactory (PlatformBitmapBaseFactory)
  ((f_ARGB_8888 :initform nil)))

(defvar OpenGLBitmapFactory.jcell_instance :jnone)
(defun OpenGLBitmapFactory.jstatic_instance ()
  (when (eq OpenGLBitmapFactory.jcell_instance :jnone) (setf OpenGLBitmapFactory.jcell_instance (OpenGLBitmapFactory.jnew_0)))
  OpenGLBitmapFactory.jcell_instance)
(defun (setf OpenGLBitmapFactory.jstatic_instance) (value) (setf OpenGLBitmapFactory.jcell_instance value))

(defun OpenGLBitmapFactory.jnew_0 ()
  (let ((this (make-instance 'OpenGLBitmapFactory)))
    (setf (slot-value this 'f_ARGB_8888) (OpenGLBitmapConfig.jnew_1 (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
    this))

    
(defun OpenGLBitmapFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLBitmapFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_createBitmap_3) (defgeneric jm_createBitmap_3 (this p1 p2 p3)))
(defmethod jm_createBitmap_3 ((this OpenGLBitmapFactory) _width _height _config)
  (declare (ignorable this _width _height _config))
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLBitmap.jnew_1 (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))))))

    
(unless (fboundp 'jm_decodeStream_1) (defgeneric jm_decodeStream_1 (this p1)))
(defmethod jm_decodeStream_1 ((this OpenGLBitmapFactory) _inputStream)
  (declare (ignorable this _inputStream))
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLBitmap.jnew_1 (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))))))

    
(unless (fboundp 'jm_createBitmap_1) (defgeneric jm_createBitmap_1 (this p1)))
(defmethod jm_createBitmap_1 ((this OpenGLBitmapFactory) _image)
  (declare (ignorable this _image))
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLBitmap.jnew_1 (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))))))



