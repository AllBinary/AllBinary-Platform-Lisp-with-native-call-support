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
;;;; package org.allbinary.game.input.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DownKeyEventListenerInterface (JObject)
  ())

(defun DownKeyEventListenerInterface.jnew_0 ()
  (let ((this (make-instance 'DownKeyEventListenerInterface)))
    this))

    
(unless (fboundp 'jm_onDownKeyEvent_1) (defgeneric jm_onDownKeyEvent_1 (this p1)))
(defmethod jm_onDownKeyEvent_1 ((this DownKeyEventListenerInterface) _keyInteger)
  (declare (ignorable this _keyInteger))
  (error (JR.newException "AbstractMethodError" "onDownKeyEvent")))

    
(unless (fboundp 'jm_onDownKey_1) (defgeneric jm_onDownKey_1 (this p1)))
(defmethod jm_onDownKey_1 ((this DownKeyEventListenerInterface) _keyInteger)
  (declare (ignorable this _keyInteger))
  (error (JR.newException "AbstractMethodError" "onDownKey")))



