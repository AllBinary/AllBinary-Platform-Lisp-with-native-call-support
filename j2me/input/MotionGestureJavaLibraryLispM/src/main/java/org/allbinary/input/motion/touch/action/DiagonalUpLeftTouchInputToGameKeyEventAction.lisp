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

(defclass DiagonalUpLeftTouchInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance :jnone)
(defun DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_instance ()
  (when (eq DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance :jnone) (setf DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance)
(defun (setf DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_instance) (value) (setf DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance value))

    
(defun DiagonalUpLeftTouchInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_instance) (DiagonalUpLeftTouchInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_instance)))))

    
(defun DiagonalUpLeftTouchInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'DiagonalUpLeftTouchInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



