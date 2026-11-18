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

(defclass HealthInterface (JObject)
  ())

(defun HealthInterface.jnew_0 ()
  (let ((this (make-instance 'HealthInterface)))
    this))

    
(unless (fboundp 'jm_isAlive_0) (defgeneric jm_isAlive_0 (this)))
(defmethod jm_isAlive_0 ((this HealthInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isAlive")))

    
(unless (fboundp 'jm_damage_1) (defgeneric jm_damage_1 (this p1)))
(defmethod jm_damage_1 ((this HealthInterface) _ahealth)
  (declare (ignorable this _ahealth))
  (error (JR.newException "AbstractMethodError" "damage")))

    
(unless (fboundp 'jm_heal_1) (defgeneric jm_heal_1 (this p1)))
(defmethod jm_heal_1 ((this HealthInterface) _ahealth)
  (declare (ignorable this _ahealth))
  (error (JR.newException "AbstractMethodError" "heal")))

    
(unless (fboundp 'jm_healMax_0) (defgeneric jm_healMax_0 (this)))
(defmethod jm_healMax_0 ((this HealthInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "healMax")))

    
(unless (fboundp 'jm_getMaxHealth_0) (defgeneric jm_getMaxHealth_0 (this)))
(defmethod jm_getMaxHealth_0 ((this HealthInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getMaxHealth")))

    
(unless (fboundp 'jm_setMaxHealth_1) (defgeneric jm_setMaxHealth_1 (this p1)))
(defmethod jm_setMaxHealth_1 ((this HealthInterface) _maxHealth)
  (declare (ignorable this _maxHealth))
  (error (JR.newException "AbstractMethodError" "setMaxHealth")))

    
(unless (fboundp 'jm_getHealth_0) (defgeneric jm_getHealth_0 (this)))
(defmethod jm_getHealth_0 ((this HealthInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getHealth")))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this HealthInterface) _healthListenerInterface)
  (declare (ignorable this _healthListenerInterface))
  (error (JR.newException "AbstractMethodError" "addListener")))



