;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.layer.weapon

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TempExplosionWeaponLayer (SimpleWeaponLayer)
  ((f_weaponProperties :initform nil)
   (f_timeDelayHelper :initform nil)))

    
(defun TempExplosionWeaponLayer.jnew_6 (_name _movement _animationInterface _rectangle _viewPosition _timeDelay)
  (declare (ignorable _name _movement _animationInterface _rectangle _viewPosition _timeDelay))
  (let ((this (make-instance 'TempExplosionWeaponLayer)))
    (setf (slot-value this 'f_weaponProperties) (WeaponProperties.jnew_5 (JR.i64 (- 1)) (JR.i64 (- 1)) 0 1000 (JR.i16 0)))
    (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 0))
  (let ()
    (block jreturn
        nil
        (setf (slot-value (slot-value this 'f_timeDelayHelper) 'f_delay) _timeDelay)))
    this))

    
(unless (fboundp 'jm_processTick_1) (defgeneric jm_processTick_1 (this p1)))
(defmethod jm_processTick_1 ((this TempExplosionWeaponLayer) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (if (jm_isTime_1 (slot-value this 'f_timeDelayHelper) (slot-value (GameTickTimeDelayHelperFactory.jm_getInstance_0) 'f_startTime))
            (progn
            (jm_collide_2 (jm_getCollidableInferface_0 this) this this)
            (setf (slot-value this 'f_totalDamage) (JR.i32 (+ (jm_getInitDamage_0 this) 1)))))
        (call-next-method this _allBinaryLayerManager))))



