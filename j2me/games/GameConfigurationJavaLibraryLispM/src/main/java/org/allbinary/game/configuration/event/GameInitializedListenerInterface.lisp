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
;;;; package org.allbinary.game.configuration.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameInitializedListenerInterface (JObject)
  ())

(defun GameInitializedListenerInterface.jnew_0 ()
  (let ((this (make-instance 'GameInitializedListenerInterface)))
    this))

    
(unless (fboundp 'jm_onGameInitialized_1) (defgeneric jm_onGameInitialized_1 (this p1)))
(defmethod jm_onGameInitialized_1 ((this GameInitializedListenerInterface) _gameInitializedEvent)
  (declare (ignorable this _gameInitializedEvent))
  (error (JR.newException "AbstractMethodError" "onGameInitialized")))



