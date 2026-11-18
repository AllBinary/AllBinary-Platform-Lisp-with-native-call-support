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

(defclass CountedPickedUpLayerInterfaceFactory (PickedUpLayerInterfaceFactory)
  ((f_id :initform 0)))

(defvar CountedPickedUpLayerInterfaceFactory.jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY :jnone)
(defun CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY ()
  (when (eq CountedPickedUpLayerInterfaceFactory.jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY :jnone) (setf CountedPickedUpLayerInterfaceFactory.jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY (CountedPickedUpLayerInterfaceFactory.jnew_3 (slot-value (PickedUpLayerTypeFactory.jm_getInstance_0) 'f_NONE) (IconLayer.jstatic_NULL_ICON_LAYER) (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0))))
  CountedPickedUpLayerInterfaceFactory.jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY)
(defun (setf CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY) (value) (setf CountedPickedUpLayerInterfaceFactory.jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY value))

    
(defun CountedPickedUpLayerInterfaceFactory.jnew_3 (_pickeUpLayerType _iconLayer _animationInterface)
  (declare (ignorable _pickeUpLayerType _iconLayer _animationInterface))
  (let ((this (make-instance 'CountedPickedUpLayerInterfaceFactory)))
    
  (let (_list)
  (declare (ignorable _list))
    (block jreturn
        nil
        (setf _list (jm_getList_0 (CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance_0)))
        (setf (slot-value this 'f_id) (jm_size_0 _list))
        (jm_add_1 _list this)))
    this))

    
(unless (fboundp 'jm_getNextInstance_4) (defgeneric jm_getNextInstance_4 (this p1 p2 p3 p4)))
(defmethod jm_getNextInstance_4 ((this CountedPickedUpLayerInterfaceFactory) _hashtable _x _y _z)
  (declare (ignorable this _hashtable _x _y _z))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (CommonStrings.jm_getInstance_0) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_getTotal_0) (defgeneric jm_getTotal_0 (this)))
(defmethod jm_getTotal_0 ((this CountedPickedUpLayerInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_getId_0) (defgeneric jm_getId_0 (this)))
(defmethod jm_getId_0 ((this CountedPickedUpLayerInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_id)))))



