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
;;;; package org.allbinary.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageCacheFactory (JObject)
  ())

(defvar ImageCacheFactory.jcell_IMAGE_CACHE :jnone)
(defun ImageCacheFactory.jstatic_IMAGE_CACHE ()
  (when (eq ImageCacheFactory.jcell_IMAGE_CACHE :jnone) (setf ImageCacheFactory.jcell_IMAGE_CACHE (ImageCache.jnew_0)))
  ImageCacheFactory.jcell_IMAGE_CACHE)
(defun (setf ImageCacheFactory.jstatic_IMAGE_CACHE) (value) (setf ImageCacheFactory.jcell_IMAGE_CACHE value))

(defun ImageCacheFactory.jnew_0 ()
  (let ((this (make-instance 'ImageCacheFactory)))
    this))

    
(defun ImageCacheFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageCacheFactory.jstatic_IMAGE_CACHE)))))

    
(defun ImageCacheFactory.jm_init_0 ()
  (let ()
    (block jreturn nil)))



