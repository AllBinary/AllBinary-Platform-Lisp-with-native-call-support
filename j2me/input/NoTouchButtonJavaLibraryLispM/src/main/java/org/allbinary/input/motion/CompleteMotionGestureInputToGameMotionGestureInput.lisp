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
;;;; package org.allbinary.input.motion

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CompleteMotionGestureInputToGameMotionGestureInput (JObject)
  ((f_commonStrings :initform nil)))

(defvar CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance :jnone)
(defun CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance ()
  (when (eq CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance :jnone) (setf CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance (CompleteMotionGestureInputToGameMotionGestureInput.jnew_0)))
  CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance)
(defun (setf CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance) (value) (setf CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance value))

(defun CompleteMotionGestureInputToGameMotionGestureInput.jnew_0 ()
  (let ((this (make-instance 'CompleteMotionGestureInputToGameMotionGestureInput)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    this))

    
(defun CompleteMotionGestureInputToGameMotionGestureInput.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this CompleteMotionGestureInputToGameMotionGestureInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (PreLogUtil.jm_put_3 "No Touch Button = No Compound Motion Gestures" this (slot-value (slot-value this 'f_commonStrings) 'f_INIT)))))



