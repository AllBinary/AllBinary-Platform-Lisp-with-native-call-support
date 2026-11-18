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
;;;; package org.allbinary.platform.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PlatformBitmapBaseFactory (JObject)
  ())

(defvar PlatformBitmapBaseFactory.jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY :jnone)
(defun PlatformBitmapBaseFactory.jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY ()
  (when (eq PlatformBitmapBaseFactory.jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY :jnone) (setf PlatformBitmapBaseFactory.jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY (PlatformBitmapBaseFactory.jnew_0)))
  PlatformBitmapBaseFactory.jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY)
(defun (setf PlatformBitmapBaseFactory.jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY) (value) (setf PlatformBitmapBaseFactory.jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY value))

(defun PlatformBitmapBaseFactory.jnew_0 ()
  (let ((this (make-instance 'PlatformBitmapBaseFactory)))
    this))

    
(unless (fboundp 'jm_createBitmap_1) (defgeneric jm_createBitmap_1 (this p1)))
(defmethod jm_createBitmap_1 ((this PlatformBitmapBaseFactory) _image)
  (declare (ignorable this _image))
  (let ()
    (block jreturn
        (return-from jreturn (PlatformBitmapBase.jstatic_NULL_PLATFORM_BITMAP_BASE)))))



