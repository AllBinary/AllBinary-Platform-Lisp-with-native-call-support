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

(defclass OpenGLESImageProcessor (JObject)
  ())

(defvar OpenGLESImageProcessor.jcell_instance :jnone)
(defun OpenGLESImageProcessor.jstatic_instance ()
  (when (eq OpenGLESImageProcessor.jcell_instance :jnone) (setf OpenGLESImageProcessor.jcell_instance (OpenGLESImageProcessor.jnew_0)))
  OpenGLESImageProcessor.jcell_instance)
(defun (setf OpenGLESImageProcessor.jstatic_instance) (value) (setf OpenGLESImageProcessor.jcell_instance value))

(defun OpenGLESImageProcessor.jnew_0 ()
  (let ((this (make-instance 'OpenGLESImageProcessor)))
    this))

    
(defun OpenGLESImageProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLESImageProcessor.jstatic_instance)))))

    
(unless (fboundp 'jm_translate_3) (defgeneric jm_translate_3 (this p1 p2 p3)))
(defmethod jm_translate_3 ((this OpenGLESImageProcessor) _gl _translateX _translateY)
  (declare (ignorable this _gl _translateX _translateY))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_rotate_2) (defgeneric jm_rotate_2 (this p1 p2)))
(defmethod jm_rotate_2 ((this OpenGLESImageProcessor) _gl _angle)
  (declare (ignorable this _gl _angle))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_scale_3) (defgeneric jm_scale_3 (this p1 p2 p3)))
(defmethod jm_scale_3 ((this OpenGLESImageProcessor) _gl _scaleX _scaleY)
  (declare (ignorable this _gl _scaleX _scaleY))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_colorMask_5) (defgeneric jm_colorMask_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_colorMask_5 ((this OpenGLESImageProcessor) _gl _red _green _blue _alpha)
  (declare (ignorable this _gl _red _green _blue _alpha))
  (let ()
    (block jreturn nil)))



