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

(defclass RandomPatrolAIFactory (JObject)
  ())

(defun RandomPatrolAIFactory.jnew_0 ()
  (let ((this (make-instance 'RandomPatrolAIFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_3) (defgeneric jm_getInstance_3 (this p1 p2 p3)))
(defmethod jm_getInstance_3 ((this RandomPatrolAIFactory) _hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable this _hashtable _ownerLayerInterface _gameInput))
  (let ()
    (block jreturn
        (return-from jreturn (RandomPatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)))))



