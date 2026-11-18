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

(defclass BasicVelocityInterface (JObject)
  ())

(defun BasicVelocityInterface.jnew_0 ()
  (let ((this (make-instance 'BasicVelocityInterface)))
    this))

    
(unless (fboundp 'jm_getVelocityXBasicDecimalP_0) (defgeneric jm_getVelocityXBasicDecimalP_0 (this)))
(defmethod jm_getVelocityXBasicDecimalP_0 ((this BasicVelocityInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getVelocityXBasicDecimalP")))

    
(unless (fboundp 'jm_getVelocityYBasicDecimalP_0) (defgeneric jm_getVelocityYBasicDecimalP_0 (this)))
(defmethod jm_getVelocityYBasicDecimalP_0 ((this BasicVelocityInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getVelocityYBasicDecimalP")))

    
(unless (fboundp 'jm_zero_0) (defgeneric jm_zero_0 (this)))
(defmethod jm_zero_0 ((this BasicVelocityInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "zero")))

    
(unless (fboundp 'jm_setVelocityWithBigDecimalAndDirection_3) (defgeneric jm_setVelocityWithBigDecimalAndDirection_3 (this p1 p2 p3)))
(defmethod jm_setVelocityWithBigDecimalAndDirection_3 ((this BasicVelocityInterface) _magnitudeBasicDecimal _direction _otherDirection)
  (declare (ignorable this _magnitudeBasicDecimal _direction _otherDirection))
  (error (JR.newException "AbstractMethodError" "setVelocityWithBigDecimalAndDirection")))

    
(unless (fboundp 'jm_addVelocityWithBigDecimalAndDirection_3) (defgeneric jm_addVelocityWithBigDecimalAndDirection_3 (this p1 p2 p3)))
(defmethod jm_addVelocityWithBigDecimalAndDirection_3 ((this BasicVelocityInterface) _magnitudeBasicDecimal _direction _otherDirection)
  (declare (ignorable this _magnitudeBasicDecimal _direction _otherDirection))
  (error (JR.newException "AbstractMethodError" "addVelocityWithBigDecimalAndDirection")))

    
(unless (fboundp 'jm_setVelocityWithDirection_3) (defgeneric jm_setVelocityWithDirection_3 (this p1 p2 p3)))
(defmethod jm_setVelocityWithDirection_3 ((this BasicVelocityInterface) _magnitude _direction _otherDirection)
  (declare (ignorable this _magnitude _direction _otherDirection))
  (error (JR.newException "AbstractMethodError" "setVelocityWithDirection")))

    
(unless (fboundp 'jm_addVelocityWithDirection_3) (defgeneric jm_addVelocityWithDirection_3 (this p1 p2 p3)))
(defmethod jm_addVelocityWithDirection_3 ((this BasicVelocityInterface) _magnitude _direction _otherDirection)
  (declare (ignorable this _magnitude _direction _otherDirection))
  (error (JR.newException "AbstractMethodError" "addVelocityWithDirection")))

    
(unless (fboundp 'jm_setVelocityWithBigDecimal_3) (defgeneric jm_setVelocityWithBigDecimal_3 (this p1 p2 p3)))
(defmethod jm_setVelocityWithBigDecimal_3 ((this BasicVelocityInterface) _magnitudeBasicDecimal _angle _otherAngle)
  (declare (ignorable this _magnitudeBasicDecimal _angle _otherAngle))
  (error (JR.newException "AbstractMethodError" "setVelocityWithBigDecimal")))

    
(unless (fboundp 'jm_addVelocityWithBigDecimal_3) (defgeneric jm_addVelocityWithBigDecimal_3 (this p1 p2 p3)))
(defmethod jm_addVelocityWithBigDecimal_3 ((this BasicVelocityInterface) _magnitudeBasicDecimal _angle _otherAngle)
  (declare (ignorable this _magnitudeBasicDecimal _angle _otherAngle))
  (error (JR.newException "AbstractMethodError" "addVelocityWithBigDecimal")))

    
(unless (fboundp 'jm_setVelocity_3) (defgeneric jm_setVelocity_3 (this p1 p2 p3)))
(defmethod jm_setVelocity_3 ((this BasicVelocityInterface) _magnitude _angle _otherAngle)
  (declare (ignorable this _magnitude _angle _otherAngle))
  (error (JR.newException "AbstractMethodError" "setVelocity")))

    
(unless (fboundp 'jm_addVelocity_3) (defgeneric jm_addVelocity_3 (this p1 p2 p3)))
(defmethod jm_addVelocity_3 ((this BasicVelocityInterface) _magnitude _angle _otherAngle)
  (declare (ignorable this _magnitude _angle _otherAngle))
  (error (JR.newException "AbstractMethodError" "addVelocity")))

    
(unless (fboundp 'jm_addVelocityi_3) (defgeneric jm_addVelocityi_3 (this p1 p2 p3)))
(defmethod jm_addVelocityi_3 ((this BasicVelocityInterface) _magnitude _angle _otherAngle)
  (declare (ignorable this _magnitude _angle _otherAngle))
  (error (JR.newException "AbstractMethodError" "addVelocityi")))



