;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.game.layer.special

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SpecialGameInputFactory (JObject)
  ())

(defvar SpecialGameInputFactory.jcell_NO_SPECIAL_GAME_INPUT :jnone)
(defun SpecialGameInputFactory.jstatic_NO_SPECIAL_GAME_INPUT ()
  (when (eq SpecialGameInputFactory.jcell_NO_SPECIAL_GAME_INPUT :jnone) (setf SpecialGameInputFactory.jcell_NO_SPECIAL_GAME_INPUT (SpecialGameInput.jnew_0)))
  SpecialGameInputFactory.jcell_NO_SPECIAL_GAME_INPUT)
(defun (setf SpecialGameInputFactory.jstatic_NO_SPECIAL_GAME_INPUT) (value) (setf SpecialGameInputFactory.jcell_NO_SPECIAL_GAME_INPUT value))

(defun SpecialGameInputFactory.jnew_0 ()
  (let ((this (make-instance 'SpecialGameInputFactory)))
    this))



