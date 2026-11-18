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
;;;; package org.allbinary.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;ImageCacheBaseJavaLibrary - J2ME
(defclass ImageFactory (JObject)
  ())

(defvar ImageFactory.jcell_instance :jnone)
(defun ImageFactory.jstatic_instance ()
  (when (eq ImageFactory.jcell_instance :jnone) (setf ImageFactory.jcell_instance (ImageFactory.jnew_0)))
  ImageFactory.jcell_instance)
(defun (setf ImageFactory.jstatic_instance) (value) (setf ImageFactory.jcell_instance value))

(defun ImageFactory.jnew_0 ()
  (let ((this (make-instance 'ImageFactory)))
    this))

    
(defun ImageFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_createImageUrl_1) (defgeneric jm_createImageUrl_1 (this p1)))
(defmethod jm_createImageUrl_1 ((this ImageFactory) _url)
  (declare (ignorable this _url))
  (let ()
    (block jreturn
        (return-from jreturn (Image.jm_createImage_1 _url)))))

    
(unless (fboundp 'jm_createImage_3) (defgeneric jm_createImage_3 (this p1 p2 p3)))
(defmethod jm_createImage_3 ((this ImageFactory) _caller _width _height)
  (declare (ignorable this _caller _width _height))
  (let ()
    (block jreturn
        (return-from jreturn (jm_createImageWH_2 (MIDPUtil.jm_getInstance_0) _width _height)))))

    
(unless (fboundp 'jm_createImageFromInputStream_2) (defgeneric jm_createImageFromInputStream_2 (this p1 p2)))
(defmethod jm_createImageFromInputStream_2 ((this ImageFactory) _key _inputStream)
  (declare (ignorable this _key _inputStream))
  (let (_image)
  (declare (ignorable _image))
    (block jreturn
        (setf _image (jm_createImageFromInputStream_1 (MIDPUtil.jm_getInstance_0) _inputStream))
        (return-from jreturn _image))))

    
(unless (fboundp 'jm_createImageFromInputStream_1) (defgeneric jm_createImageFromInputStream_1 (this p1)))
(defmethod jm_createImageFromInputStream_1 ((this ImageFactory) _inputStream)
  (declare (ignorable this _inputStream))
  (let ()
    (block jreturn
        (return-from jreturn (jm_createImageFromInputStream_1 (MIDPUtil.jm_getInstance_0) _inputStream)))))



