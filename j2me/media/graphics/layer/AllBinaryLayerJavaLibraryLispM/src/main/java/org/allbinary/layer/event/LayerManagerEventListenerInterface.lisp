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
;;;; package org.allbinary.layer.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerManagerEventListenerInterface (JObject)
  ())

(defun LayerManagerEventListenerInterface.jnew_0 ()
  (let ((this (make-instance 'LayerManagerEventListenerInterface)))
    this))

    
(unless (fboundp 'jm_onCreateLayerManagerEvent_1) (defgeneric jm_onCreateLayerManagerEvent_1 (this p1)))
(defmethod jm_onCreateLayerManagerEvent_1 ((this LayerManagerEventListenerInterface) _layerManagerEvent)
  (declare (ignorable this _layerManagerEvent))
  (error (JR.newException "AbstractMethodError" "onCreateLayerManagerEvent")))

    
(unless (fboundp 'jm_onDeleteLayerManagerEvent_1) (defgeneric jm_onDeleteLayerManagerEvent_1 (this p1)))
(defmethod jm_onDeleteLayerManagerEvent_1 ((this LayerManagerEventListenerInterface) _layerManagerEvent)
  (declare (ignorable this _layerManagerEvent))
  (error (JR.newException "AbstractMethodError" "onDeleteLayerManagerEvent")))



