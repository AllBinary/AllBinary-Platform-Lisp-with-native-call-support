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
;;;; package org.allbinary.graphics.opengles.shader

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ShaderInitializer (JObject)
  ((f_commonStrings :initform nil)))

(defvar ShaderInitializer.jcell_instance :jnone)
(defun ShaderInitializer.jstatic_instance ()
  (when (eq ShaderInitializer.jcell_instance :jnone) (setf ShaderInitializer.jcell_instance (ShaderInitializer.jnew_0)))
  ShaderInitializer.jcell_instance)
(defun (setf ShaderInitializer.jstatic_instance) (value) (setf ShaderInitializer.jcell_instance value))

(defun ShaderInitializer.jnew_0 ()
  (let ((this (make-instance 'ShaderInitializer)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    this))

    
(defun ShaderInitializer.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ShaderInitializer.jstatic_instance)))))

    
(unless (fboundp 'jm_init_3) (defgeneric jm_init_3 (this p1 p2 p3)))
(defmethod jm_init_3 ((this ShaderInitializer) _gl _shader _attributeArray)
  (declare (ignorable this _gl _shader _attributeArray))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))



