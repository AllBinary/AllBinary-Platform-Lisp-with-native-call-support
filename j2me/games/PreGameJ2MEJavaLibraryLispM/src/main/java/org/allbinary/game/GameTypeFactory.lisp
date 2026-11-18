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

(defclass GameTypeFactory (JObject)
  ((f_NULL_GAME_TYPE_ARRAY :initform nil)
   (f_NONE :initform nil)
   (f_SINGLE_PLAYER :initform nil)
   (f_MULTI_PLAYER :initform nil)
   (f_BOT :initform nil)))

(defvar GameTypeFactory.jcell_instance :jnone)
(defun GameTypeFactory.jstatic_instance ()
  (when (eq GameTypeFactory.jcell_instance :jnone) (setf GameTypeFactory.jcell_instance (GameTypeFactory.jnew_0)))
  GameTypeFactory.jcell_instance)
(defun (setf GameTypeFactory.jstatic_instance) (value) (setf GameTypeFactory.jcell_instance value))

(defun GameTypeFactory.jnew_0 ()
  (let ((this (make-instance 'GameTypeFactory)))
    (setf (slot-value this 'f_NULL_GAME_TYPE_ARRAY) (JR.newArray nil 0))
    (setf (slot-value this 'f_NONE) (GameType.jnew_1 (slot-value (StringUtil.jm_getInstance_0) 'f_NULL_STRING)))
    (setf (slot-value this 'f_SINGLE_PLAYER) (GameType.jnew_1 "Single Player"))
    (setf (slot-value this 'f_MULTI_PLAYER) (GameType.jnew_1 "Multi Player"))
    (setf (slot-value this 'f_BOT) (GameType.jnew_1 "Artificial Player"))
    this))

    
(defun GameTypeFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameTypeFactory.jstatic_instance)))))



