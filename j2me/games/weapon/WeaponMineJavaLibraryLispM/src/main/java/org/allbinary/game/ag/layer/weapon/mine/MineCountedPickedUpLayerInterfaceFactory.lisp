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
;;;; package org.allbinary.game.ag.layer.weapon.mine

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MineCountedPickedUpLayerInterfaceFactory (CountedPickedUpLayerInterfaceFactory)
  ((f_weaponLayerCircularStaticPool :initform nil)
   (f_weaponProperties :initform nil)
   (f_smallIntegerSingletonFactory :initform nil)))

(defvar MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface :jnone)
(defun MineCountedPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface ()
  (when (eq MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface :jnone) (setf MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)))
  MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface)
(defun (setf MineCountedPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface) (value) (setf MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface value))

    
(defun MineCountedPickedUpLayerInterfaceFactory.jm_init_0 ()
  (let ()
    (block jreturn
        (setf (MineCountedPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface) (MineCountedPickedUpLayerInterfaceFactory.jnew_0)))))

    
(defun MineCountedPickedUpLayerInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'MineCountedPickedUpLayerInterfaceFactory)))
    (setf (slot-value this 'f_weaponLayerCircularStaticPool) (MineLayerCircularStaticPool.jm_getInstance_0))
    (setf (slot-value this 'f_weaponProperties) (WeaponProperties.jnew_5 (JR.i64 (- 1)) (JR.i64 (- 1)) 0 8000 (JR.i16 10)))
    (setf (slot-value this 'f_smallIntegerSingletonFactory) (SmallIntegerSingletonFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun MineCountedPickedUpLayerInterfaceFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MineCountedPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)))))

    
(unless (fboundp 'jm_getTotal_0) (defgeneric jm_getTotal_0 (this)))
(defmethod jm_getTotal_0 ((this MineCountedPickedUpLayerInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 3))))

    
(unless (fboundp 'jm_getNextInstance_4) (defgeneric jm_getNextInstance_4 (this p1 p2 p3 p4)))
(defmethod jm_getNextInstance_4 ((this MineCountedPickedUpLayerInterfaceFactory) _hashtable _x _y _z)
  (declare (ignorable this _hashtable _x _y _z))
  (let (_sourceLayerInterface _angle _scoreableInterface)
  (declare (ignorable _sourceLayerInterface _angle _scoreableInterface))
    (block jreturn
        (setf _sourceLayerInterface (jm_get_1 _hashtable (jm_getAt_1 (slot-value this 'f_smallIntegerSingletonFactory) 0)))
        (setf _angle (jm_get_1 _hashtable (jm_getAt_1 (slot-value this 'f_smallIntegerSingletonFactory) 1)))
        (setf _scoreableInterface _sourceLayerInterface)
        (return-from jreturn (jm_getInstanceWeaponLayer_8 (slot-value this 'f_weaponLayerCircularStaticPool) _sourceLayerInterface _x _y _z (jm_intValue_0 _angle) 0 (slot-value this 'f_weaponProperties) _scoreableInterface)))))



