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
;;;; package org.allbinary.game.configuration.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameInitializedEventHandler (BasicEventHandler)
  ())

(defvar GameInitializedEventHandler.jcell_gameKeyEventHandler :jnone)
(defun GameInitializedEventHandler.jstatic_gameKeyEventHandler ()
  (when (eq GameInitializedEventHandler.jcell_gameKeyEventHandler :jnone) (setf GameInitializedEventHandler.jcell_gameKeyEventHandler (GameInitializedEventHandler.jnew_0)))
  GameInitializedEventHandler.jcell_gameKeyEventHandler)
(defun (setf GameInitializedEventHandler.jstatic_gameKeyEventHandler) (value) (setf GameInitializedEventHandler.jcell_gameKeyEventHandler value))

    
(defun GameInitializedEventHandler.jnew_0 ()
  (let ((this (make-instance 'GameInitializedEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(defun GameInitializedEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameInitializedEventHandler.jstatic_gameKeyEventHandler)))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this GameInitializedEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_gameInitializedListenerInterface)
  (declare (ignorable _gameInitializedListenerInterface))
    (block jreturn
        (setf _gameInitializedListenerInterface _eventListenerInterface)
        (jm_onGameInitialized_1 _gameInitializedListenerInterface _eventObject))))



