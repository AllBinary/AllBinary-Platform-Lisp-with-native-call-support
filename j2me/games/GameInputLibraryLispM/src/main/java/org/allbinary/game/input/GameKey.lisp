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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameKey (Input)
  ())

(defvar GameKey.jcell_NULL_GAME_KEY :jnone)
(defun GameKey.jstatic_NULL_GAME_KEY ()
  (when (eq GameKey.jcell_NULL_GAME_KEY :jnone) (setf GameKey.jcell_NULL_GAME_KEY (GameKey.jnew_2 (JR.i32 (- 1)) (slot-value (StringUtil.jm_getInstance_0) 'f_NULL_STRING))))
  GameKey.jcell_NULL_GAME_KEY)
(defun (setf GameKey.jstatic_NULL_GAME_KEY) (value) (setf GameKey.jcell_NULL_GAME_KEY value))

    
(defun GameKey.jnew_2 (_key _name)
  (declare (ignorable _key _name))
  (let ((this (make-instance 'GameKey)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this GameKey))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "GameKey ") (call-next-method this)))))))



