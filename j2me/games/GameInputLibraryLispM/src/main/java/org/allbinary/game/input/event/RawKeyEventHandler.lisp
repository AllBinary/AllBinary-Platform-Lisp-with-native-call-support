;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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

(defclass RawKeyEventHandler (JObject)
  ((f_logUtil :initform nil)
   (f_eventListenerInterfaceList :initform nil)))

(defvar RawKeyEventHandler.jcell_instance :jnone)
(defun RawKeyEventHandler.jstatic_instance ()
  (when (eq RawKeyEventHandler.jcell_instance :jnone) (setf RawKeyEventHandler.jcell_instance (RawKeyEventHandler.jnew_0)))
  RawKeyEventHandler.jcell_instance)
(defun (setf RawKeyEventHandler.jstatic_instance) (value) (setf RawKeyEventHandler.jcell_instance value))

(defvar RawKeyEventHandler.jcell_TOTAL_LISTENERS :jnone)
(defun RawKeyEventHandler.jstatic_TOTAL_LISTENERS ()
  (when (eq RawKeyEventHandler.jcell_TOTAL_LISTENERS :jnone) (setf RawKeyEventHandler.jcell_TOTAL_LISTENERS "Total Listeners: "))
  RawKeyEventHandler.jcell_TOTAL_LISTENERS)
(defun (setf RawKeyEventHandler.jstatic_TOTAL_LISTENERS) (value) (setf RawKeyEventHandler.jcell_TOTAL_LISTENERS value))

(defvar RawKeyEventHandler.jcell_LISTENER_LABEL :jnone)
(defun RawKeyEventHandler.jstatic_LISTENER_LABEL ()
  (when (eq RawKeyEventHandler.jcell_LISTENER_LABEL :jnone) (setf RawKeyEventHandler.jcell_LISTENER_LABEL " Listener: "))
  RawKeyEventHandler.jcell_LISTENER_LABEL)
(defun (setf RawKeyEventHandler.jstatic_LISTENER_LABEL) (value) (setf RawKeyEventHandler.jcell_LISTENER_LABEL value))

    
(defun RawKeyEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (RawKeyEventHandler.jstatic_instance)))))

    
(defun RawKeyEventHandler.jnew_0 ()
  (let ((this (make-instance 'RawKeyEventHandler)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_eventListenerInterfaceList) (BasicArrayListD.jnew_0))))
    this))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this RawKeyEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_eventListenerInterfaceList) (BasicArrayListD.jnew_0)))))

    
(unless (fboundp 'jm_addListeners_1) (defgeneric jm_addListeners_1 (this p1)))
(defmethod jm_addListeners_1 ((this RawKeyEventHandler) _vector)
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
            (jm_addListener_1 this _eventListenerInterface))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_addListenerSingleThreaded_1) (defgeneric jm_addListenerSingleThreaded_1 (this p1)))
(defmethod jm_addListenerSingleThreaded_1 ((this RawKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))
            (progn
            (jm_add_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))))))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this RawKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))
            (progn
            (jm_add_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))))))

    
(unless (fboundp 'jm_removeListenerSingleThreaded_1) (defgeneric jm_removeListenerSingleThreaded_1 (this p1)))
(defmethod jm_removeListenerSingleThreaded_1 ((this RawKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this RawKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_eventListenerInterfaceList) _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEvent_3) (defgeneric jm_fireEvent_3 (this p1 p2 p3)))
(defmethod jm_fireEvent_3 ((this RawKeyEventHandler) _keyCode _deviceId _repeated)
  (declare (ignorable this _keyCode _deviceId _repeated))
  (let (_eventListenerInterface _index _commonStrings)
  (declare (ignorable _eventListenerInterface _index _commonStrings))
    (block jreturn
        (setf _eventListenerInterface nil)
        (setf _index 0)
        (block jbreak (loop while (< _index (jm_size_0 (slot-value this 'f_eventListenerInterfaceList))) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (jm_get_1 (slot-value this 'f_eventListenerInterfaceList) _index))
                (jm_process_4 this _keyCode _deviceId _repeated _eventListenerInterface))
                (error (_e) (declare (ignorable _e))
                (setf _commonStrings (CommonStrings.jm_getInstance_0))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))
            (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_process_4) (defgeneric jm_process_4 (this p1 p2 p3 p4)))
(defmethod jm_process_4 ((this RawKeyEventHandler) _keyCode _deviceId _repeated _eventListenerInterface)
  (declare (ignorable this _keyCode _deviceId _repeated _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_onEventRaw_3 _eventListenerInterface _keyCode _deviceId _repeated))))

    
(unless (fboundp 'jm_getEventListenerInterfaceListP_0) (defgeneric jm_getEventListenerInterfaceListP_0 (this)))
(defmethod jm_getEventListenerInterfaceListP_0 ((this RawKeyEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_eventListenerInterfaceList)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this RawKeyEventHandler))
  (declare (ignorable this))
  (let (_stringBuffer _eventListenerInterface _index _commonStrings)
  (declare (ignorable _stringBuffer _eventListenerInterface _index _commonStrings))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (RawKeyEventHandler.jstatic_TOTAL_LISTENERS))
        (jm_appendint_1 _stringBuffer (jm_size_0 (slot-value this 'f_eventListenerInterfaceList)))
        (setf _eventListenerInterface nil)
        (setf _index 0)
        (block jbreak (loop while (< _index (jm_size_0 (slot-value this 'f_eventListenerInterfaceList))) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (jm_get_1 (slot-value this 'f_eventListenerInterfaceList) _index))
                (jm_append_1 _stringBuffer (RawKeyEventHandler.jstatic_LISTENER_LABEL))
                (jm_append_1 _stringBuffer (jm_toString_0 _eventListenerInterface)))
                (error (_e) (declare (ignorable _e))
                (setf _commonStrings (CommonStrings.jm_getInstance_0))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_TOSTRING) _e)))
            (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



