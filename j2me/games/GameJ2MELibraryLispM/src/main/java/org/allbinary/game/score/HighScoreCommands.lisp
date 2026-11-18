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

(defclass HighScoreCommands (JObject)
  ((f_DISPLAY :initform nil)
   (f_PERSONAL :initform nil)
   (f_WORLD :initform nil)))

(defvar HighScoreCommands.jcell_instance :jnone)
(defun HighScoreCommands.jstatic_instance ()
  (when (eq HighScoreCommands.jcell_instance :jnone) (setf HighScoreCommands.jcell_instance (HighScoreCommands.jnew_0)))
  HighScoreCommands.jcell_instance)
(defun (setf HighScoreCommands.jstatic_instance) (value) (setf HighScoreCommands.jcell_instance value))

(defun HighScoreCommands.jnew_0 ()
  (let ((this (make-instance 'HighScoreCommands)))
    (setf (slot-value this 'f_DISPLAY) (Command.jnew_4 "Scores" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_PERSONAL) (Command.jnew_4 "Personal" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_WORLD) (Command.jnew_4 "World" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    this))

    
(defun HighScoreCommands.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (HighScoreCommands.jstatic_instance)))))



