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
;;;; package org.allbinary.game.tick

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TickableLayerProcessor (LayerProcessor)
  ())

    
(defun TickableLayerProcessor.jnew_0 ()
  (let ((this (make-instance 'TickableLayerProcessor)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processAt_3) (defgeneric jm_processAt_3 (this p1 p2 p3)))
(defmethod jm_processAt_3 ((this TickableLayerProcessor) _allBinaryLayerManager _layerInterface _index)
  (declare (ignorable this _allBinaryLayerManager _layerInterface _index))
  (let (_tickableInterface)
  (declare (ignorable _tickableInterface))
    (block jreturn
        (setf _tickableInterface _layerInterface)
        (jm_processTick_1 _tickableInterface _allBinaryLayerManager))))

    
(unless (fboundp 'jm_isProcessorLayer_1) (defgeneric jm_isProcessorLayer_1 (this p1)))
(defmethod jm_isProcessorLayer_1 ((this TickableLayerProcessor) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (if (jm_implmentsTickableInterface_0 _layerInterface)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



