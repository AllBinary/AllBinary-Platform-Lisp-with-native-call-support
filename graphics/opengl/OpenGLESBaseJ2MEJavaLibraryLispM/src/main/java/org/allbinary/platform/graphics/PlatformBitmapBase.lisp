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
  ())

(defun PlatformBitmapBase.jnew_0 ()
  (let ((this (make-instance 'PlatformBitmapBase)))
    this))

    
(unless (fboundp 'jm_getImage_0) (defgeneric jm_getImage_0 (this)))
(defmethod jm_getImage_0 ((this PlatformBitmapBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (NullImage.jstatic_NULL_IMAGE)))))



