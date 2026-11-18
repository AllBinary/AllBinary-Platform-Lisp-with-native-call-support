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
;;;; package org.allbinary.graphics.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLVUtilBase (JObject)
  ())

(defun OpenGLVUtilBase.jnew_0 ()
  (let ((this (make-instance 'OpenGLVUtilBase)))
    this))

    
(unless (fboundp 'jm_glTexEnvix_4) (defgeneric jm_glTexEnvix_4 (this p1 p2 p3 p4)))
(defmethod jm_glTexEnvix_4 ((this OpenGLVUtilBase) _gl _target _pname _param)
  (declare (ignorable this _gl _target _pname _param))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_glTexParameterix_4) (defgeneric jm_glTexParameterix_4 (this p1 p2 p3 p4)))
(defmethod jm_glTexParameterix_4 ((this OpenGLVUtilBase) _gl _target _pname _param)
  (declare (ignorable this _gl _target _pname _param))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_glGenerateMipmap_4) (defgeneric jm_glGenerateMipmap_4 (this p1 p2 p3 p4)))
(defmethod jm_glGenerateMipmap_4 ((this OpenGLVUtilBase) _gl _textureId _target _generateMipMap)
  (declare (ignorable this _gl _textureId _target _generateMipMap))
  (let ()
    (block jreturn nil)))



