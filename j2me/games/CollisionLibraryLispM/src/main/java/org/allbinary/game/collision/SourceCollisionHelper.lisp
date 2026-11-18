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

(defclass SourceCollisionHelper (CollisionHelper)
  ())

    
(defun SourceCollisionHelper.jnew_1 (_layerInterface)
  (declare (ignorable _layerInterface))
  (let ((this (make-instance 'SourceCollisionHelper)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_isCollidable_1) (defgeneric jm_isCollidable_1 (this p1)))
(defmethod jm_isCollidable_1 ((this SourceCollisionHelper) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (if (not (eq (slot-value this 'f_sourceLayerInterface) _layerInterface))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))



