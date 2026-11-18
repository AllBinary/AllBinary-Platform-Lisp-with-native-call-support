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

(defclass UpKeyEventHandlerBase (BasicEventHandler)
  ((f_list :initform nil)))

(defvar UpKeyEventHandlerBase.jcell_TOTAL_LISTENERS :jnone)
(defun UpKeyEventHandlerBase.jstatic_TOTAL_LISTENERS ()
  (when (eq UpKeyEventHandlerBase.jcell_TOTAL_LISTENERS :jnone) (setf UpKeyEventHandlerBase.jcell_TOTAL_LISTENERS " Total PlayerGameInput Listeners: "))
  UpKeyEventHandlerBase.jcell_TOTAL_LISTENERS)
(defun (setf UpKeyEventHandlerBase.jstatic_TOTAL_LISTENERS) (value) (setf UpKeyEventHandlerBase.jcell_TOTAL_LISTENERS value))

(defvar UpKeyEventHandlerBase.jcell_LISTENER_LABEL :jnone)
(defun UpKeyEventHandlerBase.jstatic_LISTENER_LABEL ()
  (when (eq UpKeyEventHandlerBase.jcell_LISTENER_LABEL :jnone) (setf UpKeyEventHandlerBase.jcell_LISTENER_LABEL " PlayerGameInput Listener: "))
  UpKeyEventHandlerBase.jcell_LISTENER_LABEL)
(defun (setf UpKeyEventHandlerBase.jstatic_LISTENER_LABEL) (value) (setf UpKeyEventHandlerBase.jcell_LISTENER_LABEL value))

    
(defun UpKeyEventHandlerBase.jnew_0 ()
  (let ((this (make-instance 'UpKeyEventHandlerBase)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this UpKeyEventHandlerBase) _playerGameInput)
  (declare (ignorable this _playerGameInput))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _playerGameInput))
            (progn
            (jm_add_1 (slot-value this 'f_list) _playerGameInput))))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this UpKeyEventHandlerBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (call-next-method this))))

    
(unless (fboundp 'jm_removeListenerSingleThreaded_1) (defgeneric jm_removeListenerSingleThreaded_1 (this p1)))
(defmethod jm_removeListenerSingleThreaded_1 ((this UpKeyEventHandlerBase) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this UpKeyEventHandlerBase) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEventForInteger_1) (defgeneric jm_fireEventForInteger_1 (this p1)))
(defmethod jm_fireEventForInteger_1 ((this UpKeyEventHandlerBase) _eventObject)
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
                (jm_onUpKeyEvent_1 _playerGameInput _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (setf _index 0)
        (setf _eventListenerInterface nil)
        (block jbreak (loop while (< _index (jm_size_0 (slot-value this 'f_eventListenerInterfaceList))) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (jm_get_1 (slot-value this 'f_eventListenerInterfaceList) _index))
                (jm_processForInteger_2 this _eventObject _eventListenerInterface))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))
            (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_processForInteger_2) (defgeneric jm_processForInteger_2 (this p1 p2)))
(defmethod jm_processForInteger_2 ((this UpKeyEventHandlerBase) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_upKeyEventListenerInterface)
  (declare (ignorable _upKeyEventListenerInterface))
    (block jreturn
        (setf _upKeyEventListenerInterface _eventListenerInterface)
        (jm_onUpKeyEvent_1 _upKeyEventListenerInterface _eventObject))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this UpKeyEventHandlerBase))
  (declare (ignorable this))
  (let (_stringBuffer _eventListenerInterface _index)
  (declare (ignorable _stringBuffer _eventListenerInterface _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (call-next-method this))
        (jm_append_1 _stringBuffer (UpKeyEventHandlerBase.jstatic_TOTAL_LISTENERS))
        (jm_appendint_1 _stringBuffer (jm_size_0 (slot-value this 'f_list)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (jm_size_0 (slot-value this 'f_list))) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (jm_get_1 (slot-value this 'f_list) _index))
                (jm_append_1 _stringBuffer (UpKeyEventHandlerBase.jstatic_LISTENER_LABEL))
                (jm_append_1 _stringBuffer (jm_toString_0 _eventListenerInterface)))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_TOSTRING) _e))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



