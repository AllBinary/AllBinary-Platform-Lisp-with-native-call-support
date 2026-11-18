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
;;;; package org.allbinary.game.configuration.persistance

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameConfigurationPersistanceSingleton (KeyValuePersistance)
  ())

(defvar GameConfigurationPersistanceSingleton.jcell_GAME_PERSISTANCE :jnone)
(defun GameConfigurationPersistanceSingleton.jstatic_GAME_PERSISTANCE ()
  (when (eq GameConfigurationPersistanceSingleton.jcell_GAME_PERSISTANCE :jnone) (setf GameConfigurationPersistanceSingleton.jcell_GAME_PERSISTANCE (GameConfigurationPersistanceSingleton.jnew_0)))
  GameConfigurationPersistanceSingleton.jcell_GAME_PERSISTANCE)
(defun (setf GameConfigurationPersistanceSingleton.jstatic_GAME_PERSISTANCE) (value) (setf GameConfigurationPersistanceSingleton.jcell_GAME_PERSISTANCE value))

    
(defun GameConfigurationPersistanceSingleton.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameConfigurationPersistanceSingleton.jstatic_GAME_PERSISTANCE)))))

    
(defun GameConfigurationPersistanceSingleton.jnew_0 ()
  (let ((this (make-instance 'GameConfigurationPersistanceSingleton)))
  (let ()
    (block jreturn
        nil))
    this))



