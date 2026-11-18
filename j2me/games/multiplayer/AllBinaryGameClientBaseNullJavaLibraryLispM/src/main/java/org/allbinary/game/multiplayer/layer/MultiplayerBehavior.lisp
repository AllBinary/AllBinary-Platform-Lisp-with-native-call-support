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
;;;; package org.allbinary.game.multiplayer.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MultiplayerBehavior (JObject)
  ())

(defvar MultiplayerBehavior.jcell_NULL_MULTIPLAYER_BEHAVIOR :jnone)
(defun MultiplayerBehavior.jstatic_NULL_MULTIPLAYER_BEHAVIOR ()
  (when (eq MultiplayerBehavior.jcell_NULL_MULTIPLAYER_BEHAVIOR :jnone) (setf MultiplayerBehavior.jcell_NULL_MULTIPLAYER_BEHAVIOR (MultiplayerBehavior.jnew_1 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))))
  MultiplayerBehavior.jcell_NULL_MULTIPLAYER_BEHAVIOR)
(defun (setf MultiplayerBehavior.jstatic_NULL_MULTIPLAYER_BEHAVIOR) (value) (setf MultiplayerBehavior.jcell_NULL_MULTIPLAYER_BEHAVIOR value))

    
(defun MultiplayerBehavior.jnew_1 (_username)
  (declare (ignorable _username))
  (let ((this (make-instance 'MultiplayerBehavior)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_startTick_0) (defgeneric jm_startTick_0 (this)))
(defmethod jm_startTick_0 ((this MultiplayerBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_endTick_0) (defgeneric jm_endTick_0 (this)))
(defmethod jm_endTick_0 ((this MultiplayerBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getApproximateElapsed_0) (defgeneric jm_getApproximateElapsed_0 (this)))
(defmethod jm_getApproximateElapsed_0 ((this MultiplayerBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



