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
;;;; package org.allbinary.game

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameStrings (JObject)
  ((f_PROCESS_TICK :initform nil)
   (f_ON_GAME_INITIALIZED :initform nil)
   (f_UPDATESURFACE :initform nil)
   (f_ON_SET_DISPLAYABLE :initform nil)
   (f_UNPAUSE :initform nil)
   (f_TOGGLE_MENU :initform nil)
   (f_SET_GAME_OVER :initform nil)
   (f_GAME_STATE :initform nil)
   (f_SET_GAME_STATE :initform nil)
   (f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE :initform nil)))

(defvar GameStrings.jcell_instance :jnone)
(defun GameStrings.jstatic_instance ()
  (when (eq GameStrings.jcell_instance :jnone) (setf GameStrings.jcell_instance (GameStrings.jnew_0)))
  GameStrings.jcell_instance)
(defun (setf GameStrings.jstatic_instance) (value) (setf GameStrings.jcell_instance value))

(defun GameStrings.jnew_0 ()
  (let ((this (make-instance 'GameStrings)))
    (setf (slot-value this 'f_PROCESS_TICK) "processTick")
    (setf (slot-value this 'f_ON_GAME_INITIALIZED) "onGameInitialized")
    (setf (slot-value this 'f_UPDATESURFACE) "updateSurface")
    (setf (slot-value this 'f_ON_SET_DISPLAYABLE) "onSetDisplayable")
    (setf (slot-value this 'f_UNPAUSE) "unPause")
    (setf (slot-value this 'f_TOGGLE_MENU) "toggleMenu")
    (setf (slot-value this 'f_SET_GAME_OVER) "setGameOver")
    (setf (slot-value this 'f_GAME_STATE) "Game State: ")
    (setf (slot-value this 'f_SET_GAME_STATE) "setGameState")
    (setf (slot-value this 'f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE) "stopGameCanvasRunnableInterface")
    this))

    
(defun GameStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameStrings.jstatic_instance)))))



