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
;;;; package org.allbinary.game.ag.layer.pickup.points

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PointsLayerCircularStaticPool (AllBinaryLayerCircularPool)
  ())

    
(defun PointsLayerCircularStaticPool.jnew_2 (_allbinaryLayerFactoryInterface _total)
  (declare (ignorable _allbinaryLayerFactoryInterface _total))
  (let ((this (make-instance 'PointsLayerCircularStaticPool)))
  (let ()
    (block jreturn
        (jm_initAllBinaryLayerCircularPool_2 this _allbinaryLayerFactoryInterface _total)))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this PointsLayerCircularStaticPool) _sourceLayerInterface)
  (declare (ignorable this _sourceLayerInterface))
  (let (_pointsLayer _scoreableInterface)
  (declare (ignorable _pointsLayer _scoreableInterface))
    (block jreturn
        (setf _pointsLayer (jm_getNextInstance_0 this))
        (setf _scoreableInterface _sourceLayerInterface)
        (jm_visit_1 _pointsLayer _scoreableInterface))))



