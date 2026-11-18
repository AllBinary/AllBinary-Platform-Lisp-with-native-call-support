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

(defclass BasicLayerProcessor (JObject)
  ((f_logUtil :initform nil)
   (f_list :initform nil)))

(defvar BasicLayerProcessor.jcell_NULL_LAYER_PROCESSOR :jnone)
(defun BasicLayerProcessor.jstatic_NULL_LAYER_PROCESSOR ()
  (when (eq BasicLayerProcessor.jcell_NULL_LAYER_PROCESSOR :jnone) (setf BasicLayerProcessor.jcell_NULL_LAYER_PROCESSOR (BasicLayerProcessor.jnew_0)))
  BasicLayerProcessor.jcell_NULL_LAYER_PROCESSOR)
(defun (setf BasicLayerProcessor.jstatic_NULL_LAYER_PROCESSOR) (value) (setf BasicLayerProcessor.jcell_NULL_LAYER_PROCESSOR value))

    
(defun BasicLayerProcessor.jnew_0 ()
  (let ((this (make-instance 'BasicLayerProcessor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this BasicLayerProcessor) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _layerInterface))
            (progn
            (jm_add_1 (slot-value this 'f_list) _layerInterface))))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this BasicLayerProcessor) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (CommonStrings.jm_getInstance_0) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this BasicLayerProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))



