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
;;;; package org.allbinary.media.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageModifierUtil (JObject)
  ())

(defvar ImageModifierUtil.jcell_instance :jnone)
(defun ImageModifierUtil.jstatic_instance ()
  (when (eq ImageModifierUtil.jcell_instance :jnone) (setf ImageModifierUtil.jcell_instance (ImageModifierUtil.jnew_0)))
  ImageModifierUtil.jcell_instance)
(defun (setf ImageModifierUtil.jstatic_instance) (value) (setf ImageModifierUtil.jcell_instance value))

(defun ImageModifierUtil.jnew_0 ()
  (let ((this (make-instance 'ImageModifierUtil)))
    this))

    
(defun ImageModifierUtil.jm_getInstanceOrCreate_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageModifierUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_setColor_4) (defgeneric jm_setColor_4 (this p1 p2 p3 p4)))
(defmethod jm_setColor_4 ((this ImageModifierUtil) _unusedOriginalImage _image _imageIndex _basicColor)
  (declare (ignorable this _unusedOriginalImage _image _imageIndex _basicColor))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_changeColor_4) (defgeneric jm_changeColor_4 (this p1 p2 p3 p4)))
(defmethod jm_changeColor_4 ((this ImageModifierUtil) _unusedOriginalImage _image _imageIndex _basicColor)
  (declare (ignorable this _unusedOriginalImage _image _imageIndex _basicColor))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setAlpha_4) (defgeneric jm_setAlpha_4 (this p1 p2 p3 p4)))
(defmethod jm_setAlpha_4 ((this ImageModifierUtil) _originalImage _image _imageIndex _alphaInt)
  (declare (ignorable this _originalImage _image _imageIndex _alphaInt))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getImageArray_1) (defgeneric jm_getImageArray_1 (this p1)))
(defmethod jm_getImageArray_1 ((this ImageModifierUtil) _originalImageArray)
  (declare (ignorable this _originalImageArray))
  (let ()
    (block jreturn
        (return-from jreturn _originalImageArray))))

    
(unless (fboundp 'jm_handleImage_3) (defgeneric jm_handleImage_3 (this p1 p2 p3)))
(defmethod jm_handleImage_3 ((this ImageModifierUtil) _imageArray _index _image)
  (declare (ignorable this _imageArray _index _image))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_reset_0) (defgeneric jm_reset_0 (this)))
(defmethod jm_reset_0 ((this ImageModifierUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



