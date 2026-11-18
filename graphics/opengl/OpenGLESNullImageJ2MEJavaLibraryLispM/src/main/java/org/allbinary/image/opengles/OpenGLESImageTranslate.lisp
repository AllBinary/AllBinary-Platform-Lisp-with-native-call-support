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
;;;; package org.allbinary.image.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLESImageTranslate (JObject)
  ())

(defvar OpenGLESImageTranslate.jcell_instance :jnone)
(defun OpenGLESImageTranslate.jstatic_instance ()
  (when (eq OpenGLESImageTranslate.jcell_instance :jnone) (setf OpenGLESImageTranslate.jcell_instance (OpenGLESImageTranslate.jnew_0)))
  OpenGLESImageTranslate.jcell_instance)
(defun (setf OpenGLESImageTranslate.jstatic_instance) (value) (setf OpenGLESImageTranslate.jcell_instance value))

(defun OpenGLESImageTranslate.jnew_0 ()
  (let ((this (make-instance 'OpenGLESImageTranslate)))
    this))

    
(defun OpenGLESImageTranslate.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLESImageTranslate.jstatic_instance)))))

    
(unless (fboundp 'jm_translate_4) (defgeneric jm_translate_4 (this p1 p2 p3 p4)))
(defmethod jm_translate_4 ((this OpenGLESImageTranslate) _gl _openGLESImage _x _y)
  (declare (ignorable this _gl _openGLESImage _x _y))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_translate2_2) (defgeneric jm_translate2_2 (this p1 p2)))
(defmethod jm_translate2_2 ((this OpenGLESImageTranslate) _gl _openGLESImage)
  (declare (ignorable this _gl _openGLESImage))
  (let ()
    (block jreturn nil)))



