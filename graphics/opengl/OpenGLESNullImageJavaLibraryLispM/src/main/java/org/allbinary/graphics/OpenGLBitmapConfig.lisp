;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2026 AllBinary 
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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLBitmapConfig (JObject)
  ((f_bitmapConfig :initform nil)))

    
(defun OpenGLBitmapConfig.jnew_1 (_bitmapConfig)
  (declare (ignorable _bitmapConfig))
  (let ((this (make-instance 'OpenGLBitmapConfig)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_bitmapConfig) _bitmapConfig)))
    this))



