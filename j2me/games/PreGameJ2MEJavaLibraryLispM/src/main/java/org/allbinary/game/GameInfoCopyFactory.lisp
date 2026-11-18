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

(defclass GameInfoCopyFactory (JObject)
  ())

(defun GameInfoCopyFactory.jnew_0 ()
  (let ((this (make-instance 'GameInfoCopyFactory)))
    this))

    
(defun GameInfoCopyFactory.jm_getInstanceMaxLevel_2 (_gameInfo _maxLevel)
  (declare (ignorable _gameInfo _maxLevel))
  (let ()
    (block jreturn
        (return-from jreturn (GameInfo.jnew_5 (jm_getGameType_0 _gameInfo) (jm_getGameMode_0 _gameInfo) (jm_getPlayerType_0 _gameInfo) _maxLevel (jm_getCurrentLevel_0 _gameInfo))))))

    
(defun GameInfoCopyFactory.jm_getInstance_1 (_gameInfo)
  (declare (ignorable _gameInfo))
  (let ()
    (block jreturn
        (return-from jreturn (GameInfo.jnew_5 (jm_getGameType_0 _gameInfo) (jm_getGameMode_0 _gameInfo) (jm_getPlayerType_0 _gameInfo) (jm_getHighestLevel_0 _gameInfo) (jm_getCurrentLevel_0 _gameInfo))))))



