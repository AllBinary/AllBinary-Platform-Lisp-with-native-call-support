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

(defclass LeftTouchInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar LeftTouchInputToGameKeyEventAction.jcell_instance :jnone)
(defun LeftTouchInputToGameKeyEventAction.jstatic_instance ()
  (when (eq LeftTouchInputToGameKeyEventAction.jcell_instance :jnone) (setf LeftTouchInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  LeftTouchInputToGameKeyEventAction.jcell_instance)
(defun (setf LeftTouchInputToGameKeyEventAction.jstatic_instance) (value) (setf LeftTouchInputToGameKeyEventAction.jcell_instance value))

    
(defun LeftTouchInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (LeftTouchInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (LeftTouchInputToGameKeyEventAction.jstatic_instance) (LeftTouchInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (LeftTouchInputToGameKeyEventAction.jstatic_instance)))))

    
(defun LeftTouchInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'LeftTouchInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



