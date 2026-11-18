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
;;;; package org.allbinary.game.state

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameStateFactory (JObject)
  ((f_index :initform 0)
   (f_NO_GAME_STATE :initform nil)
   (f_PLAYING_GAME_STATE :initform nil)
   (f_SHOW_END_RESULT_GAME_STATE :initform nil)
   (f_SHOW_HIGH_SCORE_GAME_STATE :initform nil)))

(defvar GameStateFactory.jcell_instance :jnone)
(defun GameStateFactory.jstatic_instance ()
  (when (eq GameStateFactory.jcell_instance :jnone) (setf GameStateFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  GameStateFactory.jcell_instance)
(defun (setf GameStateFactory.jstatic_instance) (value) (setf GameStateFactory.jcell_instance value))

    
(defun GameStateFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (GameStateFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (GameStateFactory.jstatic_instance) (GameStateFactory.jnew_0))))
        (return-from jreturn (GameStateFactory.jstatic_instance)))))

    
(defun GameStateFactory.jnew_0 ()
  (let ((this (make-instance 'GameStateFactory)))
    (setf (slot-value this 'f_index) 0)
    (setf (slot-value this 'f_NO_GAME_STATE) (jm_createGameState_1 this "NO_GAME_STATE"))
    (setf (slot-value this 'f_PLAYING_GAME_STATE) (jm_createGameState_1 this "PLAYING_GAME_STATE"))
    (setf (slot-value this 'f_SHOW_END_RESULT_GAME_STATE) (jm_createGameState_1 this "SHOW_END_RESULT_GAME_STATE"))
    (setf (slot-value this 'f_SHOW_HIGH_SCORE_GAME_STATE) (jm_createGameState_1 this "SHOW_HIGH_SCORE_GAME_STATE"))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_createGameState_1) (defgeneric jm_createGameState_1 (this p1)))
(defmethod jm_createGameState_1 ((this GameStateFactory) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (return-from jreturn (GameState.jnew_2 _name (prog1 (slot-value this 'f_index) (setf (slot-value this 'f_index) (JR.i32 (+ (slot-value this 'f_index) 1)))))))))



