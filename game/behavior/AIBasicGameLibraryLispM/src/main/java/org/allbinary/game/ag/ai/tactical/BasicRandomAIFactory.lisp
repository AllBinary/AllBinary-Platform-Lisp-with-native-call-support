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
;;;; package org.allbinary.game.ag.ai.tactical

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicRandomAIFactory (JObject)
  ())

(defun BasicRandomAIFactory.jnew_0 ()
  (let ((this (make-instance 'BasicRandomAIFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_3) (defgeneric jm_getInstance_3 (this p1 p2 p3)))
(defmethod jm_getInstance_3 ((this BasicRandomAIFactory) _hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable this _hashtable _ownerLayerInterface _gameInput))
  (let (_visitor _inputProbability)
  (declare (ignorable _visitor _inputProbability))
    (block jreturn
        (setf _visitor (jm_get_1 _hashtable (BasicAI.jstatic_AI_VISITOR)))
        (if (null _visitor)
            (progn
            (error (JR.newException "Exception" "No Visitor Provided"))))
        (setf _inputProbability (jm_get_1 _hashtable (InputProbability.jstatic_INPUT_PROBABILITY)))
        (return-from jreturn (BasicRandomAI.jnew_4 _ownerLayerInterface _gameInput _inputProbability _visitor)))))



