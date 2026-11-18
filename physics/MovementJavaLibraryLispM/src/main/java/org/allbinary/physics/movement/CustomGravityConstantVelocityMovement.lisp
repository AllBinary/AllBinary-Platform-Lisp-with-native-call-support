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

(defclass CustomGravityConstantVelocityMovement (BasicConstantVelocityMovement)
  ((f_customGravity :initform 0)
   (f_gravityUtil :initform nil)))

    
(defun CustomGravityConstantVelocityMovement.jnew_2 (_speedBasicDecimal _customGravity)
  (declare (ignorable _speedBasicDecimal _customGravity))
  (let ((this (make-instance 'CustomGravityConstantVelocityMovement)))
    
    (setf (slot-value this 'f_gravityUtil) (GravityUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_customGravity) _customGravity)))
    this))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this CustomGravityConstantVelocityMovement) _layer)
  (declare (ignorable this _layer))
  (let (_velocityProperties)
  (declare (ignorable _velocityProperties))
    (block jreturn
        (call-next-method this _layer)
        (jm_process_2 (slot-value this 'f_gravityUtil) (jm_getVelocityProperties_0 this) (slot-value this 'f_customGravity))
        (setf _velocityProperties (jm_getVelocityProperties_0 this))
        (jm_limitMaxYForwardVelocity_0 _velocityProperties))))



