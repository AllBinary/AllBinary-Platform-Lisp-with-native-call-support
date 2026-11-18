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

(defclass OnDemandLoader (JObject)
  ((f_onDemandResourcesFactory :initform nil)
   (f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory :initform nil)
   (f_resourceAnimationInterfaceFactoryInterfaceFactory :initform nil)))

    
(defun OnDemandLoader.jnew_3 (_onDemandResourcesFactory _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory _resourceAnimationInterfaceFactoryInterfaceFactory)
  (declare (ignorable _onDemandResourcesFactory _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory _resourceAnimationInterfaceFactoryInterfaceFactory))
  (let ((this (make-instance 'OnDemandLoader)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_onDemandResourcesFactory) _onDemandResourcesFactory)
        (setf (slot-value this 'f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory) _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)
        (setf (slot-value this 'f_resourceAnimationInterfaceFactoryInterfaceFactory) _resourceAnimationInterfaceFactoryInterfaceFactory)))
    this))

    
(unless (fboundp 'jm_init_3) (defgeneric jm_init_3 (this p1 p2 p3)))
(defmethod jm_init_3 ((this OnDemandLoader) _imageCache _level _loadingString)
  (declare (ignorable this _imageCache _level _loadingString))
  (let (_resourceLoadingLevelFactory _layerPlacementInterfaceBasicArrayListFactoryInterface)
  (declare (ignorable _resourceLoadingLevelFactory _layerPlacementInterfaceBasicArrayListFactoryInterface))
    (block jreturn
        (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (if (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_LOAD_ALL))
            (progn
            (if (jm_isInitialized_0 (slot-value this 'f_resourceAnimationInterfaceFactoryInterfaceFactory))
                (progn
                (return-from jreturn)))
            (jm_initAll_2 this _imageCache _loadingString))
            (if (/= _level (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_ALL)))
            (progn
            (setf _layerPlacementInterfaceBasicArrayListFactoryInterface (jm_getInstance_1 (slot-value this 'f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory) _level))
            (jm_initLevel_4 this _layerPlacementInterfaceBasicArrayListFactoryInterface _imageCache _level _loadingString)))))))

    
(unless (fboundp 'jm_initAll_2) (defgeneric jm_initAll_2 (this p1 p2)))
(defmethod jm_initAll_2 ((this OnDemandLoader) _imageCache _loadingString)
  (declare (ignorable this _imageCache _loadingString))
  (let (_index _portion _onDemandResources _onDemandIndex)
  (declare (ignorable _index _portion _onDemandResources _onDemandIndex))
    (block jreturn
        (setf _index 0)
        (setf _portion 120)
        (setf _onDemandResources nil)
        (progn
            (setf _onDemandIndex (jm_size_0 (slot-value this 'f_onDemandResourcesFactory)))
            (block jbreak (loop while (>= (setf _onDemandIndex (JR.i32 (- _onDemandIndex 1))) 0) do
                (block jcontinue
            (setf _onDemandResources (jm_remove_1 (slot-value this 'f_onDemandResourcesFactory) _onDemandIndex))
            (if (not (eq _onDemandResources (OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES)))
                (progn
                (setf _index (jm_initAt_5 _onDemandResources _imageCache (slot-value this 'f_resourceAnimationInterfaceFactoryInterfaceFactory) _portion _loadingString _index)))))))))))

    
(unless (fboundp 'jm_initLevel_4) (defgeneric jm_initLevel_4 (this p1 p2 p3 p4)))
(defmethod jm_initLevel_4 ((this OnDemandLoader) _layerPlacementInterfaceBasicArrayListFactoryInterface _imageCache _level _loadingString)
  (declare (ignorable this _layerPlacementInterfaceBasicArrayListFactoryInterface _imageCache _level _loadingString))
  (let (_commonStrings _portion _index _onDemandArray _onDemandResources _onDemandIndex)
  (declare (ignorable _commonStrings _portion _index _onDemandArray _onDemandResources _onDemandIndex))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (setf _portion 120)
        (setf _index 0)
        (setf _onDemandArray (jm_getOnDemandResources_0 _layerPlacementInterfaceBasicArrayListFactoryInterface))
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value _commonStrings 'f_START)) (length _onDemandArray))) this "initLevel")
        (setf _onDemandResources nil)
        (progn
            (setf _onDemandIndex (length _onDemandArray))
            (block jbreak (loop while (>= (setf _onDemandIndex (JR.i32 (- _onDemandIndex 1))) 0) do
                (block jcontinue
            (setf _onDemandResources (jm_remove_1 (slot-value this 'f_onDemandResourcesFactory) (aref _onDemandArray _onDemandIndex)))
            (if (not (eq _onDemandResources (OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES)))
                (progn
                (setf _index (jm_initAt_5 _onDemandResources _imageCache (slot-value this 'f_resourceAnimationInterfaceFactoryInterfaceFactory) _portion _loadingString _index)))))))))))



