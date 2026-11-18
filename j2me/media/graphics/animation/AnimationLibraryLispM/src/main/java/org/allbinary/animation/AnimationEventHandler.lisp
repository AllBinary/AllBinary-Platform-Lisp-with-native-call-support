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
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnimationEventHandler (BasicEventHandler)
  ())

(defvar AnimationEventHandler.jcell_eventHandler :jnone)
(defun AnimationEventHandler.jstatic_eventHandler ()
  (when (eq AnimationEventHandler.jcell_eventHandler :jnone) (setf AnimationEventHandler.jcell_eventHandler (AnimationEventHandler.jnew_0)))
  AnimationEventHandler.jcell_eventHandler)
(defun (setf AnimationEventHandler.jstatic_eventHandler) (value) (setf AnimationEventHandler.jcell_eventHandler value))

    
(defun AnimationEventHandler.jnew_0 ()
  (let ((this (make-instance 'AnimationEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(defun AnimationEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AnimationEventHandler.jstatic_eventHandler)))))



