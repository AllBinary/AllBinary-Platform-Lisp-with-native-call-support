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
;;;; package org.allbinary.layer.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerManagerEventHandler (BasicEventHandler)
  ((f_list :initform nil)
   (f_CREATE :initform nil)
   (f_DELETE :initform nil)))

(defvar LayerManagerEventHandler.jcell_instance :jnone)
(defun LayerManagerEventHandler.jstatic_instance ()
  (when (eq LayerManagerEventHandler.jcell_instance :jnone) (setf LayerManagerEventHandler.jcell_instance (LayerManagerEventHandler.jnew_0)))
  LayerManagerEventHandler.jcell_instance)
(defun (setf LayerManagerEventHandler.jstatic_instance) (value) (setf LayerManagerEventHandler.jcell_instance value))

    
(defun LayerManagerEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LayerManagerEventHandler.jstatic_instance)))))

    
(defun LayerManagerEventHandler.jnew_0 ()
  (let ((this (make-instance 'LayerManagerEventHandler)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_CREATE) "Create")
    (setf (slot-value this 'f_DELETE) "Delete")
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this LayerManagerEventHandler) _layerManagerEventListener)
  (declare (ignorable this _layerManagerEventListener))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _layerManagerEventListener))
            (progn
            (jm_add_1 (slot-value this 'f_list) _layerManagerEventListener))))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this LayerManagerEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (call-next-method this))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this LayerManagerEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this LayerManagerEventHandler) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_layerManagerEventListener _index)
  (declare (ignorable _layerManagerEventListener _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_list)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (handler-case (progn
                (setf _layerManagerEventListener (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
                (jm_onCreateLayerManagerEvent_1 _layerManagerEventListener _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (call-next-method this _eventObject))))

    
(unless (fboundp 'jm_fireDeleteEvent_1) (defgeneric jm_fireDeleteEvent_1 (this p1)))
(defmethod jm_fireDeleteEvent_1 ((this LayerManagerEventHandler) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_layerManagerEventListener _index _eventListenerInterfaceList _eventListenerInterface _layerManagerEventListenerInterface _listenerIndex)
  (declare (ignorable _layerManagerEventListener _index _eventListenerInterfaceList _eventListenerInterface _layerManagerEventListenerInterface _listenerIndex))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_list)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (handler-case (progn
                (setf _layerManagerEventListener (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
                (jm_onDeleteLayerManagerEvent_1 _layerManagerEventListener _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (setf _eventListenerInterfaceList (slot-value this 'f_eventListenerInterfaceList))
        (setf _eventListenerInterface nil)
        (setf _layerManagerEventListenerInterface nil)
        (setf _listenerIndex 0)
        (block jbreak (loop while (< _listenerIndex (jm_size_0 _eventListenerInterfaceList)) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (aref (slot-value _eventListenerInterfaceList 'f_objectArray) _listenerIndex))
                (setf _layerManagerEventListenerInterface _eventListenerInterface)
                (jm_onDeleteLayerManagerEvent_1 _layerManagerEventListenerInterface _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))
            (setf _listenerIndex (JR.i32 (+ _listenerIndex 1)))))))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this LayerManagerEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_layerManagerEventListenerInterface)
  (declare (ignorable _layerManagerEventListenerInterface))
    (block jreturn
        (setf _layerManagerEventListenerInterface _eventListenerInterface)
        (jm_onCreateLayerManagerEvent_1 _layerManagerEventListenerInterface _eventObject))))



