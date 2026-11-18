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

(defclass GameInitializationUtil (JObject)
  ((f_EVENT :initform nil)))

(defvar GameInitializationUtil.jcell_instance :jnone)
(defun GameInitializationUtil.jstatic_instance ()
  (when (eq GameInitializationUtil.jcell_instance :jnone) (setf GameInitializationUtil.jcell_instance (GameInitializationUtil.jnew_0)))
  GameInitializationUtil.jcell_instance)
(defun (setf GameInitializationUtil.jstatic_instance) (value) (setf GameInitializationUtil.jcell_instance value))

(defun GameInitializationUtil.jnew_0 ()
  (let ((this (make-instance 'GameInitializationUtil)))
    (setf (slot-value this 'f_EVENT) (GameInitializedEvent.jnew_1 this))
    this))

    
(unless (fboundp 'jm_initDemo_3) (defgeneric jm_initDemo_3 (this p1 p2 p3)))
(defmethod jm_initDemo_3 ((this GameInitializationUtil) _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface)
  (declare (ignorable this _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface))
  (let (_mainFeatureFactory _gameInitializationInterface _features _resourceLoadingLevelFactory)
  (declare (ignorable _mainFeatureFactory _gameInitializationInterface _features _resourceLoadingLevelFactory))
    (block jreturn
        (setf _mainFeatureFactory (MainFeatureFactory.jm_getInstance_0))
        (if (jm_isChangedFeature_1 (ChangedGameFeatureListener.jm_getInstance_0) (slot-value _mainFeatureFactory 'f_STATIC))
            (progn
            (setf _gameInitializationInterface (jm_getInstance_0 _gameInitializationInterfaceFactoryInterface))
            (setf _features (Features.jm_getInstance_0))
            (if (jm_isFeature_1 _features (slot-value _mainFeatureFactory 'f_LOAD_ALL))
                (progn
                (jm_initGame_3 this _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface))
                (if (jm_isFeature_1 _features (slot-value _mainFeatureFactory 'f_LOAD_ONDEMAND))
                (progn
                (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
                (jm_init_3 _gameInitializationInterface _abeClientInformation (jm_getCustomCommandListener_0 _canvas) (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_EARLY)))
                (jm_setResourceLoadingLevel_1 (slot-value this 'f_EVENT) (slot-value _resourceLoadingLevelFactory 'f_LOAD_EARLY)))
                (progn
                (error (JR.newException "Exception" "No Loading Feature Available")))))
            (jm_fireEvent_1 (GameInitializedEventHandler.jm_getInstance_0) (slot-value this 'f_EVENT)))))))

    
(unless (fboundp 'jm_initGame_3) (defgeneric jm_initGame_3 (this p1 p2 p3)))
(defmethod jm_initGame_3 ((this GameInitializationUtil) _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface)
  (declare (ignorable this _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface))
  (let (_gameInitializationInterface _resourceLoadingLevelFactory)
  (declare (ignorable _gameInitializationInterface _resourceLoadingLevelFactory))
    (block jreturn
        (if (jm_isChangedFeature_1 (ChangedGameFeatureListener.jm_getInstance_0) (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_STATIC))
            (progn
            (setf _gameInitializationInterface (jm_getInstance_0 _gameInitializationInterfaceFactoryInterface))
            (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
            (jm_init_3 _gameInitializationInterface _abeClientInformation (jm_getCustomCommandListener_0 _canvas) (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_ALL)))
            (jm_setResourceLoadingLevel_1 (slot-value this 'f_EVENT) (slot-value _resourceLoadingLevelFactory 'f_LOAD_ALL))
            (jm_fireEvent_1 (GameInitializedEventHandler.jm_getInstance_0) (slot-value this 'f_EVENT))
            (jm_remove_1 (ChangedGameFeatureListener.jm_getInstance_0) (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_STATIC)))))))

    
(defun GameInitializationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameInitializationUtil.jstatic_instance)))))



