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

(defclass DiagonalUpRightTouchInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar DiagonalUpRightTouchInputToGameKeyEventAction.jcell_instance :jnone)
(defun DiagonalUpRightTouchInputToGameKeyEventAction.jstatic_instance ()
  (when (eq DiagonalUpRightTouchInputToGameKeyEventAction.jcell_instance :jnone) (setf DiagonalUpRightTouchInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  DiagonalUpRightTouchInputToGameKeyEventAction.jcell_instance)
(defun (setf DiagonalUpRightTouchInputToGameKeyEventAction.jstatic_instance) (value) (setf DiagonalUpRightTouchInputToGameKeyEventAction.jcell_instance value))

    
(defun DiagonalUpRightTouchInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (DiagonalUpRightTouchInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (DiagonalUpRightTouchInputToGameKeyEventAction.jstatic_instance) (DiagonalUpRightTouchInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (DiagonalUpRightTouchInputToGameKeyEventAction.jstatic_instance)))))

    
(defun DiagonalUpRightTouchInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'DiagonalUpRightTouchInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



