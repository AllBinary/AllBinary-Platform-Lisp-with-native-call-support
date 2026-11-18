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
;;;; package org.allbinary.physics.movement

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicGravityConstantVelocityMovement (BasicConstantVelocityMovement)
  ((f_gravityUtil :initform nil)))

    
(defun BasicGravityConstantVelocityMovement.jnew_1 (_speedBasicDecimal)
  (declare (ignorable _speedBasicDecimal))
  (let ((this (make-instance 'BasicGravityConstantVelocityMovement)))
    (setf (slot-value this 'f_gravityUtil) (GravityUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this BasicGravityConstantVelocityMovement) _layer)
  (declare (ignorable this _layer))
  (let ()
    (block jreturn
        (call-next-method this _layer)
        (jm_process_2 (slot-value this 'f_gravityUtil) (jm_getVelocityProperties_0 this) (slot-value (slot-value this 'f_gravityUtil) 'f_GAME_GRAVITY_VELOCITY)))))



