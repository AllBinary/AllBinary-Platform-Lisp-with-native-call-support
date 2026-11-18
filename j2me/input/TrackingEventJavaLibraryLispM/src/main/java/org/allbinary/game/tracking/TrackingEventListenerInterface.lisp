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
;;;; package org.allbinary.game.tracking

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TrackingEventListenerInterface (JObject)
  ())

(defun TrackingEventListenerInterface.jnew_0 ()
  (let ((this (make-instance 'TrackingEventListenerInterface)))
    this))

    
(unless (fboundp 'jm_onMovement_1) (defgeneric jm_onMovement_1 (this p1)))
(defmethod jm_onMovement_1 ((this TrackingEventListenerInterface) _trackingEvent)
  (declare (ignorable this _trackingEvent))
  (error (JR.newException "AbstractMethodError" "onMovement")))



