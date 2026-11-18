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
;;;; package org.allbinary.image.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;OpenGLESNullImageJ2MEJavaLibrary
(defclass OpenGLESImage (JObject)
  ((f_commonStrings :initform nil)
   (f_textureFactory :initform nil)
   (f_openGLBitmap :initform nil)
   (f_openGLESImageProperties :initform nil)))

(defvar OpenGLESImage.jcell_NULL_OPENGL_IMAGE :jnone)
(defun OpenGLESImage.jstatic_NULL_OPENGL_IMAGE ()
  (when (eq OpenGLESImage.jcell_NULL_OPENGL_IMAGE :jnone) (setf OpenGLESImage.jcell_NULL_OPENGL_IMAGE (OpenGLESImage.jnew_3 (NullImage.jstatic_NULL_IMAGE) (PlatformBitmapBaseFactory.jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY) (PlatformTextureBaseFactory.jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY))))
  OpenGLESImage.jcell_NULL_OPENGL_IMAGE)
(defun (setf OpenGLESImage.jstatic_NULL_OPENGL_IMAGE) (value) (setf OpenGLESImage.jcell_NULL_OPENGL_IMAGE value))

(defvar OpenGLESImage.jcell_texture2dList :jnone)
(defun OpenGLESImage.jstatic_texture2dList ()
  (when (eq OpenGLESImage.jcell_texture2dList :jnone) (setf OpenGLESImage.jcell_texture2dList (BasicArrayListD.jnew_0)))
  OpenGLESImage.jcell_texture2dList)
(defun (setf OpenGLESImage.jstatic_texture2dList) (value) (setf OpenGLESImage.jcell_texture2dList value))

(defvar OpenGLESImage.jcell_TYPE :jnone)
(defun OpenGLESImage.jstatic_TYPE ()
  (when (eq OpenGLESImage.jcell_TYPE :jnone) (setf OpenGLESImage.jcell_TYPE 4))
  OpenGLESImage.jcell_TYPE)
(defun (setf OpenGLESImage.jstatic_TYPE) (value) (setf OpenGLESImage.jcell_TYPE value))

    
(defun OpenGLESImage.jnew_3 (_image _bitmapFactory _textureFactory)
  (declare (ignorable _image _bitmapFactory _textureFactory))
  (let ((this (make-instance 'OpenGLESImage)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_openGLESImageProperties) (OpenGLESImageProperties.jnew_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_openGLBitmap) (jm_createBitmap_1 _bitmapFactory _image))
        (setf (slot-value this 'f_textureFactory) _textureFactory)))
    this))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this OpenGLESImage) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_initTexture_1) (defgeneric jm_initTexture_1 (this p1)))
(defmethod jm_initTexture_1 ((this OpenGLESImage) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_drawRegion_9) (defgeneric jm_drawRegion_9 (this p1 p2 p3 p4 p5 p6 p7 p8 p9)))
(defmethod jm_drawRegion_9 ((this OpenGLESImage) _gl _viewHeight _x_src _y_src _width _height _x _y _z)
  (declare (ignorable this _gl _viewHeight _x_src _y_src _width _height _x _y _z))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_draw_4) (defgeneric jm_draw_4 (this p1 p2 p3 p4)))
(defmethod jm_draw_4 ((this OpenGLESImage) _gl _x _y _z)
  (declare (ignorable this _gl _x _y _z))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this OpenGLESImage))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLESImage.jstatic_TYPE)))))



