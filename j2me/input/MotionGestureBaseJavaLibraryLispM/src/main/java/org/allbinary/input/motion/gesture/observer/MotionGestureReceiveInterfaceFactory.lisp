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
;;;; package org.allbinary.input.motion.gesture.observer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MotionGestureReceiveInterfaceFactory (JObject)
  ())

(defun MotionGestureReceiveInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'MotionGestureReceiveInterfaceFactory)))
    this))

    
(defun MotionGestureReceiveInterfaceFactory.jm_getInstance_0 ()
  (let (_configuration)
  (declare (ignorable _configuration))
    (block jreturn
        (setf _configuration (MotionGestureConfigurationFactory.jm_getInstance_0))
        (if (not (jm_isExecutingActionsAllowed_0 _configuration))
            (progn
            (return-from jreturn (NullCompleteMotionGestureReceiver.jnew_0)))
            (progn
            (return-from jreturn (ResolveCompleteMotionGestureListener.jnew_0)))))))



