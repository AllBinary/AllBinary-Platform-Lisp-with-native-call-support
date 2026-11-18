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

(defclass NoGameGameNotificationHud (GameNotificationHud)
  ())

    
(defun NoGameGameNotificationHud.jnew_0 ()
  (let ((this (make-instance 'NoGameGameNotificationHud)))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_updateMaxWidth) 40)
        (setf (slot-value this 'f_updateMaxHeight) 14)))
    this))



