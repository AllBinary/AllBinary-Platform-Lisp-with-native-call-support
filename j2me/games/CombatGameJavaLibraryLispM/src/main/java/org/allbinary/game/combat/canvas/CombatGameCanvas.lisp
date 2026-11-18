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
;;;; package org.allbinary.game.combat.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CombatGameCanvas (AllBinaryGameCanvas)
  ())

(defvar CombatGameCanvas.jcell_basicLayerProcessor :jnone)
(defun CombatGameCanvas.jstatic_basicLayerProcessor ()
  (when (eq CombatGameCanvas.jcell_basicLayerProcessor :jnone) (setf CombatGameCanvas.jcell_basicLayerProcessor (JR.newArray nil 0)))
  CombatGameCanvas.jcell_basicLayerProcessor)
(defun (setf CombatGameCanvas.jstatic_basicLayerProcessor) (value) (setf CombatGameCanvas.jcell_basicLayerProcessor value))

    
(defun CombatGameCanvas.jnew_5 (_cmdListener _gameLayerManager _highScoresFactoryInterface _gameInitializationInterfaceFactoryInterface _buffered)
  (declare (ignorable _cmdListener _gameLayerManager _highScoresFactoryInterface _gameInitializationInterfaceFactoryInterface _buffered))
  (let ((this (make-instance 'CombatGameCanvas)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_CombatGameCanvas_init_0) (defgeneric jm_CombatGameCanvas_init_0 (this)))
(defmethod jm_CombatGameCanvas_init_0 ((this CombatGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_init_1 (DestroyEventCircularStaticPool.jm_getInstance_0) this)
        (jm_addNormalPortion_2 (ProgressCanvasFactory.jm_getInstance_0) 50 "Destroy Events"))))

    
(unless (fboundp 'jm_initApp_1) (defgeneric jm_initApp_1 (this p1)))
(defmethod jm_initApp_1 ((this CombatGameCanvas) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (jm_CombatGameCanvas_init_0 this)
        (call-next-method this _abeClientInformation))))

    
(unless (fboundp 'jm_initConfigurablePortion_1) (defgeneric jm_initConfigurablePortion_1 (this p1)))
(defmethod jm_initConfigurablePortion_1 ((this CombatGameCanvas) _portion)
  (declare (ignorable this _portion))
  (let (_features _gameFeatureFactory)
  (declare (ignorable _features _gameFeatureFactory))
    (block jreturn
        (DestroyedLayerProcessor.jm_init_0)
        (jm_addNormalPortion_2 (ProgressCanvasFactory.jm_getInstance_0) _portion "Basic Processors")
        (setf _features (Features.jm_getInstance_0))
        (setf _gameFeatureFactory (GameFeatureFactory.jm_getInstance_0))
        (if (and (jm_isFeature_1 _features (slot-value _gameFeatureFactory 'f_DROPPED_ITEMS)) (jm_isFeature_1 _features (slot-value _gameFeatureFactory 'f_DROPPED_ITEMS_FROM_DEATH)))
            (progn
            (setf (CombatGameCanvas.jstatic_basicLayerProcessor) (JR.newArray nil 2))
            (setf (aref (CombatGameCanvas.jstatic_basicLayerProcessor) 0) (DestroyedLayerProcessor.jm_getInstance_0))
            (setf (aref (CombatGameCanvas.jstatic_basicLayerProcessor) 1) (DropLayerProcessor.jm_getInstance_0)))
            (progn
            (setf (CombatGameCanvas.jstatic_basicLayerProcessor) (JR.newArray nil 1))
            (setf (aref (CombatGameCanvas.jstatic_basicLayerProcessor) 0) (DestroyedLayerProcessor.jm_getInstance_0)))))))

    
(unless (fboundp 'jm_processPlayingGame_0) (defgeneric jm_processPlayingGame_0 (this)))
(defmethod jm_processPlayingGame_0 ((this CombatGameCanvas))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this)
        (progn
            (setf _index (length (CombatGameCanvas.jstatic_basicLayerProcessor)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (jm_process_1 (aref (CombatGameCanvas.jstatic_basicLayerProcessor) _index) (slot-value this 'f_gameLayerManager)))))))))

    
(unless (fboundp 'jm_cleanupGame_0) (defgeneric jm_cleanupGame_0 (this)))
(defmethod jm_cleanupGame_0 ((this CombatGameCanvas))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this)
        (progn
            (setf _index (length (CombatGameCanvas.jstatic_basicLayerProcessor)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (jm_clear_0 (jm_getList_0 (aref (CombatGameCanvas.jstatic_basicLayerProcessor) _index)))))))
        (jm_clear_0 (GroupLayerManagerListener.jm_getInstance_0))
        (jm_log_0 (GroupLayerManagerListener.jm_getInstance_0))
        (jm_removeAllListeners_0 (DestroyedEventHandler.jm_getInstance_0))
        (jm_cleanupManager_0 this))))

    
(unless (fboundp 'jm_cleanupManager_0) (defgeneric jm_cleanupManager_0 (this)))
(defmethod jm_cleanupManager_0 ((this CombatGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_cleanup_0 (slot-value this 'f_gameLayerManager)))))



