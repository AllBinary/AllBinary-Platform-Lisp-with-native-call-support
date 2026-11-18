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
;;;; package org.allbinary.android.input.motion.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnalogControllerConfigurationEventHandler (BasicEventHandler)
  ((f_list :initform nil)))

(defvar AnalogControllerConfigurationEventHandler.jcell_instance :jnone)
(defun AnalogControllerConfigurationEventHandler.jstatic_instance ()
  (when (eq AnalogControllerConfigurationEventHandler.jcell_instance :jnone) (setf AnalogControllerConfigurationEventHandler.jcell_instance (AnalogControllerConfigurationEventHandler.jnew_0)))
  AnalogControllerConfigurationEventHandler.jcell_instance)
(defun (setf AnalogControllerConfigurationEventHandler.jstatic_instance) (value) (setf AnalogControllerConfigurationEventHandler.jcell_instance value))

    
(defun AnalogControllerConfigurationEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AnalogControllerConfigurationEventHandler.jstatic_instance)))))

    
(defun AnalogControllerConfigurationEventHandler.jnew_0 ()
  (let ((this (make-instance 'AnalogControllerConfigurationEventHandler)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this AnalogControllerConfigurationEventHandler) _analogControllerConfigurationEventListenerInterface)
  (declare (ignorable this _analogControllerConfigurationEventListenerInterface))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _analogControllerConfigurationEventListenerInterface))
            (progn
            (jm_add_1 (slot-value this 'f_list) _analogControllerConfigurationEventListenerInterface))))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this AnalogControllerConfigurationEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (call-next-method this))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this AnalogControllerConfigurationEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this AnalogControllerConfigurationEventHandler) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_playerGameInput _index)
  (declare (ignorable _playerGameInput _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_list)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (handler-case (progn
                (setf _playerGameInput (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
                (jm_onAnalogControllerConfigurationEvent_1 _playerGameInput _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (call-next-method this _eventObject))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this AnalogControllerConfigurationEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_analogControllerConfigurationEventListenerInterface)
  (declare (ignorable _analogControllerConfigurationEventListenerInterface))
    (block jreturn
        (setf _analogControllerConfigurationEventListenerInterface _eventListenerInterface)
        (jm_onAnalogControllerConfigurationEvent_1 _analogControllerConfigurationEventListenerInterface _eventObject))))



