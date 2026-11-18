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
;;;; package org.allbinary.view.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ViewPositionEventHandler (BasicEventHandler)
  ((f_list :initform nil)))

(defvar ViewPositionEventHandler.jcell_SINGLETON :jnone)
(defun ViewPositionEventHandler.jstatic_SINGLETON ()
  (when (eq ViewPositionEventHandler.jcell_SINGLETON :jnone) (setf ViewPositionEventHandler.jcell_SINGLETON (ViewPositionEventHandler.jnew_0)))
  ViewPositionEventHandler.jcell_SINGLETON)
(defun (setf ViewPositionEventHandler.jstatic_SINGLETON) (value) (setf ViewPositionEventHandler.jcell_SINGLETON value))

    
(defun ViewPositionEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ViewPositionEventHandler.jstatic_SINGLETON)))))

    
(defun ViewPositionEventHandler.jnew_0 ()
  (let ((this (make-instance 'ViewPositionEventHandler)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this ViewPositionEventHandler) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _layerInterface))
            (progn
            (jm_add_1 (slot-value this 'f_list) _layerInterface))))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this ViewPositionEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (call-next-method this))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this ViewPositionEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this ViewPositionEventHandler) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_layerInterface _index)
  (declare (ignorable _layerInterface _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_list)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (handler-case (progn
                (setf _layerInterface (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
                (jm_onChangeEvent_1 _layerInterface _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (call-next-method this _eventObject))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this ViewPositionEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_viewPositionEventListenerInterface)
  (declare (ignorable _viewPositionEventListenerInterface))
    (block jreturn
        (setf _viewPositionEventListenerInterface _eventListenerInterface)
        (jm_onChangeEvent_1 _viewPositionEventListenerInterface _eventObject))))



