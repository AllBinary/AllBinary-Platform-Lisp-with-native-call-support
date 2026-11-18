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
;;;; package org.allbinary.game.health

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Health (JObject)
  ((f_health :initform 0)
   (f_maxHealth :initform 0)
   (f_healthListenerInterface :initform nil)))

(defvar Health.jcell_NULL_HEALTH :jnone)
(defun Health.jstatic_NULL_HEALTH ()
  (when (eq Health.jcell_NULL_HEALTH :jnone) (setf Health.jcell_NULL_HEALTH (Health.jnew_1 0)))
  Health.jcell_NULL_HEALTH)
(defun (setf Health.jstatic_NULL_HEALTH) (value) (setf Health.jcell_NULL_HEALTH value))

(defvar Health.jcell_NAME :jnone)
(defun Health.jstatic_NAME ()
  (when (eq Health.jcell_NAME :jnone) (setf Health.jcell_NAME "Health Resource"))
  Health.jcell_NAME)
(defun (setf Health.jstatic_NAME) (value) (setf Health.jcell_NAME value))

(defvar Health.jcell_HEALTH_LABEL :jnone)
(defun Health.jstatic_HEALTH_LABEL ()
  (when (eq Health.jcell_HEALTH_LABEL :jnone) (setf Health.jcell_HEALTH_LABEL "Health: "))
  Health.jcell_HEALTH_LABEL)
(defun (setf Health.jstatic_HEALTH_LABEL) (value) (setf Health.jcell_HEALTH_LABEL value))

(defvar Health.jcell_MAX_HEALTH_LABEL :jnone)
(defun Health.jstatic_MAX_HEALTH_LABEL ()
  (when (eq Health.jcell_MAX_HEALTH_LABEL :jnone) (setf Health.jcell_MAX_HEALTH_LABEL " Max: "))
  Health.jcell_MAX_HEALTH_LABEL)
(defun (setf Health.jstatic_MAX_HEALTH_LABEL) (value) (setf Health.jcell_MAX_HEALTH_LABEL value))

    
(defun Health.jnew_1 (_maxHealth)
  (declare (ignorable _maxHealth))
  (let ((this (make-instance 'Health)))
    
    
    (setf (slot-value this 'f_healthListenerInterface) (NullHealthListener.jstatic_NULL_HEALTH_LISTENER))
  (let ()
    (block jreturn
        (jm_setMaxHealth_1 this _maxHealth)
        (jm_setHealth_1 this _maxHealth)))
    this))

    
(unless (fboundp 'jm_heal_1) (defgeneric jm_heal_1 (this p1)))
(defmethod jm_heal_1 ((this Health) _ahealth)
  (declare (ignorable this _ahealth))
  (let (_newHealth)
  (declare (ignorable _newHealth))
    (block jreturn
        (setf _newHealth (JR.i32 (+ (jm_getHealth_0 this) _ahealth)))
        (if (> _newHealth (jm_getMaxHealth_0 this))
            (progn
            (jm_setHealth_1 this (jm_getMaxHealth_0 this)))
            (progn
            (jm_setHealth_1 this _newHealth))))))

    
(unless (fboundp 'jm_healMax_0) (defgeneric jm_healMax_0 (this)))
(defmethod jm_healMax_0 ((this Health))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setHealth_1 this (jm_getMaxHealth_0 this)))))

    
(unless (fboundp 'jm_isDamaged_0) (defgeneric jm_isDamaged_0 (this)))
(defmethod jm_isDamaged_0 ((this Health))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (/= (jm_getHealth_0 this) (jm_getMaxHealth_0 this))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_damage_1) (defgeneric jm_damage_1 (this p1)))
(defmethod jm_damage_1 ((this Health) _ahealth)
  (declare (ignorable this _ahealth))
  (let (_stringBuffer _health)
  (declare (ignorable _stringBuffer _health))
    (block jreturn
        (if (< _ahealth 0)
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer "******* Trying to heal when damaging. Damage: ")
            (jm_appendint_1 _stringBuffer _ahealth)
            (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
            (jm_append_1 _stringBuffer (jm_toString_0 this))
            (ForcedLogUtil.jm_log_2 (jm_toString_0 _stringBuffer) this)
            (return-from jreturn)))
        (setf _health (JR.i32 (- (jm_getHealth_0 this) _ahealth)))
        (jm_setHealth_1 this _health))))

    
(unless (fboundp 'jm_isAlive_0) (defgeneric jm_isAlive_0 (this)))
(defmethod jm_isAlive_0 ((this Health))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (<= (jm_getHealth_0 this) 0)
            (progn
            (return-from jreturn nil))
            (progn
            (return-from jreturn t))))))

    
(unless (fboundp 'jm_getMaxHealth_0) (defgeneric jm_getMaxHealth_0 (this)))
(defmethod jm_getMaxHealth_0 ((this Health))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_maxHealth)))))

    
(unless (fboundp 'jm_setMaxHealth_1) (defgeneric jm_setMaxHealth_1 (this p1)))
(defmethod jm_setMaxHealth_1 ((this Health) _maxHealth)
  (declare (ignorable this _maxHealth))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_maxHealth) _maxHealth))))

    
(unless (fboundp 'jm_setHealth_1) (defgeneric jm_setHealth_1 (this p1)))
(defmethod jm_setHealth_1 ((this Health) _health)
  (declare (ignorable this _health))
  (let ()
    (block jreturn
        (if (> _health (jm_getMaxHealth_0 this))
            (progn
            (setf (slot-value this 'f_health) (jm_getMaxHealth_0 this)))
            (if (< _health 0)
            (progn
            (setf (slot-value this 'f_health) 0))
            (progn
            (setf (slot-value this 'f_health) _health))))
        (if (not (null (slot-value this 'f_healthListenerInterface)))
            (progn
            (jm_onHealthChange_0 (slot-value this 'f_healthListenerInterface)))))))

    
(unless (fboundp 'jm_getHealth_0) (defgeneric jm_getHealth_0 (this)))
(defmethod jm_getHealth_0 ((this Health))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_health)))))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this Health) _healthGraphic)
  (declare (ignorable this _healthGraphic))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_healthListenerInterface) _healthGraphic))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this Health))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (Health.jstatic_HEALTH_LABEL))
        (jm_appendint_1 _stringBuffer (slot-value this 'f_health))
        (jm_append_1 _stringBuffer (Health.jstatic_MAX_HEALTH_LABEL))
        (jm_appendint_1 _stringBuffer (slot-value this 'f_maxHealth))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



