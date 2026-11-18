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
;;;; package org.allbinary.android.input.motion

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnalogControllerHelper (JObject)
  ((f_reduceTimeFactor :initform 0)
   (f_SCALE_VALUE :initform 0)
   (f_rightTimeElapsedHelper :initform nil)
   (f_leftTimeElapsedHelper :initform nil)
   (f_downTimeElapsedHelper :initform nil)
   (f_upTimeElapsedHelper :initform nil)))

    
(defun AnalogControllerHelper.jnew_1 (_reduceTimeFactor)
  (declare (ignorable _reduceTimeFactor))
  (let ((this (make-instance 'AnalogControllerHelper)))
    
    (setf (slot-value this 'f_SCALE_VALUE) (slot-value (AnalogControllerConfigurationFactory.jm_getInstance_0) 'f_SCALE_VALUE))
    (setf (slot-value this 'f_rightTimeElapsedHelper) (TimeDelayHelper.jnew_1 0))
    (setf (slot-value this 'f_leftTimeElapsedHelper) (TimeDelayHelper.jnew_1 0))
    (setf (slot-value this 'f_downTimeElapsedHelper) (TimeDelayHelper.jnew_1 0))
    (setf (slot-value this 'f_upTimeElapsedHelper) (TimeDelayHelper.jnew_1 0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_reduceTimeFactor) _reduceTimeFactor)))
    this))

    
(unless (fboundp 'jm_right_2) (defgeneric jm_right_2 (this p1 p2)))
(defmethod jm_right_2 ((this AnalogControllerHelper) _collidableDestroyableDamageableLayer _xAnalogValue)
  (declare (ignorable this _collidableDestroyableDamageableLayer _xAnalogValue))
  (let ()
    (block jreturn
        (setf (slot-value (slot-value this 'f_rightTimeElapsedHelper) 'f_delay) (ash (JR.i32 (- (slot-value this 'f_SCALE_VALUE) _xAnalogValue)) (- (logand (slot-value this 'f_reduceTimeFactor) 31))))
        (if (jm_isTimeTNT_0 (slot-value this 'f_rightTimeElapsedHelper))
            (progn
            (jm_right_0 _collidableDestroyableDamageableLayer))))))

    
(unless (fboundp 'jm_left_2) (defgeneric jm_left_2 (this p1 p2)))
(defmethod jm_left_2 ((this AnalogControllerHelper) _collidableDestroyableDamageableLayer _xAnalogValue)
  (declare (ignorable this _collidableDestroyableDamageableLayer _xAnalogValue))
  (let ()
    (block jreturn
        (setf (slot-value (slot-value this 'f_leftTimeElapsedHelper) 'f_delay) (ash (JR.i32 (+ (slot-value this 'f_SCALE_VALUE) _xAnalogValue)) (- (logand (slot-value this 'f_reduceTimeFactor) 31))))
        (if (jm_isTimeTNT_0 (slot-value this 'f_leftTimeElapsedHelper))
            (progn
            (jm_left_0 _collidableDestroyableDamageableLayer))))))

    
(unless (fboundp 'jm_up_2) (defgeneric jm_up_2 (this p1 p2)))
(defmethod jm_up_2 ((this AnalogControllerHelper) _collidableDestroyableDamageableLayer _xAnalogValue)
  (declare (ignorable this _collidableDestroyableDamageableLayer _xAnalogValue))
  (let ()
    (block jreturn
        (setf (slot-value (slot-value this 'f_upTimeElapsedHelper) 'f_delay) (ash (JR.i32 (- (slot-value this 'f_SCALE_VALUE) _xAnalogValue)) (- (logand (slot-value this 'f_reduceTimeFactor) 31))))
        (if (jm_isTimeTNT_0 (slot-value this 'f_upTimeElapsedHelper))
            (progn
            (jm_up_0 _collidableDestroyableDamageableLayer))))))

    
(unless (fboundp 'jm_down_2) (defgeneric jm_down_2 (this p1 p2)))
(defmethod jm_down_2 ((this AnalogControllerHelper) _collidableDestroyableDamageableLayer _xAnalogValue)
  (declare (ignorable this _collidableDestroyableDamageableLayer _xAnalogValue))
  (let ()
    (block jreturn
        (setf (slot-value (slot-value this 'f_downTimeElapsedHelper) 'f_delay) (ash (JR.i32 (+ (slot-value this 'f_SCALE_VALUE) _xAnalogValue)) (- (logand (slot-value this 'f_reduceTimeFactor) 31))))
        (if (jm_isTimeTNT_0 (slot-value this 'f_downTimeElapsedHelper))
            (progn
            (jm_down_0 _collidableDestroyableDamageableLayer))))))



