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

(defclass TrackingEventFactory (JObject)
  ())

    
(defun TrackingEventFactory.jnew_0 ()
  (let ((this (make-instance 'TrackingEventFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this TrackingEventFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (TrackingEvent.jnew_1 (TrackingEventHandler.jm_getInstance_0))))))



