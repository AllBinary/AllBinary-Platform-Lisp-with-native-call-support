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

(defclass DragVelocityBehavior (VelocityBehaviorBase)
  ())

(defvar DragVelocityBehavior.jcell_instance :jnone)
(defun DragVelocityBehavior.jstatic_instance ()
  (when (eq DragVelocityBehavior.jcell_instance :jnone) (setf DragVelocityBehavior.jcell_instance (DragVelocityBehavior.jnew_0)))
  DragVelocityBehavior.jcell_instance)
(defun (setf DragVelocityBehavior.jstatic_instance) (value) (setf DragVelocityBehavior.jcell_instance value))

(defun DragVelocityBehavior.jnew_0 ()
  (let ((this (make-instance 'DragVelocityBehavior)))
    this))

    
(unless (fboundp 'jm_reduce_3) (defgeneric jm_reduce_3 (this p1 p2 p3)))
(defmethod jm_reduce_3 ((this DragVelocityBehavior) _velocityProperties _nominator _denominator)
  (declare (ignorable this _velocityProperties _nominator _denominator))
  (let (_basicDecimal)
  (declare (ignorable _basicDecimal))
    (block jreturn
        (if (not (eq (jm_getUnscaled_0 (jm_getVelocityXBasicDecimalP_0 _velocityProperties)) 0))
            (progn
            (setf _basicDecimal (jm_getVelocityXBasicDecimalP_0 _velocityProperties))
            (jm_multiplyint_1 _basicDecimal _nominator)
            (jm_divideint_1 _basicDecimal _denominator)))
        (if (not (eq (jm_getUnscaled_0 (jm_getVelocityYBasicDecimalP_0 _velocityProperties)) 0))
            (progn
            (setf _basicDecimal (jm_getVelocityYBasicDecimalP_0 _velocityProperties))
            (jm_multiplyint_1 _basicDecimal _nominator)
            (jm_divideint_1 _basicDecimal _denominator))))))

    
(unless (fboundp 'jm_reduceX_3) (defgeneric jm_reduceX_3 (this p1 p2 p3)))
(defmethod jm_reduceX_3 ((this DragVelocityBehavior) _velocityProperties _nominator _denominator)
  (declare (ignorable this _velocityProperties _nominator _denominator))
  (let (_basicDecimal)
  (declare (ignorable _basicDecimal))
    (block jreturn
        (setf _basicDecimal (jm_getVelocityXBasicDecimalP_0 _velocityProperties))
        (if (not (eq (jm_getUnscaled_0 _basicDecimal) 0))
            (progn
            (jm_multiplyint_1 _basicDecimal _nominator)
            (jm_divideint_1 _basicDecimal _denominator))))))

    
(unless (fboundp 'jm_reduceY_3) (defgeneric jm_reduceY_3 (this p1 p2 p3)))
(defmethod jm_reduceY_3 ((this DragVelocityBehavior) _velocityProperties _nominator _denominator)
  (declare (ignorable this _velocityProperties _nominator _denominator))
  (let (_basicDecimal)
  (declare (ignorable _basicDecimal))
    (block jreturn
        (if (not (eq (jm_getUnscaled_0 (jm_getVelocityYBasicDecimalP_0 _velocityProperties)) 0))
            (progn
            (setf _basicDecimal (jm_getVelocityYBasicDecimalP_0 _velocityProperties))
            (jm_multiplyint_1 _basicDecimal _nominator)
            (jm_divideint_1 _basicDecimal _denominator))))))



