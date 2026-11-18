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

(defclass OpenGLImageSpecificFactory (JObject)
  ((f_imageFactory :initform nil)
   (f_updating :initform nil)))

(defvar OpenGLImageSpecificFactory.jcell_instance :jnone)
(defun OpenGLImageSpecificFactory.jstatic_instance ()
  (when (eq OpenGLImageSpecificFactory.jcell_instance :jnone) (setf OpenGLImageSpecificFactory.jcell_instance (OpenGLImageSpecificFactory.jnew_0)))
  OpenGLImageSpecificFactory.jcell_instance)
(defun (setf OpenGLImageSpecificFactory.jstatic_instance) (value) (setf OpenGLImageSpecificFactory.jcell_instance value))

(defun OpenGLImageSpecificFactory.jnew_0 ()
  (let ((this (make-instance 'OpenGLImageSpecificFactory)))
    (setf (slot-value this 'f_imageFactory) (OpenGLImageFactory.jstatic_NULL_OPENGL_IMAGE_FACTORY))
    (setf (slot-value this 'f_updating) nil)
    this))

    
(defun OpenGLImageSpecificFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OpenGLImageSpecificFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_setImageFactory_1) (defgeneric jm_setImageFactory_1 (this p1)))
(defmethod jm_setImageFactory_1 ((this OpenGLImageSpecificFactory) _imageFactory)
  (declare (ignorable this _imageFactory))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_imageFactory) _imageFactory)
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Selected Image Factory: ") (jm_toString_1 (StringUtil.jm_getInstance_0) (slot-value this 'f_imageFactory)))) this "setImageFactory"))))

    
(unless (fboundp 'jm_getImageFactory_0) (defgeneric jm_getImageFactory_0 (this)))
(defmethod jm_getImageFactory_0 ((this OpenGLImageSpecificFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_imageFactory)))))



