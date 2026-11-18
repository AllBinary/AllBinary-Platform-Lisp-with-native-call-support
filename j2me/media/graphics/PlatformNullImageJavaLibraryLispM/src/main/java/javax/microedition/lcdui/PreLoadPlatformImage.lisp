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
(defclass PreLoadPlatformImage (PlatformImage)
  ())

(defvar PreLoadPlatformImage.jcell_instance :jnone)
(defun PreLoadPlatformImage.jstatic_instance ()
  (when (eq PreLoadPlatformImage.jcell_instance :jnone) (setf PreLoadPlatformImage.jcell_instance (PreLoadPlatformImage.jnew_0)))
  PreLoadPlatformImage.jcell_instance)
(defun (setf PreLoadPlatformImage.jstatic_instance) (value) (setf PreLoadPlatformImage.jcell_instance value))

(defun PreLoadPlatformImage.jnew_0 ()
  (let ((this (make-instance 'PreLoadPlatformImage)))
    this))

    
(defun PreLoadPlatformImage.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PreLoadPlatformImage.jstatic_instance)))))



