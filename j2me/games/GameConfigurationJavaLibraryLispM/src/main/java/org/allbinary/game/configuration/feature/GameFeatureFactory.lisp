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

(defclass GameFeatureFactory (JObject)
  ((f_SOUND :initform nil)
   (f_MUSIC :initform nil)
   (f_SCREEN_SHAKE :initform nil)
   (f_POST_IMAGE_LOADING_MODIFICATION :initform nil)
   (f_HEALTH_BARS :initform nil)
   (f_DAMAGE_FLOATERS :initform nil)
   (f_GAME_INPUT_LAYER_PROCESSOR :initform nil)
   (f_ARTIFICIAL_INTELLEGENCE_PROCESSOR :initform nil)
   (f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR :initform nil)
   (f_TICKABLE_LAYER_PROCESSOR :initform nil)
   (f_CHEATING :initform nil)
   (f_DROPPED_ITEMS :initform nil)
   (f_DROPPED_ITEMS_FROM_DEATH :initform nil)
   (f_TEST_DESTROYED_LAYER_PROCESSOR :initform nil)
   (f_COLLISIONS_WITH_SOURCE :initform nil)
   (f_COLLISIONS_FORCED_TWO_DIMENSIONAL :initform nil)))

(defvar GameFeatureFactory.jcell_instance :jnone)
(defun GameFeatureFactory.jstatic_instance ()
  (when (eq GameFeatureFactory.jcell_instance :jnone) (setf GameFeatureFactory.jcell_instance (GameFeatureFactory.jnew_0)))
  GameFeatureFactory.jcell_instance)
(defun (setf GameFeatureFactory.jstatic_instance) (value) (setf GameFeatureFactory.jcell_instance value))

    
(defun GameFeatureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameFeatureFactory.jstatic_instance)))))

    
(defun GameFeatureFactory.jnew_0 ()
  (let ((this (make-instance 'GameFeatureFactory)))
    (setf (slot-value this 'f_SOUND) (GameFeature.jnew_1 "Sound"))
    (setf (slot-value this 'f_MUSIC) (GameFeature.jnew_1 "Music"))
    (setf (slot-value this 'f_SCREEN_SHAKE) (Feature.jnew_1 "Screen Shake"))
    (setf (slot-value this 'f_POST_IMAGE_LOADING_MODIFICATION) (Feature.jnew_1 "Post Image Loading Modification (Scaling, Rotation, or Other)"))
    (setf (slot-value this 'f_HEALTH_BARS) (GameFeature.jnew_1 "Health Bars"))
    (setf (slot-value this 'f_DAMAGE_FLOATERS) (GameFeature.jnew_1 "Damage Floaters"))
    (setf (slot-value this 'f_GAME_INPUT_LAYER_PROCESSOR) (GameFeature.jnew_1 "Game Input Layer Processor"))
    (setf (slot-value this 'f_ARTIFICIAL_INTELLEGENCE_PROCESSOR) (GameFeature.jnew_1 "Artificial Intelligence Layer Processor"))
    (setf (slot-value this 'f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR) (GameFeature.jnew_1 "Collidable Interface Layer Processor"))
    (setf (slot-value this 'f_TICKABLE_LAYER_PROCESSOR) (GameFeature.jnew_1 "Tickable Layer Processor"))
    (setf (slot-value this 'f_CHEATING) (GameFeature.jnew_1 "Cheating"))
    (setf (slot-value this 'f_DROPPED_ITEMS) (GameFeature.jnew_1 "Drops"))
    (setf (slot-value this 'f_DROPPED_ITEMS_FROM_DEATH) (GameFeature.jnew_1 "Drops from Dead"))
    (setf (slot-value this 'f_TEST_DESTROYED_LAYER_PROCESSOR) (GameFeature.jnew_1 "Destroyed Layer Processor"))
    (setf (slot-value this 'f_COLLISIONS_WITH_SOURCE) (GameFeature.jnew_1 "Allow Collisions With Source"))
    (setf (slot-value this 'f_COLLISIONS_FORCED_TWO_DIMENSIONAL) (GameFeature.jnew_1 "Collisions Forced Two Dimensional"))
  (let ()
    (block jreturn nil))
    this))



