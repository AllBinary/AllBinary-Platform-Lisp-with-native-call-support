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

(defclass CollidableHelperFactory (JObject)
  ())

(defun CollidableHelperFactory.jnew_0 ()
  (let ((this (make-instance 'CollidableHelperFactory)))
    this))

    
(defun CollidableHelperFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value (GameFeatureFactory.jm_getInstance_0) 'f_COLLISIONS_WITH_SOURCE))
            (progn
            (return-from jreturn (CollisionHelper.jnew_1 (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))))
            (progn
            (return-from jreturn (SourceCollisionHelper.jnew_1 (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))))))))



