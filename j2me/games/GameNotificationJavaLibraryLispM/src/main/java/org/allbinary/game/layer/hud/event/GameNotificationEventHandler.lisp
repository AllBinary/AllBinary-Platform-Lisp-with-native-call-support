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
;;;; package org.allbinary.game.layer.hud.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameNotificationEventHandler (BasicEventHandler)
  ((f_enabled :initform nil)))

(defvar GameNotificationEventHandler.jcell_instance :jnone)
(defun GameNotificationEventHandler.jstatic_instance ()
  (when (eq GameNotificationEventHandler.jcell_instance :jnone) (setf GameNotificationEventHandler.jcell_instance (GameNotificationEventHandler.jnew_0)))
  GameNotificationEventHandler.jcell_instance)
(defun (setf GameNotificationEventHandler.jstatic_instance) (value) (setf GameNotificationEventHandler.jcell_instance value))

    
(defun GameNotificationEventHandler.jnew_0 ()
  (let ((this (make-instance 'GameNotificationEventHandler)))
    (setf (slot-value this 'f_enabled) t)
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this GameNotificationEventHandler))
  (declare (ignorable this))
  (let (_eventListenerInterface _list)
  (declare (ignorable _eventListenerInterface _list))
    (block jreturn
        (setf _eventListenerInterface (NullEventListener.jstatic_NULL_EVENT_LISTENER))
        (setf _list (slot-value this 'f_eventListenerInterfaceList))
        (if (> (jm_size_0 _list) 0)
            (progn
            (setf _eventListenerInterface (aref (slot-value _list 'f_objectArray) 0))))
        (call-next-method this)
        (if (not (eq _eventListenerInterface (NullEventListener.jstatic_NULL_EVENT_LISTENER)))
            (progn
            (jm_addListenerInterface_1 this _eventListenerInterface))))))

    
(defun GameNotificationEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameNotificationEventHandler.jstatic_instance)))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this GameNotificationEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_gameNotificationListenerInterface)
  (declare (ignorable _gameNotificationListenerInterface))
    (block jreturn
        (if (not (slot-value this 'f_enabled))
            (progn
            (return-from jreturn)))
        (setf _gameNotificationListenerInterface _eventListenerInterface)
        (jm_onGameNotificationEvent_1 _gameNotificationListenerInterface _eventObject))))



