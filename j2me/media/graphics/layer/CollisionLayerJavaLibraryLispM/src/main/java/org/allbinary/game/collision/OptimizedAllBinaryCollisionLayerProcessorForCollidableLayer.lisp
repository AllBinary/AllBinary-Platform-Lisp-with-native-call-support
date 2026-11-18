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
;;;; package org.allbinary.game.collision

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer (LayerProcessor)
  ())

    
(defun OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer.jnew_0 ()
  (let ((this (make-instance 'OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processAt_3) (defgeneric jm_processAt_3 (this p1 p2 p3)))
(defmethod jm_processAt_3 ((this OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer) _allBinaryLayerManager _layerInterface _startIndex)
  (declare (ignorable this _allBinaryLayerManager _layerInterface _startIndex))
  (let (_collidableInterfaceCompositeInterface _collidableBase _layerManager _size _collidableInterfaceCompositeInterface2 _collidableBase2 _index)
  (declare (ignorable _collidableInterfaceCompositeInterface _collidableBase _layerManager _size _collidableInterfaceCompositeInterface2 _collidableBase2 _index))
    (block jreturn
        (setf _collidableInterfaceCompositeInterface _layerInterface)
        (setf _collidableBase (jm_getCollidableInferface_0 _collidableInterfaceCompositeInterface))
        (if (jm_isCollidable_1 _collidableBase _collidableInterfaceCompositeInterface)
            (progn
            (setf _layerManager (jm_getLayerManager_0 this))
            (setf _size (jm_getSize_0 _layerManager))
            (setf _collidableInterfaceCompositeInterface2 nil)
            (setf _collidableBase2 nil)
            (progn
                (setf _index (JR.i32 (+ _startIndex 1)))
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _collidableInterfaceCompositeInterface2 (jm_getLayerAt_1 _layerManager _index))
                (setf _collidableBase2 (jm_getCollidableInferface_0 _collidableInterfaceCompositeInterface2))
                (if (and (jm_isCollidable_1 _collidableBase2 _collidableInterfaceCompositeInterface) (jm_isCollision_2 _collidableBase _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2))
                    (progn
                    (jm_collide_2 _collidableBase _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
                    (jm_collide_2 _collidableBase2 _collidableInterfaceCompositeInterface2 _collidableInterfaceCompositeInterface))))
                    (setf _index (JR.i32 (+ _index 1)))))))))))

    
(unless (fboundp 'jm_isProcessorLayer_1) (defgeneric jm_isProcessorLayer_1 (this p1)))
(defmethod jm_isProcessorLayer_1 ((this OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (if (jm_implmentsCollidableInterface_0 _layerInterface)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



