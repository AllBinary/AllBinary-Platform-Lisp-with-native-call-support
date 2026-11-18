;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.business.advertisement

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameAdStateBase (JObject)
  ((f_adConfigurationP :initform nil)
   (f_advertisementsP :initform nil)
   (f_okayToShowAdsP :initform nil)))

    
(defun GameAdStateBase.jnew_1 (_adConfiguration)
  (declare (ignorable _adConfiguration))
  (let ((this (make-instance 'GameAdStateBase)))
    
    (setf (slot-value this 'f_advertisementsP) (Advertisements.jnew_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_adConfigurationP) _adConfiguration)))
    this))

    
(unless (fboundp 'jm_initViewArray_1) (defgeneric jm_initViewArray_1 (this p1)))
(defmethod jm_initViewArray_1 ((this GameAdStateBase) _viewArray)
  (declare (ignorable this _viewArray))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onStart_1) (defgeneric jm_onStart_1 (this p1)))
(defmethod jm_onStart_1 ((this GameAdStateBase) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (jm_init_0 this))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isShowingAtLocation_1) (defgeneric jm_isShowingAtLocation_1 (this p1)))
(defmethod jm_isShowingAtLocation_1 ((this GameAdStateBase) _location)
  (declare (ignorable this _location))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isShowingAt_0) (defgeneric jm_isShowingAt_0 (this)))
(defmethod jm_isShowingAt_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_show_0) (defgeneric jm_show_0 (this)))
(defmethod jm_show_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_hide_0) (defgeneric jm_hide_0 (this)))
(defmethod jm_hide_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this GameAdStateBase) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_processAdState_2) (defgeneric jm_processAdState_2 (this p1 p2)))
(defmethod jm_processAdState_2 ((this GameAdStateBase) _gameState _gameType)
  (declare (ignorable this _gameState _gameType))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processPageAdState_0) (defgeneric jm_processPageAdState_0 (this)))
(defmethod jm_processPageAdState_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_playingAdState_0) (defgeneric jm_playingAdState_0 (this)))
(defmethod jm_playingAdState_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_playingAdStateWH_2) (defgeneric jm_playingAdStateWH_2 (this p1 p2)))
(defmethod jm_playingAdStateWH_2 ((this GameAdStateBase) _width _height)
  (declare (ignorable this _width _height))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_notPlayingAdState_0) (defgeneric jm_notPlayingAdState_0 (this)))
(defmethod jm_notPlayingAdState_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setGameIsReady_1) (defgeneric jm_setGameIsReady_1 (this p1)))
(defmethod jm_setGameIsReady_1 ((this GameAdStateBase) _gameIsReady)
  (declare (ignorable this _gameIsReady))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isGameIsReady_0) (defgeneric jm_isGameIsReady_0 (this)))
(defmethod jm_isGameIsReady_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getAdvertisements_0) (defgeneric jm_getAdvertisements_0 (this)))
(defmethod jm_getAdvertisements_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_advertisementsP)))))

    
(unless (fboundp 'jm_getAdConfiguration_0) (defgeneric jm_getAdConfiguration_0 (this)))
(defmethod jm_getAdConfiguration_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_adConfigurationP)))))

    
(unless (fboundp 'jm_isOkayToShowPageAd_0) (defgeneric jm_isOkayToShowPageAd_0 (this)))
(defmethod jm_isOkayToShowPageAd_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_setOkayToShowAds_1) (defgeneric jm_setOkayToShowAds_1 (this p1)))
(defmethod jm_setOkayToShowAds_1 ((this GameAdStateBase) _okayToShowAds)
  (declare (ignorable this _okayToShowAds))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_okayToShowAdsP) _okayToShowAds))))

    
(unless (fboundp 'jm_isOkayToShowAds_0) (defgeneric jm_isOkayToShowAds_0 (this)))
(defmethod jm_isOkayToShowAds_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_okayToShowAdsP)))))

    
(unless (fboundp 'jm_isEnabled_0) (defgeneric jm_isEnabled_0 (this)))
(defmethod jm_isEnabled_0 ((this GameAdStateBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



