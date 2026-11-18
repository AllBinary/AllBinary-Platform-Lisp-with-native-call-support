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
;;;; package org.allbinary.game.layer.pickup

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PickupLayerCircularStaticPool (AllBinaryLayerCircularPool)
  ())

(defvar PickupLayerCircularStaticPool.jcell_SINGLETON :jnone)
(defun PickupLayerCircularStaticPool.jstatic_SINGLETON ()
  (when (eq PickupLayerCircularStaticPool.jcell_SINGLETON :jnone) (setf PickupLayerCircularStaticPool.jcell_SINGLETON (PickupLayerCircularStaticPool.jnew_0)))
  PickupLayerCircularStaticPool.jcell_SINGLETON)
(defun (setf PickupLayerCircularStaticPool.jstatic_SINGLETON) (value) (setf PickupLayerCircularStaticPool.jcell_SINGLETON value))

    
(defun PickupLayerCircularStaticPool.jnew_0 ()
  (let ((this (make-instance 'PickupLayerCircularStaticPool)))
  (let ()
    (block jreturn nil))
    this))

    
(defun PickupLayerCircularStaticPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PickupLayerCircularStaticPool.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_getInstanceXYZ_4) (defgeneric jm_getInstanceXYZ_4 (this p1 p2 p3 p4)))
(defmethod jm_getInstanceXYZ_4 ((this PickupLayerCircularStaticPool) _pickedUpLayerInterfaceFactoryInterface _x _y _z)
  (declare (ignorable this _pickedUpLayerInterfaceFactoryInterface _x _y _z))
  (let (_pickupLayer)
  (declare (ignorable _pickupLayer))
    (block jreturn
        (setf _pickupLayer (jm_getNextInstance_0 this))
        (jm_initXYZ_3 _pickupLayer _x _y _z)
        (jm_init_2 _pickupLayer _pickedUpLayerInterfaceFactoryInterface (jm_getAnimationInterface_0 _pickedUpLayerInterfaceFactoryInterface))
        (return-from jreturn _pickupLayer))))



