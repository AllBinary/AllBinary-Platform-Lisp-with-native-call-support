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

(defclass SingleLayerLayerProcessor (LayerProcessor)
  ())

    
(defun SingleLayerLayerProcessor.jnew_0 ()
  (let ((this (make-instance 'SingleLayerLayerProcessor)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this SingleLayerLayerProcessor) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_layerManager)
  (declare (ignorable _layerManager))
    (block jreturn
        (setf _layerManager (jm_getLayerManager_0 this))
        (jm_processAt_3 this _allBinaryLayerManager (jm_getLayerAt_1 _layerManager 0) 0))))



