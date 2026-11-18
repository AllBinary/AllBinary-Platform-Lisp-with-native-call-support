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

(defclass BasicCompositeEventHandlerInterface (JObject)
  ())

(defun BasicCompositeEventHandlerInterface.jnew_0 ()
  (let ((this (make-instance 'BasicCompositeEventHandlerInterface)))
    this))

    
(unless (fboundp 'jm_getEventHandler_0) (defgeneric jm_getEventHandler_0 (this)))
(defmethod jm_getEventHandler_0 ((this BasicCompositeEventHandlerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getEventHandler")))

    
(unless (fboundp 'jm_setEventHandler_1) (defgeneric jm_setEventHandler_1 (this p1)))
(defmethod jm_setEventHandler_1 ((this BasicCompositeEventHandlerInterface) _basicEventHandlerInterface)
  (declare (ignorable this _basicEventHandlerInterface))
  (error (JR.newException "AbstractMethodError" "setEventHandler")))



