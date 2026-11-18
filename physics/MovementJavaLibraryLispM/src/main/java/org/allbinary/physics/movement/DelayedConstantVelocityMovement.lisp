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

(defclass DelayedConstantVelocityMovement (BasicConstantVelocityMovement)
  ((f_timeDelayHelper :initform nil)))

    
(defun DelayedConstantVelocityMovement.jnew_2 (_basicDecimal _velocityProperties)
  (declare (ignorable _basicDecimal _velocityProperties))
  (let ((this (make-instance 'DelayedConstantVelocityMovement)))
    (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 60))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_init_3) (defgeneric jm_init_3 (this p1 p2 p3)))
(defmethod jm_init_3 ((this DelayedConstantVelocityMovement) _speedBasicDecimal _angle _otherAngle)
  (declare (ignorable this _speedBasicDecimal _angle _otherAngle))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this DelayedConstantVelocityMovement) _layer)
  (declare (ignorable this _layer))
  (let ()
    (block jreturn
        (if (jm_isTime_1 (slot-value this 'f_timeDelayHelper) (slot-value (GameTickTimeDelayHelperFactory.jm_getInstance_0) 'f_startTime))
            (progn
            (call-next-method this _layer))))))



