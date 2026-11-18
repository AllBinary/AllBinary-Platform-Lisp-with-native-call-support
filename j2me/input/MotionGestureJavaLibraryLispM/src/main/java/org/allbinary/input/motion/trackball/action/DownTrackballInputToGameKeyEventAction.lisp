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

(defclass DownTrackballInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ())

(defvar DownTrackballInputToGameKeyEventAction.jcell_instance :jnone)
(defun DownTrackballInputToGameKeyEventAction.jstatic_instance ()
  (when (eq DownTrackballInputToGameKeyEventAction.jcell_instance :jnone) (setf DownTrackballInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  DownTrackballInputToGameKeyEventAction.jcell_instance)
(defun (setf DownTrackballInputToGameKeyEventAction.jstatic_instance) (value) (setf DownTrackballInputToGameKeyEventAction.jcell_instance value))

    
(defun DownTrackballInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (DownTrackballInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (DownTrackballInputToGameKeyEventAction.jstatic_instance) (DownTrackballInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (DownTrackballInputToGameKeyEventAction.jstatic_instance)))))

    
(defun DownTrackballInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'DownTrackballInputToGameKeyEventAction)))
  (let ()
    (block jreturn
        nil))
    this))



