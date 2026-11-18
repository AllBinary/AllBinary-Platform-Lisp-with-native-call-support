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

(defclass DamageableBaseBehavior (JObject)
  ())

(defvar DamageableBaseBehavior.jcell_instance :jnone)
(defun DamageableBaseBehavior.jstatic_instance ()
  (when (eq DamageableBaseBehavior.jcell_instance :jnone) (setf DamageableBaseBehavior.jcell_instance (DamageableBaseBehavior.jnew_0)))
  DamageableBaseBehavior.jcell_instance)
(defun (setf DamageableBaseBehavior.jstatic_instance) (value) (setf DamageableBaseBehavior.jcell_instance value))

(defun DamageableBaseBehavior.jnew_0 ()
  (let ((this (make-instance 'DamageableBaseBehavior)))
    this))

    
(defun DamageableBaseBehavior.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DamageableBaseBehavior.jstatic_instance)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this DamageableBaseBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.className this)))))

    
(unless (fboundp 'jm_damage_2) (defgeneric jm_damage_2 (this p1 p2)))
(defmethod jm_damage_2 ((this DamageableBaseBehavior) _damage _damageType)
  (declare (ignorable this _damage _damageType))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getDamage_1) (defgeneric jm_getDamage_1 (this p1)))
(defmethod jm_getDamage_1 ((this DamageableBaseBehavior) _damageType)
  (declare (ignorable this _damageType))
  (let ()
    (block jreturn
        (return-from jreturn 6000))))



