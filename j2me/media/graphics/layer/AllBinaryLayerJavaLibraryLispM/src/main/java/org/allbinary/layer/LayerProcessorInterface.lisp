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
;;;; package org.allbinary.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerProcessorInterface (JObject)
  ())

(defun LayerProcessorInterface.jnew_0 ()
  (let ((this (make-instance 'LayerProcessorInterface)))
    this))

    
(unless (fboundp 'jm_getLayerManager_0) (defgeneric jm_getLayerManager_0 (this)))
(defmethod jm_getLayerManager_0 ((this LayerProcessorInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getLayerManager")))

    
(unless (fboundp 'jm_processAt_3) (defgeneric jm_processAt_3 (this p1 p2 p3)))
(defmethod jm_processAt_3 ((this LayerProcessorInterface) _allBinaryLayerManager _layerInterface _index)
  (declare (ignorable this _allBinaryLayerManager _layerInterface _index))
  (error (JR.newException "AbstractMethodError" "processAt")))

    
(unless (fboundp 'jm_isProcessorLayer_1) (defgeneric jm_isProcessorLayer_1 (this p1)))
(defmethod jm_isProcessorLayer_1 ((this LayerProcessorInterface) _layerInterface)
  (declare (ignorable this _layerInterface))
  (error (JR.newException "AbstractMethodError" "isProcessorLayer")))



