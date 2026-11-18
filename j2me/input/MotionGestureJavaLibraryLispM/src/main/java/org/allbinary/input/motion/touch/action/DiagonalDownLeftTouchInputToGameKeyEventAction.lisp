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

(defclass DiagonalDownLeftTouchInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar DiagonalDownLeftTouchInputToGameKeyEventAction.jcell_instance :jnone)
(defun DiagonalDownLeftTouchInputToGameKeyEventAction.jstatic_instance ()
  (when (eq DiagonalDownLeftTouchInputToGameKeyEventAction.jcell_instance :jnone) (setf DiagonalDownLeftTouchInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  DiagonalDownLeftTouchInputToGameKeyEventAction.jcell_instance)
(defun (setf DiagonalDownLeftTouchInputToGameKeyEventAction.jstatic_instance) (value) (setf DiagonalDownLeftTouchInputToGameKeyEventAction.jcell_instance value))

    
(defun DiagonalDownLeftTouchInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (DiagonalDownLeftTouchInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (DiagonalDownLeftTouchInputToGameKeyEventAction.jstatic_instance) (DiagonalDownLeftTouchInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (DiagonalDownLeftTouchInputToGameKeyEventAction.jstatic_instance)))))

    
(defun DiagonalDownLeftTouchInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'DiagonalDownLeftTouchInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



