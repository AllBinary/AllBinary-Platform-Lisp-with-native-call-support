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
;;;; package org.allbinary.game.configuration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InGameFeatures (Init)
  ())

(defun InGameFeatures.jnew_0 ()
  (let ((this (make-instance 'InGameFeatures)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this InGameFeatures))
  (declare (ignorable this))
  (let (_LABEL _orientationData _exclusiveOrientationSensorVector _inGameFeatureChoiceGroups _inGameExclusiveOrientationSensorVectorCanBeNull _inGameExclusiveOrientationSensorVector _features _exclusiveScreenButtonsVector _touchFeatureFactory)
  (declare (ignorable _LABEL _orientationData _exclusiveOrientationSensorVector _inGameFeatureChoiceGroups _inGameExclusiveOrientationSensorVectorCanBeNull _inGameExclusiveOrientationSensorVector _features _exclusiveScreenButtonsVector _touchFeatureFactory))
    (block jreturn
        (setf _LABEL "Screen Buttons")
        (setf _orientationData (OrientationData.jm_getInstance_0))
        (setf _exclusiveOrientationSensorVector (jm_get_1 (jm_get_0 (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)) (slot-value _orientationData 'f_ORIENTATION_SENSOR_INPUT)))
        (setf _inGameFeatureChoiceGroups (InGameFeatureChoiceGroups.jm_getExclusiveInstance_0))
        (if (not (null _exclusiveOrientationSensorVector))
            (progn
            (setf _inGameExclusiveOrientationSensorVectorCanBeNull (jm_get_1 (jm_get_0 _inGameFeatureChoiceGroups) (slot-value _orientationData 'f_ORIENTATION_SENSOR_INPUT)))
            (if (null _inGameExclusiveOrientationSensorVectorCanBeNull)
                (progn
                (jm_addToInGameMenu_0 this))
                (progn
                (setf _inGameExclusiveOrientationSensorVector _inGameExclusiveOrientationSensorVectorCanBeNull)
                (if (= (jm_size_0 _inGameExclusiveOrientationSensorVector) 0)
                    (progn
                    (jm_addToInGameMenu_0 this)))))))
        (setf _features (Features.jm_getInstance_0))
        (if (or (or (jm_isFeature_1 _features (slot-value (TouchFeatureFactory.jm_getInstance_0) 'f_SHOW_SCREEN_BUTTONS)) (jm_isFeature_1 _features (slot-value (TouchFeatureFactory.jm_getInstance_0) 'f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))) (jm_isFeature_1 _features (slot-value (TouchFeatureFactory.jm_getInstance_0) 'f_HIDE_SCREEN_BUTTONS)))
            (progn
            (setf _exclusiveScreenButtonsVector (BasicArrayListD.jnew_0))
            (setf _touchFeatureFactory (TouchFeatureFactory.jm_getInstance_0))
            (jm_add_1 _exclusiveScreenButtonsVector (slot-value _touchFeatureFactory 'f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))
            (jm_add_1 _exclusiveScreenButtonsVector (slot-value _touchFeatureFactory 'f_SHOW_SCREEN_BUTTONS))
            (jm_add_1 _exclusiveScreenButtonsVector (slot-value _touchFeatureFactory 'f_HIDE_SCREEN_BUTTONS))
            (jm_add_2 _inGameFeatureChoiceGroups _LABEL _exclusiveScreenButtonsVector))))))

    
(unless (fboundp 'jm_addToInGameMenu_0) (defgeneric jm_addToInGameMenu_0 (this)))
(defmethod jm_addToInGameMenu_0 ((this InGameFeatures))
  (declare (ignorable this))
  (let (_orientationData _inGameExclusiveOrientationSensorVector)
  (declare (ignorable _orientationData _inGameExclusiveOrientationSensorVector))
    (block jreturn
        (setf _orientationData (OrientationData.jm_getInstance_0))
        (setf _inGameExclusiveOrientationSensorVector (BasicArrayListD.jnew_0))
        (jm_add_1 _inGameExclusiveOrientationSensorVector (slot-value (SensorFeatureFactory.jm_getInstance_0) 'f_ORIENTATION_SENSORS))
        (jm_add_1 _inGameExclusiveOrientationSensorVector (slot-value (SensorFeatureFactory.jm_getInstance_0) 'f_NO_ORIENTATION))
        (jm_add_2 (InGameFeatureChoiceGroups.jm_getExclusiveInstance_0) (slot-value _orientationData 'f_ORIENTATION_SENSOR_INPUT) _inGameExclusiveOrientationSensorVector))))

    
(unless (fboundp 'jm_isAny_0) (defgeneric jm_isAny_0 (this)))
(defmethod jm_isAny_0 ((this InGameFeatures))
  (declare (ignorable this))
  (let (_features _touchFeatureFactory _exclusiveOrientationSensorVector)
  (declare (ignorable _features _touchFeatureFactory _exclusiveOrientationSensorVector))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (setf _touchFeatureFactory (TouchFeatureFactory.jm_getInstance_0))
        (if (or (or (jm_isFeature_1 _features (slot-value _touchFeatureFactory 'f_SHOW_SCREEN_BUTTONS)) (jm_isFeature_1 _features (slot-value _touchFeatureFactory 'f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))) (jm_isFeature_1 _features (slot-value _touchFeatureFactory 'f_HIDE_SCREEN_BUTTONS)))
            (progn
            (return-from jreturn t)))
        (setf _exclusiveOrientationSensorVector (jm_get_1 (jm_get_0 (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)) (slot-value (OrientationData.jm_getInstance_0) 'f_ORIENTATION_SENSOR_INPUT)))
        (if (not (null _exclusiveOrientationSensorVector))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))



