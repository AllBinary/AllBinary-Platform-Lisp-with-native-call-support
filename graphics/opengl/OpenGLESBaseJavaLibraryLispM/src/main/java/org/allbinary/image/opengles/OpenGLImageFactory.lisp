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

(defclass OpenGLImageFactory (JObject)
  ())

(defvar OpenGLImageFactory.jcell_NULL_OPENGL_IMAGE_FACTORY :jnone)
(defun OpenGLImageFactory.jstatic_NULL_OPENGL_IMAGE_FACTORY ()
  (when (eq OpenGLImageFactory.jcell_NULL_OPENGL_IMAGE_FACTORY :jnone) (setf OpenGLImageFactory.jcell_NULL_OPENGL_IMAGE_FACTORY (OpenGLImageFactory.jnew_0)))
  OpenGLImageFactory.jcell_NULL_OPENGL_IMAGE_FACTORY)
(defun (setf OpenGLImageFactory.jstatic_NULL_OPENGL_IMAGE_FACTORY) (value) (setf OpenGLImageFactory.jcell_NULL_OPENGL_IMAGE_FACTORY value))

(defun OpenGLImageFactory.jnew_0 ()
  (let ((this (make-instance 'OpenGLImageFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_3) (defgeneric jm_getInstance_3 (this p1 p2 p3)))
(defmethod jm_getInstance_3 ((this OpenGLImageFactory) _image _bitmapFactory _textureFactory)
  (declare (ignorable this _image _bitmapFactory _textureFactory))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



