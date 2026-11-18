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

(defclass GameDifficultyFactory (JObject)
  ((f_level :initform 0)))

(defvar GameDifficultyFactory.jcell_instance :jnone)
(defun GameDifficultyFactory.jstatic_instance ()
  (when (eq GameDifficultyFactory.jcell_instance :jnone) (setf GameDifficultyFactory.jcell_instance (GameDifficultyFactory.jnew_0)))
  GameDifficultyFactory.jcell_instance)
(defun (setf GameDifficultyFactory.jstatic_instance) (value) (setf GameDifficultyFactory.jcell_instance value))

(defun GameDifficultyFactory.jnew_0 ()
  (let ((this (make-instance 'GameDifficultyFactory)))
    (setf (slot-value this 'f_level) 0)
    this))

    
(defun GameDifficultyFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameDifficultyFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_setLevel_1) (defgeneric jm_setLevel_1 (this p1)))
(defmethod jm_setLevel_1 ((this GameDifficultyFactory) _level)
  (declare (ignorable this _level))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_level) _level))))

    
(unless (fboundp 'jm_getLevel_0) (defgeneric jm_getLevel_0 (this)))
(defmethod jm_getLevel_0 ((this GameDifficultyFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_level)))))



