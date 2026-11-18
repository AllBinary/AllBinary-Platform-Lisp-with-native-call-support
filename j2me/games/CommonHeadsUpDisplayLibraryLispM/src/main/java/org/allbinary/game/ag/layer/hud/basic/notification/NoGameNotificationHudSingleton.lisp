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

(defclass NoGameNotificationHudSingleton (JObject)
  ((f_logUtil :initform nil)
   (f_gameNotificationHud :initform nil)))

(defvar NoGameNotificationHudSingleton.jcell_instance :jnone)
(defun NoGameNotificationHudSingleton.jstatic_instance ()
  (when (eq NoGameNotificationHudSingleton.jcell_instance :jnone) (setf NoGameNotificationHudSingleton.jcell_instance (NoGameNotificationHudSingleton.jnew_0)))
  NoGameNotificationHudSingleton.jcell_instance)
(defun (setf NoGameNotificationHudSingleton.jstatic_instance) (value) (setf NoGameNotificationHudSingleton.jcell_instance value))

    
(defun NoGameNotificationHudSingleton.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoGameNotificationHudSingleton.jstatic_instance)))))

    
(defun NoGameNotificationHudSingleton.jnew_0 ()
  (let ((this (make-instance 'NoGameNotificationHudSingleton)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_gameNotificationHud) (GameNotificationHud.jstatic_NULL_GAME_NOTIFICATION))
  (let (_basicHudFactory _commonStrings)
  (declare (ignorable _basicHudFactory _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _basicHudFactory (BasicHudFactory.jm_getInstance_0))
            (setf (slot-value this 'f_gameNotificationHud) (NoGameGameNotificationHud.jnew_0)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_CONSTRUCTOR) _e)))))
    this))

    
(unless (fboundp 'jm_getGameNotificationHud_0) (defgeneric jm_getGameNotificationHud_0 (this)))
(defmethod jm_getGameNotificationHud_0 ((this NoGameNotificationHudSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameNotificationHud)))))



