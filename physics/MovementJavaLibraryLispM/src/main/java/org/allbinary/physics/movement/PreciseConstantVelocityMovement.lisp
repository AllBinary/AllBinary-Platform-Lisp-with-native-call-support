;;;; Generated Code Do Not Modify
;;;; package org.allbinary.physics.movement

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PreciseConstantVelocityMovement (BasicConstantVelocityMovement)
  ((f_accumulatedX :initform 0)
   (f_accumulatedY :initform 0)
   (f_accumulatedZ :initform 0)
   (f_factorValue :initform 0)))

    
(defun PreciseConstantVelocityMovement.jnew_2 (_basicDecimal _velocityProperties)
  (declare (ignorable _basicDecimal _velocityProperties))
  (let ((this (make-instance 'PreciseConstantVelocityMovement)))
    
    
    
    (setf (slot-value this 'f_factorValue) (slot-value (ScaleFactorFactory.jm_getInstance_0) 'f_DEFAULT_SCALE_VALUE))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_init_3) (defgeneric jm_init_3 (this p1 p2 p3)))
(defmethod jm_init_3 ((this PreciseConstantVelocityMovement) _speedBasicDecimal _angle _otherAngle)
  (declare (ignorable this _speedBasicDecimal _angle _otherAngle))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this PreciseConstantVelocityMovement) _layer)
  (declare (ignorable this _layer))
  (let (_mathUtil _velocityProperties)
  (declare (ignorable _mathUtil _velocityProperties))
    (block jreturn
        (setf _mathUtil (MathUtil.jm_getInstance_0))
        (setf _velocityProperties (jm_getVelocityProperties_0 this))
        (setf (slot-value this 'f_accumulatedX) (JR.i32 (+ (slot-value this 'f_accumulatedX) (jm_getUnscaled_0 (jm_getVelocityXBasicDecimalP_0 _velocityProperties)))))
        (setf (slot-value this 'f_accumulatedY) (JR.i32 (+ (slot-value this 'f_accumulatedY) (jm_getUnscaled_0 (jm_getVelocityYBasicDecimalP_0 _velocityProperties)))))
        (setf (slot-value this 'f_accumulatedZ) (JR.i32 (+ (slot-value this 'f_accumulatedZ) (jm_getUnscaled_0 (jm_getVelocityZBasicDecimalP_0 _velocityProperties)))))
        (jm_moveDXYZ_3 _layer (JR.idiv (slot-value this 'f_accumulatedX) (slot-value this 'f_factorValue)) (JR.idiv (slot-value this 'f_accumulatedY) (slot-value this 'f_factorValue)) (JR.idiv (slot-value this 'f_accumulatedZ) (slot-value this 'f_factorValue)))
        (if (> (jm_abs_1 _mathUtil (slot-value this 'f_accumulatedX)) (slot-value this 'f_factorValue))
            (progn
            (setf (slot-value this 'f_accumulatedX) 0)))
        (if (> (jm_abs_1 _mathUtil (slot-value this 'f_accumulatedY)) (slot-value this 'f_factorValue))
            (progn
            (setf (slot-value this 'f_accumulatedY) 0)))
        (if (> (jm_abs_1 _mathUtil (slot-value this 'f_accumulatedZ)) (slot-value this 'f_factorValue))
            (progn
            (setf (slot-value this 'f_accumulatedZ) 0))))))



