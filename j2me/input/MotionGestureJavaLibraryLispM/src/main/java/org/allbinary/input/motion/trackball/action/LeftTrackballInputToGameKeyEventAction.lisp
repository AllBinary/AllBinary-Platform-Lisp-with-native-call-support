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

(defclass LeftTrackballInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar LeftTrackballInputToGameKeyEventAction.jcell_instance :jnone)
(defun LeftTrackballInputToGameKeyEventAction.jstatic_instance ()
  (when (eq LeftTrackballInputToGameKeyEventAction.jcell_instance :jnone) (setf LeftTrackballInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  LeftTrackballInputToGameKeyEventAction.jcell_instance)
(defun (setf LeftTrackballInputToGameKeyEventAction.jstatic_instance) (value) (setf LeftTrackballInputToGameKeyEventAction.jcell_instance value))

    
(defun LeftTrackballInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (LeftTrackballInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (LeftTrackballInputToGameKeyEventAction.jstatic_instance) (LeftTrackballInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (LeftTrackballInputToGameKeyEventAction.jstatic_instance)))))

    
(defun LeftTrackballInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'LeftTrackballInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



