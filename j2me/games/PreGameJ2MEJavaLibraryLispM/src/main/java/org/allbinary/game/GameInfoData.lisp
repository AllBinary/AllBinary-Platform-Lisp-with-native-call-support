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

(defclass GameInfoData (JObject)
  ((f_GAME_TYPE :initform nil)
   (f_GAME_MODE :initform nil)
   (f_PLAYER_TYPE :initform nil)
   (f_HIGHEST_LEVEL :initform nil)
   (f_CURRENT_LEVEL :initform nil)
   (f_SOFTWARE_INFORMATION :initform nil)))

(defvar GameInfoData.jcell_instance :jnone)
(defun GameInfoData.jstatic_instance ()
  (when (eq GameInfoData.jcell_instance :jnone) (setf GameInfoData.jcell_instance (GameInfoData.jnew_0)))
  GameInfoData.jcell_instance)
(defun (setf GameInfoData.jstatic_instance) (value) (setf GameInfoData.jcell_instance value))

    
(defun GameInfoData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameInfoData.jstatic_instance)))))

    
(defun GameInfoData.jnew_0 ()
  (let ((this (make-instance 'GameInfoData)))
    (setf (slot-value this 'f_GAME_TYPE) "GAME_TYPE")
    (setf (slot-value this 'f_GAME_MODE) "GAME_MODE")
    (setf (slot-value this 'f_PLAYER_TYPE) "PLAYER_TYPE")
    (setf (slot-value this 'f_HIGHEST_LEVEL) "HIGHEST_LEVEL")
    (setf (slot-value this 'f_CURRENT_LEVEL) "CURRENT_LEVEL")
    (setf (slot-value this 'f_SOFTWARE_INFORMATION) "SOFTWARE_INFORMATION")
  (let ()
    (block jreturn nil))
    this))



