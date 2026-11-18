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

(defclass GamePersistanceSingleton (KeyValuePersistance)
  ())

(defvar GamePersistanceSingleton.jcell_GAME_PERSISTANCE :jnone)
(defun GamePersistanceSingleton.jstatic_GAME_PERSISTANCE ()
  (when (eq GamePersistanceSingleton.jcell_GAME_PERSISTANCE :jnone) (setf GamePersistanceSingleton.jcell_GAME_PERSISTANCE (GamePersistanceSingleton.jnew_0)))
  GamePersistanceSingleton.jcell_GAME_PERSISTANCE)
(defun (setf GamePersistanceSingleton.jstatic_GAME_PERSISTANCE) (value) (setf GamePersistanceSingleton.jcell_GAME_PERSISTANCE value))

    
(defun GamePersistanceSingleton.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GamePersistanceSingleton.jstatic_GAME_PERSISTANCE)))))

    
(defun GamePersistanceSingleton.jnew_0 ()
  (let ((this (make-instance 'GamePersistanceSingleton)))
  (let ()
    (block jreturn
        nil))
    this))



