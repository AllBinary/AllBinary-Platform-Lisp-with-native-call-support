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

(defclass GameFeatureItemStateListener (JObject)
  ((f_logUtil :initform nil)
   (f_gameOptionsForm :initform nil)))

(defvar GameFeatureItemStateListener.jcell_toggleList :jnone)
(defun GameFeatureItemStateListener.jstatic_toggleList ()
  (when (eq GameFeatureItemStateListener.jcell_toggleList :jnone) (setf GameFeatureItemStateListener.jcell_toggleList (BasicArrayListD.jnew_0)))
  GameFeatureItemStateListener.jcell_toggleList)
(defun (setf GameFeatureItemStateListener.jstatic_toggleList) (value) (setf GameFeatureItemStateListener.jcell_toggleList value))

    
(defun GameFeatureItemStateListener.jnew_1 (_gameOptionsForm)
  (declare (ignorable _gameOptionsForm))
  (let ((this (make-instance 'GameFeatureItemStateListener)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
  (let (_gameFeatureFactory)
  (declare (ignorable _gameFeatureFactory))
    (block jreturn
        (setf (slot-value this 'f_gameOptionsForm) _gameOptionsForm)
        (setf _gameFeatureFactory (GameFeatureFactory.jm_getInstance_0))
        (GameFeatureItemStateListener.jm_add_1 (slot-value _gameFeatureFactory 'f_ARTIFICIAL_INTELLEGENCE_PROCESSOR))
        (GameFeatureItemStateListener.jm_add_1 (slot-value _gameFeatureFactory 'f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR))
        (GameFeatureItemStateListener.jm_add_1 (slot-value _gameFeatureFactory 'f_DAMAGE_FLOATERS))
        (GameFeatureItemStateListener.jm_add_1 (slot-value _gameFeatureFactory 'f_DROPPED_ITEMS))
        (GameFeatureItemStateListener.jm_add_1 (slot-value _gameFeatureFactory 'f_GAME_INPUT_LAYER_PROCESSOR))
        (GameFeatureItemStateListener.jm_add_1 (slot-value _gameFeatureFactory 'f_HEALTH_BARS))
        (GameFeatureItemStateListener.jm_add_1 (slot-value _gameFeatureFactory 'f_SOUND))
        (GameFeatureItemStateListener.jm_add_1 (slot-value _gameFeatureFactory 'f_TICKABLE_LAYER_PROCESSOR))))
    this))

    
(defun GameFeatureItemStateListener.jm_add_1 (_gameFeature)
  (declare (ignorable _gameFeature))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (GameFeatureItemStateListener.jstatic_toggleList) _gameFeature))
            (progn
            (jm_add_1 (GameFeatureItemStateListener.jstatic_toggleList) _gameFeature))))))

    
(unless (fboundp 'jm_itemStateChanged_1) (defgeneric jm_itemStateChanged_1 (this p1)))
(defmethod jm_itemStateChanged_1 ((this GameFeatureItemStateListener) _item)
  (declare (ignorable this _item))
  (let (_itemLabel _gameFeatureUtil _commonStrings)
  (declare (ignorable _itemLabel _gameFeatureUtil _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _itemLabel (jm_getLabel_0 _item))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_ITEM_LABEL)) _itemLabel)) this "itemStateChanged")
            (if (typep _item 'GameConfigurationGauge)
                (progn
                (jm_change_2 (GameConfigurationUtil.jm_getInstance_0) (slot-value this 'f_gameOptionsForm) _item))
                (if (typep _item 'ChoiceGroup)
                (progn
                (setf _gameFeatureUtil (GameFeatureUtil.jm_getInstance_0))
                (if (jm_isExclusive_1 _gameFeatureUtil _itemLabel)
                    (progn
                    (jm_updateExclusiveForChoiceGroup_1 _gameFeatureUtil _item))
                    (progn
                    (jm_updateMultiple_1 _gameFeatureUtil _item)))))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this "itemStateChanged" _e))))))



