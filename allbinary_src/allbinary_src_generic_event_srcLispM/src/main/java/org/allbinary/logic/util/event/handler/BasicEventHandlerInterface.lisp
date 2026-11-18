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
;;;; package org.allbinary.logic.util.event.handler

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicEventHandlerInterface (JObject)
  ())

(defun BasicEventHandlerInterface.jnew_0 ()
  (let ((this (make-instance 'BasicEventHandlerInterface)))
    this))

    
(unless (fboundp 'jm_addListenerInterface_1) (defgeneric jm_addListenerInterface_1 (this p1)))
(defmethod jm_addListenerInterface_1 ((this BasicEventHandlerInterface) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (error (JR.newException "AbstractMethodError" "addListenerInterface")))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this BasicEventHandlerInterface) _eventObject)
  (declare (ignorable this _eventObject))
  (error (JR.newException "AbstractMethodError" "fireEvent")))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this BasicEventHandlerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "removeAllListeners")))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this BasicEventHandlerInterface) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (error (JR.newException "AbstractMethodError" "removeListener")))



