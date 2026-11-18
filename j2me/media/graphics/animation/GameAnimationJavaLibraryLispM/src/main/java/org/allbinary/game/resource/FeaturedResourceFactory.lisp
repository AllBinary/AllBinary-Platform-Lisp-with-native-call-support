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
;;;; package org.allbinary.game.resource

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FeaturedResourceFactory (JObject)
  ((f_logUtil :initform nil)
   (f_list :initform nil)
   (f_commonStrings :initform nil)
   (f_ANIMATION_FEATURES :initform nil)
   (f_IMAGE_LABEL :initform nil)
   (f_IMAGE_GRAPHICS_ARRAY :initform nil)
   (f_IMAGE_GRAPHICS_ROTATION :initform nil)
   (f_SPRITE_QUARTER :initform nil)
   (f_SPRITE_FULL :initform nil)
   (f_IS_LOADING_LEVEL_LABEL :initform nil)
   (f_IS_FEATURE :initform nil)
   (f_GAME_FEATURE_CONTROLLED :initform nil)))

    
(defun FeaturedResourceFactory.jnew_0 ()
  (let ((this (make-instance 'FeaturedResourceFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_ANIMATION_FEATURES) "Animation Features: Vector: ")
    (setf (slot-value this 'f_IMAGE_LABEL) " Image: ")
    (setf (slot-value this 'f_IMAGE_GRAPHICS_ARRAY) "Image Array: ")
    (setf (slot-value this 'f_IMAGE_GRAPHICS_ROTATION) "Image Rotate: ")
    (setf (slot-value this 'f_SPRITE_QUARTER) " Sprite Quarter: ")
    (setf (slot-value this 'f_SPRITE_FULL) " Sprite Full: ")
    (setf (slot-value this 'f_IS_LOADING_LEVEL_LABEL) " isLoadingLevel ")
    (setf (slot-value this 'f_IS_FEATURE) " isFeature: ")
    (setf (slot-value this 'f_GAME_FEATURE_CONTROLLED) "GameFeatureControlledInterface: ")
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this FeaturedResourceFactory) _level)
  (declare (ignorable this _level))
  (let (_size _featureInterface _isLoadingLevel _isFeature _index _features _graphicsFeatureFactory _stringBuffer)
  (declare (ignorable _size _featureInterface _isLoadingLevel _isFeature _index _features _graphicsFeatureFactory _stringBuffer))
    (block jreturn
        (setf _size (jm_size_0 (slot-value this 'f_list)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _featureInterface (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
            (setf _isLoadingLevel (jm_isLoadingLevel_1 _featureInterface _level))
            (setf _isFeature (jm_isFeature_0 _featureInterface))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendboolean_1 (jm_append_1 (jm_appendboolean_1 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_GAME_FEATURE_CONTROLLED)) (jm_toString_0 _featureInterface)) (slot-value this 'f_IS_LOADING_LEVEL_LABEL)) (jm_getLevelString_1 (ResourceLoadingLevelFactory.jm_getInstance_0) _level)) (slot-value (CommonSeps.jm_getInstance_0) 'f_COLON_SEP)) _isLoadingLevel) (slot-value this 'f_IS_FEATURE)) _isFeature)) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT))
            (if (and _isLoadingLevel _isFeature)
                (progn
                (jm_init_1 _featureInterface _level))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _features (Features.jm_getInstance_0))
        (setf _graphicsFeatureFactory (GraphicsFeatureFactory.jm_getInstance_0))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (slot-value this 'f_ANIMATION_FEATURES))
        (jm_appendboolean_1 _stringBuffer (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_VECTOR_GRAPHICS)))
        (jm_append_1 _stringBuffer (slot-value this 'f_IMAGE_LABEL))
        (jm_appendboolean_1 _stringBuffer (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_IMAGE_GRAPHICS)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT))
        (if (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_IMAGE_GRAPHICS))
            (progn
            (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
            (jm_append_1 _stringBuffer (slot-value this 'f_IMAGE_GRAPHICS_ARRAY))
            (jm_appendboolean_1 _stringBuffer (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_IMAGE_TO_ARRAY_GRAPHICS)))
            (jm_append_1 _stringBuffer (slot-value this 'f_IMAGE_GRAPHICS_ROTATION))
            (jm_appendboolean_1 _stringBuffer (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_IMAGE_TO_ARRAY_GRAPHICS)))
            (jm_append_1 _stringBuffer (slot-value this 'f_SPRITE_QUARTER))
            (jm_appendboolean_1 _stringBuffer (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_SPRITE_QUARTER_ROTATION_GRAPHICS)))
            (jm_append_1 _stringBuffer (slot-value this 'f_SPRITE_FULL))
            (jm_appendboolean_1 _stringBuffer (jm_isFeature_1 _features (slot-value _graphicsFeatureFactory 'f_SPRITE_FULL_GRAPHICS)))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT)))))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this FeaturedResourceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this FeaturedResourceFactory) _featureInterface)
  (declare (ignorable this _featureInterface))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) (jm_toString_1 (StringUtil.jm_getInstance_0) _featureInterface))) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD))
        (jm_add_1 (slot-value this 'f_list) _featureInterface))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this FeaturedResourceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))



