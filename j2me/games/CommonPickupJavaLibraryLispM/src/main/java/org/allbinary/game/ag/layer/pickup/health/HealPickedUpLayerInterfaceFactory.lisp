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
;;;; package org.allbinary.game.ag.layer.pickup.health

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HealPickedUpLayerInterfaceFactory (PickedUpLayerInterfaceFactory)
  ((f_pool :initform nil)))

(defvar HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface :jnone)
(defun HealPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface ()
  (when (eq HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface :jnone) (setf HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)))
  HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface)
(defun (setf HealPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface) (value) (setf HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface value))

    
(defun HealPickedUpLayerInterfaceFactory.jm_init_0 ()
  (let ()
    (block jreturn
        (setf (HealPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface) (HealPickedUpLayerInterfaceFactory.jnew_0)))))

    
(defun HealPickedUpLayerInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'HealPickedUpLayerInterfaceFactory)))
    (setf (slot-value this 'f_pool) (HealLayerCircularStaticPool.jnew_2 (HealLayerFactory.jnew_0) 1))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getTotal_0) (defgeneric jm_getTotal_0 (this)))
(defmethod jm_getTotal_0 ((this HealPickedUpLayerInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 1))))

    
(defun HealPickedUpLayerInterfaceFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (HealPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this HealPickedUpLayerInterfaceFactory) _sourceLayerInterface)
  (declare (ignorable this _sourceLayerInterface))
  (let ()
    (block jreturn
        (jm_visit_1 (slot-value this 'f_pool) _sourceLayerInterface))))



