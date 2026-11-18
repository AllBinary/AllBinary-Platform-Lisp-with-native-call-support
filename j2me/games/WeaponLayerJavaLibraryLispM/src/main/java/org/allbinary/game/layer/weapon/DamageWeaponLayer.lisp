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

(defclass DamageWeaponLayer (WeaponLayer)
  ())

    
(defun DamageWeaponLayer.jnew_11 (_name _remoteInfo _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition _username _actorSessionId _id _multiPlayerType)
  (declare (ignorable _name _remoteInfo _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition _username _actorSessionId _id _multiPlayerType))
  (let ((this (make-instance 'DamageWeaponLayer)))
  (let ()
    (block jreturn
        nil
        (jm_setCollidableInferface_1 this (CollidableDamageWeaponBehavior.jnew_1 t))))
    this))



