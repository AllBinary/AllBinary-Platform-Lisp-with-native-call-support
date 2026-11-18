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
;;;; package org.allbinary.game.ag.layer.pickup.health

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HealLayerCircularStaticPool (AllBinaryLayerCircularPool)
  ())

    
(defun HealLayerCircularStaticPool.jnew_2 (_allbinaryLayerFactoryInterface _total)
  (declare (ignorable _allbinaryLayerFactoryInterface _total))
  (let ((this (make-instance 'HealLayerCircularStaticPool)))
  (let ()
    (block jreturn
        (jm_initAllBinaryLayerCircularPool_2 this _allbinaryLayerFactoryInterface _total)))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this HealLayerCircularStaticPool) _sourceLayerInterface)
  (declare (ignorable this _sourceLayerInterface))
  (let (_healLayer _healthInterfaceCompositeInterface _healthInterface)
  (declare (ignorable _healLayer _healthInterfaceCompositeInterface _healthInterface))
    (block jreturn
        (setf _healLayer (jm_getNextInstance_0 this))
        (setf _healthInterfaceCompositeInterface _sourceLayerInterface)
        (setf _healthInterface (jm_getHealthInterface_0 _healthInterfaceCompositeInterface))
        (jm_visit_1 _healLayer _healthInterface))))



