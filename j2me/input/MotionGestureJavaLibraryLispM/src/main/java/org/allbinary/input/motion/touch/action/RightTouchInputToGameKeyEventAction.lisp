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
;;;; package org.allbinary.input.motion.touch.action

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RightTouchInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar RightTouchInputToGameKeyEventAction.jcell_instance :jnone)
(defun RightTouchInputToGameKeyEventAction.jstatic_instance ()
  (when (eq RightTouchInputToGameKeyEventAction.jcell_instance :jnone) (setf RightTouchInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  RightTouchInputToGameKeyEventAction.jcell_instance)
(defun (setf RightTouchInputToGameKeyEventAction.jstatic_instance) (value) (setf RightTouchInputToGameKeyEventAction.jcell_instance value))

    
(defun RightTouchInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (RightTouchInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (RightTouchInputToGameKeyEventAction.jstatic_instance) (RightTouchInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (RightTouchInputToGameKeyEventAction.jstatic_instance)))))

    
(defun RightTouchInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'RightTouchInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



