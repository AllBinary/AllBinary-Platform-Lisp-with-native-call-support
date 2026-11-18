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
;;;; package org.allbinary.device

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LoadTextures (JObject)
  ())

(defun LoadTextures.jnew_0 ()
  (let ((this (make-instance 'LoadTextures)))
    this))

    
(unless (fboundp 'jm_load_1) (defgeneric jm_load_1 (this p1)))
(defmethod jm_load_1 ((this LoadTextures) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn nil)))



