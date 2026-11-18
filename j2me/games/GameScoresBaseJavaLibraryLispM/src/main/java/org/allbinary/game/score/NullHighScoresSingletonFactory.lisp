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

(defclass NullHighScoresSingletonFactory (JObject)
  ())

(defvar NullHighScoresSingletonFactory.jcell_SINGLETON :jnone)
(defun NullHighScoresSingletonFactory.jstatic_SINGLETON ()
  (when (eq NullHighScoresSingletonFactory.jcell_SINGLETON :jnone) (setf NullHighScoresSingletonFactory.jcell_SINGLETON (HighScores.jnew_3 (slot-value (CommonStrings.jm_getInstance_0) 'f_LOADING) "High Scores Not Loaded" (slot-value (CommonStrings.jm_getInstance_0) 'f_PERIODS))))
  NullHighScoresSingletonFactory.jcell_SINGLETON)
(defun (setf NullHighScoresSingletonFactory.jstatic_SINGLETON) (value) (setf NullHighScoresSingletonFactory.jcell_SINGLETON value))

(defun NullHighScoresSingletonFactory.jnew_0 ()
  (let ((this (make-instance 'NullHighScoresSingletonFactory)))
    this))

    
(defun NullHighScoresSingletonFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullHighScoresSingletonFactory.jstatic_SINGLETON)))))



