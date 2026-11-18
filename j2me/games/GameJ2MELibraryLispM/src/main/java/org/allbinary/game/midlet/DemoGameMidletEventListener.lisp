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

(defclass DemoGameMidletEventListener (JObject)
  ())

(defun DemoGameMidletEventListener.jnew_0 ()
  (let ((this (make-instance 'DemoGameMidletEventListener)))
    this))

    
(unless (fboundp 'jm_onDemoStart_0) (defgeneric jm_onDemoStart_0 (this)))
(defmethod jm_onDemoStart_0 ((this DemoGameMidletEventListener))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onDemoStart")))

    
(unless (fboundp 'jm_onGameStart_0) (defgeneric jm_onGameStart_0 (this)))
(defmethod jm_onGameStart_0 ((this DemoGameMidletEventListener))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onGameStart")))

    
(unless (fboundp 'jm_onDemoGameMidletEvent_1) (defgeneric jm_onDemoGameMidletEvent_1 (this p1)))
(defmethod jm_onDemoGameMidletEvent_1 ((this DemoGameMidletEventListener) _demoGameMidletEvent)
  (declare (ignorable this _demoGameMidletEvent))
  (error (JR.newException "AbstractMethodError" "onDemoGameMidletEvent")))



