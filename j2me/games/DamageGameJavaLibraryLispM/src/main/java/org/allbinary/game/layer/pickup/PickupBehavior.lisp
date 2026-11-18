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

(defclass PickupBehavior (JObject)
  ((f_logUtil :initform nil)
   (f_countedIndex :initform 0)
   (f_ownerLayerInterface :initform nil)))

(defvar PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR :jnone)
(defun PickupBehavior.jstatic_NULL_PICKUP_BEHAVIOR ()
  (when (eq PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR :jnone) (setf PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR)
(defun (setf PickupBehavior.jstatic_NULL_PICKUP_BEHAVIOR) (value) (setf PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR value))

    
(defun PickupBehavior.jm_getNullInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (PickupBehavior.jstatic_NULL_PICKUP_BEHAVIOR) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (PickupBehavior.jstatic_NULL_PICKUP_BEHAVIOR) (PickupBehavior.jnew_2 (CollidableCompositeLayer.jm_getNullInstance_0) 0))))
        (return-from jreturn (PickupBehavior.jstatic_NULL_PICKUP_BEHAVIOR)))))

    
(defun PickupBehavior.jnew_2 (_ownerLayerInterface _countedIndex)
  (declare (ignorable _ownerLayerInterface _countedIndex))
  (let ((this (make-instance 'PickupBehavior)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_ownerLayerInterface) _ownerLayerInterface)
        (setf (slot-value this 'f_countedIndex) _countedIndex)))
    this))

    
(unless (fboundp 'jm_doPickup_1) (defgeneric jm_doPickup_1 (this p1)))
(defmethod jm_doPickup_1 ((this PickupBehavior) _pickupProcessorInterface)
  (declare (ignorable this _pickupProcessorInterface))
  (let (_healthInterfaceCompositeInterface _commonStrings)
  (declare (ignorable _healthInterfaceCompositeInterface _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _healthInterfaceCompositeInterface (slot-value this 'f_ownerLayerInterface))
            (if (jm_isAlive_0 (jm_getHealthInterface_0 _healthInterfaceCompositeInterface))
                (progn
                (jm_process_1 _pickupProcessorInterface (slot-value this 'f_ownerLayerInterface)))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this "doPickup" _e))))))

    
(unless (fboundp 'jm_doPickupLayer_1) (defgeneric jm_doPickupLayer_1 (this p1)))
(defmethod jm_doPickupLayer_1 ((this PickupBehavior) _pickupLayerInterface)
  (declare (ignorable this _pickupLayerInterface))
  (let (_pickedUpLayerInterfaceFactoryInterface _pickedUpLayerType _pickedUpLayerTypeFactory _pickupProcessorInterface _collidableDestroyableDamageableLayer _commonStrings)
  (declare (ignorable _pickedUpLayerInterfaceFactoryInterface _pickedUpLayerType _pickedUpLayerTypeFactory _pickupProcessorInterface _collidableDestroyableDamageableLayer _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _pickedUpLayerInterfaceFactoryInterface (jm_getPickedUpLayerInterfaceFactoryInterface_0 _pickupLayerInterface))
            (setf _pickedUpLayerType (jm_getPickedUpLayerType_0 _pickedUpLayerInterfaceFactoryInterface))
            (setf _pickedUpLayerTypeFactory (PickedUpLayerTypeFactory.jm_getInstance_0))
            (if (or (or (or (eq _pickedUpLayerType (slot-value _pickedUpLayerTypeFactory 'f_BEAM)) (eq _pickedUpLayerType (slot-value _pickedUpLayerTypeFactory 'f_MINE))) (eq _pickedUpLayerType (slot-value _pickedUpLayerTypeFactory 'f_PROJECTILE))) (eq _pickedUpLayerType (slot-value _pickedUpLayerTypeFactory 'f_ENHANCEMENT)))
                (progn
                (jm_add_1 this _pickedUpLayerInterfaceFactoryInterface))
                (if (eq (jm_getPickedUpLayerType_0 _pickedUpLayerInterfaceFactoryInterface) (slot-value _pickedUpLayerTypeFactory 'f_PART))
                (progn
                (setf _collidableDestroyableDamageableLayer (slot-value this 'f_ownerLayerInterface))
                (jm_addPart_1 _collidableDestroyableDamageableLayer _pickedUpLayerInterfaceFactoryInterface))
                (if (eq _pickedUpLayerType (slot-value _pickedUpLayerTypeFactory 'f_NONE))
                (progn
                nil)
                (progn
                (setf _pickupProcessorInterface _pickedUpLayerInterfaceFactoryInterface)
                (jm_doPickup_1 this _pickupProcessorInterface)))))
            (jm_setPickedUp_0 _pickupLayerInterface))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putOE_4 (slot-value _commonStrings 'f_EXCEPTION) this "doPickup" _e))))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this PickupBehavior) _countedPickedUpLayerInterfaceFactoryInterface)
  (declare (ignorable this _countedPickedUpLayerInterfaceFactoryInterface))
  (let (_partIndex)
  (declare (ignorable _partIndex))
    (block jreturn
        (setf _partIndex (JR.i32 (+ (jm_getId_0 _countedPickedUpLayerInterfaceFactoryInterface) (slot-value this 'f_countedIndex))))
        (jm_addAt_2 this _countedPickedUpLayerInterfaceFactoryInterface _partIndex))))

    
(unless (fboundp 'jm_addAt_2) (defgeneric jm_addAt_2 (this p1 p2)))
(defmethod jm_addAt_2 ((this PickupBehavior) _countedPickedUpLayerInterfaceFactoryInterface _partIndex)
  (declare (ignorable this _countedPickedUpLayerInterfaceFactoryInterface _partIndex))
  (let (_collidableDestroyableDamageableLayer _countedLayerInterfaceFactory)
  (declare (ignorable _collidableDestroyableDamageableLayer _countedLayerInterfaceFactory))
    (block jreturn
        (setf _collidableDestroyableDamageableLayer (slot-value this 'f_ownerLayerInterface))
        (setf _countedLayerInterfaceFactory (aref (jm_getPartInterfaceArray_0 _collidableDestroyableDamageableLayer) _partIndex))
        (jm_setTotal_1 _countedLayerInterfaceFactory (JR.i32 (+ (jm_getTotal_0 _countedLayerInterfaceFactory) (jm_getTotal_0 _countedPickedUpLayerInterfaceFactoryInterface)))))))

    
(unless (fboundp 'jm_getFirstAvailableCountedLayerInterfaceFactory_1) (defgeneric jm_getFirstAvailableCountedLayerInterfaceFactory_1 (this p1)))
(defmethod jm_getFirstAvailableCountedLayerInterfaceFactory_1 ((this PickupBehavior) _pickedUpLayerTypeArray)
  (declare (ignorable this _pickedUpLayerTypeArray))
  (let (_collidableDestroyableDamageableLayer _partInterfaceArray _size _nextCountedLayerInterfaceFactory _countedPickedUpLayerInterfaceFactory _index2 _index)
  (declare (ignorable _collidableDestroyableDamageableLayer _partInterfaceArray _size _nextCountedLayerInterfaceFactory _countedPickedUpLayerInterfaceFactory _index2 _index))
    (block jreturn
        (setf _collidableDestroyableDamageableLayer (slot-value this 'f_ownerLayerInterface))
        (setf _partInterfaceArray (jm_getPartInterfaceArray_0 _collidableDestroyableDamageableLayer))
        (setf _size (length _partInterfaceArray))
        (setf _nextCountedLayerInterfaceFactory nil)
        (setf _countedPickedUpLayerInterfaceFactory nil)
        (progn
            (setf _index (slot-value this 'f_countedIndex))
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _nextCountedLayerInterfaceFactory (aref (jm_getPartInterfaceArray_0 _collidableDestroyableDamageableLayer) _index))
            (setf _countedPickedUpLayerInterfaceFactory (jm_getCountedPickedUpLayerInterfaceFactory_0 _nextCountedLayerInterfaceFactory))
            (progn
                (setf _index2 (length _pickedUpLayerTypeArray))
                (block jbreak (loop while (>= (setf _index2 (JR.i32 (- _index2 1))) 0) do
                    (block jcontinue
                (if (eq (jm_getPickedUpLayerType_0 _countedPickedUpLayerInterfaceFactory) (aref _pickedUpLayerTypeArray _index2))
                    (progn
                    (if (> (jm_getTotal_0 _nextCountedLayerInterfaceFactory) 0)
                        (progn
                        (return-from jreturn _nextCountedLayerInterfaceFactory))))))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY)))))

    
(unless (fboundp 'jm_getCountedLayerInterfaceFactoryForSlot_1) (defgeneric jm_getCountedLayerInterfaceFactoryForSlot_1 (this p1)))
(defmethod jm_getCountedLayerInterfaceFactoryForSlot_1 ((this PickupBehavior) _slotIndex)
  (declare (ignorable this _slotIndex))
  (let (_currentSlot _collidableDestroyableDamageableLayer _partInterfaceArray _size _nextCountedLayerInterfaceFactory _index)
  (declare (ignorable _currentSlot _collidableDestroyableDamageableLayer _partInterfaceArray _size _nextCountedLayerInterfaceFactory _index))
    (block jreturn
        (setf _currentSlot 0)
        (setf _collidableDestroyableDamageableLayer (slot-value this 'f_ownerLayerInterface))
        (setf _partInterfaceArray (jm_getPartInterfaceArray_0 _collidableDestroyableDamageableLayer))
        (setf _size (length _partInterfaceArray))
        (setf _nextCountedLayerInterfaceFactory nil)
        (progn
            (setf _index (slot-value this 'f_countedIndex))
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _nextCountedLayerInterfaceFactory (aref (jm_getPartInterfaceArray_0 _collidableDestroyableDamageableLayer) _index))
            (if (> (jm_getTotal_0 _nextCountedLayerInterfaceFactory) 0)
                (progn
                (if (= _currentSlot _slotIndex)
                    (progn
                    (return-from jreturn _nextCountedLayerInterfaceFactory))
                    (progn
                    (setf _currentSlot (JR.i32 (+ _currentSlot 1))))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY)))))

    
(unless (fboundp 'jm_getCountedIndex_0) (defgeneric jm_getCountedIndex_0 (this)))
(defmethod jm_getCountedIndex_0 ((this PickupBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_countedIndex)))))



