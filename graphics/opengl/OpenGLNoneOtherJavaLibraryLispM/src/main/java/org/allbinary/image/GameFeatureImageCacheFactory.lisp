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

(defclass GameFeatureImageCacheFactory (JObject)
  ())

(defun GameFeatureImageCacheFactory.jnew_0 ()
  (let ((this (make-instance 'GameFeatureImageCacheFactory)))
    this))

    
(defun GameFeatureImageCacheFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageCacheFactory.jm_getInstance_0)))))

    
(defun GameFeatureImageCacheFactory.jm_init_0 ()
  (let ()
    (block jreturn
        (ImageCacheFactory.jm_init_0))))

    
(defun GameFeatureImageCacheFactory.jm_releaseAll_0 ()
  (let ()
    (block jreturn
        (jm_releaseAll_0 (ImageCacheFactory.jm_getInstance_0)))))



