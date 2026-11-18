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
;;;; package org.allbinary.game.collision

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CollidableAlwaysPickupNeverCollideBehavior (CollidableNeverCollideBehavior)
  ())

    
(defun CollidableAlwaysPickupNeverCollideBehavior.jnew_0 ()
  (let ((this (make-instance 'CollidableAlwaysPickupNeverCollideBehavior)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getCollisionTypeWith_1) (defgeneric jm_getCollisionTypeWith_1 (this p1)))
(defmethod jm_getCollisionTypeWith_1 ((this CollidableAlwaysPickupNeverCollideBehavior) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (CollisionTypeFactory.jm_getInstance_0) 'f_PICKUP)))))



