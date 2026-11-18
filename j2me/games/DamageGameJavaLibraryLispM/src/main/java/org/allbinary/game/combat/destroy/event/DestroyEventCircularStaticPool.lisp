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
;;;; package org.allbinary.game.combat.destroy.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DestroyEventCircularStaticPool (JObject)
  ((f_EVENT_POOL :initform nil)))

(defvar DestroyEventCircularStaticPool.jcell_instance :jnone)
(defun DestroyEventCircularStaticPool.jstatic_instance ()
  (when (eq DestroyEventCircularStaticPool.jcell_instance :jnone) (setf DestroyEventCircularStaticPool.jcell_instance (DestroyEventCircularStaticPool.jnew_0)))
  DestroyEventCircularStaticPool.jcell_instance)
(defun (setf DestroyEventCircularStaticPool.jstatic_instance) (value) (setf DestroyEventCircularStaticPool.jcell_instance value))

    
(defun DestroyEventCircularStaticPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DestroyEventCircularStaticPool.jstatic_instance)))))

    
(defun DestroyEventCircularStaticPool.jnew_0 ()
  (let ((this (make-instance 'DestroyEventCircularStaticPool)))
    (setf (slot-value this 'f_EVENT_POOL) (AllBinaryEventCircularPool.jnew_1 20))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this DestroyEventCircularStaticPool) _combatGameCanvas)
  (declare (ignorable this _combatGameCanvas))
  (let ()
    (block jreturn
        (jm_initAllBinaryEventCircularPool_1 (slot-value this 'f_EVENT_POOL) (DestroyEventFactory.jnew_1 _combatGameCanvas)))))

    
(unless (fboundp 'jm_getInstanceForLayer_1) (defgeneric jm_getInstanceForLayer_1 (this p1)))
(defmethod jm_getInstanceForLayer_1 ((this DestroyEventCircularStaticPool) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let (_destroyedEvent)
  (declare (ignorable _destroyedEvent))
    (block jreturn
        (setf _destroyedEvent (jm_getNextInstance_0 (slot-value this 'f_EVENT_POOL)))
        (jm_setLayerInterfaceForCircularStaticPool_1 _destroyedEvent _layerInterface)
        (return-from jreturn _destroyedEvent))))



