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
;;;; package org.allbinary.game.state

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameStateCompositeInterface (JObject)
  ())

(defun GameStateCompositeInterface.jnew_0 ()
  (let ((this (make-instance 'GameStateCompositeInterface)))
    this))

    
(unless (fboundp 'jm_setGameState_1) (defgeneric jm_setGameState_1 (this p1)))
(defmethod jm_setGameState_1 ((this GameStateCompositeInterface) _gameState)
  (declare (ignorable this _gameState))
  (error (JR.newException "AbstractMethodError" "setGameState")))

    
(unless (fboundp 'jm_getGameState_0) (defgeneric jm_getGameState_0 (this)))
(defmethod jm_getGameState_0 ((this GameStateCompositeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getGameState")))



