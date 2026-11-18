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

(defclass CollisionHelper (JObject)
  ((f_sourceLayerInterface :initform nil)))

    
(defun CollisionHelper.jnew_1 (_sourceLayerInterface)
  (declare (ignorable _sourceLayerInterface))
  (let ((this (make-instance 'CollisionHelper)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_sourceLayerInterface) _sourceLayerInterface)))
    this))

    
(unless (fboundp 'jm_isCollidable_1) (defgeneric jm_isCollidable_1 (this p1)))
(defmethod jm_isCollidable_1 ((this CollisionHelper) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_getOwnerLayerInterface_0) (defgeneric jm_getOwnerLayerInterface_0 (this)))
(defmethod jm_getOwnerLayerInterface_0 ((this CollisionHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_sourceLayerInterface)))))

    
(unless (fboundp 'jm_setOwnerLayerInterface_1) (defgeneric jm_setOwnerLayerInterface_1 (this p1)))
(defmethod jm_setOwnerLayerInterface_1 ((this CollisionHelper) _sourceLayerInterface)
  (declare (ignorable this _sourceLayerInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_sourceLayerInterface) _sourceLayerInterface))))



