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
;;;; package javax.microedition.lcdui

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;PlatformNullImageJavaLibrary
(defclass PostLoadPlatformImage (PlatformImage)
  ())

(defvar PostLoadPlatformImage.jcell_instance :jnone)
(defun PostLoadPlatformImage.jstatic_instance ()
  (when (eq PostLoadPlatformImage.jcell_instance :jnone) (setf PostLoadPlatformImage.jcell_instance (PostLoadPlatformImage.jnew_0)))
  PostLoadPlatformImage.jcell_instance)
(defun (setf PostLoadPlatformImage.jstatic_instance) (value) (setf PostLoadPlatformImage.jcell_instance value))

(defun PostLoadPlatformImage.jnew_0 ()
  (let ((this (make-instance 'PostLoadPlatformImage)))
    this))

    
(defun PostLoadPlatformImage.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PostLoadPlatformImage.jstatic_instance)))))



