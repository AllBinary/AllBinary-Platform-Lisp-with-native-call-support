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

(defclass SimpleWeaponProperties (JObject)
  ((f_damage :initform 0)
   (f_dissipation :initform 0)
   (f_range :initform 0)))

(defun SimpleWeaponProperties.jnew_0 ()
  (let ((this (make-instance 'SimpleWeaponProperties)))
    
    
    
    this))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this SimpleWeaponProperties) _simpleWeaponProperties)
  (declare (ignorable this _simpleWeaponProperties))
  (let ()
    (block jreturn
        (jm_setDamage_1 this (jm_getDamage_0 _simpleWeaponProperties))
        (jm_setDissipation_1 this (jm_getDissipation_0 _simpleWeaponProperties))
        (jm_setRange_1 this (jm_getRange_0 _simpleWeaponProperties)))))

    
(unless (fboundp 'jm_setDamage_1) (defgeneric jm_setDamage_1 (this p1)))
(defmethod jm_setDamage_1 ((this SimpleWeaponProperties) _damage)
  (declare (ignorable this _damage))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_damage) _damage))))

    
(unless (fboundp 'jm_getDamage_0) (defgeneric jm_getDamage_0 (this)))
(defmethod jm_getDamage_0 ((this SimpleWeaponProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_damage)))))

    
(unless (fboundp 'jm_setDissipation_1) (defgeneric jm_setDissipation_1 (this p1)))
(defmethod jm_setDissipation_1 ((this SimpleWeaponProperties) _dissipation)
  (declare (ignorable this _dissipation))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dissipation) _dissipation))))

    
(unless (fboundp 'jm_getDissipation_0) (defgeneric jm_getDissipation_0 (this)))
(defmethod jm_getDissipation_0 ((this SimpleWeaponProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dissipation)))))

    
(unless (fboundp 'jm_getRange_0) (defgeneric jm_getRange_0 (this)))
(defmethod jm_getRange_0 ((this SimpleWeaponProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_range)))))

    
(unless (fboundp 'jm_setRange_1) (defgeneric jm_setRange_1 (this p1)))
(defmethod jm_setRange_1 ((this SimpleWeaponProperties) _range)
  (declare (ignorable this _range))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_range) _range))))



