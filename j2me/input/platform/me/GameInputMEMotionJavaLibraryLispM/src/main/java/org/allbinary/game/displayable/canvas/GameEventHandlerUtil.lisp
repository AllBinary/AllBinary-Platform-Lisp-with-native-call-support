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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameEventHandlerUtil (JObject)
  ())

(defun GameEventHandlerUtil.jnew_0 ()
  (let ((this (make-instance 'GameEventHandlerUtil)))
    this))

    
(defun GameEventHandlerUtil.jm_removeAllListeners_0 ()
  (let ()
    (block jreturn
        (jm_removeAllListeners_0 (UpGameKeyEventHandler.jm_getInstance_0))
        (jm_removeAllListeners_0 (DownGameKeyEventHandler.jm_getInstance_0)))))



