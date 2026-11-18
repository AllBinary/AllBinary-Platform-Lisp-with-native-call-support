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

(defclass PickupLayer (MultiPlayerGameLayer)
  ((f_pickedUpLayerInterfaceFactoryInterface :initform nil)
   (f_destroyed :initform nil)
   (f_animationInterface :initform nil)))

    
(defun PickupLayer.jnew_7 (_name _remoteInfo _total _pickedUpLayerInterfaceFactoryInterface _animationInterface _rectangle _viewPosition)
  (declare (ignorable _name _remoteInfo _total _pickedUpLayerInterfaceFactoryInterface _animationInterface _rectangle _viewPosition))
  (let ((this (make-instance 'PickupLayer)))
    (setf (slot-value this 'f_pickedUpLayerInterfaceFactoryInterface) (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY))
    
    (setf (slot-value this 'f_animationInterface) (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0))
  (let ()
    (block jreturn
        nil
        (jm_setCollidableInferface_1 this (jm_createBehavior_0 (CollidableAlwaysPickupNeverCollideBehaviorFactory.jm_getInstance_0)))
        (jm_setLayerWidth_1 this 10)
        (jm_setLayerHeight_1 this 10)
        (jm_init_2 this _pickedUpLayerInterfaceFactoryInterface _animationInterface)))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this PickupLayer) _pickedUpLayerInterfaceFactoryInterface _animationInterface)
  (declare (ignorable this _pickedUpLayerInterfaceFactoryInterface _animationInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_pickedUpLayerInterfaceFactoryInterface) _pickedUpLayerInterfaceFactoryInterface)
        (setf (slot-value this 'f_animationInterface) _animationInterface)
        (jm_setDestroyed_1 this nil))))

    
(unless (fboundp 'jm_initXYZ_3) (defgeneric jm_initXYZ_3 (this p1 p2 p3)))
(defmethod jm_initXYZ_3 ((this PickupLayer) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (jm_setPosition_3 this _x _y _z))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this PickupLayer) _graphics)
  (declare (ignorable this _graphics))
  (let (_viewPosition _viewX _viewY)
  (declare (ignorable _viewPosition _viewX _viewY))
    (block jreturn
        (setf _viewPosition (jm_getViewPosition_0 this))
        (setf _viewX (jm_getX_0 _viewPosition))
        (setf _viewY (jm_getY_0 _viewPosition))
        (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics _viewX _viewY))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this PickupLayer) _graphics)
  (declare (ignorable this _graphics))
  (let (_viewPosition _viewX _viewY)
  (declare (ignorable _viewPosition _viewX _viewY))
    (block jreturn
        (setf _viewPosition (jm_getViewPosition_0 this))
        (setf _viewX (jm_getX_0 _viewPosition))
        (setf _viewY (jm_getY_0 _viewPosition))
        (jm_paintThreedXYZ_4 (slot-value this 'f_animationInterface) _graphics _viewX _viewY 3))))

    
(unless (fboundp 'jm_getPickedUpLayerInterfaceFactoryInterface_0) (defgeneric jm_getPickedUpLayerInterfaceFactoryInterface_0 (this)))
(defmethod jm_getPickedUpLayerInterfaceFactoryInterface_0 ((this PickupLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_pickedUpLayerInterfaceFactoryInterface)))))

    
(unless (fboundp 'jm_setPickedUp_0) (defgeneric jm_setPickedUp_0 (this)))
(defmethod jm_setPickedUp_0 ((this PickupLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setDestroyed_1 this t))))

    
(unless (fboundp 'jm_isDestroyed_0) (defgeneric jm_isDestroyed_0 (this)))
(defmethod jm_isDestroyed_0 ((this PickupLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_destroyed)))))

    
(unless (fboundp 'jm_setDestroyed_1) (defgeneric jm_setDestroyed_1 (this p1)))
(defmethod jm_setDestroyed_1 ((this PickupLayer) _destroyed)
  (declare (ignorable this _destroyed))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_destroyed) _destroyed)
        (if (jm_isDestroyed_0 this)
            (progn
            (jm_add_1 (DestroyedLayerProcessor.jm_getInstance_0) this))))))

    
(unless (fboundp 'jm_damage_2) (defgeneric jm_damage_2 (this p1 p2)))
(defmethod jm_damage_2 ((this PickupLayer) _damage _damageType)
  (declare (ignorable this _damage _damageType))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getDamage_1) (defgeneric jm_getDamage_1 (this p1)))
(defmethod jm_getDamage_1 ((this PickupLayer) _damageType)
  (declare (ignorable this _damageType))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this PickupLayer) _gl)
  (declare (ignorable this _gl))
  (let (_openGLSurfaceChangedInterface)
  (declare (ignorable _openGLSurfaceChangedInterface))
    (block jreturn
        (setf _openGLSurfaceChangedInterface (slot-value this 'f_animationInterface))
        (jm_set_1 _openGLSurfaceChangedInterface _gl))))



