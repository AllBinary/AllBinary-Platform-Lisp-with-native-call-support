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

(defclass RightOrientationInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar RightOrientationInputToGameKeyEventAction.jcell_instance :jnone)
(defun RightOrientationInputToGameKeyEventAction.jstatic_instance ()
  (when (eq RightOrientationInputToGameKeyEventAction.jcell_instance :jnone) (setf RightOrientationInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  RightOrientationInputToGameKeyEventAction.jcell_instance)
(defun (setf RightOrientationInputToGameKeyEventAction.jstatic_instance) (value) (setf RightOrientationInputToGameKeyEventAction.jcell_instance value))

    
(defun RightOrientationInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (RightOrientationInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (RightOrientationInputToGameKeyEventAction.jstatic_instance) (RightOrientationInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (RightOrientationInputToGameKeyEventAction.jstatic_instance)))))

    
(defun RightOrientationInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'RightOrientationInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



