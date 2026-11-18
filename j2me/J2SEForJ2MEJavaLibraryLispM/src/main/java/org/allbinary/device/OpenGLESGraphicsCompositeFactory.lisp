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

(defclass OpenGLESGraphicsCompositeFactory (JObject)
  ((f_openGLESGraphicsFactory :initform nil)))

(defvar OpenGLESGraphicsCompositeFactory.jcell_instance :jnone)
(defun OpenGLESGraphicsCompositeFactory.jstatic_instance ()
  (when (eq OpenGLESGraphicsCompositeFactory.jcell_instance :jnone) (setf OpenGLESGraphicsCompositeFactory.jcell_instance (OpenGLESGraphicsCompositeFactory.jnew_0)))
  OpenGLESGraphicsCompositeFactory.jcell_instance)
(defun (setf OpenGLESGraphicsCompositeFactory.jstatic_instance) (value) (setf OpenGLESGraphicsCompositeFactory.jcell_instance value))

(defun OpenGLESGraphicsCompositeFactory.jnew_0 ()
  (let ((this (make-instance 'OpenGLESGraphicsCompositeFactory)))
    (setf (slot-value this 'f_openGLESGraphicsFactory) (OpenGLESGraphicsFactory.jnew_0))
    this))

    
(defun OpenGLESGraphicsCompositeFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLESGraphicsCompositeFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this OpenGLESGraphicsCompositeFactory) _openGLESGraphicsFactory)
  (declare (ignorable this _openGLESGraphicsFactory))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_openGLESGraphicsFactory) _openGLESGraphicsFactory))))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this OpenGLESGraphicsCompositeFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_openGLESGraphicsFactory)))))



