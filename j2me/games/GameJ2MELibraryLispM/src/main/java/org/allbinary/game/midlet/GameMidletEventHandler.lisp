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
;;;; package org.allbinary.game.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameMidletEventHandler (BasicEventHandler)
  ())

(defvar GameMidletEventHandler.jcell_gameKeyEventHandler :jnone)
(defun GameMidletEventHandler.jstatic_gameKeyEventHandler ()
  (when (eq GameMidletEventHandler.jcell_gameKeyEventHandler :jnone) (setf GameMidletEventHandler.jcell_gameKeyEventHandler (GameMidletEventHandler.jnew_0)))
  GameMidletEventHandler.jcell_gameKeyEventHandler)
(defun (setf GameMidletEventHandler.jstatic_gameKeyEventHandler) (value) (setf GameMidletEventHandler.jcell_gameKeyEventHandler value))

    
(defun GameMidletEventHandler.jnew_0 ()
  (let ((this (make-instance 'GameMidletEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(defun GameMidletEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameMidletEventHandler.jstatic_gameKeyEventHandler)))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this GameMidletEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_gameMidletEventListener)
  (declare (ignorable _gameMidletEventListener))
    (block jreturn
        (setf _gameMidletEventListener _eventListenerInterface)
        (jm_onGameEnd_1 _gameMidletEventListener _eventObject))))



