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
;;;; package org.allbinary.game.ag.ai.scroller

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RandomPatrolFlockingFiringAIFactory (JObject)
  ())

(defun RandomPatrolFlockingFiringAIFactory.jnew_0 ()
  (let ((this (make-instance 'RandomPatrolFlockingFiringAIFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_3) (defgeneric jm_getInstance_3 (this p1 p2 p3)))
(defmethod jm_getInstance_3 ((this RandomPatrolFlockingFiringAIFactory) _hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable this _hashtable _ownerLayerInterface _gameInput))
  (let (_artificialIntelligenceInterface)
  (declare (ignorable _artificialIntelligenceInterface))
    (block jreturn
        (setf _artificialIntelligenceInterface (JR.newArray nil 2))
        (setf (aref _artificialIntelligenceInterface 0) (RandomPatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput))
        (setf (aref _artificialIntelligenceInterface 1) (TimedFireAI.jnew_3 1800 _ownerLayerInterface _gameInput))
        (return-from jreturn (ArrayAI.jnew_3 _artificialIntelligenceInterface _ownerLayerInterface _gameInput)))))



