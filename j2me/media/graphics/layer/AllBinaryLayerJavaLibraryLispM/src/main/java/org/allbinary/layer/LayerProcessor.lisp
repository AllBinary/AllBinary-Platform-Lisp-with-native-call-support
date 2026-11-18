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

(defclass LayerProcessor (JObject)
  ((f_commonStrings :initform nil)
   (f_layerManager :initform nil)))

    
(defun LayerProcessor.jnew_1 (_layerManager)
  (declare (ignorable _layerManager))
  (let ((this (make-instance 'LayerProcessor)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_layerManager) _layerManager)))
    this))

    
(unless (fboundp 'jm_processAt_3) (defgeneric jm_processAt_3 (this p1 p2 p3)))
(defmethod jm_processAt_3 ((this LayerProcessor) _allBinaryLayerManager _layerInterface _index)
  (declare (ignorable this _allBinaryLayerManager _layerInterface _index))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_isProcessorLayer_1) (defgeneric jm_isProcessorLayer_1 (this p1)))
(defmethod jm_isProcessorLayer_1 ((this LayerProcessor) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_getLayerManager_0) (defgeneric jm_getLayerManager_0 (this)))
(defmethod jm_getLayerManager_0 ((this LayerProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_layerManager)))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this LayerProcessor) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_layerManager _size _index)
  (declare (ignorable _layerManager _size _index))
    (block jreturn
        (setf _layerManager (jm_getLayerManager_0 this))
        (setf _size (jm_getSize_0 _layerManager))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_processAt_3 this _allBinaryLayerManager (jm_getLayerAt_1 _layerManager _index) _index))
                (setf _index (JR.i32 (+ _index 1)))))))))



