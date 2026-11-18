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
;;;; package org.allbinary.game.layer.special

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CollidableDestroyableDamageableBehavior (CollidableBaseBehavior)
  ((f_damageUtil :initform nil)))

    
(defun CollidableDestroyableDamageableBehavior.jnew_1 (_collidable)
  (declare (ignorable _collidable))
  (let ((this (make-instance 'CollidableDestroyableDamageableBehavior)))
    (setf (slot-value this 'f_damageUtil) (DamageUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_isCollision_2) (defgeneric jm_isCollision_2 (this p1 p2)))
(defmethod jm_isCollision_2 ((this CollidableDestroyableDamageableBehavior) _ownerLayer _collisionLayer)
  (declare (ignorable this _ownerLayer _collisionLayer))
  (let ()
    (block jreturn
        (if (not (eq (aref (jm_getGroupInterface_0 _ownerLayer) 0) (aref (jm_getGroupInterface_0 _collisionLayer) 0)))
            (progn
            (return-from jreturn (call-next-method this _ownerLayer _collisionLayer))))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_collide_2) (defgeneric jm_collide_2 (this p1 p2)))
(defmethod jm_collide_2 ((this CollidableDestroyableDamageableBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let (_ownerCollidableDestroyableDamageableLayer _collidableDestroyableDamageableLayer)
  (declare (ignorable _ownerCollidableDestroyableDamageableLayer _collidableDestroyableDamageableLayer))
    (block jreturn
        (setf _ownerCollidableDestroyableDamageableLayer _ownerLayer)
        (setf _collidableDestroyableDamageableLayer _collidableInterfaceCompositeInterface)
        (jm_damage_2 _ownerCollidableDestroyableDamageableLayer (jm_getDamage_1 _collidableDestroyableDamageableLayer 0) 0))))

    
(unless (fboundp 'jm_isCollisionInterface_2) (defgeneric jm_isCollisionInterface_2 (this p1 p2)))
(defmethod jm_isCollisionInterface_2 ((this CollidableDestroyableDamageableBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 "No Longer Used" this)
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_collideInterface_2) (defgeneric jm_collideInterface_2 (this p1 p2)))
(defmethod jm_collideInterface_2 ((this CollidableDestroyableDamageableBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 "No Longer Used" this))))



