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

(defclass OpenGLImageUtilBase (JObject)
  ())

(defun OpenGLImageUtilBase.jnew_0 ()
  (let ((this (make-instance 'OpenGLImageUtilBase)))
    this))

    
(unless (fboundp 'jm_paint_3) (defgeneric jm_paint_3 (this p1 p2 p3)))
(defmethod jm_paint_3 ((this OpenGLImageUtilBase) _alphaBitmap _originalBitmap _index)
  (declare (ignorable this _alphaBitmap _originalBitmap _index))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_paint_4) (defgeneric jm_paint_4 (this p1 p2 p3 p4)))
(defmethod jm_paint_4 ((this OpenGLImageUtilBase) _colorBitmap _originalBitmap _alpha _basicColor)
  (declare (ignorable this _colorBitmap _originalBitmap _alpha _basicColor))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_createImage_1) (defgeneric jm_createImage_1 (this p1)))
(defmethod jm_createImage_1 ((this OpenGLImageUtilBase) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_createImageFromInputStream_1) (defgeneric jm_createImageFromInputStream_1 (this p1)))
(defmethod jm_createImageFromInputStream_1 ((this OpenGLImageUtilBase) _inputStream)
  (declare (ignorable this _inputStream))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



