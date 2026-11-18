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
;;;; package org.allbinary.input.motion.gyro.action

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RollLeftOrientationInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar RollLeftOrientationInputToGameKeyEventAction.jcell_instance :jnone)
(defun RollLeftOrientationInputToGameKeyEventAction.jstatic_instance ()
  (when (eq RollLeftOrientationInputToGameKeyEventAction.jcell_instance :jnone) (setf RollLeftOrientationInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  RollLeftOrientationInputToGameKeyEventAction.jcell_instance)
(defun (setf RollLeftOrientationInputToGameKeyEventAction.jstatic_instance) (value) (setf RollLeftOrientationInputToGameKeyEventAction.jcell_instance value))

    
(defun RollLeftOrientationInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (RollLeftOrientationInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (RollLeftOrientationInputToGameKeyEventAction.jstatic_instance) (RollLeftOrientationInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (RollLeftOrientationInputToGameKeyEventAction.jstatic_instance)))))

    
(defun RollLeftOrientationInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'RollLeftOrientationInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



