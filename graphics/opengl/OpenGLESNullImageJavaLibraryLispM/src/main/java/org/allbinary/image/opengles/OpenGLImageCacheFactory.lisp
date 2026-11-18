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

;OpenGLESNullImageJavaLibrary
(defclass OpenGLImageCacheFactory (JObject)
  ())

(defvar OpenGLImageCacheFactory.jcell_IMAGE_CACHE :jnone)
(defun OpenGLImageCacheFactory.jstatic_IMAGE_CACHE ()
  (when (eq OpenGLImageCacheFactory.jcell_IMAGE_CACHE :jnone) (setf OpenGLImageCacheFactory.jcell_IMAGE_CACHE (ImageCache.jstatic_NULL_IMAGE_CACHE)))
  OpenGLImageCacheFactory.jcell_IMAGE_CACHE)
(defun (setf OpenGLImageCacheFactory.jstatic_IMAGE_CACHE) (value) (setf OpenGLImageCacheFactory.jcell_IMAGE_CACHE value))

(defun OpenGLImageCacheFactory.jnew_0 ()
  (let ((this (make-instance 'OpenGLImageCacheFactory)))
    this))

    
(defun OpenGLImageCacheFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLImageCacheFactory.jstatic_IMAGE_CACHE)))))

    
(defun OpenGLImageCacheFactory.jm_init_0 ()
  (let ()
    (block jreturn
        (if (null (OpenGLImageCacheFactory.jstatic_IMAGE_CACHE))
            (progn
            nil)))))



