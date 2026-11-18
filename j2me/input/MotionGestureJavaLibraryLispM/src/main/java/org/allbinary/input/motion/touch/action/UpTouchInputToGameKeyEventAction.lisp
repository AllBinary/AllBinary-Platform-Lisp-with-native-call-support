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

(defclass UpTouchInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar UpTouchInputToGameKeyEventAction.jcell_instance :jnone)
(defun UpTouchInputToGameKeyEventAction.jstatic_instance ()
  (when (eq UpTouchInputToGameKeyEventAction.jcell_instance :jnone) (setf UpTouchInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  UpTouchInputToGameKeyEventAction.jcell_instance)
(defun (setf UpTouchInputToGameKeyEventAction.jstatic_instance) (value) (setf UpTouchInputToGameKeyEventAction.jcell_instance value))

    
(defun UpTouchInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (UpTouchInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (UpTouchInputToGameKeyEventAction.jstatic_instance) (UpTouchInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (UpTouchInputToGameKeyEventAction.jstatic_instance)))))

    
(defun UpTouchInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'UpTouchInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



