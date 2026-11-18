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
;;;; package org.allbinary.game.collision.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CollidableInterfaceLayerProcessor (LayerProcessor)
  ())

    
(defun CollidableInterfaceLayerProcessor.jnew_0 ()
  (let ((this (make-instance 'CollidableInterfaceLayerProcessor)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processAt_3) (defgeneric jm_processAt_3 (this p1 p2 p3)))
(defmethod jm_processAt_3 ((this CollidableInterfaceLayerProcessor) _allBinaryLayerManager _layerInterface _index)
  (declare (ignorable this _allBinaryLayerManager _layerInterface _index))
  (let (_collidableInterfaceCompositeInterface)
  (declare (ignorable _collidableInterfaceCompositeInterface))
    (block jreturn
        (setf _collidableInterfaceCompositeInterface _layerInterface)
        (if (jm_isCollidable_1 (jm_getCollidableInferface_0 _collidableInterfaceCompositeInterface) _collidableInterfaceCompositeInterface)
            (progn
            (jm_process_3 (AllBinaryCollisionManager.jm_getInstance_0) (jm_getLayerManager_0 this) _collidableInterfaceCompositeInterface _index))))))

    
(unless (fboundp 'jm_isProcessorLayer_1) (defgeneric jm_isProcessorLayer_1 (this p1)))
(defmethod jm_isProcessorLayer_1 ((this CollidableInterfaceLayerProcessor) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (if (jm_implmentsCollidableInterface_0 _layerInterface)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



