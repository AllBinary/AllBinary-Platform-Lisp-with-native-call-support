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
;;;; package org.allbinary.game.ag.layer.hud.basic.notification

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameNotificationHud (BasicHud)
  ((f_METHOD_NAME :initform nil)
   (f_lastGameNotificationEvent :initform nil)))

(defvar GameNotificationHud.jcell_NULL_GAME_NOTIFICATION :jnone)
(defun GameNotificationHud.jstatic_NULL_GAME_NOTIFICATION ()
  (when (eq GameNotificationHud.jcell_NULL_GAME_NOTIFICATION :jnone) (setf GameNotificationHud.jcell_NULL_GAME_NOTIFICATION (GameNotificationHud.jnew_4 (slot-value (BasicHudFactory.jm_getInstance_0) 'f_TOPCENTER) (slot-value (BasicHudFactory.jm_getInstance_0) 'f_HORIZONTAL) 0 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_RED))))
  GameNotificationHud.jcell_NULL_GAME_NOTIFICATION)
(defun (setf GameNotificationHud.jstatic_NULL_GAME_NOTIFICATION) (value) (setf GameNotificationHud.jcell_NULL_GAME_NOTIFICATION value))

    
(defun GameNotificationHud.jnew_4 (_location _direction _bufferZone _basicColor)
  (declare (ignorable _location _direction _bufferZone _basicColor))
  (let ((this (make-instance 'GameNotificationHud)))
    (setf (slot-value this 'f_METHOD_NAME) "onGameNotificationEvent")
    (setf (slot-value this 'f_lastGameNotificationEvent) (GameNotification.jstatic_NULL_GAME_NOTIFICATION_EVENT))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this GameNotificationHud) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onGameNotificationEvent_1) (defgeneric jm_onGameNotificationEvent_1 (this p1)))
(defmethod jm_onGameNotificationEvent_1 ((this GameNotificationHud) _gameNotificationEvent)
  (declare (ignorable this _gameNotificationEvent))
  (let ()
    (block jreturn
        (if (not (eq (slot-value this 'f_lastGameNotificationEvent) _gameNotificationEvent))
            (progn
            (setf (slot-value this 'f_lastGameNotificationEvent) _gameNotificationEvent)
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_getString_0 _gameNotificationEvent) this (slot-value this 'f_METHOD_NAME))))
        (jm_add_4 this (jm_getString_0 _gameNotificationEvent) (jm_getSeconds_0 _gameNotificationEvent) (jm_getBasicColorP_0 _gameNotificationEvent) (jm_getPermanent_0 _gameNotificationEvent)))))

    
(unless (fboundp 'jm_add_4) (defgeneric jm_add_4 (this p1 p2 p3 p4)))
(defmethod jm_add_4 ((this GameNotificationHud) _string _seconds _basicColor _permanent)
  (declare (ignorable this _string _seconds _basicColor _permanent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processTick_0) (defgeneric jm_processTick_0 (this)))
(defmethod jm_processTick_0 ((this GameNotificationHud))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this GameNotificationHud) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this GameNotificationHud))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



