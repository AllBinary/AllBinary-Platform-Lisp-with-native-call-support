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

(defclass DemoGameMidletEventHandler (BasicEventHandler)
  ())

(defvar DemoGameMidletEventHandler.jcell_gameKeyEventHandler :jnone)
(defun DemoGameMidletEventHandler.jstatic_gameKeyEventHandler ()
  (when (eq DemoGameMidletEventHandler.jcell_gameKeyEventHandler :jnone) (setf DemoGameMidletEventHandler.jcell_gameKeyEventHandler (DemoGameMidletEventHandler.jnew_0)))
  DemoGameMidletEventHandler.jcell_gameKeyEventHandler)
(defun (setf DemoGameMidletEventHandler.jstatic_gameKeyEventHandler) (value) (setf DemoGameMidletEventHandler.jcell_gameKeyEventHandler value))

    
(defun DemoGameMidletEventHandler.jnew_0 ()
  (let ((this (make-instance 'DemoGameMidletEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(defun DemoGameMidletEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DemoGameMidletEventHandler.jstatic_gameKeyEventHandler)))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this DemoGameMidletEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_demoGameMidletEventListener)
  (declare (ignorable _demoGameMidletEventListener))
    (block jreturn
        (setf _demoGameMidletEventListener _eventListenerInterface)
        (jm_onDemoGameMidletEvent_1 _demoGameMidletEventListener _eventObject))))



