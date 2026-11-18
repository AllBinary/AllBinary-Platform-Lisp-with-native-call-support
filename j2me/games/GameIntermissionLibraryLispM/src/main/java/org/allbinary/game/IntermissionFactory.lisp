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

(defclass IntermissionFactory (JObject)
  ((f_START_LEVEL_INTERMISSION_GAME_STATE :initform nil)
   (f_WAIT_LEVEL_INTERMISSION_GAME_STATE :initform nil)
   (f_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE :initform nil)
   (f_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE :initform nil)))

(defvar IntermissionFactory.jcell_instance :jnone)
(defun IntermissionFactory.jstatic_instance ()
  (when (eq IntermissionFactory.jcell_instance :jnone) (setf IntermissionFactory.jcell_instance (IntermissionFactory.jnew_0)))
  IntermissionFactory.jcell_instance)
(defun (setf IntermissionFactory.jstatic_instance) (value) (setf IntermissionFactory.jcell_instance value))

(defun IntermissionFactory.jnew_0 ()
  (let ((this (make-instance 'IntermissionFactory)))
    (setf (slot-value this 'f_START_LEVEL_INTERMISSION_GAME_STATE) (jm_createGameState_1 (GameStateFactory.jm_getInstance_0) "START_LEVEL_INTERMISSION_GAME_STATE"))
    (setf (slot-value this 'f_WAIT_LEVEL_INTERMISSION_GAME_STATE) (jm_createGameState_1 (GameStateFactory.jm_getInstance_0) "WAIT_LEVEL_INTERMISSION_GAME_STATE"))
    (setf (slot-value this 'f_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE) (jm_createGameState_1 (GameStateFactory.jm_getInstance_0) "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE"))
    (setf (slot-value this 'f_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE) (jm_createGameState_1 (GameStateFactory.jm_getInstance_0) "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE"))
    this))

    
(defun IntermissionFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (IntermissionFactory.jstatic_instance)))))



