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

(defclass ModelViewProjection (JObject)
  ())

(defvar ModelViewProjection.jcell_instance :jnone)
(defun ModelViewProjection.jstatic_instance ()
  (when (eq ModelViewProjection.jcell_instance :jnone) (setf ModelViewProjection.jcell_instance (ModelViewProjection.jnew_0)))
  ModelViewProjection.jcell_instance)
(defun (setf ModelViewProjection.jstatic_instance) (value) (setf ModelViewProjection.jcell_instance value))

(defun ModelViewProjection.jnew_0 ()
  (let ((this (make-instance 'ModelViewProjection)))
    this))

    
(defun ModelViewProjection.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ModelViewProjection.jstatic_instance)))))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this ModelViewProjection))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_FLOAT_ARRAY)))))



