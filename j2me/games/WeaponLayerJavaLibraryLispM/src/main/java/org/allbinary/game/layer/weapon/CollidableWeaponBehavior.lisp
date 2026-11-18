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
;;;; package org.allbinary.game.layer.weapon

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CollidableWeaponBehavior (CollidableDestroyableDamageableBehavior)
  ((f_collided :initform nil)
   (f_collisionHelper :initform nil)))

(defvar CollidableWeaponBehavior.jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR :jnone)
(defun CollidableWeaponBehavior.jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR ()
  (when (eq CollidableWeaponBehavior.jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR :jnone) (setf CollidableWeaponBehavior.jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  CollidableWeaponBehavior.jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR)
(defun (setf CollidableWeaponBehavior.jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR) (value) (setf CollidableWeaponBehavior.jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR value))

    
(defun CollidableWeaponBehavior.jm_getNullInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (CollidableWeaponBehavior.jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (CollidableWeaponBehavior.jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR) (CollidableWeaponBehavior.jnew_1 nil))))
        (return-from jreturn (CollidableWeaponBehavior.jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR)))))

    
(defun CollidableWeaponBehavior.jnew_1 (_collidable)
  (declare (ignorable _collidable))
  (let ((this (make-instance 'CollidableWeaponBehavior)))
    
    
  (let ()
    (block jreturn
        nil
        (jm_setCollided_1 this nil)
        (jm_setCollidable_1 this t)
        (setf (slot-value this 'f_collisionHelper) (CollidableHelperFactory.jm_getInstance_0))))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this CollidableWeaponBehavior) _sourceLayerInterface)
  (declare (ignorable this _sourceLayerInterface))
  (let ()
    (block jreturn
        (jm_setCollided_1 this nil)
        (jm_setOwnerLayerInterface_1 (slot-value this 'f_collisionHelper) _sourceLayerInterface))))

    
(unless (fboundp 'jm_isCollision_2) (defgeneric jm_isCollision_2 (this p1 p2)))
(defmethod jm_isCollision_2 ((this CollidableWeaponBehavior) _ownerLayer _collisionLayer)
  (declare (ignorable this _ownerLayer _collisionLayer))
  (let ()
    (block jreturn
        (if (jm_isCollidable_1 (slot-value this 'f_collisionHelper) _collisionLayer)
            (progn
            (if (not (eq (aref (jm_getGroupInterface_0 _ownerLayer) 0) (aref (jm_getGroupInterface_0 _collisionLayer) 0)))
                (progn
                (return-from jreturn (call-next-method this _ownerLayer _collisionLayer))))))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_collide_2) (defgeneric jm_collide_2 (this p1 p2)))
(defmethod jm_collide_2 ((this CollidableWeaponBehavior) _ownerLayer _collisionLayer)
  (declare (ignorable this _ownerLayer _collisionLayer))
  (let ()
    (block jreturn
        (call-next-method this _ownerLayer _collisionLayer)
        (setf (slot-value this 'f_collided) t))))

    
(unless (fboundp 'jm_isCollisionInterface_2) (defgeneric jm_isCollisionInterface_2 (this p1 p2)))
(defmethod jm_isCollisionInterface_2 ((this CollidableWeaponBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let (_layerInterface)
  (declare (ignorable _layerInterface))
    (block jreturn
        (if (jm_isCollidable_1 (slot-value this 'f_collisionHelper) _collidableInterfaceCompositeInterface)
            (progn
            (setf _layerInterface _collidableInterfaceCompositeInterface)
            (if (not (eq (aref (jm_getGroupInterface_0 _ownerLayer) 0) (aref (jm_getGroupInterface_0 _layerInterface) 0)))
                (progn
                (if (jm_isCollision_2 (slot-value this 'f_layerCollisionUtil) _ownerLayer _layerInterface)
                    (progn
                    (return-from jreturn t)))))))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_collideInterface_2) (defgeneric jm_collideInterface_2 (this p1 p2)))
(defmethod jm_collideInterface_2 ((this CollidableWeaponBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let (_ownerDamageableInterface _damageableInterface)
  (declare (ignorable _ownerDamageableInterface _damageableInterface))
    (block jreturn
        (setf _ownerDamageableInterface _ownerLayer)
        (setf _damageableInterface _collidableInterfaceCompositeInterface)
        (jm_process_2 (slot-value this 'f_damageUtil) _ownerDamageableInterface _damageableInterface)
        (setf (slot-value this 'f_collided) t))))

    
(unless (fboundp 'jm_getCollisionTypeWith_1) (defgeneric jm_getCollisionTypeWith_1 (this p1)))
(defmethod jm_getCollisionTypeWith_1 ((this CollidableWeaponBehavior) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (CollisionTypeFactory.jm_getInstance_0) 'f_COLLISION)))))

    
(unless (fboundp 'jm_isCollided_0) (defgeneric jm_isCollided_0 (this)))
(defmethod jm_isCollided_0 ((this CollidableWeaponBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_collided)))))

    
(unless (fboundp 'jm_setCollided_1) (defgeneric jm_setCollided_1 (this p1)))
(defmethod jm_setCollided_1 ((this CollidableWeaponBehavior) _collided)
  (declare (ignorable this _collided))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_collided) _collided))))



