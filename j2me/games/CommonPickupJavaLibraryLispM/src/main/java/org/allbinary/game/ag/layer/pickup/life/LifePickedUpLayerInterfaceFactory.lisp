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
;;;; package org.allbinary.game.ag.layer.pickup.life

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LifePickedUpLayerInterfaceFactory (PickedUpLayerInterfaceFactory)
  ((f_pool :initform nil)))

(defvar LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface :jnone)
(defun LifePickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface ()
  (when (eq LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface :jnone) (setf LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)))
  LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface)
(defun (setf LifePickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface) (value) (setf LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface value))

    
(defun LifePickedUpLayerInterfaceFactory.jm_init_0 ()
  (let ()
    (block jreturn
        (setf (LifePickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface) (LifePickedUpLayerInterfaceFactory.jnew_0)))))

    
(defun LifePickedUpLayerInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'LifePickedUpLayerInterfaceFactory)))
    (setf (slot-value this 'f_pool) (LifeLayerCircularStaticPool.jnew_2 (LifeLayerFactory.jnew_0) 1))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getTotal_0) (defgeneric jm_getTotal_0 (this)))
(defmethod jm_getTotal_0 ((this LifePickedUpLayerInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 1))))

    
(defun LifePickedUpLayerInterfaceFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LifePickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this LifePickedUpLayerInterfaceFactory) _sourceLayerInterface)
  (declare (ignorable this _sourceLayerInterface))
  (let ()
    (block jreturn
        (jm_visit_1 (slot-value this 'f_pool) _sourceLayerInterface))))



