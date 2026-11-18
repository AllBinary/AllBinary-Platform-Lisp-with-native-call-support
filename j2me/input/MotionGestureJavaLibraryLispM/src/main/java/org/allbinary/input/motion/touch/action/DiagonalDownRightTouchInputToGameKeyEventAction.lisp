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

(defclass DiagonalDownRightTouchInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance :jnone)
(defun DiagonalDownRightTouchInputToGameKeyEventAction.jstatic_instance ()
  (when (eq DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance :jnone) (setf DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance)
(defun (setf DiagonalDownRightTouchInputToGameKeyEventAction.jstatic_instance) (value) (setf DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance value))

    
(defun DiagonalDownRightTouchInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (DiagonalDownRightTouchInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (DiagonalDownRightTouchInputToGameKeyEventAction.jstatic_instance) (DiagonalDownRightTouchInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (DiagonalDownRightTouchInputToGameKeyEventAction.jstatic_instance)))))

    
(defun DiagonalDownRightTouchInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'DiagonalDownRightTouchInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



