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
;;;; package org.allbinary.game.configuration.feature

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GraphicsFeatureFactory (JObject)
  ((f_NONE :initform nil)
   (f_TRANSPARENT_IMAGE_CREATION :initform nil)
   (f_IMAGE_GRAPHICS :initform nil)
   (f_IMAGE_ROTATION_ON_THE_FLY :initform nil)
   (f_IMAGE_TO_ARRAY_GRAPHICS :initform nil)
   (f_SPRITE_QUARTER_ROTATION_GRAPHICS :initform nil)
   (f_SPRITE_FULL_GRAPHICS :initform nil)
   (f_VECTOR_GRAPHICS :initform nil)
   (f_VECTOR_TO_IMAGE_GRAPHICS :initform nil)))

(defvar GraphicsFeatureFactory.jcell_instance :jnone)
(defun GraphicsFeatureFactory.jstatic_instance ()
  (when (eq GraphicsFeatureFactory.jcell_instance :jnone) (setf GraphicsFeatureFactory.jcell_instance (GraphicsFeatureFactory.jnew_0)))
  GraphicsFeatureFactory.jcell_instance)
(defun (setf GraphicsFeatureFactory.jstatic_instance) (value) (setf GraphicsFeatureFactory.jcell_instance value))

    
(defun GraphicsFeatureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GraphicsFeatureFactory.jstatic_instance)))))

    
(defun GraphicsFeatureFactory.jnew_0 ()
  (let ((this (make-instance 'GraphicsFeatureFactory)))
    (setf (slot-value this 'f_NONE) (GraphicsFeature.jnew_1 (slot-value (StringUtil.jm_getInstance_0) 'f_NULL_STRING)))
    (setf (slot-value this 'f_TRANSPARENT_IMAGE_CREATION) (GraphicsFeature.jnew_1 "Transparent Image Creation"))
    (setf (slot-value this 'f_IMAGE_GRAPHICS) (GraphicsFeature.jnew_1 "Image Graphics"))
    (setf (slot-value this 'f_IMAGE_ROTATION_ON_THE_FLY) (GraphicsFeature.jnew_1 "Image Rotated On The Fly"))
    (setf (slot-value this 'f_IMAGE_TO_ARRAY_GRAPHICS) (GraphicsFeature.jnew_1 "Image To Array Graphics"))
    (setf (slot-value this 'f_SPRITE_QUARTER_ROTATION_GRAPHICS) (GraphicsFeature.jnew_1 "Sprite Quarter Rotation Graphics"))
    (setf (slot-value this 'f_SPRITE_FULL_GRAPHICS) (GraphicsFeature.jnew_1 "Sprite Full Rotation Graphics"))
    (setf (slot-value this 'f_VECTOR_GRAPHICS) (GraphicsFeature.jnew_1 "BasicArrayList Graphics"))
    (setf (slot-value this 'f_VECTOR_TO_IMAGE_GRAPHICS) (GraphicsFeature.jnew_1 "BasicArrayList To Image Graphics"))
  (let ()
    (block jreturn nil))
    this))



