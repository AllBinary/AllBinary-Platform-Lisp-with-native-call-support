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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullPlayerGameInputComposite (JObject)
  ())

(defvar NullPlayerGameInputComposite.jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE :jnone)
(defun NullPlayerGameInputComposite.jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE ()
  (when (eq NullPlayerGameInputComposite.jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE :jnone) (setf NullPlayerGameInputComposite.jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE (NullPlayerGameInputComposite.jnew_0)))
  NullPlayerGameInputComposite.jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE)
(defun (setf NullPlayerGameInputComposite.jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE) (value) (setf NullPlayerGameInputComposite.jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE value))

(defun NullPlayerGameInputComposite.jnew_0 ()
  (let ((this (make-instance 'NullPlayerGameInputComposite)))
    this))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this NullPlayerGameInputComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_processInput_1) (defgeneric jm_processInput_1 (this p1)))
(defmethod jm_processInput_1 ((this NullPlayerGameInputComposite) _layerManager)
  (declare (ignorable this _layerManager))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_initInputProcessors_0) (defgeneric jm_initInputProcessors_0 (this)))
(defmethod jm_initInputProcessors_0 ((this NullPlayerGameInputComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getPlayerGameInput_0) (defgeneric jm_getPlayerGameInput_0 (this)))
(defmethod jm_getPlayerGameInput_0 ((this NullPlayerGameInputComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (NoPlayerGameInput.jm_getInstance_0)))))



