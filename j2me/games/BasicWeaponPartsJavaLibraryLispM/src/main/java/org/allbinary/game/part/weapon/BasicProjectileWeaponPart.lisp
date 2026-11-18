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
;;;; package org.allbinary.game.part.weapon

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicProjectileWeaponPart (BasicWeaponPart)
  ((f_weaponLayerCircularStaticPool :initform nil)))

    
(defun BasicProjectileWeaponPart.jm_createBasicProjectileWeaponPart_2 (_animationInterface _weaponLayerCircularStaticPool)
  (declare (ignorable _animationInterface _weaponLayerCircularStaticPool))
  (let ()
    (block jreturn
        (return-from jreturn (BasicProjectileWeaponPart.jnew_6 _animationInterface (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER) _weaponLayerCircularStaticPool (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES) (NoScoreable.jm_getInstance_0) (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP))))))

    
(defun BasicProjectileWeaponPart.jnew_6 (_animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _weaponProperties _scoreableInterface _relativeRelationship)
  (declare (ignorable _animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _weaponProperties _scoreableInterface _relativeRelationship))
  (let ((this (make-instance 'BasicProjectileWeaponPart)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_weaponLayerCircularStaticPool) _weaponLayerCircularStaticPool)))
    this))

    
(unless (fboundp 'jm_processScore_5) (defgeneric jm_processScore_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_processScore_5 ((this BasicProjectileWeaponPart) _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface)
  (declare (ignorable this _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface))
  (let (_weaponLayer)
  (declare (ignorable _weaponLayer))
    (block jreturn
        (setf _weaponLayer (jm_getInstanceWeaponLayer_8 (slot-value this 'f_weaponLayerCircularStaticPool) (jm_getOwnerLayerInterface_0 this) (jm_getX_0 (slot-value this 'f_relativeRelationship)) (jm_getY_0 (slot-value this 'f_relativeRelationship)) (jm_getZ_0 (slot-value this 'f_relativeRelationship)) _angle _otherAngle _weaponProperties _scoreableInterface))
        (jm_append_1 _allbinaryLayerManager _weaponLayer))))



