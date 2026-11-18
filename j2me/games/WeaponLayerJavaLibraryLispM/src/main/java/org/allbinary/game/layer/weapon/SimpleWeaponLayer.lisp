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

(defclass SimpleWeaponLayer (WeaponLayer)
  ())

    
(defun SimpleWeaponLayer.jm_createDestroyed_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInstanceAnimation_1 (jm_getProcedural_1 (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) (slot-value (ExplosionResources.jm_getInstance_0) 'f_THIRD_EXPLOSION_RESOURCE)) (jm_getInstance_1 (NullIndexedAnimationFactory.jm_getFactoryInstance_0) 0))))))

    
(defun SimpleWeaponLayer.jnew_8 (_name _remoteInfo _multiPlayerType _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition)
  (declare (ignorable _name _remoteInfo _multiPlayerType _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition))
  (let ((this (make-instance 'SimpleWeaponLayer)))
  (let ()
    (block jreturn
        nil
        (jm_setCollidableInferface_1 this (CollidableWeaponBehavior.jnew_1 t))))
    this))



