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
;;;; package org.allbinary.game.combat.weapon

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass WeaponProperties (SimpleWeaponProperties)
  ((f_reloadTime :initform 0)
   (f_targetingTime :initform 0)
   (f_speed :initform nil)
   (f_MAX :initform 0)
   (f_ZERO :initform 0)))

(defvar WeaponProperties.jcell_NULL_WEAPON_PROPERTIES :jnone)
(defun WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES ()
  (when (eq WeaponProperties.jcell_NULL_WEAPON_PROPERTIES :jnone) (setf WeaponProperties.jcell_NULL_WEAPON_PROPERTIES (WeaponProperties.jnew_5 0 0 0 0 (JR.i16 0))))
  WeaponProperties.jcell_NULL_WEAPON_PROPERTIES)
(defun (setf WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES) (value) (setf WeaponProperties.jcell_NULL_WEAPON_PROPERTIES value))

(defvar WeaponProperties.jcell_messageSent :jnone)
(defun WeaponProperties.jstatic_messageSent ()
  (when (eq WeaponProperties.jcell_messageSent :jnone) (setf WeaponProperties.jcell_messageSent nil))
  WeaponProperties.jcell_messageSent)
(defun (setf WeaponProperties.jstatic_messageSent) (value) (setf WeaponProperties.jcell_messageSent value))

(defvar WeaponProperties.jcell_DAMAGE :jnone)
(defun WeaponProperties.jstatic_DAMAGE ()
  (when (eq WeaponProperties.jcell_DAMAGE :jnone) (setf WeaponProperties.jcell_DAMAGE "Damage: "))
  WeaponProperties.jcell_DAMAGE)
(defun (setf WeaponProperties.jstatic_DAMAGE) (value) (setf WeaponProperties.jcell_DAMAGE value))

(defvar WeaponProperties.jcell_RANGE :jnone)
(defun WeaponProperties.jstatic_RANGE ()
  (when (eq WeaponProperties.jcell_RANGE :jnone) (setf WeaponProperties.jcell_RANGE "Range: "))
  WeaponProperties.jcell_RANGE)
(defun (setf WeaponProperties.jstatic_RANGE) (value) (setf WeaponProperties.jcell_RANGE value))

(defvar WeaponProperties.jcell_RELOAD :jnone)
(defun WeaponProperties.jstatic_RELOAD ()
  (when (eq WeaponProperties.jcell_RELOAD :jnone) (setf WeaponProperties.jcell_RELOAD "Reload: "))
  WeaponProperties.jcell_RELOAD)
(defun (setf WeaponProperties.jstatic_RELOAD) (value) (setf WeaponProperties.jcell_RELOAD value))

    
(defun WeaponProperties.jnew_5 (_reloadTime _targetingTime _speed _damage _dissipation)
  (declare (ignorable _reloadTime _targetingTime _speed _damage _dissipation))
  (let ((this (make-instance 'WeaponProperties)))
    
    
    (setf (slot-value this 'f_speed) (BasicDecimal.jstatic_ZERO_BIGDECIMAL))
    (setf (slot-value this 'f_MAX) 10240)
    (setf (slot-value this 'f_ZERO) 0)
  (let (_MESSAGE _commonStrings _unscaledDamage _scaledDissipation _value)
  (declare (ignorable _MESSAGE _commonStrings _unscaledDamage _scaledDissipation _value))
    (block jreturn
        (if (and (and (< _speed (slot-value this 'f_MAX)) (/= _speed 0)) (not (WeaponProperties.jstatic_messageSent)))
            (progn
            (setf _MESSAGE "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ")
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_put_3 (jm_toString_0 (jm_appendlong_1 (jm_append_1 (StringMaker.jnew_0) _MESSAGE) _speed)) this (slot-value _commonStrings 'f_CONSTRUCTOR))
            (setf (WeaponProperties.jstatic_messageSent) t)))
        (jm_setReloadTime_1 this _reloadTime)
        (jm_setTargetingTime_1 this _targetingTime)
        (jm_setDamage_1 this _damage)
        (jm_setDissipation_1 this _dissipation)
        (jm_setSpeed_1 this (BasicDecimal.jnew_1 _speed))
        (if (/= _dissipation (slot-value this 'f_ZERO))
            (progn
            (setf _unscaledDamage (JR.i32 (* (jm_getUnscaled_0 (slot-value this 'f_speed)) _damage)))
            (setf _scaledDissipation (JR.i32 (* _dissipation (jm_getScaledFactorValue_0 (slot-value this 'f_speed)))))
            (setf _value (JR.ldiv _unscaledDamage _scaledDissipation))
            (jm_setRange_1 this (JR.idiv (JR.i32 (JR.i64 (* _value 9))) 10))))))
    this))

    
(unless (fboundp 'jm_setReloadTime_1) (defgeneric jm_setReloadTime_1 (this p1)))
(defmethod jm_setReloadTime_1 ((this WeaponProperties) _reloadTime)
  (declare (ignorable this _reloadTime))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_reloadTime) _reloadTime))))

    
(unless (fboundp 'jm_getReloadTime_0) (defgeneric jm_getReloadTime_0 (this)))
(defmethod jm_getReloadTime_0 ((this WeaponProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_reloadTime)))))

    
(unless (fboundp 'jm_setTargetingTime_1) (defgeneric jm_setTargetingTime_1 (this p1)))
(defmethod jm_setTargetingTime_1 ((this WeaponProperties) _targetingTime)
  (declare (ignorable this _targetingTime))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_targetingTime) _targetingTime))))

    
(unless (fboundp 'jm_getTargetingTime_0) (defgeneric jm_getTargetingTime_0 (this)))
(defmethod jm_getTargetingTime_0 ((this WeaponProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_targetingTime)))))

    
(unless (fboundp 'jm_getSpeed_0) (defgeneric jm_getSpeed_0 (this)))
(defmethod jm_getSpeed_0 ((this WeaponProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_speed)))))

    
(unless (fboundp 'jm_setSpeed_1) (defgeneric jm_setSpeed_1 (this p1)))
(defmethod jm_setSpeed_1 ((this WeaponProperties) _speed)
  (declare (ignorable this _speed))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_speed) _speed))))

    
(unless (fboundp 'jm_getDamageI_1) (defgeneric jm_getDamageI_1 (this p1)))
(defmethod jm_getDamageI_1 ((this WeaponProperties) _range)
  (declare (ignorable this _range))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- (jm_getDamage_0 this) (JR.idiv (JR.i32 (* (jm_getDissipation_0 this) _range)) (jm_getScaled_0 (slot-value this 'f_speed)))))))))

    
(unless (fboundp 'jm_toStringArray_0) (defgeneric jm_toStringArray_0 (this)))
(defmethod jm_toStringArray_0 ((this WeaponProperties))
  (declare (ignorable this))
  (let (_index _stringArray _stringBuffer)
  (declare (ignorable _index _stringArray _stringBuffer))
    (block jreturn
        (setf _index 0)
        (setf _stringArray (JR.newArray nil 3))
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf (aref _stringArray (prog1 _index (setf _index (JR.i32 (+ _index 1))))) (jm_toString_0 (jm_appendint_1 (jm_append_1 _stringBuffer (WeaponProperties.jstatic_DAMAGE)) (jm_getDamage_0 this))))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (setf (aref _stringArray (prog1 _index (setf _index (JR.i32 (+ _index 1))))) (jm_toString_0 (jm_appendint_1 (jm_append_1 _stringBuffer (WeaponProperties.jstatic_RANGE)) (jm_getRange_0 this))))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (setf (aref _stringArray (prog1 _index (setf _index (JR.i32 (+ _index 1))))) (jm_toString_0 (jm_appendlong_1 (jm_append_1 _stringBuffer (WeaponProperties.jstatic_RELOAD)) (jm_getReloadTime_0 this))))
        (return-from jreturn _stringArray))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this WeaponProperties))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_appendint_1 (jm_append_1 _stringBuffer (WeaponProperties.jstatic_DAMAGE)) (jm_getDamage_0 this))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_appendint_1 (jm_append_1 _stringBuffer (WeaponProperties.jstatic_RANGE)) (jm_getRange_0 this))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_appendlong_1 (jm_append_1 _stringBuffer (WeaponProperties.jstatic_RELOAD)) (jm_getReloadTime_0 this))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



