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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryGameLayerManager (AllBinaryLayerManager)
  ((f_backgroundBasicColor :initform nil)
   (f_foregroundBasicColor :initform nil)
   (f_gameInfo :initform nil)
   (f_playerGameInputCompositeInterface :initform nil)))

(defvar AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER :jnone)
(defun AllBinaryGameLayerManager.jstatic_NULL_ALLBINARY_LAYER_MANAGER ()
  (when (eq AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER :jnone) (setf AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER)
(defun (setf AllBinaryGameLayerManager.jstatic_NULL_ALLBINARY_LAYER_MANAGER) (value) (setf AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER value))

(defvar AllBinaryGameLayerManager.jcell_ID :jnone)
(defun AllBinaryGameLayerManager.jstatic_ID ()
  (when (eq AllBinaryGameLayerManager.jcell_ID :jnone) (setf AllBinaryGameLayerManager.jcell_ID (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 22)))
  AllBinaryGameLayerManager.jcell_ID)
(defun (setf AllBinaryGameLayerManager.jstatic_ID) (value) (setf AllBinaryGameLayerManager.jcell_ID value))

    
(defun AllBinaryGameLayerManager.jm_getNullInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (AllBinaryGameLayerManager.jstatic_NULL_ALLBINARY_LAYER_MANAGER) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (AllBinaryGameLayerManager.jstatic_NULL_ALLBINARY_LAYER_MANAGER) (AllBinaryGameLayerManager.jnew_3 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE) (GameInfo.jstatic_NONE)))))
        (return-from jreturn (AllBinaryGameLayerManager.jstatic_NULL_ALLBINARY_LAYER_MANAGER)))))

    
(defun AllBinaryGameLayerManager.jnew_3 (_backgroundBasicColor _foregroundBasicColor _gameInfo)
  (declare (ignorable _backgroundBasicColor _foregroundBasicColor _gameInfo))
  (let ((this (make-instance 'AllBinaryGameLayerManager)))
    
    
    
    (setf (slot-value this 'f_playerGameInputCompositeInterface) (NullPlayerGameInputComposite.jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE))
  (let (_itemColorFactory)
  (declare (ignorable _itemColorFactory))
    (block jreturn
        (setf (slot-value this 'f_backgroundBasicColor) _backgroundBasicColor)
        (setf (slot-value this 'f_foregroundBasicColor) _foregroundBasicColor)
        (setf _itemColorFactory (ItemColorFactory.jm_getInstance_0))
        (setf (slot-value _itemColorFactory 'f_INVERT_PAINT) (jm_intValue_0 (slot-value this 'f_backgroundBasicColor)))
        (setf (slot-value _itemColorFactory 'f_PAINT) (jm_intValue_0 (slot-value this 'f_foregroundBasicColor)))
        (setf (slot-value this 'f_gameInfo) _gameInfo)))
    this))

    
(unless (fboundp 'jm_getLayerManager_0) (defgeneric jm_getLayerManager_0 (this)))
(defmethod jm_getLayerManager_0 ((this AllBinaryGameLayerManager))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn this))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this AllBinaryGameLayerManager))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getBackgroundBasicColor_0) (defgeneric jm_getBackgroundBasicColor_0 (this)))
(defmethod jm_getBackgroundBasicColor_0 ((this AllBinaryGameLayerManager))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_backgroundBasicColor)))))

    
(unless (fboundp 'jm_setBackgroundBasicColor_1) (defgeneric jm_setBackgroundBasicColor_1 (this p1)))
(defmethod jm_setBackgroundBasicColor_1 ((this AllBinaryGameLayerManager) _backgroundBasicColor)
  (declare (ignorable this _backgroundBasicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_backgroundBasicColor) _backgroundBasicColor)
        (setf (slot-value (ItemColorFactory.jm_getInstance_0) 'f_INVERT_PAINT) (jm_intValue_0 (slot-value this 'f_backgroundBasicColor))))))

    
(unless (fboundp 'jm_getForegroundBasicColor_0) (defgeneric jm_getForegroundBasicColor_0 (this)))
(defmethod jm_getForegroundBasicColor_0 ((this AllBinaryGameLayerManager))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_foregroundBasicColor)))))

    
(unless (fboundp 'jm_setForegroundBasicColor_1) (defgeneric jm_setForegroundBasicColor_1 (this p1)))
(defmethod jm_setForegroundBasicColor_1 ((this AllBinaryGameLayerManager) _foregroundBasicColor)
  (declare (ignorable this _foregroundBasicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_foregroundBasicColor) _foregroundBasicColor)
        (setf (slot-value (ItemColorFactory.jm_getInstance_0) 'f_PAINT) (jm_intValue_0 (slot-value this 'f_foregroundBasicColor))))))

    
(unless (fboundp 'jm_getGameInfo_0) (defgeneric jm_getGameInfo_0 (this)))
(defmethod jm_getGameInfo_0 ((this AllBinaryGameLayerManager))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameInfo)))))

    
(unless (fboundp 'jm_setGameInfo_1) (defgeneric jm_setGameInfo_1 (this p1)))
(defmethod jm_setGameInfo_1 ((this AllBinaryGameLayerManager) _gameInfo)
  (declare (ignorable this _gameInfo))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameInfo) _gameInfo))))

    
(unless (fboundp 'jm_setLayerProcessorList_1) (defgeneric jm_setLayerProcessorList_1 (this p1)))
(defmethod jm_setLayerProcessorList_1 ((this AllBinaryGameLayerManager) _list)
  (declare (ignorable this _list))
  (let (_layerProcessorInterfaceArray _size _index)
  (declare (ignorable _layerProcessorInterfaceArray _size _index))
    (block jreturn
        (setf _layerProcessorInterfaceArray (JR.newArray nil (jm_size_0 _list)))
        (setf _size (length _layerProcessorInterfaceArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref _layerProcessorInterfaceArray _index) (aref (slot-value _list 'f_objectArray) _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_setLayerProcessorArray_1 this _layerProcessorInterfaceArray))))

    
(unless (fboundp 'jm_setPlayerGameInputCompositeInterface_1) (defgeneric jm_setPlayerGameInputCompositeInterface_1 (this p1)))
(defmethod jm_setPlayerGameInputCompositeInterface_1 ((this AllBinaryGameLayerManager) _playerGameInputCompositeInterface)
  (declare (ignorable this _playerGameInputCompositeInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_playerGameInputCompositeInterface) _playerGameInputCompositeInterface))))

    
(unless (fboundp 'jm_getPlayerGameInputCompositeInterface_0) (defgeneric jm_getPlayerGameInputCompositeInterface_0 (this)))
(defmethod jm_getPlayerGameInputCompositeInterface_0 ((this AllBinaryGameLayerManager))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_playerGameInputCompositeInterface)))))



