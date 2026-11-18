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

(defclass PickupBehaviorInterface (JObject)
  ())

(defun PickupBehaviorInterface.jnew_0 ()
  (let ((this (make-instance 'PickupBehaviorInterface)))
    this))

    
(unless (fboundp 'jm_doPickup_1) (defgeneric jm_doPickup_1 (this p1)))
(defmethod jm_doPickup_1 ((this PickupBehaviorInterface) _pickupProcessorInterface)
  (declare (ignorable this _pickupProcessorInterface))
  (error (JR.newException "AbstractMethodError" "doPickup")))

    
(unless (fboundp 'jm_doPickupLayer_1) (defgeneric jm_doPickupLayer_1 (this p1)))
(defmethod jm_doPickupLayer_1 ((this PickupBehaviorInterface) _pickupLayerInterface)
  (declare (ignorable this _pickupLayerInterface))
  (error (JR.newException "AbstractMethodError" "doPickupLayer")))



