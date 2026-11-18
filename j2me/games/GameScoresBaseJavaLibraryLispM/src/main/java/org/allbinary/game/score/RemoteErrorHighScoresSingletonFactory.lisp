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
;;;; package org.allbinary.game.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RemoteErrorHighScoresSingletonFactory (JObject)
  ())

(defvar RemoteErrorHighScoresSingletonFactory.jcell_SINGLETON :jnone)
(defun RemoteErrorHighScoresSingletonFactory.jstatic_SINGLETON ()
  (when (eq RemoteErrorHighScoresSingletonFactory.jcell_SINGLETON :jnone) (setf RemoteErrorHighScoresSingletonFactory.jcell_SINGLETON (HighScores.jnew_3 (slot-value (CommonStrings.jm_getInstance_0) 'f_LOADING) "Remote High Scores Did Not Load" (slot-value (CommonStrings.jm_getInstance_0) 'f_PERIODS))))
  RemoteErrorHighScoresSingletonFactory.jcell_SINGLETON)
(defun (setf RemoteErrorHighScoresSingletonFactory.jstatic_SINGLETON) (value) (setf RemoteErrorHighScoresSingletonFactory.jcell_SINGLETON value))

(defun RemoteErrorHighScoresSingletonFactory.jnew_0 ()
  (let ((this (make-instance 'RemoteErrorHighScoresSingletonFactory)))
    this))

    
(defun RemoteErrorHighScoresSingletonFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (RemoteErrorHighScoresSingletonFactory.jstatic_SINGLETON)))))



