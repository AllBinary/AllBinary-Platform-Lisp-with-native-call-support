;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.logic.system

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PlatformAssetManager (JObject)
  ())

(defvar PlatformAssetManager.jcell_instance :jnone)
(defun PlatformAssetManager.jstatic_instance ()
  (when (eq PlatformAssetManager.jcell_instance :jnone) (setf PlatformAssetManager.jcell_instance (PlatformAssetManager.jnew_0)))
  PlatformAssetManager.jcell_instance)
(defun (setf PlatformAssetManager.jstatic_instance) (value) (setf PlatformAssetManager.jcell_instance value))

(defun PlatformAssetManager.jnew_0 ()
  (let ((this (make-instance 'PlatformAssetManager)))
    this))

    
(defun PlatformAssetManager.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PlatformAssetManager.jstatic_instance)))))

    
(unless (fboundp 'jm_getResourceAsStream_1) (defgeneric jm_getResourceAsStream_1 (this p1)))
(defmethod jm_getResourceAsStream_1 ((this PlatformAssetManager) _resource)
  (declare (ignorable this _resource))
  (let (_resourceUtil _inputStream)
  (declare (ignorable _resourceUtil _inputStream))
    (block jreturn
        (setf _resourceUtil (ResourceUtil.jm_getInstance_0))
        (setf _inputStream (jm_getResourceAsStream_1 _resourceUtil _resource))
        (return-from jreturn _inputStream))))



