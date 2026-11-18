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

(defclass PickedUpLayerInterfaceFactory (PickedUpLayerInterfaceFactoryBase)
  ((f_pickedUpLayerType :initform nil)
   (f_iconLayer :initform nil)
   (f_animationInterface :initform nil)))

    
(defun PickedUpLayerInterfaceFactory.jnew_3 (_pickeUpLayerType _iconLayer _animationInterface)
  (declare (ignorable _pickeUpLayerType _iconLayer _animationInterface))
  (let ((this (make-instance 'PickedUpLayerInterfaceFactory)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_pickedUpLayerType) _pickeUpLayerType)
        (setf (slot-value this 'f_animationInterface) _animationInterface)
        (setf (slot-value this 'f_iconLayer) _iconLayer)))
    this))

    
(unless (fboundp 'jm_getIconLayer_0) (defgeneric jm_getIconLayer_0 (this)))
(defmethod jm_getIconLayer_0 ((this PickedUpLayerInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_iconLayer)))))

    
(unless (fboundp 'jm_getAnimationInterface_0) (defgeneric jm_getAnimationInterface_0 (this)))
(defmethod jm_getAnimationInterface_0 ((this PickedUpLayerInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animationInterface)))))

    
(unless (fboundp 'jm_getPickedUpLayerType_0) (defgeneric jm_getPickedUpLayerType_0 (this)))
(defmethod jm_getPickedUpLayerType_0 ((this PickedUpLayerInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_pickedUpLayerType)))))



