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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullGameCanvasRunnable (JObject)
  ((f_gameStateFactory :initform nil)))

(defvar NullGameCanvasRunnable.jcell_NULL_GAME_CANVAS_RUNNABLE :jnone)
(defun NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE ()
  (when (eq NullGameCanvasRunnable.jcell_NULL_GAME_CANVAS_RUNNABLE :jnone) (setf NullGameCanvasRunnable.jcell_NULL_GAME_CANVAS_RUNNABLE (NullGameCanvasRunnable.jnew_0)))
  NullGameCanvasRunnable.jcell_NULL_GAME_CANVAS_RUNNABLE)
(defun (setf NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE) (value) (setf NullGameCanvasRunnable.jcell_NULL_GAME_CANVAS_RUNNABLE value))

(defun NullGameCanvasRunnable.jnew_0 ()
  (let ((this (make-instance 'NullGameCanvasRunnable)))
    (setf (slot-value this 'f_gameStateFactory) (GameStateFactory.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_getTitle_0) (defgeneric jm_getTitle_0 (this)))
(defmethod jm_getTitle_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_isInitialized_0) (defgeneric jm_isInitialized_0 (this)))
(defmethod jm_isInitialized_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isPaused_0) (defgeneric jm_isPaused_0 (this)))
(defmethod jm_isPaused_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_unPause_0) (defgeneric jm_unPause_0 (this)))
(defmethod jm_unPause_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_pause_0) (defgeneric jm_pause_0 (this)))
(defmethod jm_pause_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isHighScoreSubmitted_0) (defgeneric jm_isHighScoreSubmitted_0 (this)))
(defmethod jm_isHighScoreSubmitted_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_setHighScoreSubmitted_1) (defgeneric jm_setHighScoreSubmitted_1 (this p1)))
(defmethod jm_setHighScoreSubmitted_1 ((this NullGameCanvasRunnable) _highScoreSubmitted)
  (declare (ignorable this _highScoreSubmitted))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processGameOver_0) (defgeneric jm_processGameOver_0 (this)))
(defmethod jm_processGameOver_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isGameOver_0) (defgeneric jm_isGameOver_0 (this)))
(defmethod jm_isGameOver_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this NullGameCanvasRunnable) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getCurrentStateHashtable_0) (defgeneric jm_getCurrentStateHashtable_0 (this)))
(defmethod jm_getCurrentStateHashtable_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StdUtil.jm_getInstance_0) 'f_NULL_TABLE)))))

    
(unless (fboundp 'jm_getLoadStateHashtable_0) (defgeneric jm_getLoadStateHashtable_0 (this)))
(defmethod jm_getLoadStateHashtable_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StdUtil.jm_getInstance_0) 'f_NULL_TABLE)))))

    
(unless (fboundp 'jm_setLoadStateHashtable_1) (defgeneric jm_setLoadStateHashtable_1 (this p1)))
(defmethod jm_setLoadStateHashtable_1 ((this NullGameCanvasRunnable) _hashtable)
  (declare (ignorable this _hashtable))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_setGameState_1) (defgeneric jm_setGameState_1 (this p1)))
(defmethod jm_setGameState_1 ((this NullGameCanvasRunnable) _gameState)
  (declare (ignorable this _gameState))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getGameState_0) (defgeneric jm_getGameState_0 (this)))
(defmethod jm_getGameState_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (slot-value this 'f_gameStateFactory) 'f_NO_GAME_STATE)))))

    
(unless (fboundp 'jm_itemStateChanged_1) (defgeneric jm_itemStateChanged_1 (this p1)))
(defmethod jm_itemStateChanged_1 ((this NullGameCanvasRunnable) _item)
  (declare (ignorable this _item))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this NullGameCanvasRunnable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this NullGameCanvasRunnable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isRunning_0) (defgeneric jm_isRunning_0 (this)))
(defmethod jm_isRunning_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_setRunning_1) (defgeneric jm_setRunning_1 (this p1)))
(defmethod jm_setRunning_1 ((this NullGameCanvasRunnable) _isRunning)
  (declare (ignorable this _isRunning))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setThread_1) (defgeneric jm_setThread_1 (this p1)))
(defmethod jm_setThread_1 ((this NullGameCanvasRunnable) _thread)
  (declare (ignorable this _thread))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this NullGameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



