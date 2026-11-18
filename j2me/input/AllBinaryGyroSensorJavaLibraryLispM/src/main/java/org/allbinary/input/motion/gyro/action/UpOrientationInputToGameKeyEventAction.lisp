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

(defclass UpOrientationInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar UpOrientationInputToGameKeyEventAction.jcell_instance :jnone)
(defun UpOrientationInputToGameKeyEventAction.jstatic_instance ()
  (when (eq UpOrientationInputToGameKeyEventAction.jcell_instance :jnone) (setf UpOrientationInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  UpOrientationInputToGameKeyEventAction.jcell_instance)
(defun (setf UpOrientationInputToGameKeyEventAction.jstatic_instance) (value) (setf UpOrientationInputToGameKeyEventAction.jcell_instance value))

    
(defun UpOrientationInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (UpOrientationInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (UpOrientationInputToGameKeyEventAction.jstatic_instance) (UpOrientationInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (UpOrientationInputToGameKeyEventAction.jstatic_instance)))))

    
(defun UpOrientationInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'UpOrientationInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



