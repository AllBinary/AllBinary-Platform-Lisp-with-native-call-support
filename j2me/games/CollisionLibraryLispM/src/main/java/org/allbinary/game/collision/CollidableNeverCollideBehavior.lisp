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

(defclass CollidableNeverCollideBehavior (CollidableBaseBehavior)
  ())

    
(defun CollidableNeverCollideBehavior.jnew_1 (_isCollidable)
  (declare (ignorable _isCollidable))
  (let ((this (make-instance 'CollidableNeverCollideBehavior)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_isCollision_2) (defgeneric jm_isCollision_2 (this p1 p2)))
(defmethod jm_isCollision_2 ((this CollidableNeverCollideBehavior) _ownerLayer _allbinaryCollidableLayer)
  (declare (ignorable this _ownerLayer _allbinaryCollidableLayer))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_collide_2) (defgeneric jm_collide_2 (this p1 p2)))
(defmethod jm_collide_2 ((this CollidableNeverCollideBehavior) _ownerLayer _allbinaryCollidableLayer)
  (declare (ignorable this _ownerLayer _allbinaryCollidableLayer))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_collideInterface_2) (defgeneric jm_collideInterface_2 (this p1 p2)))
(defmethod jm_collideInterface_2 ((this CollidableNeverCollideBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isCollisionInterface_2) (defgeneric jm_isCollisionInterface_2 (this p1 p2)))
(defmethod jm_isCollisionInterface_2 ((this CollidableNeverCollideBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



