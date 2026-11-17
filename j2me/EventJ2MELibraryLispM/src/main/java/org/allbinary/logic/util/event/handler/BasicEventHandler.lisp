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
;;;; package org.allbinary.logic.util.event.handler

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicEventHandler (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_eventStrings :initform nil)
   (f_eventListenerInterfaceList :initform nil)))

    
(defun BasicEventHandler.jnew_0 ()
  (let ((this (make-instance 'BasicEventHandler)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_eventStrings) (EventStrings.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_eventListenerInterfaceList) (BasicArrayListD.jnew_0))))
    this))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this BasicEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_eventListenerInterfaceList) (BasicArrayListD.jnew_0)))))

    
(unless (fboundp 'jm_addListeners_1) (defgeneric jm_addListeners_1 (this p1)))
(defmethod jm_addListeners_1 ((this BasicEventHandler) _vector)
  (declare (ignorable this _vector))
  (let (_eventListenerInterface _size _index)
  (declare (ignorable _eventListenerInterface _size _index))
    (block jreturn
        (setf _eventListenerInterface nil)
        (setf _size (jm_size_0 _vector))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _eventListenerInterface (jm_get_1 _vector _index))
            (jm_addListenerInterface_1 this _eventListenerInterface))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_removeListeners_1) (defgeneric jm_removeListeners_1 (this p1)))
(defmethod jm_removeListeners_1 ((this BasicEventHandler) _vector)
  (declare (ignorable this _vector))
  (let (_eventListenerInterface _size _index)
  (declare (ignorable _eventListenerInterface _size _index))
    (block jreturn
        (setf _eventListenerInterface nil)
        (setf _size (jm_size_0 _vector))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _eventListenerInterface (jm_get_1 _vector _index))
            (jm_removeListener_1 this _eventListenerInterface))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_addListenerSingleThreaded_1) (defgeneric jm_addListenerSingleThreaded_1 (this p1)))
(defmethod jm_addListenerSingleThreaded_1 ((this BasicEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))
            (progn
            (jm_add_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))))))

    
(unless (fboundp 'jm_addListenerInterface_1) (defgeneric jm_addListenerInterface_1 (this p1)))
(defmethod jm_addListenerInterface_1 ((this BasicEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))
            (progn
            (jm_add_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))))))

    
(unless (fboundp 'jm_removeListenerSingleThreaded_1) (defgeneric jm_removeListenerSingleThreaded_1 (this p1)))
(defmethod jm_removeListenerSingleThreaded_1 ((this BasicEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this BasicEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this BasicEventHandler) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_eventListenerInterface _index)
  (declare (ignorable _eventListenerInterface _index))
    (block jreturn
        (setf _eventListenerInterface nil)
        (setf _index 0)
        (block jbreak (loop while (< _index (jm_size_0 (slot-value this 'f_eventListenerInterfaceList))) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (jm_get_1 (slot-value this 'f_eventListenerInterfaceList) _index))
                (jm_process_2 this _eventObject _eventListenerInterface))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_eventStrings) 'f_FIRE_EVENT) _e)))
            (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this BasicEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_onEvent_1 _eventListenerInterface _eventObject))))

    
(unless (fboundp 'jm_getEventListenerInterfaceListP_0) (defgeneric jm_getEventListenerInterfaceListP_0 (this)))
(defmethod jm_getEventListenerInterfaceListP_0 ((this BasicEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_eventListenerInterfaceList)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BasicEventHandler))
  (declare (ignorable this))
  (let (_stringBuffer _eventListenerInterface _index)
  (declare (ignorable _stringBuffer _eventListenerInterface _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_eventStrings) 'f_TOTAL_LISTENERS))
        (jm_appendint_1 _stringBuffer (jm_size_0 (slot-value this 'f_eventListenerInterfaceList)))
        (setf _eventListenerInterface nil)
        (setf _index 0)
        (block jbreak (loop while (< _index (jm_size_0 (slot-value this 'f_eventListenerInterfaceList))) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (jm_get_1 (slot-value this 'f_eventListenerInterfaceList) _index))
                (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_eventStrings) 'f_LISTENER_LABEL))
                (jm_append_1 _stringBuffer (jm_toString_0 _eventListenerInterface)))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_TOSTRING) _e)))
            (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



