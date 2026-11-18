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

(defclass RollRightOrientationInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar RollRightOrientationInputToGameKeyEventAction.jcell_instance :jnone)
(defun RollRightOrientationInputToGameKeyEventAction.jstatic_instance ()
  (when (eq RollRightOrientationInputToGameKeyEventAction.jcell_instance :jnone) (setf RollRightOrientationInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  RollRightOrientationInputToGameKeyEventAction.jcell_instance)
(defun (setf RollRightOrientationInputToGameKeyEventAction.jstatic_instance) (value) (setf RollRightOrientationInputToGameKeyEventAction.jcell_instance value))

    
(defun RollRightOrientationInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (RollRightOrientationInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (RollRightOrientationInputToGameKeyEventAction.jstatic_instance) (RollRightOrientationInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (RollRightOrientationInputToGameKeyEventAction.jstatic_instance)))))

    
(defun RollRightOrientationInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'RollRightOrientationInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



