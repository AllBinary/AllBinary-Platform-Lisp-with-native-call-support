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
;;;; package org.allbinary.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ArtificialIntelligenceLayerProcessor (LayerProcessor)
  ())

    
(defun ArtificialIntelligenceLayerProcessor.jnew_0 ()
  (let ((this (make-instance 'ArtificialIntelligenceLayerProcessor)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processAt_3) (defgeneric jm_processAt_3 (this p1 p2 p3)))
(defmethod jm_processAt_3 ((this ArtificialIntelligenceLayerProcessor) _allBinaryLayerManager _layerInterface _index)
  (declare (ignorable this _allBinaryLayerManager _layerInterface _index))
  (let (_artificialIntelligenceCompositeInterface)
  (declare (ignorable _artificialIntelligenceCompositeInterface))
    (block jreturn
        (setf _artificialIntelligenceCompositeInterface _layerInterface)
        (jm_processAI_1 (jm_getArtificialIntelligenceInterface_0 _artificialIntelligenceCompositeInterface) _allBinaryLayerManager))))

    
(unless (fboundp 'jm_isProcessorLayer_1) (defgeneric jm_isProcessorLayer_1 (this p1)))
(defmethod jm_isProcessorLayer_1 ((this ArtificialIntelligenceLayerProcessor) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (if (jm_implmentsArtificialIntelligenceCompositeInterface_0 _layerInterface)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



