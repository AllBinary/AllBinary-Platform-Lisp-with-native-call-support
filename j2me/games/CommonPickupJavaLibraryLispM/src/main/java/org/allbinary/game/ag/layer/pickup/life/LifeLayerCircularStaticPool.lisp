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
;;;; package org.allbinary.game.ag.layer.pickup.life

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LifeLayerCircularStaticPool (AllBinaryLayerCircularPool)
  ())

    
(defun LifeLayerCircularStaticPool.jnew_2 (_allbinaryLayerFactoryInterface _total)
  (declare (ignorable _allbinaryLayerFactoryInterface _total))
  (let ((this (make-instance 'LifeLayerCircularStaticPool)))
  (let ()
    (block jreturn
        (jm_initAllBinaryLayerCircularPool_2 this _allbinaryLayerFactoryInterface _total)))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this LifeLayerCircularStaticPool) _sourceLayerInterface)
  (declare (ignorable this _sourceLayerInterface))
  (let (_lifeLayer _lifeInterfaceCompositeInterface _lifeInterface)
  (declare (ignorable _lifeLayer _lifeInterfaceCompositeInterface _lifeInterface))
    (block jreturn
        (setf _lifeLayer (jm_getNextInstance_0 this))
        (setf _lifeInterfaceCompositeInterface _sourceLayerInterface)
        (setf _lifeInterface (jm_getLifeInterface_0 _lifeInterfaceCompositeInterface))
        (jm_visit_1 _lifeLayer _lifeInterface))))



