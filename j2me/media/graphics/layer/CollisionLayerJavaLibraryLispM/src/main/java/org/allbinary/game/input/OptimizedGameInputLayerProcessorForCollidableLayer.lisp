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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OptimizedGameInputLayerProcessorForCollidableLayer (LayerProcessor)
  ())

    
(defun OptimizedGameInputLayerProcessorForCollidableLayer.jnew_0 ()
  (let ((this (make-instance 'OptimizedGameInputLayerProcessorForCollidableLayer)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processAt_3) (defgeneric jm_processAt_3 (this p1 p2 p3)))
(defmethod jm_processAt_3 ((this OptimizedGameInputLayerProcessorForCollidableLayer) _allBinaryLayerManager _layerInterface _index)
  (declare (ignorable this _allBinaryLayerManager _layerInterface _index))
  (let (_gameInputInterface)
  (declare (ignorable _gameInputInterface))
    (block jreturn
        (setf _gameInputInterface _layerInterface)
        (jm_processInput_1 _gameInputInterface _allBinaryLayerManager))))

    
(unless (fboundp 'jm_isProcessorLayer_1) (defgeneric jm_isProcessorLayer_1 (this p1)))
(defmethod jm_isProcessorLayer_1 ((this OptimizedGameInputLayerProcessorForCollidableLayer) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (if (jm_implmentsGameInputInterface_0 _layerInterface)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



