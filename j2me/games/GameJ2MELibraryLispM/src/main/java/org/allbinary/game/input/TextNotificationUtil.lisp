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

(defclass TextNotificationUtil (JObject)
  ((f_TWO :initform nil)
   (f_FALSE :initform nil)
   (f_gameNotificationEventHandler :initform nil)))

(defvar TextNotificationUtil.jcell_instance :jnone)
(defun TextNotificationUtil.jstatic_instance ()
  (when (eq TextNotificationUtil.jcell_instance :jnone) (setf TextNotificationUtil.jcell_instance (TextNotificationUtil.jnew_0)))
  TextNotificationUtil.jcell_instance)
(defun (setf TextNotificationUtil.jstatic_instance) (value) (setf TextNotificationUtil.jcell_instance value))

(defun TextNotificationUtil.jnew_0 ()
  (let ((this (make-instance 'TextNotificationUtil)))
    (setf (slot-value this 'f_TWO) (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 2))
    (setf (slot-value this 'f_FALSE) (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE))
    (setf (slot-value this 'f_gameNotificationEventHandler) (GameNotificationEventHandler.jm_getInstance_0))
    this))

    
(defun TextNotificationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TextNotificationUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_fireError_1) (defgeneric jm_fireError_1 (this p1)))
(defmethod jm_fireError_1 ((this TextNotificationUtil) _message)
  (declare (ignorable this _message))
  (let ()
    (block jreturn
        (jm_add_1 (PrimaryPlayerQueueFactory.jm_getInstance_0) (ErrorSound.jm_getInstance_0))
        (jm_fire_1 this _message))))

    
(unless (fboundp 'jm_fireNew_1) (defgeneric jm_fireNew_1 (this p1)))
(defmethod jm_fireNew_1 ((this TextNotificationUtil) _message)
  (declare (ignorable this _message))
  (let ()
    (block jreturn
        (jm_add_1 (PrimaryPlayerQueueFactory.jm_getInstance_0) (SelectSound.jm_getInstance_0))
        (jm_fire_1 this _message))))

    
(unless (fboundp 'jm_fireSuccess_1) (defgeneric jm_fireSuccess_1 (this p1)))
(defmethod jm_fireSuccess_1 ((this TextNotificationUtil) _message)
  (declare (ignorable this _message))
  (let ()
    (block jreturn
        (jm_add_1 (PrimaryPlayerQueueFactory.jm_getInstance_0) (SelectSound.jm_getInstance_0))
        (jm_fire_1 this _message))))

    
(unless (fboundp 'jm_fire_1) (defgeneric jm_fire_1 (this p1)))
(defmethod jm_fire_1 ((this TextNotificationUtil) _message)
  (declare (ignorable this _message))
  (let (_gameNotificationEvent)
  (declare (ignorable _gameNotificationEvent))
    (block jreturn
        (setf _gameNotificationEvent (GameNotificationEvent.jnew_5 this _message (slot-value this 'f_TWO) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_RED) (slot-value this 'f_FALSE)))
        (jm_fireEvent_1 (slot-value this 'f_gameNotificationEventHandler) _gameNotificationEvent))))



