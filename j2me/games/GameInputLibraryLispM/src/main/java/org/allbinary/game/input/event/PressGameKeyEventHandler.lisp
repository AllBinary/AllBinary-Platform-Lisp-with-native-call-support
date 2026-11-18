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
;;;; package org.allbinary.game.input.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PressGameKeyEventHandler (BasicEventHandler)
  ((f_list :initform nil)))

(defvar PressGameKeyEventHandler.jcell_instance :jnone)
(defun PressGameKeyEventHandler.jstatic_instance ()
  (when (eq PressGameKeyEventHandler.jcell_instance :jnone) (setf PressGameKeyEventHandler.jcell_instance (PressGameKeyEventHandler.jnew_0)))
  PressGameKeyEventHandler.jcell_instance)
(defun (setf PressGameKeyEventHandler.jstatic_instance) (value) (setf PressGameKeyEventHandler.jcell_instance value))

    
(defun PressGameKeyEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PressGameKeyEventHandler.jstatic_instance)))))

    
(defun PressGameKeyEventHandler.jnew_0 ()
  (let ((this (make-instance 'PressGameKeyEventHandler)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this PressGameKeyEventHandler) _playerGameInput)
  (declare (ignorable this _playerGameInput))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _playerGameInput))
            (progn
            (jm_add_1 (slot-value this 'f_list) _playerGameInput))))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this PressGameKeyEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (call-next-method this))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this PressGameKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this PressGameKeyEventHandler) _eventObject)
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
                (jm_onPressGameKeyEvent_1 _playerGameInput _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (call-next-method this _eventObject))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this PressGameKeyEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_pressGameKeyEventListenerInterface)
  (declare (ignorable _pressGameKeyEventListenerInterface))
    (block jreturn
        (setf _pressGameKeyEventListenerInterface _eventListenerInterface)
        (jm_onPressGameKeyEvent_1 _pressGameKeyEventListenerInterface _eventObject))))



