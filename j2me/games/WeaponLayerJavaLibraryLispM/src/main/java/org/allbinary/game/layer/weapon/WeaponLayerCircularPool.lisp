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

(defclass WeaponLayerCircularPool (AllBinaryLayerCircularPool)
  ())

    
(defun WeaponLayerCircularPool.jnew_0 ()
  (let ((this (make-instance 'WeaponLayerCircularPool)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getInstanceWeaponLayer_8) (defgeneric jm_getInstanceWeaponLayer_8 (this p1 p2 p3 p4 p5 p6 p7 p8)))
(defmethod jm_getInstanceWeaponLayer_8 ((this WeaponLayerCircularPool) _sourceLayerInterface _x _y _z _angle _otherAngle _weaponProperties _scoreable)
  (declare (ignorable this _sourceLayerInterface _x _y _z _angle _otherAngle _weaponProperties _scoreable))
  (let (_weaponLayer)
  (declare (ignorable _weaponLayer))
    (block jreturn
        (setf _weaponLayer (jm_getNextInstance_0 this))
        (jm_initXYZ_3 _weaponLayer _x _y _z)
        (jm_init_5 _weaponLayer _sourceLayerInterface _angle _otherAngle _weaponProperties _scoreable)
        (return-from jreturn _weaponLayer))))



