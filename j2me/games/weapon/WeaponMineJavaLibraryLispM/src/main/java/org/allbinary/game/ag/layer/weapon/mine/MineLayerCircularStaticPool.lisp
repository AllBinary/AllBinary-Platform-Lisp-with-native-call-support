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

(defclass MineLayerCircularStaticPool (JObject)
  ())

(defvar MineLayerCircularStaticPool.jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL :jnone)
(defun MineLayerCircularStaticPool.jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL ()
  (when (eq MineLayerCircularStaticPool.jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL :jnone) (setf MineLayerCircularStaticPool.jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL (WeaponLayerCircularPool.jnew_0)))
  MineLayerCircularStaticPool.jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL)
(defun (setf MineLayerCircularStaticPool.jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL) (value) (setf MineLayerCircularStaticPool.jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL value))

(defun MineLayerCircularStaticPool.jnew_0 ()
  (let ((this (make-instance 'MineLayerCircularStaticPool)))
    this))

    
(defun MineLayerCircularStaticPool.jm_init_1 (_viewPositionFactoryInterface)
  (declare (ignorable _viewPositionFactoryInterface))
  (let ()
    (block jreturn
        (MineCountedPickedUpLayerInterfaceFactory.jm_init_0)
        (jm_initAllBinaryLayerCircularPool_2 (MineLayerCircularStaticPool.jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL) (MineLayerFactory.jnew_1 _viewPositionFactoryInterface) 20))))

    
(defun MineLayerCircularStaticPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MineLayerCircularStaticPool.jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL)))))



