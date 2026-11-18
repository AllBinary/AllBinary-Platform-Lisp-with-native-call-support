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
;;;; package org.allbinary.game.layer.resources

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameGraphicsResourceUtil (JObject)
  ((f_logUtil :initform nil)
   (f_SPRITE :initform nil)
   (f_QUARTER :initform nil)
   (f_name :initform nil)))

(defvar GameGraphicsResourceUtil.jcell_instance :jnone)
(defun GameGraphicsResourceUtil.jstatic_instance ()
  (when (eq GameGraphicsResourceUtil.jcell_instance :jnone) (setf GameGraphicsResourceUtil.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  GameGraphicsResourceUtil.jcell_instance)
(defun (setf GameGraphicsResourceUtil.jstatic_instance) (value) (setf GameGraphicsResourceUtil.jcell_instance value))

    
(defun GameGraphicsResourceUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (GameGraphicsResourceUtil.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (GameGraphicsResourceUtil.jstatic_instance) (GameGraphicsResourceUtil.jnew_0))))
        (return-from jreturn (GameGraphicsResourceUtil.jstatic_instance)))))

    
(defun GameGraphicsResourceUtil.jnew_0 ()
  (let ((this (make-instance 'GameGraphicsResourceUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_SPRITE) "_sprite")
    (setf (slot-value this 'f_QUARTER) "_quarter")
    (setf (slot-value this 'f_name) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf (slot-value this 'f_name) (jm_getString_0 this)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_CONSTRUCTOR) _e)))))
    this))

    
(unless (fboundp 'jm_getString_0) (defgeneric jm_getString_0 (this)))
(defmethod jm_getString_0 ((this GameGraphicsResourceUtil))
  (declare (ignorable this))
  (let (_graphicsFeatureFactory _graphicsFeature _features)
  (declare (ignorable _graphicsFeatureFactory _graphicsFeature _features))
    (block jreturn
        (setf _graphicsFeatureFactory (GraphicsFeatureFactory.jm_getInstance_0))
        (setf _graphicsFeature (slot-value _graphicsFeatureFactory 'f_NONE))
        (setf _features (Features.jm_getInstance_0))
        (if (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_IMAGE_TO_ARRAY_GRAPHICS))
            (progn
            (setf _graphicsFeature (slot-value _graphicsFeatureFactory 'f_IMAGE_TO_ARRAY_GRAPHICS)))
            (if (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_SPRITE_FULL_GRAPHICS))
            (progn
            (setf _graphicsFeature (slot-value _graphicsFeatureFactory 'f_SPRITE_FULL_GRAPHICS)))
            (if (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_SPRITE_QUARTER_ROTATION_GRAPHICS))
            (progn
            (setf _graphicsFeature (slot-value _graphicsFeatureFactory 'f_SPRITE_QUARTER_ROTATION_GRAPHICS)))
            (if (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_IMAGE_ROTATION_ON_THE_FLY))
            (progn
            (setf _graphicsFeature (slot-value _graphicsFeatureFactory 'f_IMAGE_ROTATION_ON_THE_FLY)))))))
        (return-from jreturn (jm_getStringForFeature_1 this _graphicsFeature)))))

    
(unless (fboundp 'jm_getStringForFeature_1) (defgeneric jm_getStringForFeature_1 (this p1)))
(defmethod jm_getStringForFeature_1 ((this GameGraphicsResourceUtil) _graphicsFeature)
  (declare (ignorable this _graphicsFeature))
  (let (_stringBuffer _graphicsFeatureFactory _features)
  (declare (ignorable _stringBuffer _graphicsFeatureFactory _features))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _graphicsFeatureFactory (GraphicsFeatureFactory.jm_getInstance_0))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (setf _features (Features.jm_getInstance_0))
        (if (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_VECTOR_GRAPHICS))
            (progn
            nil)
            (if (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_IMAGE_GRAPHICS))
            (progn
            (if (or (eq _graphicsFeature (slot-value _graphicsFeatureFactory 'f_IMAGE_TO_ARRAY_GRAPHICS)) (eq _graphicsFeature (slot-value _graphicsFeatureFactory 'f_IMAGE_ROTATION_ON_THE_FLY)))
                (progn
                nil)
                (if (eq _graphicsFeature (slot-value _graphicsFeatureFactory 'f_SPRITE_FULL_GRAPHICS))
                (progn
                (jm_append_1 _stringBuffer (slot-value this 'f_SPRITE)))
                (if (eq _graphicsFeature (slot-value _graphicsFeatureFactory 'f_SPRITE_QUARTER_ROTATION_GRAPHICS))
                (progn
                (jm_append_1 _stringBuffer (slot-value this 'f_QUARTER))
                (jm_append_1 _stringBuffer (slot-value this 'f_SPRITE)))
                (progn
                (error (JR.newException "Exception" "None/Unknown Sub Image Resource Type Specified")))))))
            (if (jm_isAnyThreed_0 (OpenGLFeatureUtil.jm_getInstance_0))
            (progn
            (jm_append_1 _stringBuffer (slot-value (CanvasStrings.jm_getInstance_0) 'f_OBJ_MODEL)))
            (progn
            (error (JR.newException "Exception" "None/Unknown Main Image Resource Type Specified"))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this GameGraphicsResourceUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))



