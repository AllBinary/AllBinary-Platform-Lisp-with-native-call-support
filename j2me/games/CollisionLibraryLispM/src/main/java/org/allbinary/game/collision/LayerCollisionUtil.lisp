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

(defclass LayerCollisionUtil (JObject)
  ((f_collisionProcessor :initform nil)))

(defvar LayerCollisionUtil.jcell_instance :jnone)
(defun LayerCollisionUtil.jstatic_instance ()
  (when (eq LayerCollisionUtil.jcell_instance :jnone) (setf LayerCollisionUtil.jcell_instance (LayerCollisionUtil.jnew_0)))
  LayerCollisionUtil.jcell_instance)
(defun (setf LayerCollisionUtil.jstatic_instance) (value) (setf LayerCollisionUtil.jcell_instance value))

    
(defun LayerCollisionUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LayerCollisionUtil.jstatic_instance)))))

    
(defun LayerCollisionUtil.jnew_0 ()
  (let ((this (make-instance 'LayerCollisionUtil)))
    
  (let (_features _gameFeatureFactory)
  (declare (ignorable _features _gameFeatureFactory))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (setf _gameFeatureFactory (GameFeatureFactory.jm_getInstance_0))
        (if (and (jm_isAnyThreed_0 (OpenGLFeatureUtil.jm_getInstance_0)) (not (jm_isFeature_1 _features (slot-value _gameFeatureFactory 'f_COLLISIONS_FORCED_TWO_DIMENSIONAL))))
            (progn
            (setf (slot-value this 'f_collisionProcessor) (CollisionThreedProcessor.jnew_0)))
            (progn
            (setf (slot-value this 'f_collisionProcessor) (Collision2DProcessor.jnew_0))))))
    this))

    
(unless (fboundp 'jm_isCollision_2) (defgeneric jm_isCollision_2 (this p1 p2)))
(defmethod jm_isCollision_2 ((this LayerCollisionUtil) _myLayer _myLayer2)
  (declare (ignorable this _myLayer _myLayer2))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isCollision_2 (slot-value this 'f_collisionProcessor) _myLayer _myLayer2)))))



