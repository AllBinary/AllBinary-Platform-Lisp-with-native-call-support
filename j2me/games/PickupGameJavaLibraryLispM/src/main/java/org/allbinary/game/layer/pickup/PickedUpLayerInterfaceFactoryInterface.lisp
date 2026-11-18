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

(defclass PickedUpLayerInterfaceFactoryInterface (JObject)
  ())

(defun PickedUpLayerInterfaceFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'PickedUpLayerInterfaceFactoryInterface)))
    this))

    
(unless (fboundp 'jm_getPickedUpLayerType_0) (defgeneric jm_getPickedUpLayerType_0 (this)))
(defmethod jm_getPickedUpLayerType_0 ((this PickedUpLayerInterfaceFactoryInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getPickedUpLayerType")))

    
(unless (fboundp 'jm_getIconLayer_0) (defgeneric jm_getIconLayer_0 (this)))
(defmethod jm_getIconLayer_0 ((this PickedUpLayerInterfaceFactoryInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getIconLayer")))

    
(unless (fboundp 'jm_getAnimationInterface_0) (defgeneric jm_getAnimationInterface_0 (this)))
(defmethod jm_getAnimationInterface_0 ((this PickedUpLayerInterfaceFactoryInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getAnimationInterface")))



