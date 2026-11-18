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

(defclass PickupCompositeInterface (JObject)
  ())

(defun PickupCompositeInterface.jnew_0 ()
  (let ((this (make-instance 'PickupCompositeInterface)))
    this))

    
(unless (fboundp 'jm_getPickupBehavior_0) (defgeneric jm_getPickupBehavior_0 (this)))
(defmethod jm_getPickupBehavior_0 ((this PickupCompositeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getPickupBehavior")))

    
(unless (fboundp 'jm_setPickupBehavior_1) (defgeneric jm_setPickupBehavior_1 (this p1)))
(defmethod jm_setPickupBehavior_1 ((this PickupCompositeInterface) _pickupBehavior)
  (declare (ignorable this _pickupBehavior))
  (error (JR.newException "AbstractMethodError" "setPickupBehavior")))



