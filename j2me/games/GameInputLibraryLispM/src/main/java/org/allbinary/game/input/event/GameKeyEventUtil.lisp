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
;;;; package org.allbinary.game.input.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameKeyEventUtil (JObject)
  ())

    
(defun GameKeyEventUtil.jnew_0 ()
  (let ((this (make-instance 'GameKeyEventUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(defun GameKeyEventUtil.jm_getKey_1 (_anyType)
  (declare (ignorable _anyType))
  (let (_gameKeyEvent)
  (declare (ignorable _gameKeyEvent))
    (block jreturn
        (setf _gameKeyEvent _anyType)
        (return-from jreturn (jm_getKey_0 _gameKeyEvent)))))



