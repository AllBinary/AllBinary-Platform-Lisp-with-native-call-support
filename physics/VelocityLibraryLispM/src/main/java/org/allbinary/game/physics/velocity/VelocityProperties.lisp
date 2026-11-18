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

(defclass VelocityProperties (BasicVelocityProperties)
  ((f_maxForwardVelocity :initform 0)
   (f_maxReverseVelocity :initform 0)))

(defvar VelocityProperties.jcell_NULL_VELOCITY_PROPERTIES :jnone)
(defun VelocityProperties.jstatic_NULL_VELOCITY_PROPERTIES ()
  (when (eq VelocityProperties.jcell_NULL_VELOCITY_PROPERTIES :jnone) (setf VelocityProperties.jcell_NULL_VELOCITY_PROPERTIES (VelocityProperties.jnew_2 0 0)))
  VelocityProperties.jcell_NULL_VELOCITY_PROPERTIES)
(defun (setf VelocityProperties.jstatic_NULL_VELOCITY_PROPERTIES) (value) (setf VelocityProperties.jcell_NULL_VELOCITY_PROPERTIES value))

    
(defun VelocityProperties.jnew_2 (_maxForwardVelocity _maxReverseVelocity)
  (declare (ignorable _maxForwardVelocity _maxReverseVelocity))
  (let ((this (make-instance 'VelocityProperties)))
    
    
  (let ()
    (block jreturn
        (jm_setMaxForwardVelocity_1 this _maxForwardVelocity)
        (jm_setMaxReverseVelocity_1 this _maxReverseVelocity)))
    this))

    
(unless (fboundp 'jm_getMaxForwardVelocity_0) (defgeneric jm_getMaxForwardVelocity_0 (this)))
(defmethod jm_getMaxForwardVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_maxForwardVelocity)))))

    
(unless (fboundp 'jm_setMaxForwardVelocity_1) (defgeneric jm_setMaxForwardVelocity_1 (this p1)))
(defmethod jm_setMaxForwardVelocity_1 ((this VelocityProperties) _maxForwardVelocity)
  (declare (ignorable this _maxForwardVelocity))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_maxForwardVelocity) _maxForwardVelocity))))

    
(unless (fboundp 'jm_getMaxReverseVelocity_0) (defgeneric jm_getMaxReverseVelocity_0 (this)))
(defmethod jm_getMaxReverseVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_maxReverseVelocity)))))

    
(unless (fboundp 'jm_setMaxReverseVelocity_1) (defgeneric jm_setMaxReverseVelocity_1 (this p1)))
(defmethod jm_setMaxReverseVelocity_1 ((this VelocityProperties) _maxReverseVelocity)
  (declare (ignorable this _maxReverseVelocity))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_maxReverseVelocity) _maxReverseVelocity))))

    
(unless (fboundp 'jm_limitMaxXYForwardVelocity_0) (defgeneric jm_limitMaxXYForwardVelocity_0 (this)))
(defmethod jm_limitMaxXYForwardVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_limitMaxXYVelocity_1 this (jm_getMaxForwardVelocity_0 this)))))

    
(unless (fboundp 'jm_limitMaxXYReverseVelocity_0) (defgeneric jm_limitMaxXYReverseVelocity_0 (this)))
(defmethod jm_limitMaxXYReverseVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_limitMaxXYVelocity_1 this (jm_getMaxReverseVelocity_0 this)))))

    
(unless (fboundp 'jm_limitMaxYForwardVelocity_0) (defgeneric jm_limitMaxYForwardVelocity_0 (this)))
(defmethod jm_limitMaxYForwardVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_limitMaxYVelocity_1 this (jm_getMaxForwardVelocity_0 this)))))

    
(unless (fboundp 'jm_limitMaxYReverseVelocity_0) (defgeneric jm_limitMaxYReverseVelocity_0 (this)))
(defmethod jm_limitMaxYReverseVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_limitMaxYVelocity_1 this (jm_getMaxReverseVelocity_0 this)))))

    
(unless (fboundp 'jm_limitMaxXForwardVelocity_0) (defgeneric jm_limitMaxXForwardVelocity_0 (this)))
(defmethod jm_limitMaxXForwardVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_limitMaxXVelocity_1 this (jm_getMaxForwardVelocity_0 this)))))

    
(unless (fboundp 'jm_limitMaxXReverseVelocity_0) (defgeneric jm_limitMaxXReverseVelocity_0 (this)))
(defmethod jm_limitMaxXReverseVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_limitMaxXVelocity_1 this (jm_getMaxReverseVelocity_0 this)))))

    
(unless (fboundp 'jm_isOverXYMaxForwardVelocity_0) (defgeneric jm_isOverXYMaxForwardVelocity_0 (this)))
(defmethod jm_isOverXYMaxForwardVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isOverXYMaxVelocity_1 this (jm_getMaxForwardVelocity_0 this))))))

    
(unless (fboundp 'jm_isOverXYMaxReverseVelocity_0) (defgeneric jm_isOverXYMaxReverseVelocity_0 (this)))
(defmethod jm_isOverXYMaxReverseVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isOverXYMaxVelocity_1 this (jm_getMaxReverseVelocity_0 this))))))

    
(unless (fboundp 'jm_limitXYToForwardAndReverseMaxVelocity_0) (defgeneric jm_limitXYToForwardAndReverseMaxVelocity_0 (this)))
(defmethod jm_limitXYToForwardAndReverseMaxVelocity_0 ((this VelocityProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_limitMaxXYForwardVelocity_0 this)
        (jm_limitMaxXYReverseVelocity_0 this))))

    
(unless (fboundp 'jm_limitMaxXYVelocity_1) (defgeneric jm_limitMaxXYVelocity_1 (this p1)))
(defmethod jm_limitMaxXYVelocity_1 ((this VelocityProperties) _maxVelocity)
  (declare (ignorable this _maxVelocity))
  (let ()
    (block jreturn
        (jm_limitMaxXVelocity_1 this _maxVelocity)
        (jm_limitMaxYVelocity_1 this _maxVelocity))))

    
(unless (fboundp 'jm_limitMaxPositiveYVelocity_1) (defgeneric jm_limitMaxPositiveYVelocity_1 (this p1)))
(defmethod jm_limitMaxPositiveYVelocity_1 ((this VelocityProperties) _maxVelocity)
  (declare (ignorable this _maxVelocity))
  (let ()
    (block jreturn
        (if (> (jm_getUnscaled_0 (slot-value this 'f_velocityYBasicDecimal)) _maxVelocity)
            (progn
            (jm_setint_1 (slot-value this 'f_velocityYBasicDecimal) _maxVelocity))))))

    
(unless (fboundp 'jm_limitMaxNegativeYVelocity_1) (defgeneric jm_limitMaxNegativeYVelocity_1 (this p1)))
(defmethod jm_limitMaxNegativeYVelocity_1 ((this VelocityProperties) _maxVelocity)
  (declare (ignorable this _maxVelocity))
  (let ()
    (block jreturn
        (if (< (jm_getUnscaled_0 (slot-value this 'f_velocityYBasicDecimal)) (JR.i32 (- _maxVelocity)))
            (progn
            (jm_setint_1 (slot-value this 'f_velocityYBasicDecimal) (JR.i32 (- _maxVelocity))))))))

    
(unless (fboundp 'jm_limitMaxYVelocity_1) (defgeneric jm_limitMaxYVelocity_1 (this p1)))
(defmethod jm_limitMaxYVelocity_1 ((this VelocityProperties) _maxVelocity)
  (declare (ignorable this _maxVelocity))
  (let ()
    (block jreturn
        (jm_limitMaxPositiveYVelocity_1 this _maxVelocity)
        (jm_limitMaxNegativeYVelocity_1 this _maxVelocity))))

    
(unless (fboundp 'jm_limitMaxXVelocity_1) (defgeneric jm_limitMaxXVelocity_1 (this p1)))
(defmethod jm_limitMaxXVelocity_1 ((this VelocityProperties) _maxVelocity)
  (declare (ignorable this _maxVelocity))
  (let ()
    (block jreturn
        (if (> (jm_getUnscaled_0 (slot-value this 'f_velocityXBasicDecimal)) _maxVelocity)
            (progn
            (jm_setint_1 (slot-value this 'f_velocityXBasicDecimal) _maxVelocity)))
        (if (< (jm_getUnscaled_0 (slot-value this 'f_velocityXBasicDecimal)) (JR.i32 (- _maxVelocity)))
            (progn
            (jm_setint_1 (slot-value this 'f_velocityXBasicDecimal) (JR.i32 (- _maxVelocity))))))))

    
(unless (fboundp 'jm_isOverXYMaxVelocity_1) (defgeneric jm_isOverXYMaxVelocity_1 (this p1)))
(defmethod jm_isOverXYMaxVelocity_1 ((this VelocityProperties) _maxVelocity)
  (declare (ignorable this _maxVelocity))
  (let ()
    (block jreturn
        (if (> (jm_getUnscaled_0 (slot-value this 'f_velocityXBasicDecimal)) _maxVelocity)
            (progn
            (return-from jreturn t)))
        (if (< (jm_getUnscaled_0 (slot-value this 'f_velocityXBasicDecimal)) (JR.i32 (- _maxVelocity)))
            (progn
            (return-from jreturn t)))
        (if (> (jm_getUnscaled_0 (slot-value this 'f_velocityYBasicDecimal)) _maxVelocity)
            (progn
            (return-from jreturn t)))
        (if (< (jm_getUnscaled_0 (slot-value this 'f_velocityYBasicDecimal)) (JR.i32 (- _maxVelocity)))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_setVelocityi_3) (defgeneric jm_setVelocityi_3 (this p1 p2 p3)))
(defmethod jm_setVelocityi_3 ((this VelocityProperties) _magnitude _angle _otherAngle)
  (declare (ignorable this _magnitude _angle _otherAngle))
  (let ()
    (block jreturn
        (call-next-method this _magnitude _angle _otherAngle)
        (jm_limitXYToForwardAndReverseMaxVelocity_0 this))))

    
(unless (fboundp 'jm_addVelocityi_3) (defgeneric jm_addVelocityi_3 (this p1 p2 p3)))
(defmethod jm_addVelocityi_3 ((this VelocityProperties) _magnitude _angle _otherAngle)
  (declare (ignorable this _magnitude _angle _otherAngle))
  (let ()
    (block jreturn
        (call-next-method this _magnitude _angle _otherAngle)
        (jm_limitXYToForwardAndReverseMaxVelocity_0 this))))



