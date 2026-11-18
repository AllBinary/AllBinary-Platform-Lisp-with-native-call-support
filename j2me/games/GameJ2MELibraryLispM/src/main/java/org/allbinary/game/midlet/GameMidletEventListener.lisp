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
;;;; package org.allbinary.game.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameMidletEventListener (JObject)
  ())

(defun GameMidletEventListener.jnew_0 ()
  (let ((this (make-instance 'GameMidletEventListener)))
    this))

    
(unless (fboundp 'jm_onGameEnd_1) (defgeneric jm_onGameEnd_1 (this p1)))
(defmethod jm_onGameEnd_1 ((this GameMidletEventListener) _eventObject)
  (declare (ignorable this _eventObject))
  (error (JR.newException "AbstractMethodError" "onGameEnd")))



