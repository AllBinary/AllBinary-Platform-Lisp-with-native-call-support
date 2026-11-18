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
;;;; package org.allbinary.game.terrain

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TerrainEventCircularStaticPool (JObject)
  ((f_EVENT_POOL :initform nil)))

(defvar TerrainEventCircularStaticPool.jcell_instance :jnone)
(defun TerrainEventCircularStaticPool.jstatic_instance ()
  (when (eq TerrainEventCircularStaticPool.jcell_instance :jnone) (setf TerrainEventCircularStaticPool.jcell_instance (TerrainEventCircularStaticPool.jnew_0)))
  TerrainEventCircularStaticPool.jcell_instance)
(defun (setf TerrainEventCircularStaticPool.jstatic_instance) (value) (setf TerrainEventCircularStaticPool.jcell_instance value))

(defun TerrainEventCircularStaticPool.jnew_0 ()
  (let ((this (make-instance 'TerrainEventCircularStaticPool)))
    (setf (slot-value this 'f_EVENT_POOL) (AllBinaryEventCircularPool.jnew_1 20))
    this))

    
(defun TerrainEventCircularStaticPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TerrainEventCircularStaticPool.jstatic_instance)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this TerrainEventCircularStaticPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_initAllBinaryEventCircularPool_1 (slot-value this 'f_EVENT_POOL) (TerrainEventFactory.jnew_0)))))

    
(unless (fboundp 'jm_getNext_1) (defgeneric jm_getNext_1 (this p1)))
(defmethod jm_getNext_1 ((this TerrainEventCircularStaticPool) _basicTerrainInfo)
  (declare (ignorable this _basicTerrainInfo))
  (let (_trackingEvent)
  (declare (ignorable _trackingEvent))
    (block jreturn
        (setf _trackingEvent (jm_getNextInstance_0 (slot-value this 'f_EVENT_POOL)))
        (jm_setBasicTerrainInfoForCircularStaticPool_1 _trackingEvent _basicTerrainInfo)
        (return-from jreturn _trackingEvent))))



