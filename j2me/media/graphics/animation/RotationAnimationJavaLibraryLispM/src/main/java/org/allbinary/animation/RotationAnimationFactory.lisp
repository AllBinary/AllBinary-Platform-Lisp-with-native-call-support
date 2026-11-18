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
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RotationAnimationFactory (JObject)
  ((f_totalAngle :initform 0)
   (f_angleIncrement :initform 0)))

    
(defun RotationAnimationFactory.jm_createFactory_0 ()
  (let (_totalAngle)
  (declare (ignorable _totalAngle))
    (block jreturn
        (setf _totalAngle (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE))
        (return-from jreturn (RotationAnimationFactory.jnew_2 _totalAngle (JR.i16 (JR.idiv _totalAngle (jm_getGameControlFidelity_0 (GameConfigurationCentral.jm_getInstance_0)))))))))

    
(defun RotationAnimationFactory.jnew_2 (_totalAngle _angleIncrement)
  (declare (ignorable _totalAngle _angleIncrement))
  (let ((this (make-instance 'RotationAnimationFactory)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_totalAngle) _totalAngle)
        (setf (slot-value this 'f_angleIncrement) _angleIncrement)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this RotationAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (return-from jreturn (NullRotationAnimation.jm_createTotalAngle_3 (AngleInfo.jm_getInstance_1 (slot-value this 'f_angleIncrement)) (slot-value this 'f_totalAngle) (AnimationBehavior.jm_getInstance_0))))))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this RotationAnimationFactory) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (return-from jreturn (NullRotationAnimation.jm_createTotalAngle_3 (AngleInfo.jm_getInstance_1 (slot-value this 'f_angleIncrement)) (slot-value this 'f_totalAngle) (AnimationBehavior.jm_getInstance_0))))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this RotationAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



