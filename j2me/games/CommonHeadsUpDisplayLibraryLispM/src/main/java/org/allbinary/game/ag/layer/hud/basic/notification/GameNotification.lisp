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

(defclass GameNotification (JObject)
  ((f_stringList :initform nil)
   (f_timeList :initform nil)
   (f_colorList :initform nil)))

(defvar GameNotification.jcell_NULL_GAME_NOTIFICATION_EVENT :jnone)
(defun GameNotification.jstatic_NULL_GAME_NOTIFICATION_EVENT ()
  (when (eq GameNotification.jcell_NULL_GAME_NOTIFICATION_EVENT :jnone) (setf GameNotification.jcell_NULL_GAME_NOTIFICATION_EVENT (GameNotificationEvent.jnew_5 (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) 0 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_RED) (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE))))
  GameNotification.jcell_NULL_GAME_NOTIFICATION_EVENT)
(defun (setf GameNotification.jstatic_NULL_GAME_NOTIFICATION_EVENT) (value) (setf GameNotification.jcell_NULL_GAME_NOTIFICATION_EVENT value))

(defun GameNotification.jnew_0 ()
  (let ((this (make-instance 'GameNotification)))
    (setf (slot-value this 'f_stringList) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_timeList) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_colorList) (BasicArrayListD.jnew_0))
    this))

    
(unless (fboundp 'jm_add_3) (defgeneric jm_add_3 (this p1 p2 p3)))
(defmethod jm_add_3 ((this GameNotification) _string _seconds _basicColor)
  (declare (ignorable this _string _seconds _basicColor))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_stringList) _string))
            (progn
            (jm_add_1 (slot-value this 'f_stringList) _string)
            (jm_add_1 (slot-value this 'f_timeList) _seconds)
            (jm_add_1 (slot-value this 'f_colorList) _basicColor))))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this GameNotification))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_stringList))
        (jm_clear_0 (slot-value this 'f_timeList))
        (jm_clear_0 (slot-value this 'f_colorList)))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this GameNotification))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_size_0 (slot-value this 'f_stringList))))))



