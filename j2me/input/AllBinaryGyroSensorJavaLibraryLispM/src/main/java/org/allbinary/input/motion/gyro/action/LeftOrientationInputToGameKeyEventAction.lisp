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

(defclass LeftOrientationInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar LeftOrientationInputToGameKeyEventAction.jcell_instance :jnone)
(defun LeftOrientationInputToGameKeyEventAction.jstatic_instance ()
  (when (eq LeftOrientationInputToGameKeyEventAction.jcell_instance :jnone) (setf LeftOrientationInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  LeftOrientationInputToGameKeyEventAction.jcell_instance)
(defun (setf LeftOrientationInputToGameKeyEventAction.jstatic_instance) (value) (setf LeftOrientationInputToGameKeyEventAction.jcell_instance value))

    
(defun LeftOrientationInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (LeftOrientationInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (LeftOrientationInputToGameKeyEventAction.jstatic_instance) (LeftOrientationInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (LeftOrientationInputToGameKeyEventAction.jstatic_instance)))))

    
(defun LeftOrientationInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'LeftOrientationInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



