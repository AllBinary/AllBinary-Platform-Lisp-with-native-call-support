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

(defclass HighScoreCommandsFactory (HighScoreCommandsBaseFactory)
  ())

(defvar HighScoreCommandsFactory.jcell_instance :jnone)
(defun HighScoreCommandsFactory.jstatic_instance ()
  (when (eq HighScoreCommandsFactory.jcell_instance :jnone) (setf HighScoreCommandsFactory.jcell_instance (HighScoreCommandsFactory.jnew_0)))
  HighScoreCommandsFactory.jcell_instance)
(defun (setf HighScoreCommandsFactory.jstatic_instance) (value) (setf HighScoreCommandsFactory.jcell_instance value))

    
(defun HighScoreCommandsFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (HighScoreCommandsFactory.jstatic_instance)))))

    
(defun HighScoreCommandsFactory.jnew_0 ()
  (let ((this (make-instance 'HighScoreCommandsFactory)))
  (let ()
    (block jreturn
        nil))
    this))



