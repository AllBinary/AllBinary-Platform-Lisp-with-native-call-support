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
;;;; package org.allbinary.game.init

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BaseGameInitialization (JObject)
  ((f_resourceInitializationArray :initform nil)
   (f_portion :initform 0)
   (f_initialized :initform nil)
   (f_EARLY_RESOURCES :initform 0)
   (f_GAME_RESOURCES :initform 0)
   (f_EARLY_CHANGABLE_RESOURCES :initform 0)
   (f_GAME_CHANGABLE_RESOURCES :initform 0)
   (f_gameInitialized :initform nil)
   (f_allLoaded :initform nil)))

(defvar BaseGameInitialization.jcell_NULL_BASE_GAME_INITIALIZATION :jnone)
(defun BaseGameInitialization.jstatic_NULL_BASE_GAME_INITIALIZATION ()
  (when (eq BaseGameInitialization.jcell_NULL_BASE_GAME_INITIALIZATION :jnone) (setf BaseGameInitialization.jcell_NULL_BASE_GAME_INITIALIZATION (BaseGameInitialization.jnew_2 (JR.newArray nil 0) 0)))
  BaseGameInitialization.jcell_NULL_BASE_GAME_INITIALIZATION)
(defun (setf BaseGameInitialization.jstatic_NULL_BASE_GAME_INITIALIZATION) (value) (setf BaseGameInitialization.jcell_NULL_BASE_GAME_INITIALIZATION value))

    
(defun BaseGameInitialization.jnew_2 (_resourceInitializationArray _portion)
  (declare (ignorable _resourceInitializationArray _portion))
  (let ((this (make-instance 'BaseGameInitialization)))
    
    
    
    (setf (slot-value this 'f_EARLY_RESOURCES) 0)
    (setf (slot-value this 'f_GAME_RESOURCES) 1)
    (setf (slot-value this 'f_EARLY_CHANGABLE_RESOURCES) 2)
    (setf (slot-value this 'f_GAME_CHANGABLE_RESOURCES) 3)
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_resourceInitializationArray) _resourceInitializationArray)
        (setf (slot-value this 'f_portion) _portion)))
    this))

    
(unless (fboundp 'jm_initKey_1) (defgeneric jm_initKey_1 (this p1)))
(defmethod jm_initKey_1 ((this BaseGameInitialization) _portion)
  (declare (ignorable this _portion))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_initKeyMapping_2) (defgeneric jm_initKeyMapping_2 (this p1 p2)))
(defmethod jm_initKeyMapping_2 ((this BaseGameInitialization) _abeClientInformation _portion)
  (declare (ignorable this _abeClientInformation _portion))
  (let ()
    (block jreturn
        (if (jm_isChangedFeature_1 (ChangedGameFeatureListener.jm_getInstance_0) (slot-value (InputFeatureFactory.jm_getInstance_0) 'f_INPUT_MAPPING))
            (progn
            (jm_init_1 (jm_getPersistentInputMappingInstance_0 (PlatformInputMappingFactory.jm_getInstance_0)) _abeClientInformation)
            (jm_addNormalPortion_2 (ProgressCanvasFactory.jm_getInstance_0) 50 "Game Keys")
            (jm_remove_1 (ChangedGameFeatureListener.jm_getInstance_0) (slot-value (InputFeatureFactory.jm_getInstance_0) 'f_INPUT_MAPPING)))))))

    
(unless (fboundp 'jm_init_3) (defgeneric jm_init_3 (this p1 p2 p3)))
(defmethod jm_init_3 ((this BaseGameInitialization) _abeClientInformation _commandListener _level)
  (declare (ignorable this _abeClientInformation _commandListener _level))
  (let (_resourceLoadingLevelFactory _localPortion _progressCanvas)
  (declare (ignorable _resourceLoadingLevelFactory _localPortion _progressCanvas))
    (block jreturn
        (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (if (and (not (jm_isInitialized_0 this)) (or (= _level (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_ALL))) (= _level (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_EARLY)))))
            (progn
            (setf _localPortion 40)
            (if (= _level (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_EARLY)))
                (progn
                (setf _localPortion 8)))
            (jm_setInitialized_1 this t)
            (jm_initKey_1 this (jm_getPortion_0 this))
            (jm_initKeyMapping_2 this _abeClientInformation (jm_getPortion_0 this))
            (jm_init_0 (GameKeyEventFactory.jm_getInstance_0))
            (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (jm_addNormalPortion_2 _progressCanvas _localPortion "Game Key Events")
            (jm_init_1 (BasicTouchInputFactory.jm_getInstance_0) (jm_getInputMapping_0 (jm_getPersistentInputMappingInstance_0 (PlatformInputMappingFactory.jm_getInstance_0))))
            (CancelTouchButtonInputFactory.jm_getInstance_0)
            (jm_addNormalPortion_2 _progressCanvas _localPortion "Touch Input")
            (jm_init_0 (CompleteMotionGestureInputToGameMotionGestureInput.jm_getInstance_0))
            (jm_addNormalPortion_2 _progressCanvas _localPortion "Motion Input")
            (GameFeatureImageCacheFactory.jm_init_0)
            (jm_addNormalPortion_2 _progressCanvas _localPortion "Image Cache")
            (jm_init_0 (aref (slot-value this 'f_resourceInitializationArray) (slot-value this 'f_EARLY_RESOURCES))))))))

    
(unless (fboundp 'jm_resourceInitialization_1) (defgeneric jm_resourceInitialization_1 (this p1)))
(defmethod jm_resourceInitialization_1 ((this BaseGameInitialization) _level)
  (declare (ignorable this _level))
  (let (_resourceLoadingLevelFactory)
  (declare (ignorable _resourceLoadingLevelFactory))
    (block jreturn
        (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (if (and (jm_resourceAnimationChange_0 this) (= _level (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_EARLY))))
            (progn
            (jm_clearResources_0 this)
            (jm_init_0 (aref (slot-value this 'f_resourceInitializationArray) (slot-value this 'f_EARLY_CHANGABLE_RESOURCES)))))
        (if (and (jm_resourceAnimationChange_0 this) (= _level (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_ALL))))
            (progn
            (if (slot-value this 'f_allLoaded)
                (progn
                (jm_clearResources_0 this)))
            (if (= (jm_size_0 (jm_getList_0 (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0))) 0)
                (progn
                (jm_init_0 (aref (slot-value this 'f_resourceInitializationArray) (slot-value this 'f_EARLY_CHANGABLE_RESOURCES)))))
            (jm_init_0 (aref (slot-value this 'f_resourceInitializationArray) (slot-value this 'f_GAME_CHANGABLE_RESOURCES)))
            (setf (slot-value this 'f_allLoaded) t))))))

    
(unless (fboundp 'jm_resourceAnimationChange_0) (defgeneric jm_resourceAnimationChange_0 (this)))
(defmethod jm_resourceAnimationChange_0 ((this BaseGameInitialization))
  (declare (ignorable this))
  (let (_changedGameFeatureListener _gameConfigurationCentral)
  (declare (ignorable _changedGameFeatureListener _gameConfigurationCentral))
    (block jreturn
        (setf _changedGameFeatureListener (ChangedGameFeatureListener.jm_getInstance_0))
        (setf _gameConfigurationCentral (GameConfigurationCentral.jm_getInstance_0))
        (if (jm_isChangedGameConfiguration_1 _changedGameFeatureListener (slot-value _gameConfigurationCentral 'f_SCALE))
            (progn
            (return-from jreturn t)))
        (if (jm_isChangedFeature_1 (ChangedGameFeatureListener.jm_getInstance_0) (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_STATIC))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_clearResources_0) (defgeneric jm_clearResources_0 (this)))
(defmethod jm_clearResources_0 ((this BaseGameInitialization))
  (declare (ignorable this))
  (let (_featuredAnimationInterfaceFactoryInterfaceFactory)
  (declare (ignorable _featuredAnimationInterfaceFactoryInterfaceFactory))
    (block jreturn
        (setf (slot-value this 'f_allLoaded) nil)
        (GameFeatureImageCacheFactory.jm_releaseAll_0)
        (setf _featuredAnimationInterfaceFactoryInterfaceFactory (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0))
        (jm_clear_0 _featuredAnimationInterfaceFactoryInterfaceFactory)
        (jm_clear_0 (FeaturedResourceRelativeRelationshipFactory.jm_getInstance_0)))))

    
(unless (fboundp 'jm_setGameInitialized_1) (defgeneric jm_setGameInitialized_1 (this p1)))
(defmethod jm_setGameInitialized_1 ((this BaseGameInitialization) _gameInitialized)
  (declare (ignorable this _gameInitialized))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameInitialized) _gameInitialized))))

    
(unless (fboundp 'jm_isGameInitialized_0) (defgeneric jm_isGameInitialized_0 (this)))
(defmethod jm_isGameInitialized_0 ((this BaseGameInitialization))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameInitialized)))))

    
(unless (fboundp 'jm_getPortion_0) (defgeneric jm_getPortion_0 (this)))
(defmethod jm_getPortion_0 ((this BaseGameInitialization))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_portion)))))

    
(unless (fboundp 'jm_setInitialized_1) (defgeneric jm_setInitialized_1 (this p1)))
(defmethod jm_setInitialized_1 ((this BaseGameInitialization) _initialized)
  (declare (ignorable this _initialized))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_initialized) _initialized))))

    
(unless (fboundp 'jm_isInitialized_0) (defgeneric jm_isInitialized_0 (this)))
(defmethod jm_isInitialized_0 ((this BaseGameInitialization))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initialized)))))



