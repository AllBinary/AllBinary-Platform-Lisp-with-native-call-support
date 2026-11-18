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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CompleteMotionGestureInputEventHandler (BasicEventHandler)
  ((f_list :initform nil)))

(defvar CompleteMotionGestureInputEventHandler.jcell_SINGLETON :jnone)
(defun CompleteMotionGestureInputEventHandler.jstatic_SINGLETON ()
  (when (eq CompleteMotionGestureInputEventHandler.jcell_SINGLETON :jnone) (setf CompleteMotionGestureInputEventHandler.jcell_SINGLETON (CompleteMotionGestureInputEventHandler.jnew_0)))
  CompleteMotionGestureInputEventHandler.jcell_SINGLETON)
(defun (setf CompleteMotionGestureInputEventHandler.jstatic_SINGLETON) (value) (setf CompleteMotionGestureInputEventHandler.jcell_SINGLETON value))

    
(defun CompleteMotionGestureInputEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CompleteMotionGestureInputEventHandler.jstatic_SINGLETON)))))

    
(defun CompleteMotionGestureInputEventHandler.jnew_0 ()
  (let ((this (make-instance 'CompleteMotionGestureInputEventHandler)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this CompleteMotionGestureInputEventHandler) _completeMotionGestureInputEventListener)
  (declare (ignorable this _completeMotionGestureInputEventListener))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _completeMotionGestureInputEventListener))
            (progn
            (jm_add_1 (slot-value this 'f_list) _completeMotionGestureInputEventListener))))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this CompleteMotionGestureInputEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (call-next-method this))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this CompleteMotionGestureInputEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this CompleteMotionGestureInputEventHandler) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_completeMotionGestureInputEventListener _index)
  (declare (ignorable _completeMotionGestureInputEventListener _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_list)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (handler-case (progn
                (setf _completeMotionGestureInputEventListener (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
                (jm_onCompleteMotionGestureInputEvent_1 _completeMotionGestureInputEventListener _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (call-next-method this _eventObject))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this CompleteMotionGestureInputEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_completeMotionGestureInputEventListenerInterface)
  (declare (ignorable _completeMotionGestureInputEventListenerInterface))
    (block jreturn
        (setf _completeMotionGestureInputEventListenerInterface _eventListenerInterface)
        (jm_onCompleteMotionGestureInputEvent_1 _completeMotionGestureInputEventListenerInterface _eventObject))))



