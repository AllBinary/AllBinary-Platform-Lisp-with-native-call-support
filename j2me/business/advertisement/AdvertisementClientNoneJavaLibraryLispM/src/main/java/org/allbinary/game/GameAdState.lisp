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
;;;; package org.allbinary.game

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameAdState (GameAdStateBase)
  ())

    
(defun GameAdState.jnew_1 (_adConfiguration)
  (declare (ignorable _adConfiguration))
  (let ((this (make-instance 'GameAdState)))
  (let ()
    (block jreturn
        nil
        (jm_addListenerInterface_1 (VirtualKeyboardEventHandler.jm_getInstance_0) this)))
    this))

    
(unless (fboundp 'jm_onVirtualKeyboardEvent_1) (defgeneric jm_onVirtualKeyboardEvent_1 (this p1)))
(defmethod jm_onVirtualKeyboardEvent_1 ((this GameAdState) _virtualKeyboardEvent)
  (declare (ignorable this _virtualKeyboardEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this GameAdState) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (call-next-method this _eventObject))))



