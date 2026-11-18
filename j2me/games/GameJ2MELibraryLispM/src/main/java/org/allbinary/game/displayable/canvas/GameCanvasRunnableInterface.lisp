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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameCanvasRunnableInterface (JObject)
  ())

(defun GameCanvasRunnableInterface.jnew_0 ()
  (let ((this (make-instance 'GameCanvasRunnableInterface)))
    this))

    
(unless (fboundp 'jm_getTitle_0) (defgeneric jm_getTitle_0 (this)))
(defmethod jm_getTitle_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getTitle")))

    
(unless (fboundp 'jm_isInitialized_0) (defgeneric jm_isInitialized_0 (this)))
(defmethod jm_isInitialized_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isInitialized")))

    
(unless (fboundp 'jm_isPaused_0) (defgeneric jm_isPaused_0 (this)))
(defmethod jm_isPaused_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isPaused")))

    
(unless (fboundp 'jm_unPause_0) (defgeneric jm_unPause_0 (this)))
(defmethod jm_unPause_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "unPause")))

    
(unless (fboundp 'jm_pause_0) (defgeneric jm_pause_0 (this)))
(defmethod jm_pause_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "pause")))

    
(unless (fboundp 'jm_isHighScoreSubmitted_0) (defgeneric jm_isHighScoreSubmitted_0 (this)))
(defmethod jm_isHighScoreSubmitted_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isHighScoreSubmitted")))

    
(unless (fboundp 'jm_setHighScoreSubmitted_1) (defgeneric jm_setHighScoreSubmitted_1 (this p1)))
(defmethod jm_setHighScoreSubmitted_1 ((this GameCanvasRunnableInterface) _highScoreSubmitted)
  (declare (ignorable this _highScoreSubmitted))
  (error (JR.newException "AbstractMethodError" "setHighScoreSubmitted")))

    
(unless (fboundp 'jm_processGameOver_0) (defgeneric jm_processGameOver_0 (this)))
(defmethod jm_processGameOver_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "processGameOver")))

    
(unless (fboundp 'jm_isGameOver_0) (defgeneric jm_isGameOver_0 (this)))
(defmethod jm_isGameOver_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isGameOver")))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this GameCanvasRunnableInterface) _cmdListener)
  (declare (ignorable this _cmdListener))
  (error (JR.newException "AbstractMethodError" "initCommands")))

    
(unless (fboundp 'jm_getCurrentStateHashtable_0) (defgeneric jm_getCurrentStateHashtable_0 (this)))
(defmethod jm_getCurrentStateHashtable_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getCurrentStateHashtable")))

    
(unless (fboundp 'jm_getLoadStateHashtable_0) (defgeneric jm_getLoadStateHashtable_0 (this)))
(defmethod jm_getLoadStateHashtable_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getLoadStateHashtable")))

    
(unless (fboundp 'jm_setLoadStateHashtable_1) (defgeneric jm_setLoadStateHashtable_1 (this p1)))
(defmethod jm_setLoadStateHashtable_1 ((this GameCanvasRunnableInterface) _hashtable)
  (declare (ignorable this _hashtable))
  (error (JR.newException "AbstractMethodError" "setLoadStateHashtable")))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this GameCanvasRunnableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getType")))



