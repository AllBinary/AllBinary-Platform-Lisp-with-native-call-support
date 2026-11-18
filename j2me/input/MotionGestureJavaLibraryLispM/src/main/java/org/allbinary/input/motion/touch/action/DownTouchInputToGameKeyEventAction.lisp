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

(defclass DownTouchInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar DownTouchInputToGameKeyEventAction.jcell_instance :jnone)
(defun DownTouchInputToGameKeyEventAction.jstatic_instance ()
  (when (eq DownTouchInputToGameKeyEventAction.jcell_instance :jnone) (setf DownTouchInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  DownTouchInputToGameKeyEventAction.jcell_instance)
(defun (setf DownTouchInputToGameKeyEventAction.jstatic_instance) (value) (setf DownTouchInputToGameKeyEventAction.jcell_instance value))

    
(defun DownTouchInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (DownTouchInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (DownTouchInputToGameKeyEventAction.jstatic_instance) (DownTouchInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (DownTouchInputToGameKeyEventAction.jstatic_instance)))))

    
(defun DownTouchInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'DownTouchInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



