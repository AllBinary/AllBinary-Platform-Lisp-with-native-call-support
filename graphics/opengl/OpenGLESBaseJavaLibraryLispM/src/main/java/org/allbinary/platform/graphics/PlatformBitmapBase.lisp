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

(defclass PlatformBitmapBase (JObject)
  ((f_alpha :initform 0)
   (f_basicColor :initform nil)))

(defvar PlatformBitmapBase.jcell_NULL_PLATFORM_BITMAP_BASE :jnone)
(defun PlatformBitmapBase.jstatic_NULL_PLATFORM_BITMAP_BASE ()
  (when (eq PlatformBitmapBase.jcell_NULL_PLATFORM_BITMAP_BASE :jnone) (setf PlatformBitmapBase.jcell_NULL_PLATFORM_BITMAP_BASE (PlatformBitmapBase.jnew_0)))
  PlatformBitmapBase.jcell_NULL_PLATFORM_BITMAP_BASE)
(defun (setf PlatformBitmapBase.jstatic_NULL_PLATFORM_BITMAP_BASE) (value) (setf PlatformBitmapBase.jcell_NULL_PLATFORM_BITMAP_BASE value))

(defun PlatformBitmapBase.jnew_0 ()
  (let ((this (make-instance 'PlatformBitmapBase)))
    (setf (slot-value this 'f_alpha) 255)
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_NULL_COLOR))
    this))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this PlatformBitmapBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this PlatformBitmapBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getImage_0) (defgeneric jm_getImage_0 (this)))
(defmethod jm_getImage_0 ((this PlatformBitmapBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (NullImage.jstatic_NULL_IMAGE)))))



