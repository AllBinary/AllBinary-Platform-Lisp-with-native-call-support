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
;;;; package javax.microedition.lcdui

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullImage (JObject)
  ())

(defvar NullImage.jcell_NULL_IMAGE_ARRAY :jnone)
(defun NullImage.jstatic_NULL_IMAGE_ARRAY ()
  (when (eq NullImage.jcell_NULL_IMAGE_ARRAY :jnone) (setf NullImage.jcell_NULL_IMAGE_ARRAY (JR.newArray nil 0)))
  NullImage.jcell_NULL_IMAGE_ARRAY)
(defun (setf NullImage.jstatic_NULL_IMAGE_ARRAY) (value) (setf NullImage.jcell_NULL_IMAGE_ARRAY value))

(defvar NullImage.jcell_NULL_IMAGE :jnone)
(defun NullImage.jstatic_NULL_IMAGE ()
  (when (eq NullImage.jcell_NULL_IMAGE :jnone) (setf NullImage.jcell_NULL_IMAGE (Image.jnew_0)))
  NullImage.jcell_NULL_IMAGE)
(defun (setf NullImage.jstatic_NULL_IMAGE) (value) (setf NullImage.jcell_NULL_IMAGE value))

(defun NullImage.jnew_0 ()
  (let ((this (make-instance 'NullImage)))
    this))



