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
;;;; package org.allbinary.image.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLESImageExclusionUtil (JObject)
  ((f_list :initform nil)))

(defvar OpenGLESImageExclusionUtil.jcell_instance :jnone)
(defun OpenGLESImageExclusionUtil.jstatic_instance ()
  (when (eq OpenGLESImageExclusionUtil.jcell_instance :jnone) (setf OpenGLESImageExclusionUtil.jcell_instance (OpenGLESImageExclusionUtil.jnew_0)))
  OpenGLESImageExclusionUtil.jcell_instance)
(defun (setf OpenGLESImageExclusionUtil.jstatic_instance) (value) (setf OpenGLESImageExclusionUtil.jcell_instance value))

(defun OpenGLESImageExclusionUtil.jnew_0 ()
  (let ((this (make-instance 'OpenGLESImageExclusionUtil)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    this))

    
(defun OpenGLESImageExclusionUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLESImageExclusionUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_isCustomScaling_1) (defgeneric jm_isCustomScaling_1 (this p1)))
(defmethod jm_isCustomScaling_1 ((this OpenGLESImageExclusionUtil) _image)
  (declare (ignorable this _image))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



