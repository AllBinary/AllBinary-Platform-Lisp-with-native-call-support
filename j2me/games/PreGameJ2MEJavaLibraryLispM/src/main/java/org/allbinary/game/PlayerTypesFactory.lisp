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

(defclass PlayerTypesFactory (JObject)
  ((f_PLAYER_TYPE_ONE :initform nil)
   (f_PLAYER_TYPE_TWO :initform nil)
   (f_PLAYER_TYPE_THREE :initform nil)))

(defvar PlayerTypesFactory.jcell_SINGLETON :jnone)
(defun PlayerTypesFactory.jstatic_SINGLETON ()
  (when (eq PlayerTypesFactory.jcell_SINGLETON :jnone) (setf PlayerTypesFactory.jcell_SINGLETON (PlayerTypesFactory.jnew_0)))
  PlayerTypesFactory.jcell_SINGLETON)
(defun (setf PlayerTypesFactory.jstatic_SINGLETON) (value) (setf PlayerTypesFactory.jcell_SINGLETON value))

(defun PlayerTypesFactory.jnew_0 ()
  (let ((this (make-instance 'PlayerTypesFactory)))
    (setf (slot-value this 'f_PLAYER_TYPE_ONE) (PlayerType.jnew_2 "Player Type One" 0))
    (setf (slot-value this 'f_PLAYER_TYPE_TWO) (PlayerType.jnew_2 "Player Type Two" 1))
    (setf (slot-value this 'f_PLAYER_TYPE_THREE) (PlayerType.jnew_2 "Player Type Three" 2))
    this))

    
(defun PlayerTypesFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PlayerTypesFactory.jstatic_SINGLETON)))))



