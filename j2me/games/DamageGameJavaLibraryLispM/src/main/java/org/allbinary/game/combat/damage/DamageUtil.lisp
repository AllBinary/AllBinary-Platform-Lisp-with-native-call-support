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

(defclass DamageUtil (JObject)
  ((f_logUtil :initform nil)
   (f_COLLIDE :initform nil)))

(defvar DamageUtil.jcell_instance :jnone)
(defun DamageUtil.jstatic_instance ()
  (when (eq DamageUtil.jcell_instance :jnone) (setf DamageUtil.jcell_instance (DamageUtil.jnew_0)))
  DamageUtil.jcell_instance)
(defun (setf DamageUtil.jstatic_instance) (value) (setf DamageUtil.jcell_instance value))

    
(defun DamageUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DamageUtil.jstatic_instance)))))

    
(defun DamageUtil.jnew_0 ()
  (let ((this (make-instance 'DamageUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_COLLIDE) "collide")
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this DamageUtil) _damageableInterface _damageableInterface2)
  (declare (ignorable this _damageableInterface _damageableInterface2))
  (let ()
    (block jreturn
        (jm_damage_2 _damageableInterface (jm_getDamage_1 _damageableInterface2 0) 0))))

    
(unless (fboundp 'jm_debugDamage_2) (defgeneric jm_debugDamage_2 (this p1 p2)))
(defmethod jm_debugDamage_2 ((this DamageUtil) _collidableInterfaceCompositeInterface1 _collidableInterfaceCompositeInterface)
  (declare (ignorable this _collidableInterfaceCompositeInterface1 _collidableInterfaceCompositeInterface))
  (let (_collidableDestroyableDamageableLayer _damage _stringBuffer)
  (declare (ignorable _collidableDestroyableDamageableLayer _damage _stringBuffer))
    (block jreturn
        (setf _collidableDestroyableDamageableLayer _collidableInterfaceCompositeInterface)
        (setf _damage (jm_getDamage_1 _collidableDestroyableDamageableLayer 0))
        (if (> _damage 20000)
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer "Collision ")
            (jm_append_1 _stringBuffer (jm_toString_0 _collidableInterfaceCompositeInterface1))
            (jm_append_1 _stringBuffer " with: ")
            (jm_append_1 _stringBuffer (jm_toString_0 _collidableInterfaceCompositeInterface))
            (jm_append_1 _stringBuffer " damage: ")
            (jm_appendint_1 _stringBuffer _damage)
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) _collidableInterfaceCompositeInterface1 (slot-value this 'f_COLLIDE)))))))



