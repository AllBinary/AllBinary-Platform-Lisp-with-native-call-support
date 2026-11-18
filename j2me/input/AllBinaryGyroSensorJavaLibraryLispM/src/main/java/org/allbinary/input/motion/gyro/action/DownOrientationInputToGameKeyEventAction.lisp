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

(defclass DownOrientationInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar DownOrientationInputToGameKeyEventAction.jcell_instance :jnone)
(defun DownOrientationInputToGameKeyEventAction.jstatic_instance ()
  (when (eq DownOrientationInputToGameKeyEventAction.jcell_instance :jnone) (setf DownOrientationInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  DownOrientationInputToGameKeyEventAction.jcell_instance)
(defun (setf DownOrientationInputToGameKeyEventAction.jstatic_instance) (value) (setf DownOrientationInputToGameKeyEventAction.jcell_instance value))

    
(defun DownOrientationInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (DownOrientationInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (DownOrientationInputToGameKeyEventAction.jstatic_instance) (DownOrientationInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (DownOrientationInputToGameKeyEventAction.jstatic_instance)))))

    
(defun DownOrientationInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'DownOrientationInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



