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
;;;; package org.allbinary.game.ag.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DiveAndDirectionalTrackingAIFactory (JObject)
  ())

(defun DiveAndDirectionalTrackingAIFactory.jnew_0 ()
  (let ((this (make-instance 'DiveAndDirectionalTrackingAIFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_3) (defgeneric jm_getInstance_3 (this p1 p2 p3)))
(defmethod jm_getInstance_3 ((this DiveAndDirectionalTrackingAIFactory) _hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable this _hashtable _ownerLayerInterface _gameInput))
  (let (_visitorCanBeNull _hashtable2 _artificialIntelligenceInterface)
  (declare (ignorable _visitorCanBeNull _hashtable2 _artificialIntelligenceInterface))
    (block jreturn
        (setf _visitorCanBeNull (jm_get_1 _hashtable (BasicAI.jstatic_AI_VISITOR)))
        (if (null _visitorCanBeNull)
            (progn
            (setf _visitorCanBeNull (ThrustAIVisitorFactory.jm_getInstance_0))))
        (setf _hashtable2 (jm_getInstance_0 (BasicProbabilityAIDataFactory.jnew_0)))
        (jm_put_2 _hashtable2 (BasicAI.jstatic_AI_VISITOR) (LastKeyAIVisitorFactory.jm_getInstance_0))
        (setf _artificialIntelligenceInterface (jm_getInstance_3 (BasicRandomAIFactory.jnew_0) _hashtable2 _ownerLayerInterface _gameInput))
        (return-from jreturn (DiveAndDirectionalTrackingAI.jnew_4 _ownerLayerInterface _artificialIntelligenceInterface _gameInput _visitorCanBeNull)))))



