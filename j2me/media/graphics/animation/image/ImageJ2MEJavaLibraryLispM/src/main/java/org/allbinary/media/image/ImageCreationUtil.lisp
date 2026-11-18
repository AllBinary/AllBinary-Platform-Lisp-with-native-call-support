;;;;
;;;; AllBinary Open License Version 1
;;;; Copyright (c) 2011 AllBinary
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
;;;; package org.allbinary.media.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageCreationUtil (JObject)
  ())

(defvar ImageCreationUtil.jcell_instance :jnone)
(defun ImageCreationUtil.jstatic_instance ()
  (when (eq ImageCreationUtil.jcell_instance :jnone) (setf ImageCreationUtil.jcell_instance (ImageCreationUtil.jnew_0)))
  ImageCreationUtil.jcell_instance)
(defun (setf ImageCreationUtil.jstatic_instance) (value) (setf ImageCreationUtil.jcell_instance value))

    
(defun ImageCreationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageCreationUtil.jstatic_instance)))))

    
(defun ImageCreationUtil.jnew_0 ()
  (let ((this (make-instance 'ImageCreationUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_createImageWH_2) (defgeneric jm_createImageWH_2 (this p1 p2)))
(defmethod jm_createImageWH_2 ((this ImageCreationUtil) _width _height)
  (declare (ignorable this _width _height))
  (let (_image)
  (declare (ignorable _image))
    (block jreturn
        (setf _image (jm_get_3 (GameFeatureImageCacheFactory.jm_getInstance_0) (JR.className this) _width _height))
        (return-from jreturn _image))))

    
(unless (fboundp 'jm_createImage_4) (defgeneric jm_createImage_4 (this p1 p2 p3 p4)))
(defmethod jm_createImage_4 ((this ImageCreationUtil) _width _height _maxScaleX _maxScaleY)
  (declare (ignorable this _width _height _maxScaleX _maxScaleY))
  (let (_image)
  (declare (ignorable _image))
    (block jreturn
        (setf _image (jm_get_3 (GameFeatureImageCacheFactory.jm_getInstance_0) (JR.className this) (JR.i32 (+ (JR.d2i (* (coerce _width 'single-float) _maxScaleX)) 1)) (JR.i32 (+ (JR.d2i (* (coerce _height 'single-float) _maxScaleY)) 1))))
        (return-from jreturn _image))))



