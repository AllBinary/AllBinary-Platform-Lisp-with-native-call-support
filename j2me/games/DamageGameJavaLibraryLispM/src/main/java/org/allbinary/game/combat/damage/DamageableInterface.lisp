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
;;;; package org.allbinary.game.combat.damage

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DamageableInterface (JObject)
  ())

(defun DamageableInterface.jnew_0 ()
  (let ((this (make-instance 'DamageableInterface)))
    this))

    
(unless (fboundp 'jm_damage_2) (defgeneric jm_damage_2 (this p1 p2)))
(defmethod jm_damage_2 ((this DamageableInterface) _damage _damageType)
  (declare (ignorable this _damage _damageType))
  (error (JR.newException "AbstractMethodError" "damage")))

    
(unless (fboundp 'jm_getDamage_1) (defgeneric jm_getDamage_1 (this p1)))
(defmethod jm_getDamage_1 ((this DamageableInterface) _damageType)
  (declare (ignorable this _damageType))
  (error (JR.newException "AbstractMethodError" "getDamage")))



