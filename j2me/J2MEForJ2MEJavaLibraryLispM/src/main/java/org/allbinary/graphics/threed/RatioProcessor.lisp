;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.graphics.threed

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RatioProcessor (JObject)
  ())

(defun RatioProcessor.jnew_0 ()
  (let ((this (make-instance 'RatioProcessor)))
    this))

    
(unless (fboundp 'jm_setCustom_3) (defgeneric jm_setCustom_3 (this p1 p2 p3)))
(defmethod jm_setCustom_3 ((this RatioProcessor) _width _height _ratio)
  (declare (ignorable this _width _height _ratio))
  (let ()
    (block jreturn nil)))



