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
;;;; package org.allbinary.input.motion.trackball.action

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RightTrackballInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar RightTrackballInputToGameKeyEventAction.jcell_instance :jnone)
(defun RightTrackballInputToGameKeyEventAction.jstatic_instance ()
  (when (eq RightTrackballInputToGameKeyEventAction.jcell_instance :jnone) (setf RightTrackballInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  RightTrackballInputToGameKeyEventAction.jcell_instance)
(defun (setf RightTrackballInputToGameKeyEventAction.jstatic_instance) (value) (setf RightTrackballInputToGameKeyEventAction.jcell_instance value))

    
(defun RightTrackballInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (RightTrackballInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (RightTrackballInputToGameKeyEventAction.jstatic_instance) (RightTrackballInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (RightTrackballInputToGameKeyEventAction.jstatic_instance)))))

    
(defun RightTrackballInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'RightTrackballInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



