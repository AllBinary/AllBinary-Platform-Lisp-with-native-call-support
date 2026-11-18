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

(defclass NoZBasicConstantVelocityMovement (Movement)
  ((f_velocityProperties :initform nil)
   (f_speedBasicDecimal :initform nil)
   (f_axisMathVectorUtil :initform nil)))

    
(defun NoZBasicConstantVelocityMovement.jnew_2 (_basicDecimal _velocityProperties)
  (declare (ignorable _basicDecimal _velocityProperties))
  (let ((this (make-instance 'NoZBasicConstantVelocityMovement)))
    
    (setf (slot-value this 'f_speedBasicDecimal) (BasicDecimal.jstatic_ZERO_BIGDECIMAL))
    (setf (slot-value this 'f_axisMathVectorUtil) (AxisMathVectorUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        (jm_setSpeedBasicDecimal_1 this _basicDecimal)
        (setf (slot-value this 'f_velocityProperties) _velocityProperties)))
    this))

    
(unless (fboundp 'jm_init_3) (defgeneric jm_init_3 (this p1 p2 p3)))
(defmethod jm_init_3 ((this NoZBasicConstantVelocityMovement) _speedBasicDecimal _angle _otherAngle)
  (declare (ignorable this _speedBasicDecimal _angle _otherAngle))
  (let (_angleFactory)
  (declare (ignorable _angleFactory))
    (block jreturn
        (setf (slot-value this 'f_speedBasicDecimal) _speedBasicDecimal)
        (setf _angleFactory (AngleFactory.jm_getInstance_0))
        (jm_setVelocityWithBigDecimal_3 (slot-value this 'f_velocityProperties) _speedBasicDecimal (jm_getAt_1 _angleFactory _angle) (jm_getAt_1 _angleFactory _otherAngle)))))

    
(unless (fboundp 'jm_moveOutsideRadius_4) (defgeneric jm_moveOutsideRadius_4 (this p1 p2 p3 p4)))
(defmethod jm_moveOutsideRadius_4 ((this NoZBasicConstantVelocityMovement) _layer _radius _angle _otherAngle)
  (declare (ignorable this _layer _radius _angle _otherAngle))
  (let (_scaleFactorValue _xVector _yVector)
  (declare (ignorable _scaleFactorValue _xVector _yVector))
    (block jreturn
        (setf _scaleFactorValue (jm_getScaledFactorValue_0 (slot-value this 'f_speedBasicDecimal)))
        (setf _xVector (JR.idiv (jm_calculateX_2 (slot-value this 'f_axisMathVectorUtil) _radius _angle) _scaleFactorValue))
        (setf _yVector (JR.idiv (jm_calculateY_2 (slot-value this 'f_axisMathVectorUtil) _radius _angle) _scaleFactorValue))
        (jm_moveDXYZ_3 _layer _xVector _yVector 0))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this NoZBasicConstantVelocityMovement) _layer)
  (declare (ignorable this _layer))
  (let ()
    (block jreturn
        (jm_moveDXYZ_3 _layer (jm_getScaled_0 (jm_getVelocityXBasicDecimalP_0 (slot-value this 'f_velocityProperties))) (jm_getScaled_0 (jm_getVelocityYBasicDecimalP_0 (slot-value this 'f_velocityProperties))) 0))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this NoZBasicConstantVelocityMovement))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (slot-value this 'f_velocityProperties))))))

    
(unless (fboundp 'jm_stop_0) (defgeneric jm_stop_0 (this)))
(defmethod jm_stop_0 ((this NoZBasicConstantVelocityMovement))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_zero_0 (slot-value this 'f_velocityProperties)))))

    
(unless (fboundp 'jm_getVelocityProperties_0) (defgeneric jm_getVelocityProperties_0 (this)))
(defmethod jm_getVelocityProperties_0 ((this NoZBasicConstantVelocityMovement))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_velocityProperties)))))

    
(unless (fboundp 'jm_setVelocityProperties_1) (defgeneric jm_setVelocityProperties_1 (this p1)))
(defmethod jm_setVelocityProperties_1 ((this NoZBasicConstantVelocityMovement) _velocityProperties)
  (declare (ignorable this _velocityProperties))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_velocityProperties) _velocityProperties))))

    
(unless (fboundp 'jm_setSpeedBasicDecimal_1) (defgeneric jm_setSpeedBasicDecimal_1 (this p1)))
(defmethod jm_setSpeedBasicDecimal_1 ((this NoZBasicConstantVelocityMovement) _speedBasicDecimal)
  (declare (ignorable this _speedBasicDecimal))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_speedBasicDecimal) _speedBasicDecimal))))

    
(unless (fboundp 'jm_getSpeedBasicDecimal_0) (defgeneric jm_getSpeedBasicDecimal_0 (this)))
(defmethod jm_getSpeedBasicDecimal_0 ((this NoZBasicConstantVelocityMovement))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_speedBasicDecimal)))))



