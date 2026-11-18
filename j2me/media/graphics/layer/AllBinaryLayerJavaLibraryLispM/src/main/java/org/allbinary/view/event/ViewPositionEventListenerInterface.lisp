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
;;;; package org.allbinary.view.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ViewPositionEventListenerInterface (JObject)
  ())

(defun ViewPositionEventListenerInterface.jnew_0 ()
  (let ((this (make-instance 'ViewPositionEventListenerInterface)))
    this))

    
(unless (fboundp 'jm_onChangeEvent_1) (defgeneric jm_onChangeEvent_1 (this p1)))
(defmethod jm_onChangeEvent_1 ((this ViewPositionEventListenerInterface) _layerManagerEvent)
  (declare (ignorable this _layerManagerEvent))
  (error (JR.newException "AbstractMethodError" "onChangeEvent")))



