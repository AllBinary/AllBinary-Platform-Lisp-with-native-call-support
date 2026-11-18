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
;;;; package org.allbinary.game.ag.layer.pickup

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FallingPickupLayer (PickupLayer)
  ())

(defvar FallingPickupLayer.jcell_NAME :jnone)
(defun FallingPickupLayer.jstatic_NAME ()
  (when (eq FallingPickupLayer.jcell_NAME :jnone) (setf FallingPickupLayer.jcell_NAME "FallingPickupLayer"))
  FallingPickupLayer.jcell_NAME)
(defun (setf FallingPickupLayer.jstatic_NAME) (value) (setf FallingPickupLayer.jcell_NAME value))

    
(defun FallingPickupLayer.jnew_1 (_remoteInfo)
  (declare (ignorable _remoteInfo))
  (let ((this (make-instance 'FallingPickupLayer)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processTick_1) (defgeneric jm_processTick_1 (this p1)))
(defmethod jm_processTick_1 ((this FallingPickupLayer) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (jm_setPosition_3 this (slot-value this 'f_x) (JR.i32 (+ (slot-value this 'f_y) 1)) (slot-value this 'f_z)))))

    
(unless (fboundp 'jm_implmentsTickableInterface_0) (defgeneric jm_implmentsTickableInterface_0 (this)))
(defmethod jm_implmentsTickableInterface_0 ((this FallingPickupLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))



