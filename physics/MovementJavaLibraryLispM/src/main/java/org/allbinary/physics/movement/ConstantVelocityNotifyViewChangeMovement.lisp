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

(defclass ConstantVelocityNotifyViewChangeMovement (Movement)
  ((f_basicVelocityProperties :initform nil)
   (f_speedBasicDecimal :initform nil)
   (f_axisMathVectorUtil :initform nil)))

    
(defun ConstantVelocityNotifyViewChangeMovement.jnew_0 ()
  (let ((this (make-instance 'ConstantVelocityNotifyViewChangeMovement)))
    
    
    (setf (slot-value this 'f_axisMathVectorUtil) (AxisMathVectorUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_speedBasicDecimal) (BasicDecimal.jstatic_ZERO_BIGDECIMAL))
        (setf (slot-value this 'f_basicVelocityProperties) (BasicVelocityProperties.jnew_0))))
    this))

    
(unless (fboundp 'jm_init_3) (defgeneric jm_init_3 (this p1 p2 p3)))
(defmethod jm_init_3 ((this ConstantVelocityNotifyViewChangeMovement) _speedBasicDecimal _angle _otherAngle)
  (declare (ignorable this _speedBasicDecimal _angle _otherAngle))
  (let (_angleFactory)
  (declare (ignorable _angleFactory))
    (block jreturn
        (setf (slot-value this 'f_speedBasicDecimal) _speedBasicDecimal)
        (setf _angleFactory (AngleFactory.jm_getInstance_0))
        (jm_setVelocityWithBigDecimal_3 (slot-value this 'f_basicVelocityProperties) _speedBasicDecimal (jm_getAt_1 _angleFactory _angle) (jm_getAt_1 _angleFactory _otherAngle)))))

    
(unless (fboundp 'jm_moveOutsideRadius_4) (defgeneric jm_moveOutsideRadius_4 (this p1 p2 p3 p4)))
(defmethod jm_moveOutsideRadius_4 ((this ConstantVelocityNotifyViewChangeMovement) _layer _radius _angle _otherAngle)
  (declare (ignorable this _layer _radius _angle _otherAngle))
  (let (_scaleFactorValue _xVector _yVector _zVector)
  (declare (ignorable _scaleFactorValue _xVector _yVector _zVector))
    (block jreturn
        (setf _scaleFactorValue (jm_getScaledFactorValue_0 (slot-value this 'f_speedBasicDecimal)))
        (setf _xVector (JR.idiv (jm_calculateX_2 (slot-value this 'f_axisMathVectorUtil) _radius _angle) _scaleFactorValue))
        (setf _yVector (JR.idiv (jm_calculateY_2 (slot-value this 'f_axisMathVectorUtil) _radius _angle) _scaleFactorValue))
        (setf _zVector (JR.idiv (jm_calculateZ_2 (slot-value this 'f_axisMathVectorUtil) _radius _otherAngle) _scaleFactorValue))
        (jm_moveDXYZ_3 _layer _xVector _yVector _zVector))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this ConstantVelocityNotifyViewChangeMovement) _layer)
  (declare (ignorable this _layer))
  (let (_x _y _z)
  (declare (ignorable _x _y _z))
    (block jreturn
        (setf _x (jm_getScaled_0 (jm_getVelocityXBasicDecimalP_0 (slot-value this 'f_basicVelocityProperties))))
        (setf _y (jm_getScaled_0 (jm_getVelocityYBasicDecimalP_0 (slot-value this 'f_basicVelocityProperties))))
        (setf _z (jm_getScaled_0 (jm_getVelocityZBasicDecimalP_0 (slot-value this 'f_basicVelocityProperties))))
        (jm_moveDXYZ_3 _layer _x _y _z)
        (if (or (or (/= _x 0) (/= _y 0)) (/= _z 0))
            (progn
            (jm_onViewPositionChangeEvent_0 _layer))))))

    
(unless (fboundp 'jm_stop_0) (defgeneric jm_stop_0 (this)))
(defmethod jm_stop_0 ((this ConstantVelocityNotifyViewChangeMovement))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_zero_0 (slot-value this 'f_basicVelocityProperties)))))



