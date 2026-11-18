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
;;;; package org.allbinary.game.combat.destroy

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DestroyedLayerProcessor (BasicLayerProcessor)
  ())

(defvar DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR :jnone)
(defun DestroyedLayerProcessor.jstatic_DESTROYED_LAYER_PROCESSOR ()
  (when (eq DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR :jnone) (setf DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR (BasicLayerProcessor.jstatic_NULL_LAYER_PROCESSOR)))
  DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR)
(defun (setf DestroyedLayerProcessor.jstatic_DESTROYED_LAYER_PROCESSOR) (value) (setf DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR value))

    
(defun DestroyedLayerProcessor.jnew_0 ()
  (let ((this (make-instance 'DestroyedLayerProcessor)))
  (let ()
    (block jreturn nil))
    this))

    
(defun DestroyedLayerProcessor.jm_init_0 ()
  (let ()
    (block jreturn
        (setf (DestroyedLayerProcessor.jstatic_DESTROYED_LAYER_PROCESSOR) (DestroyedLayerProcessor.jnew_0)))))

    
(defun DestroyedLayerProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DestroyedLayerProcessor.jstatic_DESTROYED_LAYER_PROCESSOR)))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this DestroyedLayerProcessor) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_list _size _destroyedEventHandler _destroyEventCircularStaticPool _destroyedEvent _layerInterface _layerInterfaceCanBeNull _commonStrings _index)
  (declare (ignorable _list _size _destroyedEventHandler _destroyEventCircularStaticPool _destroyedEvent _layerInterface _layerInterfaceCanBeNull _commonStrings _index))
    (block jreturn
        (setf _list (jm_getList_0 this))
        (setf _size (jm_size_0 _list))
        (setf _destroyedEventHandler (DestroyedEventHandler.jm_getInstance_0))
        (setf _destroyEventCircularStaticPool (DestroyEventCircularStaticPool.jm_getInstance_0))
        (setf _destroyedEvent nil)
        (setf _layerInterface nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _layerInterfaceCanBeNull (aref (slot-value _list 'f_objectArray) _index))
            (if (not (null _layerInterfaceCanBeNull))
                (progn
                (setf _layerInterface _layerInterfaceCanBeNull)
                (jm_remove_1 _allBinaryLayerManager _layerInterface)
                (setf _destroyedEvent (jm_getInstanceForLayer_1 _destroyEventCircularStaticPool _layerInterface))
                (jm_fireEvent_1 _destroyedEventHandler _destroyedEvent))
                (progn
                (setf _commonStrings (CommonStrings.jm_getInstance_0)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_clear_0 _list))))



