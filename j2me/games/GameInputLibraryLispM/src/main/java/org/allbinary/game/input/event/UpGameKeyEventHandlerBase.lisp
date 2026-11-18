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

(defclass UpGameKeyEventHandlerBase (BasicEventHandler)
  ((f_list :initform nil)))

(defvar UpGameKeyEventHandlerBase.jcell_TOTAL_LISTENERS :jnone)
(defun UpGameKeyEventHandlerBase.jstatic_TOTAL_LISTENERS ()
  (when (eq UpGameKeyEventHandlerBase.jcell_TOTAL_LISTENERS :jnone) (setf UpGameKeyEventHandlerBase.jcell_TOTAL_LISTENERS " Total PlayerGameInput Listeners: "))
  UpGameKeyEventHandlerBase.jcell_TOTAL_LISTENERS)
(defun (setf UpGameKeyEventHandlerBase.jstatic_TOTAL_LISTENERS) (value) (setf UpGameKeyEventHandlerBase.jcell_TOTAL_LISTENERS value))

(defvar UpGameKeyEventHandlerBase.jcell_LISTENER_LABEL :jnone)
(defun UpGameKeyEventHandlerBase.jstatic_LISTENER_LABEL ()
  (when (eq UpGameKeyEventHandlerBase.jcell_LISTENER_LABEL :jnone) (setf UpGameKeyEventHandlerBase.jcell_LISTENER_LABEL " PlayerGameInput Listener: "))
  UpGameKeyEventHandlerBase.jcell_LISTENER_LABEL)
(defun (setf UpGameKeyEventHandlerBase.jstatic_LISTENER_LABEL) (value) (setf UpGameKeyEventHandlerBase.jcell_LISTENER_LABEL value))

    
(defun UpGameKeyEventHandlerBase.jnew_0 ()
  (let ((this (make-instance 'UpGameKeyEventHandlerBase)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this UpGameKeyEventHandlerBase) _playerGameInput)
  (declare (ignorable this _playerGameInput))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _playerGameInput))
            (progn
            (jm_add_1 (slot-value this 'f_list) _playerGameInput))))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this UpGameKeyEventHandlerBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (call-next-method this))))

    
(unless (fboundp 'jm_removeListenerSingleThreaded_1) (defgeneric jm_removeListenerSingleThreaded_1 (this p1)))
(defmethod jm_removeListenerSingleThreaded_1 ((this UpGameKeyEventHandlerBase) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this UpGameKeyEventHandlerBase) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this UpGameKeyEventHandlerBase) _eventObject)
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
                (jm_onUpGameKeyEvent_1 _playerGameInput _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (call-next-method this _eventObject))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this UpGameKeyEventHandlerBase) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_upGameKeyEventListenerInterface)
  (declare (ignorable _upGameKeyEventListenerInterface))
    (block jreturn
        (setf _upGameKeyEventListenerInterface _eventListenerInterface)
        (jm_onUpGameKeyEvent_1 _upGameKeyEventListenerInterface _eventObject))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this UpGameKeyEventHandlerBase))
  (declare (ignorable this))
  (let (_stringBuffer _size _eventListenerInterface _index)
  (declare (ignorable _stringBuffer _size _eventListenerInterface _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _size (jm_size_0 (slot-value this 'f_list)))
        (jm_append_1 _stringBuffer (call-next-method this))
        (jm_append_1 _stringBuffer (UpGameKeyEventHandlerBase.jstatic_TOTAL_LISTENERS))
        (jm_appendint_1 _stringBuffer _size)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (handler-case (progn
                (setf _eventListenerInterface (jm_get_1 (slot-value this 'f_list) _index))
                (jm_append_1 _stringBuffer (UpGameKeyEventHandlerBase.jstatic_LISTENER_LABEL))
                (jm_append_1 _stringBuffer (jm_toString_0 _eventListenerInterface)))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_TOSTRING) _e))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



