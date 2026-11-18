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

(defclass KeyPressesAIFactory (JObject)
  ())

(defun KeyPressesAIFactory.jnew_0 ()
  (let ((this (make-instance 'KeyPressesAIFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_3) (defgeneric jm_getInstance_3 (this p1 p2 p3)))
(defmethod jm_getInstance_3 ((this KeyPressesAIFactory) _hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable this _hashtable _ownerLayerInterface _gameInput))
  (let (_isSingleKeyProcessing)
  (declare (ignorable _isSingleKeyProcessing))
    (block jreturn
        (setf _isSingleKeyProcessing (jm_isSingleKeyProcessing_0 (InputFeatureFactory.jm_getInstance_0)))
        (if _isSingleKeyProcessing
            (progn
            (return-from jreturn (KeyPressesAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)))
            (progn
            (return-from jreturn (MultiKeyPressesAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)))))))



