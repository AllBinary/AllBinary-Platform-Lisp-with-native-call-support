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
;;;; package org.allbinary.game.layer.drop

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DropLayerProcessor (BasicLayerProcessor)
  ())

(defvar DropLayerProcessor.jcell_LAYER_PROCESSOR :jnone)
(defun DropLayerProcessor.jstatic_LAYER_PROCESSOR ()
  (when (eq DropLayerProcessor.jcell_LAYER_PROCESSOR :jnone) (setf DropLayerProcessor.jcell_LAYER_PROCESSOR (DropLayerProcessor.jnew_0)))
  DropLayerProcessor.jcell_LAYER_PROCESSOR)
(defun (setf DropLayerProcessor.jstatic_LAYER_PROCESSOR) (value) (setf DropLayerProcessor.jcell_LAYER_PROCESSOR value))

    
(defun DropLayerProcessor.jnew_0 ()
  (let ((this (make-instance 'DropLayerProcessor)))
  (let ()
    (block jreturn nil))
    this))

    
(defun DropLayerProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DropLayerProcessor.jstatic_LAYER_PROCESSOR)))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this DropLayerProcessor) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_list _size _layerInterface _dropLayerInterface _index)
  (declare (ignorable _list _size _layerInterface _dropLayerInterface _index))
    (block jreturn
        (setf _list (jm_getList_0 this))
        (setf _size (jm_size_0 _list))
        (setf _layerInterface nil)
        (setf _dropLayerInterface nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _layerInterface (aref (slot-value _list 'f_objectArray) _index))
            (setf _dropLayerInterface _layerInterface)
            (setf _layerInterface (jm_getDroppedLayer_0 _dropLayerInterface))
            (jm_append_1 _allBinaryLayerManager _layerInterface))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_clear_0 _list))))



