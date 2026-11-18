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

(defclass TerrainEventHandler (BasicEventHandler)
  ((f_list :initform nil)))

(defvar TerrainEventHandler.jcell_hashtable :jnone)
(defun TerrainEventHandler.jstatic_hashtable ()
  (when (eq TerrainEventHandler.jcell_hashtable :jnone) (setf TerrainEventHandler.jcell_hashtable (slot-value (StdUtil.jm_getInstance_0) 'f_NULL_TABLE)))
  TerrainEventHandler.jcell_hashtable)
(defun (setf TerrainEventHandler.jstatic_hashtable) (value) (setf TerrainEventHandler.jcell_hashtable value))

    
(defun TerrainEventHandler.jm_init_0 ()
  (let ()
    (block jreturn
        (setf (TerrainEventHandler.jstatic_hashtable) (jm_createHashtable_0 (StdUtil.jm_getInstance_0))))))

    
(defun TerrainEventHandler.jm_getInstance_1 (_anyType)
  (declare (ignorable _anyType))
  (let (_eventHandlerCanBeNull)
  (declare (ignorable _eventHandlerCanBeNull))
    (block jreturn
        (setf _eventHandlerCanBeNull (jm_get_1 (TerrainEventHandler.jstatic_hashtable) _anyType))
        (if (null _eventHandlerCanBeNull)
            (progn
            (setf _eventHandlerCanBeNull (TerrainEventHandler.jnew_0))
            (jm_put_2 (TerrainEventHandler.jstatic_hashtable) _anyType _eventHandlerCanBeNull)))
        (return-from jreturn _eventHandlerCanBeNull))))

    
(defun TerrainEventHandler.jnew_0 ()
  (let ((this (make-instance 'TerrainEventHandler)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this TerrainEventHandler) _terrainEventListener)
  (declare (ignorable this _terrainEventListener))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _terrainEventListener))
            (progn
            (jm_add_1 (slot-value this 'f_list) _terrainEventListener))))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this TerrainEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (call-next-method this))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this TerrainEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this TerrainEventHandler) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_terrainEventListener _index)
  (declare (ignorable _terrainEventListener _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_list)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (handler-case (progn
                (setf _terrainEventListener (jm_get_1 (slot-value this 'f_list) _index))
                (jm_onTerrainEvent_1 _terrainEventListener _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (call-next-method this _eventObject))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this TerrainEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_terrainEventListenerInterface)
  (declare (ignorable _terrainEventListenerInterface))
    (block jreturn
        (setf _terrainEventListenerInterface _eventListenerInterface)
        (jm_onTerrainEvent_1 _terrainEventListenerInterface _eventObject))))



