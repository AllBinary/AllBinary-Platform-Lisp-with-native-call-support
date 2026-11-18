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

(defclass GameFeatureEventHandler (BasicEventHandler)
  ())

(defvar GameFeatureEventHandler.jcell_gameKeyEventHandler :jnone)
(defun GameFeatureEventHandler.jstatic_gameKeyEventHandler ()
  (when (eq GameFeatureEventHandler.jcell_gameKeyEventHandler :jnone) (setf GameFeatureEventHandler.jcell_gameKeyEventHandler (GameFeatureEventHandler.jnew_0)))
  GameFeatureEventHandler.jcell_gameKeyEventHandler)
(defun (setf GameFeatureEventHandler.jstatic_gameKeyEventHandler) (value) (setf GameFeatureEventHandler.jcell_gameKeyEventHandler value))

    
(defun GameFeatureEventHandler.jnew_0 ()
  (let ((this (make-instance 'GameFeatureEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(defun GameFeatureEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameFeatureEventHandler.jstatic_gameKeyEventHandler)))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this GameFeatureEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_gameFeatureListenerInterface)
  (declare (ignorable _gameFeatureListenerInterface))
    (block jreturn
        (setf _gameFeatureListenerInterface _eventListenerInterface)
        (jm_onGameFeatureChange_1 _gameFeatureListenerInterface _eventObject))))



