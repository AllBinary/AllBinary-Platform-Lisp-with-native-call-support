;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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

(defclass PickedUpLayerInterfaceFactoryBase (JObject)
  ())

(defvar PickedUpLayerInterfaceFactoryBase.jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE :jnone)
(defun PickedUpLayerInterfaceFactoryBase.jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE ()
  (when (eq PickedUpLayerInterfaceFactoryBase.jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE :jnone) (setf PickedUpLayerInterfaceFactoryBase.jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE (PickedUpLayerInterfaceFactoryBase.jnew_0)))
  PickedUpLayerInterfaceFactoryBase.jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE)
(defun (setf PickedUpLayerInterfaceFactoryBase.jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE) (value) (setf PickedUpLayerInterfaceFactoryBase.jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE value))

(defun PickedUpLayerInterfaceFactoryBase.jnew_0 ()
  (let ((this (make-instance 'PickedUpLayerInterfaceFactoryBase)))
    this))

    
(unless (fboundp 'jm_getIconLayer_0) (defgeneric jm_getIconLayer_0 (this)))
(defmethod jm_getIconLayer_0 ((this PickedUpLayerInterfaceFactoryBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getAnimationInterface_0) (defgeneric jm_getAnimationInterface_0 (this)))
(defmethod jm_getAnimationInterface_0 ((this PickedUpLayerInterfaceFactoryBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getPickedUpLayerType_0) (defgeneric jm_getPickedUpLayerType_0 (this)))
(defmethod jm_getPickedUpLayerType_0 ((this PickedUpLayerInterfaceFactoryBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



