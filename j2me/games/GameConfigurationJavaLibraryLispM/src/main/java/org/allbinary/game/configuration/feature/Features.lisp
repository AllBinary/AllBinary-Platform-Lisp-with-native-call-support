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

(defclass Features (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_list :initform nil)
   (f_defaultList :initform nil)))

(defvar Features.jcell_SINGLETON :jnone)
(defun Features.jstatic_SINGLETON ()
  (when (eq Features.jcell_SINGLETON :jnone) (setf Features.jcell_SINGLETON (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  Features.jcell_SINGLETON)
(defun (setf Features.jstatic_SINGLETON) (value) (setf Features.jcell_SINGLETON value))

    
(defun Features.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (Features.jstatic_SINGLETON) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (Features.jstatic_SINGLETON) (Features.jnew_0))))
        (return-from jreturn (Features.jstatic_SINGLETON)))))

    
(defun Features.jnew_0 ()
  (let ((this (make-instance 'Features)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
        (setf (slot-value this 'f_defaultList) (BasicArrayListD.jnew_0))
        (jm_init_0 this)))
    this))

    
(unless (fboundp 'jm_addDefault_1) (defgeneric jm_addDefault_1 (this p1)))
(defmethod jm_addDefault_1 ((this Features) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let ()
    (block jreturn
        (jm_add_1 this _gameFeature)
        (if (not (jm_contains_1 (slot-value this 'f_defaultList) _gameFeature))
            (progn
            (jm_add_1 (slot-value this 'f_defaultList) _gameFeature))))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this Features) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _gameFeature))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) (jm_toString_0 _gameFeature))) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD))
            (jm_add_1 (slot-value this 'f_list) _gameFeature)
            (jm_fireEvent_1 (GameFeatureEventHandler.jm_getInstance_0) (GameFeatureEvent.jnew_2 _gameFeature (jm_toString_0 _gameFeature))))))))

    
(unless (fboundp 'jm_removeDefault_1) (defgeneric jm_removeDefault_1 (this p1)))
(defmethod jm_removeDefault_1 ((this Features) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) (jm_toString_0 _gameFeature))) this "removeDefault")
        (jm_remove_1 this _gameFeature)
        (jm_remove_1 (slot-value this 'f_defaultList) _gameFeature))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this Features) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let ()
    (block jreturn
        (if (jm_contains_1 (slot-value this 'f_list) _gameFeature)
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_REMOVE))
            (jm_remove_1 (slot-value this 'f_list) _gameFeature)
            (jm_fireEvent_1 (GameFeatureEventHandler.jm_getInstance_0) (GameFeatureEvent.jnew_2 _gameFeature (jm_toString_0 _gameFeature))))))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this Features))
  (declare (ignorable this))
  (let (_gameFeatureFactory _inputFeatureFactory _sensorFeatureFactory _touchFeatureFactory _operatingSystemInterface)
  (declare (ignorable _gameFeatureFactory _inputFeatureFactory _sensorFeatureFactory _touchFeatureFactory _operatingSystemInterface))
    (block jreturn
        (handler-case (progn
            (setf _gameFeatureFactory (GameFeatureFactory.jm_getInstance_0))
            (setf _inputFeatureFactory (InputFeatureFactory.jm_getInstance_0))
            (setf _sensorFeatureFactory (SensorFeatureFactory.jm_getInstance_0))
            (setf _touchFeatureFactory (TouchFeatureFactory.jm_getInstance_0))
            (jm_addDefault_1 this (slot-value _gameFeatureFactory 'f_ARTIFICIAL_INTELLEGENCE_PROCESSOR))
            (jm_addDefault_1 this (slot-value _gameFeatureFactory 'f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR))
            (jm_addDefault_1 this (slot-value _gameFeatureFactory 'f_GAME_INPUT_LAYER_PROCESSOR))
            (jm_addDefault_1 this (slot-value _gameFeatureFactory 'f_TICKABLE_LAYER_PROCESSOR))
            (jm_addDefault_1 this (slot-value _inputFeatureFactory 'f_MULTI_KEY_PRESS))
            (jm_addDefault_1 this (slot-value _inputFeatureFactory 'f_REMOVE_DUPLICATE_KEY_PRESSES))
            (jm_addDefault_1 this (slot-value _gameFeatureFactory 'f_SCREEN_SHAKE))
            (jm_addDefault_1 this (slot-value _gameFeatureFactory 'f_POST_IMAGE_LOADING_MODIFICATION))
            (setf _operatingSystemInterface (jm_getOperatingSystemInstance_0 (OperatingSystemFactory.jm_getInstance_0)))
            (if (jm_isOverScan_0 _operatingSystemInterface)
                (progn
                (jm_addDefault_1 this (slot-value _sensorFeatureFactory 'f_NO_ORIENTATION))
                (jm_addDefault_1 this (slot-value _touchFeatureFactory 'f_HIDE_SCREEN_BUTTONS)))
                (progn
                (jm_addDefault_1 this (slot-value _sensorFeatureFactory 'f_ORIENTATION_SENSORS))
                (jm_addDefault_1 this (slot-value _touchFeatureFactory 'f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))))
            (jm_addDefault_1 this (slot-value _touchFeatureFactory 'f_TOUCH_ENABLED))
            (jm_addDefault_1 this (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_FULL_SCREEN))
            (jm_addDefault_1 this (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_LOAD_ONDEMAND)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT) _e))))))

    
(unless (fboundp 'jm_isDefault_1) (defgeneric jm_isDefault_1 (this p1)))
(defmethod jm_isDefault_1 ((this Features) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let ()
    (block jreturn
        (return-from jreturn (jm_contains_1 (slot-value this 'f_defaultList) _gameFeature)))))

    
(unless (fboundp 'jm_isFeature_1) (defgeneric jm_isFeature_1 (this p1)))
(defmethod jm_isFeature_1 ((this Features) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let ()
    (block jreturn
        (return-from jreturn (jm_contains_1 (slot-value this 'f_list) _gameFeature)))))

    
(unless (fboundp 'jm_toggle_1) (defgeneric jm_toggle_1 (this p1)))
(defmethod jm_toggle_1 ((this Features) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let ()
    (block jreturn
        (if (jm_isFeature_1 this _gameFeature)
            (progn
            (jm_remove_1 this _gameFeature))
            (progn
            (jm_add_1 this _gameFeature))))))



