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
;;;; package org.allbinary.input.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass VirtualKeyboardEventHandler (BasicEventHandler)
  ((f_SHOW_EVENT :initform nil)
   (f_HIDE_EVENT :initform nil)))

(defvar VirtualKeyboardEventHandler.jcell_gameKeyEventHandler :jnone)
(defun VirtualKeyboardEventHandler.jstatic_gameKeyEventHandler ()
  (when (eq VirtualKeyboardEventHandler.jcell_gameKeyEventHandler :jnone) (setf VirtualKeyboardEventHandler.jcell_gameKeyEventHandler (VirtualKeyboardEventHandler.jnew_0)))
  VirtualKeyboardEventHandler.jcell_gameKeyEventHandler)
(defun (setf VirtualKeyboardEventHandler.jstatic_gameKeyEventHandler) (value) (setf VirtualKeyboardEventHandler.jcell_gameKeyEventHandler value))

    
(defun VirtualKeyboardEventHandler.jnew_0 ()
  (let ((this (make-instance 'VirtualKeyboardEventHandler)))
    (setf (slot-value this 'f_SHOW_EVENT) (VirtualKeyboardEvent.jnew_1 (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE)))
    (setf (slot-value this 'f_HIDE_EVENT) (VirtualKeyboardEvent.jnew_1 (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE)))
  (let ()
    (block jreturn nil))
    this))

    
(defun VirtualKeyboardEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (VirtualKeyboardEventHandler.jstatic_gameKeyEventHandler)))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this VirtualKeyboardEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_virtualKeyboardEventListenerInterface)
  (declare (ignorable _virtualKeyboardEventListenerInterface))
    (block jreturn
        (setf _virtualKeyboardEventListenerInterface _eventListenerInterface)
        (jm_onVirtualKeyboardEvent_1 _virtualKeyboardEventListenerInterface _eventObject))))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this VirtualKeyboardEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (Thread.jm_sleep_1 120)
            (jm_fireEvent_1 this (slot-value this 'f_SHOW_EVENT)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "open" _e))))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this VirtualKeyboardEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (Thread.jm_sleep_1 120)
            (jm_fireEvent_1 this (slot-value this 'f_HIDE_EVENT)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_CLOSE) _e))))))



