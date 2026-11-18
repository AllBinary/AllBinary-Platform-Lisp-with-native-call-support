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

(defclass CollidableCharacterBehavior (CollidableDestroyableDamageableBehavior)
  ())

    
(defun CollidableCharacterBehavior.jnew_1 (_collidable)
  (declare (ignorable _collidable))
  (let ((this (make-instance 'CollidableCharacterBehavior)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_collide_2) (defgeneric jm_collide_2 (this p1 p2)))
(defmethod jm_collide_2 ((this CollidableCharacterBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let (_collisionTypeFactory _collisionType _collidableDestroyableDamageableLayer)
  (declare (ignorable _collisionTypeFactory _collisionType _collidableDestroyableDamageableLayer))
    (block jreturn
        (setf _collisionTypeFactory (CollisionTypeFactory.jm_getInstance_0))
        (setf _collisionType (jm_getCollisionTypeWith_1 (jm_getCollidableInferface_0 _collidableInterfaceCompositeInterface) _ownerLayer))
        (if (eq _collisionType (slot-value _collisionTypeFactory 'f_PICKUP))
            (progn
            (setf _collidableDestroyableDamageableLayer _ownerLayer)
            (jm_doPickupLayer_1 (jm_getPickupBehavior_0 _collidableDestroyableDamageableLayer) _collidableInterfaceCompositeInterface))
            (progn
            (call-next-method this _ownerLayer _collidableInterfaceCompositeInterface))))))

    
(unless (fboundp 'jm_collideInterface_2) (defgeneric jm_collideInterface_2 (this p1 p2)))
(defmethod jm_collideInterface_2 ((this CollidableCharacterBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED) this))))



