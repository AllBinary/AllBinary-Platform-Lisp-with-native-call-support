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
;;;; package org.allbinary.game.tracking

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TrackingEventCircularStaticPool (JObject)
  ((f_EVENT_POOL :initform nil)))

(defvar TrackingEventCircularStaticPool.jcell_instance :jnone)
(defun TrackingEventCircularStaticPool.jstatic_instance ()
  (when (eq TrackingEventCircularStaticPool.jcell_instance :jnone) (setf TrackingEventCircularStaticPool.jcell_instance (TrackingEventCircularStaticPool.jnew_0)))
  TrackingEventCircularStaticPool.jcell_instance)
(defun (setf TrackingEventCircularStaticPool.jstatic_instance) (value) (setf TrackingEventCircularStaticPool.jcell_instance value))

(defun TrackingEventCircularStaticPool.jnew_0 ()
  (let ((this (make-instance 'TrackingEventCircularStaticPool)))
    (setf (slot-value this 'f_EVENT_POOL) (AllBinaryEventCircularPool.jnew_1 20))
    this))

    
(defun TrackingEventCircularStaticPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TrackingEventCircularStaticPool.jstatic_instance)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this TrackingEventCircularStaticPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_initAllBinaryEventCircularPool_1 (slot-value this 'f_EVENT_POOL) (TrackingEventFactory.jnew_0)))))

    
(unless (fboundp 'jm_getNextInstance_1) (defgeneric jm_getNextInstance_1 (this p1)))
(defmethod jm_getNextInstance_1 ((this TrackingEventCircularStaticPool) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let (_trackingEvent)
  (declare (ignorable _trackingEvent))
    (block jreturn
        (setf _trackingEvent (jm_getNextInstance_0 (slot-value this 'f_EVENT_POOL)))
        (jm_setLayerInterfaceForCircularStaticPool_1 _trackingEvent _layerInterface)
        (return-from jreturn _trackingEvent))))



