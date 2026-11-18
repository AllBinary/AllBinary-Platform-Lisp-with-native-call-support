;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.terrain

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TerrainEventListener (JObject)
  ((f_list :initform nil)))

(defun TerrainEventListener.jnew_0 ()
  (let ((this (make-instance 'TerrainEventListener)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this TerrainEventListener) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onTerrainEvent_1) (defgeneric jm_onTerrainEvent_1 (this p1)))
(defmethod jm_onTerrainEvent_1 ((this TerrainEventListener) _terrainEvent)
  (declare (ignorable this _terrainEvent))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (jm_add_1 (slot-value this 'f_list) _terrainEvent))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this TerrainEventListener))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))



