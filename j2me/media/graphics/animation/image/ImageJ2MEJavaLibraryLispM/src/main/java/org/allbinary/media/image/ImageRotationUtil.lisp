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

(defclass ImageRotationUtil (JObject)
  ((f_anchor :initform 0)))

(defvar ImageRotationUtil.jcell_instance :jnone)
(defun ImageRotationUtil.jstatic_instance ()
  (when (eq ImageRotationUtil.jcell_instance :jnone) (setf ImageRotationUtil.jcell_instance (ImageRotationUtil.jnew_0)))
  ImageRotationUtil.jcell_instance)
(defun (setf ImageRotationUtil.jstatic_instance) (value) (setf ImageRotationUtil.jcell_instance value))

    
(defun ImageRotationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageRotationUtil.jstatic_instance)))))

    
(defun ImageRotationUtil.jnew_0 ()
  (let ((this (make-instance 'ImageRotationUtil)))
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_createRotatedImage_2) (defgeneric jm_createRotatedImage_2 (this p1 p2)))
(defmethod jm_createRotatedImage_2 ((this ImageRotationUtil) _originalImage _rotationInDegrees)
  (declare (ignorable this _originalImage _rotationInDegrees))
  (let ()
    (block jreturn
        (return-from jreturn _originalImage))))



