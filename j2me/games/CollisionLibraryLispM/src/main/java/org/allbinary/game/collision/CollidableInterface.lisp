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

(defclass CollidableInterface (JObject)
  ())

(defun CollidableInterface.jnew_0 ()
  (let ((this (make-instance 'CollidableInterface)))
    this))

    
(unless (fboundp 'jm_isCollidable_1) (defgeneric jm_isCollidable_1 (this p1)))
(defmethod jm_isCollidable_1 ((this CollidableInterface) _ownerLayer)
  (declare (ignorable this _ownerLayer))
  (error (JR.newException "AbstractMethodError" "isCollidable")))

    
(unless (fboundp 'jm_isCollision_2) (defgeneric jm_isCollision_2 (this p1 p2)))
(defmethod jm_isCollision_2 ((this CollidableInterface) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (error (JR.newException "AbstractMethodError" "isCollision")))

    
(unless (fboundp 'jm_collide_2) (defgeneric jm_collide_2 (this p1 p2)))
(defmethod jm_collide_2 ((this CollidableInterface) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (error (JR.newException "AbstractMethodError" "collide")))

    
(unless (fboundp 'jm_getCollisionTypeWith_1) (defgeneric jm_getCollisionTypeWith_1 (this p1)))
(defmethod jm_getCollisionTypeWith_1 ((this CollidableInterface) _layerInterface)
  (declare (ignorable this _layerInterface))
  (error (JR.newException "AbstractMethodError" "getCollisionTypeWith")))



