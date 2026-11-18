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

(defclass CollidableBaseBehavior (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_layerCollisionUtil :initform nil)
   (f_collidable :initform nil)))

    
(defun CollidableBaseBehavior.jnew_1 (_collidable)
  (declare (ignorable _collidable))
  (let ((this (make-instance 'CollidableBaseBehavior)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_layerCollisionUtil) (LayerCollisionUtil.jm_getInstance_0))
    (setf (slot-value this 'f_collidable) t)
  (let ()
    (block jreturn
        (setf (slot-value this 'f_collidable) _collidable)))
    this))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this CollidableBaseBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this CollidableBaseBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.className this)))))

    
(unless (fboundp 'jm_setCollidable_1) (defgeneric jm_setCollidable_1 (this p1)))
(defmethod jm_setCollidable_1 ((this CollidableBaseBehavior) _collidable)
  (declare (ignorable this _collidable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_collidable) _collidable))))

    
(unless (fboundp 'jm_isCollidable_1) (defgeneric jm_isCollidable_1 (this p1)))
(defmethod jm_isCollidable_1 ((this CollidableBaseBehavior) _ownerLayer)
  (declare (ignorable this _ownerLayer))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_collidable)))))

    
(unless (fboundp 'jm_collide_2) (defgeneric jm_collide_2 (this p1 p2)))
(defmethod jm_collide_2 ((this CollidableBaseBehavior) _ownerLayer _allbinaryCollidableLayer)
  (declare (ignorable this _ownerLayer _allbinaryCollidableLayer))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED)) (slot-value (CommonLabels.jm_getInstance_0) 'f_COLON_SEP)) (JR.className this))))))))

    
(unless (fboundp 'jm_isCollision_2) (defgeneric jm_isCollision_2 (this p1 p2)))
(defmethod jm_isCollision_2 ((this CollidableBaseBehavior) _ownerLayer _collisionLayer)
  (declare (ignorable this _ownerLayer _collisionLayer))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isCollision_2 (slot-value this 'f_layerCollisionUtil) _ownerLayer _collisionLayer)))))

    
(unless (fboundp 'jm_isCollisionInterface_2) (defgeneric jm_isCollisionInterface_2 (this p1 p2)))
(defmethod jm_isCollisionInterface_2 ((this CollidableBaseBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isCollision_2 (slot-value this 'f_layerCollisionUtil) _ownerLayer _collidableInterfaceCompositeInterface)))))

    
(unless (fboundp 'jm_collideInterface_2) (defgeneric jm_collideInterface_2 (this p1 p2)))
(defmethod jm_collideInterface_2 ((this CollidableBaseBehavior) _ownerLayer _collidableInterfaceCompositeInterface)
  (declare (ignorable this _ownerLayer _collidableInterfaceCompositeInterface))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_paint_2) (defgeneric jm_paint_2 (this p1 p2)))
(defmethod jm_paint_2 ((this CollidableBaseBehavior) _ownerLayer _graphics)
  (declare (ignorable this _ownerLayer _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getCollisionTypeWith_1) (defgeneric jm_getCollisionTypeWith_1 (this p1)))
(defmethod jm_getCollisionTypeWith_1 ((this CollidableBaseBehavior) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (CollisionTypeFactory.jm_getInstance_0) 'f_NONE)))))



