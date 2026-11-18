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
;;;; package org.allbinary.game.configuration.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BaseChangedGameFeatureListener (JObject)
  ((f_logUtil :initform nil)
   (f_gameFeatureUtil :initform nil)
   (f_list :initform nil)
   (f_changed :initform nil)))

(defun BaseChangedGameFeatureListener.jnew_0 ()
  (let ((this (make-instance 'BaseChangedGameFeatureListener)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_gameFeatureUtil) (GameFeatureUtil.jm_getInstance_0))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_changed) t)
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this BaseChangedGameFeatureListener) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (CommonStrings.jm_getInstance_0) 'f_NOT_IMPLEMENTED) this))))

    
(unless (fboundp 'jm_onGameFeatureChange_1) (defgeneric jm_onGameFeatureChange_1 (this p1)))
(defmethod jm_onGameFeatureChange_1 ((this BaseChangedGameFeatureListener) _gameFeatureEvent)
  (declare (ignorable this _gameFeatureEvent))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_gameFeatureUtil) 'f_GAME_FEATURE_CHANGED)) (jm_getWhatChanged_0 _gameFeatureEvent))) this (slot-value (slot-value this 'f_gameFeatureUtil) 'f_ON_GAME_FEATURE_CHANGE))
        (jm_add_1 (slot-value this 'f_list) (jm_getGameOption_0 _gameFeatureEvent))
        (jm_setChanged_1 this t))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this BaseChangedGameFeatureListener) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _gameFeature))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this BaseChangedGameFeatureListener) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _gameFeature))))

    
(unless (fboundp 'jm_setChanged_1) (defgeneric jm_setChanged_1 (this p1)))
(defmethod jm_setChanged_1 ((this BaseChangedGameFeatureListener) _initialized)
  (declare (ignorable this _initialized))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_changed) _initialized)
        (if (not (jm_isChanged_0 this))
            (progn
            (jm_clear_0 (slot-value this 'f_list)))))))

    
(unless (fboundp 'jm_isChangedFeature_1) (defgeneric jm_isChangedFeature_1 (this p1)))
(defmethod jm_isChangedFeature_1 ((this BaseChangedGameFeatureListener) _gameFeature)
  (declare (ignorable this _gameFeature))
  (let (_isChanged _stringBuffer)
  (declare (ignorable _isChanged _stringBuffer))
    (block jreturn
        (setf _isChanged (jm_contains_1 (slot-value this 'f_list) _gameFeature))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "GameFeature: ")
        (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) _gameFeature))
        (jm_append_1 _stringBuffer " isFeature: ")
        (jm_appendboolean_1 _stringBuffer (jm_isFeature_1 (Features.jm_getInstance_0) _gameFeature))
        (jm_append_1 _stringBuffer " isChanged: ")
        (jm_appendboolean_1 _stringBuffer _isChanged)
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this "isChanged")
        (return-from jreturn _isChanged))))

    
(unless (fboundp 'jm_isChanged_0) (defgeneric jm_isChanged_0 (this)))
(defmethod jm_isChanged_0 ((this BaseChangedGameFeatureListener))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_changed)))))



