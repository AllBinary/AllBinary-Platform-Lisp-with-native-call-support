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

(defclass XYOscillateVelocityMovement (BasicConstantVelocityMovement)
  ((f_oscillateMin :initform 0)
   (f_oscillateMax :initform 0)
   (f_oscillate :initform 0)
   (f_oscillatePositive :initform nil)))

    
(defun XYOscillateVelocityMovement.jnew_3 (_speedBasicDecimal _oscillateMin _oscillateMax)
  (declare (ignorable _speedBasicDecimal _oscillateMin _oscillateMax))
  (let ((this (make-instance 'XYOscillateVelocityMovement)))
    
    
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_oscillateMin) _oscillateMin)
        (setf (slot-value this 'f_oscillateMax) _oscillateMax)))
    this))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this XYOscillateVelocityMovement) _layer)
  (declare (ignorable this _layer))
  (let ()
    (block jreturn
        (call-next-method this _layer)
        (if (< (slot-value this 'f_oscillate) (slot-value this 'f_oscillateMin))
            (progn
            (setf (slot-value this 'f_oscillatePositive) t)
            (jm_addint_1 (jm_getVelocityYBasicDecimalP_0 (jm_getVelocityProperties_0 this)) 3000))
            (if (> (slot-value this 'f_oscillate) (slot-value this 'f_oscillateMax))
            (progn
            (setf (slot-value this 'f_oscillatePositive) nil)
            (jm_subtractint_1 (jm_getVelocityYBasicDecimalP_0 (jm_getVelocityProperties_0 this)) 3000))))
        (if (slot-value this 'f_oscillatePositive)
            (progn
            (setf (slot-value this 'f_oscillate) (JR.i32 (+ (slot-value this 'f_oscillate) 1)))
            (jm_addint_1 (jm_getVelocityXBasicDecimalP_0 (jm_getVelocityProperties_0 this)) 5000))
            (progn
            (setf (slot-value this 'f_oscillate) (JR.i32 (- (slot-value this 'f_oscillate) 1)))
            (jm_subtractint_1 (jm_getVelocityXBasicDecimalP_0 (jm_getVelocityProperties_0 this)) 5000))))))



