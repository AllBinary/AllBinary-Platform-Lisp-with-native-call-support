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
;;;; package org.allbinary.platform.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PlatformTextureBaseFactory (JObject)
  ((f_commonStrings :initform nil)))

(defvar PlatformTextureBaseFactory.jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY :jnone)
(defun PlatformTextureBaseFactory.jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY ()
  (when (eq PlatformTextureBaseFactory.jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY :jnone) (setf PlatformTextureBaseFactory.jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY (PlatformTextureBaseFactory.jnew_0)))
  PlatformTextureBaseFactory.jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY)
(defun (setf PlatformTextureBaseFactory.jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY) (value) (setf PlatformTextureBaseFactory.jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY value))

(defun PlatformTextureBaseFactory.jnew_0 ()
  (let ((this (make-instance 'PlatformTextureBaseFactory)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_load_6) (defgeneric jm_load_6 (this p1 p2 p3 p4 p5 p6)))
(defmethod jm_load_6 ((this PlatformTextureBaseFactory) _gl _target _level _image _border _flip)
  (declare (ignorable this _gl _target _level _image _border _flip))
  (let ()
    (block jreturn nil)))



