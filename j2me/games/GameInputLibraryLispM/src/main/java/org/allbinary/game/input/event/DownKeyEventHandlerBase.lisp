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

(defclass DownKeyEventHandlerBase (BasicEventHandler)
  ((f_list :initform nil)))

(defvar DownKeyEventHandlerBase.jcell_TOTAL_LISTENERS :jnone)
(defun DownKeyEventHandlerBase.jstatic_TOTAL_LISTENERS ()
  (when (eq DownKeyEventHandlerBase.jcell_TOTAL_LISTENERS :jnone) (setf DownKeyEventHandlerBase.jcell_TOTAL_LISTENERS " Total PlayerGameInput Listeners: "))
  DownKeyEventHandlerBase.jcell_TOTAL_LISTENERS)
(defun (setf DownKeyEventHandlerBase.jstatic_TOTAL_LISTENERS) (value) (setf DownKeyEventHandlerBase.jcell_TOTAL_LISTENERS value))

(defvar DownKeyEventHandlerBase.jcell_LISTENER_LABEL :jnone)
(defun DownKeyEventHandlerBase.jstatic_LISTENER_LABEL ()
  (when (eq DownKeyEventHandlerBase.jcell_LISTENER_LABEL :jnone) (setf DownKeyEventHandlerBase.jcell_LISTENER_LABEL " PlayerGameInput Listener: "))
  DownKeyEventHandlerBase.jcell_LISTENER_LABEL)
(defun (setf DownKeyEventHandlerBase.jstatic_LISTENER_LABEL) (value) (setf DownKeyEventHandlerBase.jcell_LISTENER_LABEL value))

    
(defun DownKeyEventHandlerBase.jnew_0 ()
  (let ((this (make-instance 'DownKeyEventHandlerBase)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this DownKeyEventHandlerBase) _playerGameInput)
  (declare (ignorable this _playerGameInput))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _playerGameInput))
            (progn
            (jm_add_1 (slot-value this 'f_list) _playerGameInput))))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this DownKeyEventHandlerBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (call-next-method this))))

    
(unless (fboundp 'jm_removeListenerSingleThreaded_1) (defgeneric jm_removeListenerSingleThreaded_1 (this p1)))
(defmethod jm_removeListenerSingleThreaded_1 ((this DownKeyEventHandlerBase) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this DownKeyEventHandlerBase) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEventI_1) (defgeneric jm_fireEventI_1 (this p1)))
(defmethod jm_fireEventI_1 ((this DownKeyEventHandlerBase) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_playerGameInput _index _eventListenerInterface)
  (declare (ignorable _playerGameInput _index _eventListenerInterface))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_list)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (handler-case (progn
                (setf _playerGameInput (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
                (jm_onDownKey_1 _playerGameInput _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (setf _index 0)
        (setf _eventListenerInterface nil)
        (block jbreak (loop while (< _index (jm_size_0 (slot-value this 'f_eventListenerInterfaceList))) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (jm_get_1 (slot-value this 'f_eventListenerInterfaceList) _index))
                (jm_processI_2 this _eventObject _eventListenerInterface))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))
            (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_fireEventForGameKeyEvent_1) (defgeneric jm_fireEventForGameKeyEvent_1 (this p1)))
(defmethod jm_fireEventForGameKeyEvent_1 ((this DownKeyEventHandlerBase) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_size _playerGameInput _index _eventListenerInterface)
  (declare (ignorable _size _playerGameInput _index _eventListenerInterface))
    (block jreturn
        (setf _size (jm_size_0 (slot-value this 'f_list)))
        (progn
            (setf _index _size)
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (handler-case (progn
                (setf _playerGameInput (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
                (jm_onDownKeyEvent_1 _playerGameInput _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (setf _index 0)
        (setf _eventListenerInterface nil)
        (block jbreak (loop while (< _index (jm_size_0 (slot-value this 'f_eventListenerInterfaceList))) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (jm_get_1 (slot-value this 'f_eventListenerInterfaceList) _index))
                (jm_processEvent_2 this _eventObject _eventListenerInterface))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))
            (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_processI_2) (defgeneric jm_processI_2 (this p1 p2)))
(defmethod jm_processI_2 ((this DownKeyEventHandlerBase) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_downKeyEventListenerInterface)
  (declare (ignorable _downKeyEventListenerInterface))
    (block jreturn
        (setf _downKeyEventListenerInterface _eventListenerInterface)
        (jm_onDownKey_1 _downKeyEventListenerInterface _eventObject))))

    
(unless (fboundp 'jm_processEvent_2) (defgeneric jm_processEvent_2 (this p1 p2)))
(defmethod jm_processEvent_2 ((this DownKeyEventHandlerBase) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_downKeyEventListenerInterface)
  (declare (ignorable _downKeyEventListenerInterface))
    (block jreturn
        (setf _downKeyEventListenerInterface _eventListenerInterface)
        (jm_onDownKeyEvent_1 _downKeyEventListenerInterface _eventObject))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this DownKeyEventHandlerBase))
  (declare (ignorable this))
  (let (_stringBuffer _eventListenerInterface _index)
  (declare (ignorable _stringBuffer _eventListenerInterface _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (call-next-method this))
        (jm_append_1 _stringBuffer (DownKeyEventHandlerBase.jstatic_TOTAL_LISTENERS))
        (jm_appendint_1 _stringBuffer (jm_size_0 (slot-value this 'f_list)))
        (setf _eventListenerInterface nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (jm_size_0 (slot-value this 'f_list))) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (jm_get_1 (slot-value this 'f_list) _index))
                (jm_append_1 _stringBuffer (DownKeyEventHandlerBase.jstatic_LISTENER_LABEL))
                (jm_append_1 _stringBuffer (jm_toString_0 _eventListenerInterface)))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_TOSTRING) _e))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



