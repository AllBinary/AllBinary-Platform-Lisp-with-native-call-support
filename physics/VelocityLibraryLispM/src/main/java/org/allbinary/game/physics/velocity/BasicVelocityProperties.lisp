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
;;;; package org.allbinary.game.physics.velocity

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicVelocityProperties (JObject)
  ((f_logUtil :initform nil)
   (f_velocityXBasicDecimal :initform nil)
   (f_velocityYBasicDecimal :initform nil)
   (f_velocityZBasicDecimal :initform nil)
   (f_axisMathVectorUtil :initform nil)
   (f_directionUtil :initform nil)))

    
(defun BasicVelocityProperties.jnew_0 ()
  (let ((this (make-instance 'BasicVelocityProperties)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    
    
    (setf (slot-value this 'f_axisMathVectorUtil) (AxisMathVectorUtil.jm_getInstance_0))
    (setf (slot-value this 'f_directionUtil) (DirectionUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_velocityXBasicDecimal) (BasicDecimal.jnew_1 0))
        (setf (slot-value this 'f_velocityYBasicDecimal) (BasicDecimal.jnew_1 0))
        (setf (slot-value this 'f_velocityZBasicDecimal) (BasicDecimal.jnew_1 0))))
    this))

    
(unless (fboundp 'jm_zero_0) (defgeneric jm_zero_0 (this)))
(defmethod jm_zero_0 ((this BasicVelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setint_1 (slot-value this 'f_velocityXBasicDecimal) 0)
        (jm_setint_1 (slot-value this 'f_velocityYBasicDecimal) 0)
        (jm_setint_1 (slot-value this 'f_velocityZBasicDecimal) 0))))

    
(unless (fboundp 'jm_getVelocityXBasicDecimalP_0) (defgeneric jm_getVelocityXBasicDecimalP_0 (this)))
(defmethod jm_getVelocityXBasicDecimalP_0 ((this BasicVelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_velocityXBasicDecimal)))))

    
(unless (fboundp 'jm_getVelocityYBasicDecimalP_0) (defgeneric jm_getVelocityYBasicDecimalP_0 (this)))
(defmethod jm_getVelocityYBasicDecimalP_0 ((this BasicVelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_velocityYBasicDecimal)))))

    
(unless (fboundp 'jm_getVelocityZBasicDecimalP_0) (defgeneric jm_getVelocityZBasicDecimalP_0 (this)))
(defmethod jm_getVelocityZBasicDecimalP_0 ((this BasicVelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_velocityZBasicDecimal)))))

    
(unless (fboundp 'jm_setVelocityWithBigDecimalAndDirection_3) (defgeneric jm_setVelocityWithBigDecimalAndDirection_3 (this p1 p2 p3)))
(defmethod jm_setVelocityWithBigDecimalAndDirection_3 ((this BasicVelocityProperties) _magnitudeBasicDecimal _direction _otherDirection)
  (declare (ignorable this _magnitudeBasicDecimal _direction _otherDirection))
  (let (_angle _otherAngle)
  (declare (ignorable _angle _otherAngle))
    (block jreturn
        (setf _angle (jm_getAngle_1 (slot-value this 'f_directionUtil) _direction))
        (setf _otherAngle (jm_getAngle_1 (slot-value this 'f_directionUtil) _otherDirection))
        (jm_setVelocityWithBigDecimal_3 this _magnitudeBasicDecimal _angle _otherAngle))))

    
(unless (fboundp 'jm_setVelocityWithDirection_3) (defgeneric jm_setVelocityWithDirection_3 (this p1 p2 p3)))
(defmethod jm_setVelocityWithDirection_3 ((this BasicVelocityProperties) _magnitude _direction _otherDirection)
  (declare (ignorable this _magnitude _direction _otherDirection))
  (let (_angle _otherAngle)
  (declare (ignorable _angle _otherAngle))
    (block jreturn
        (setf _angle (jm_getAngle_1 (slot-value this 'f_directionUtil) _direction))
        (setf _otherAngle (jm_getAngle_1 (slot-value this 'f_directionUtil) _otherDirection))
        (jm_setVelocity_3 this _magnitude _angle _otherAngle))))

    
(unless (fboundp 'jm_addVelocityWithBigDecimalAndDirection_3) (defgeneric jm_addVelocityWithBigDecimalAndDirection_3 (this p1 p2 p3)))
(defmethod jm_addVelocityWithBigDecimalAndDirection_3 ((this BasicVelocityProperties) _magnitudeBasicDecimal _direction _otherDirection)
  (declare (ignorable this _magnitudeBasicDecimal _direction _otherDirection))
  (let (_angle _otherAngle)
  (declare (ignorable _angle _otherAngle))
    (block jreturn
        (setf _angle (jm_getAngle_1 (slot-value this 'f_directionUtil) _direction))
        (setf _otherAngle (jm_getAngle_1 (slot-value this 'f_directionUtil) _otherDirection))
        (jm_addVelocityWithBigDecimal_3 this _magnitudeBasicDecimal _angle _otherAngle))))

    
(unless (fboundp 'jm_addVelocityWithDirection_3) (defgeneric jm_addVelocityWithDirection_3 (this p1 p2 p3)))
(defmethod jm_addVelocityWithDirection_3 ((this BasicVelocityProperties) _magnitude _direction _otherDirection)
  (declare (ignorable this _magnitude _direction _otherDirection))
  (let (_angle _otherAngle)
  (declare (ignorable _angle _otherAngle))
    (block jreturn
        (setf _angle (jm_getAngle_1 (slot-value this 'f_directionUtil) _direction))
        (setf _otherAngle (jm_getAngle_1 (slot-value this 'f_directionUtil) _otherDirection))
        (jm_addVelocity_3 this _magnitude _angle _otherAngle))))

    
(unless (fboundp 'jm_setVelocityWithBigDecimal_3) (defgeneric jm_setVelocityWithBigDecimal_3 (this p1 p2 p3)))
(defmethod jm_setVelocityWithBigDecimal_3 ((this BasicVelocityProperties) _magnitudeBasicDecimal _angle _otherAngle)
  (declare (ignorable this _magnitudeBasicDecimal _angle _otherAngle))
  (let (_magnitude)
  (declare (ignorable _magnitude))
    (block jreturn
        (setf _magnitude (jm_getUnscaled_0 _magnitudeBasicDecimal))
        (jm_setVelocity_3 this _magnitude _angle _otherAngle))))

    
(unless (fboundp 'jm_addVelocityWithBigDecimal_3) (defgeneric jm_addVelocityWithBigDecimal_3 (this p1 p2 p3)))
(defmethod jm_addVelocityWithBigDecimal_3 ((this BasicVelocityProperties) _magnitudeBasicDecimal _angle _otherAngle)
  (declare (ignorable this _magnitudeBasicDecimal _angle _otherAngle))
  (let (_magnitude)
  (declare (ignorable _magnitude))
    (block jreturn
        (setf _magnitude (jm_getUnscaled_0 _magnitudeBasicDecimal))
        (jm_addVelocity_3 this _magnitude _angle _otherAngle))))

    
(unless (fboundp 'jm_setVelocity_3) (defgeneric jm_setVelocity_3 (this p1 p2 p3)))
(defmethod jm_setVelocity_3 ((this BasicVelocityProperties) _magnitude _angle _otherAngle)
  (declare (ignorable this _magnitude _angle _otherAngle))
  (let ()
    (block jreturn
        (jm_setVelocityi_3 this _magnitude (jm_getValue_0 _angle) (jm_getValue_0 _otherAngle)))))

    
(unless (fboundp 'jm_addVelocity_3) (defgeneric jm_addVelocity_3 (this p1 p2 p3)))
(defmethod jm_addVelocity_3 ((this BasicVelocityProperties) _magnitude _angle _otherAngle)
  (declare (ignorable this _magnitude _angle _otherAngle))
  (let ()
    (block jreturn
        (jm_addVelocityi_3 this _magnitude (jm_getValue_0 _angle) (jm_getValue_0 _otherAngle)))))

    
(unless (fboundp 'jm_setVelocityi_3) (defgeneric jm_setVelocityi_3 (this p1 p2 p3)))
(defmethod jm_setVelocityi_3 ((this BasicVelocityProperties) _magnitude _angle _otherAngle)
  (declare (ignorable this _magnitude _angle _otherAngle))
  (let (_xVector _yVector _zVector)
  (declare (ignorable _xVector _yVector _zVector))
    (block jreturn
        (setf _xVector (JR.idiv (jm_calculateX_2 (slot-value this 'f_axisMathVectorUtil) _magnitude _angle) (jm_getScaledFactorValue_0 (slot-value this 'f_velocityXBasicDecimal))))
        (setf _yVector (JR.idiv (jm_calculateY_2 (slot-value this 'f_axisMathVectorUtil) _magnitude _angle) (jm_getScaledFactorValue_0 (slot-value this 'f_velocityYBasicDecimal))))
        (setf _zVector (JR.idiv (jm_calculateZ_2 (slot-value this 'f_axisMathVectorUtil) _magnitude _otherAngle) (jm_getScaledFactorValue_0 (slot-value this 'f_velocityZBasicDecimal))))
        (jm_setlong_1 (slot-value this 'f_velocityXBasicDecimal) _xVector)
        (jm_setlong_1 (slot-value this 'f_velocityYBasicDecimal) _yVector)
        (jm_setlong_1 (slot-value this 'f_velocityZBasicDecimal) _zVector))))

    
(unless (fboundp 'jm_addVelocityi_3) (defgeneric jm_addVelocityi_3 (this p1 p2 p3)))
(defmethod jm_addVelocityi_3 ((this BasicVelocityProperties) _magnitude _angle _otherAngle)
  (declare (ignorable this _magnitude _angle _otherAngle))
  (let (_xVector _yVector _zVector)
  (declare (ignorable _xVector _yVector _zVector))
    (block jreturn
        (setf _xVector (JR.idiv (jm_calculateX_2 (slot-value this 'f_axisMathVectorUtil) _magnitude _angle) (jm_getScaledFactorValue_0 (slot-value this 'f_velocityXBasicDecimal))))
        (setf _yVector (JR.idiv (jm_calculateY_2 (slot-value this 'f_axisMathVectorUtil) _magnitude _angle) (jm_getScaledFactorValue_0 (slot-value this 'f_velocityYBasicDecimal))))
        (setf _zVector (JR.idiv (jm_calculateZ_2 (slot-value this 'f_axisMathVectorUtil) _magnitude _otherAngle) (jm_getScaledFactorValue_0 (slot-value this 'f_velocityZBasicDecimal))))
        (jm_addlong_1 (slot-value this 'f_velocityXBasicDecimal) _xVector)
        (jm_addlong_1 (slot-value this 'f_velocityYBasicDecimal) _yVector)
        (jm_addlong_1 (slot-value this 'f_velocityZBasicDecimal) _zVector))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BasicVelocityProperties))
  (declare (ignorable this))
  (let (_commonSeps _positionStrings _stringBuffer _stringUtil)
  (declare (ignorable _commonSeps _positionStrings _stringBuffer _stringUtil))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf _positionStrings (PositionStrings.jm_getInstance_0))
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _stringUtil (StringUtil.jm_getInstance_0))
        (jm_append_1 _stringBuffer "Velocity ")
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_X_LABEL))
        (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil (slot-value this 'f_velocityXBasicDecimal)))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_Y_LABEL))
        (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil (slot-value this 'f_velocityYBasicDecimal)))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_Z_LABEL))
        (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil (slot-value this 'f_velocityZBasicDecimal)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



