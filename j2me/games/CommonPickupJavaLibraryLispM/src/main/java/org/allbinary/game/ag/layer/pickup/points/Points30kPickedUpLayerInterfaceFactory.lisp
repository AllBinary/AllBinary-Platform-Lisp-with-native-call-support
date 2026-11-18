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
;;;; package org.allbinary.game.ag.layer.pickup.points

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Points30kPickedUpLayerInterfaceFactory (PickedUpLayerInterfaceFactory)
  ((f_pool :initform nil)))

(defvar Points30kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface :jnone)
(defun Points30kPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface ()
  (when (eq Points30kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface :jnone) (setf Points30kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)))
  Points30kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface)
(defun (setf Points30kPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface) (value) (setf Points30kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface value))

    
(defun Points30kPickedUpLayerInterfaceFactory.jm_init_0 ()
  (let ()
    (block jreturn
        (setf (Points30kPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface) (Points30kPickedUpLayerInterfaceFactory.jnew_0)))))

    
(defun Points30kPickedUpLayerInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'Points30kPickedUpLayerInterfaceFactory)))
    (setf (slot-value this 'f_pool) (PointsLayerCircularStaticPool.jnew_2 (PointsLayerFactory.jnew_1 (JR.i32 (* (jm_getCompetitionValue_0 (GameConfigurationUtil.jm_getInstance_0)) 30000))) 1))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getTotal_0) (defgeneric jm_getTotal_0 (this)))
(defmethod jm_getTotal_0 ((this Points30kPickedUpLayerInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 1))))

    
(defun Points30kPickedUpLayerInterfaceFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (Points30kPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this Points30kPickedUpLayerInterfaceFactory) _sourceLayerInterface)
  (declare (ignorable this _sourceLayerInterface))
  (let ()
    (block jreturn
        (jm_visit_1 (slot-value this 'f_pool) _sourceLayerInterface))))



