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
;;;; package org.allbinary.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PaintableToImageUtil (JObject)
  ())

(defvar PaintableToImageUtil.jcell_instance :jnone)
(defun PaintableToImageUtil.jstatic_instance ()
  (when (eq PaintableToImageUtil.jcell_instance :jnone) (setf PaintableToImageUtil.jcell_instance (PaintableToImageUtil.jnew_0)))
  PaintableToImageUtil.jcell_instance)
(defun (setf PaintableToImageUtil.jstatic_instance) (value) (setf PaintableToImageUtil.jcell_instance value))

(defun PaintableToImageUtil.jnew_0 ()
  (let ((this (make-instance 'PaintableToImageUtil)))
    this))

    
(defun PaintableToImageUtil.jm_getImage_3 (_paintableInterface _width _height)
  (declare (ignorable _paintableInterface _width _height))
  (let (_image _graphics)
  (declare (ignorable _image _graphics))
    (block jreturn
        (setf _image (jm_get_3 (GameFeatureImageCacheFactory.jm_getInstance_0) (JR.className (PaintableToImageUtil.jstatic_instance)) _width _height))
        (setf _graphics (jm_getGraphics_0 _image))
        (jm_paint_1 _paintableInterface _graphics)
        (return-from jreturn _image))))



