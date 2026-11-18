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

(defclass GameNotificationHudCompositeInterface (JObject)
  ())

(defun GameNotificationHudCompositeInterface.jnew_0 ()
  (let ((this (make-instance 'GameNotificationHudCompositeInterface)))
    this))

    
(unless (fboundp 'jm_getGameNotificationHud_0) (defgeneric jm_getGameNotificationHud_0 (this)))
(defmethod jm_getGameNotificationHud_0 ((this GameNotificationHudCompositeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getGameNotificationHud")))



