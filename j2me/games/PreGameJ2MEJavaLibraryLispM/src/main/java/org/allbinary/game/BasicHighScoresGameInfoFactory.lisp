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

(defclass BasicHighScoresGameInfoFactory (JObject)
  ((f_MULTI_PLAYER_SERVER :initform nil)
   (f_SINGLE_PLAYER_SERVER :initform nil)))

(defvar BasicHighScoresGameInfoFactory.jcell_SINGLETON :jnone)
(defun BasicHighScoresGameInfoFactory.jstatic_SINGLETON ()
  (when (eq BasicHighScoresGameInfoFactory.jcell_SINGLETON :jnone) (setf BasicHighScoresGameInfoFactory.jcell_SINGLETON (BasicHighScoresGameInfoFactory.jnew_0)))
  BasicHighScoresGameInfoFactory.jcell_SINGLETON)
(defun (setf BasicHighScoresGameInfoFactory.jstatic_SINGLETON) (value) (setf BasicHighScoresGameInfoFactory.jcell_SINGLETON value))

(defun BasicHighScoresGameInfoFactory.jnew_0 ()
  (let ((this (make-instance 'BasicHighScoresGameInfoFactory)))
    (setf (slot-value this 'f_MULTI_PLAYER_SERVER) (GameInfo.jnew_5 (slot-value (GameTypeFactory.jm_getInstance_0) 'f_MULTI_PLAYER) (GameMode.jstatic_SERVER) (slot-value (PlayerTypesFactory.jm_getInstance_0) 'f_PLAYER_TYPE_ONE) 0 0))
    (setf (slot-value this 'f_SINGLE_PLAYER_SERVER) (GameInfo.jnew_5 (slot-value (GameTypeFactory.jm_getInstance_0) 'f_SINGLE_PLAYER) (GameMode.jstatic_SERVER) (slot-value (PlayerTypesFactory.jm_getInstance_0) 'f_PLAYER_TYPE_ONE) 0 0))
    this))

    
(defun BasicHighScoresGameInfoFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicHighScoresGameInfoFactory.jstatic_SINGLETON)))))



