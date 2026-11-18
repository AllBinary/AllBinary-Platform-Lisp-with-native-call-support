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

(defclass GameFeatureListenerInterface (JObject)
  ())

(defun GameFeatureListenerInterface.jnew_0 ()
  (let ((this (make-instance 'GameFeatureListenerInterface)))
    this))

    
(unless (fboundp 'jm_onGameFeatureChange_1) (defgeneric jm_onGameFeatureChange_1 (this p1)))
(defmethod jm_onGameFeatureChange_1 ((this GameFeatureListenerInterface) _gameFeatureEvent)
  (declare (ignorable this _gameFeatureEvent))
  (error (JR.newException "AbstractMethodError" "onGameFeatureChange")))



