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

(defclass AllBinaryCollisionManager (JObject)
  ())

(defvar AllBinaryCollisionManager.jcell_allBinaryCollisionManager :jnone)
(defun AllBinaryCollisionManager.jstatic_allBinaryCollisionManager ()
  (when (eq AllBinaryCollisionManager.jcell_allBinaryCollisionManager :jnone) (setf AllBinaryCollisionManager.jcell_allBinaryCollisionManager (AllBinaryCollisionManager.jnew_0)))
  AllBinaryCollisionManager.jcell_allBinaryCollisionManager)
(defun (setf AllBinaryCollisionManager.jstatic_allBinaryCollisionManager) (value) (setf AllBinaryCollisionManager.jcell_allBinaryCollisionManager value))

    
(defun AllBinaryCollisionManager.jnew_0 ()
  (let ((this (make-instance 'AllBinaryCollisionManager)))
  (let ()
    (block jreturn nil))
    this))

    
(defun AllBinaryCollisionManager.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AllBinaryCollisionManager.jstatic_allBinaryCollisionManager)))))

    
(unless (fboundp 'jm_process_3) (defgeneric jm_process_3 (this p1 p2 p3)))
(defmethod jm_process_3 ((this AllBinaryCollisionManager) _layerManager _collidableInterfaceCompositeInterface _startIndex)
  (declare (ignorable this _layerManager _collidableInterfaceCompositeInterface _startIndex))
  (let (_size _collidableInterfaceCompositeInterface2 _index)
  (declare (ignorable _size _collidableInterfaceCompositeInterface2 _index))
    (block jreturn
        (setf _size (jm_getSize_0 _layerManager))
        (progn
            (setf _index (JR.i32 (+ _startIndex 1)))
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _collidableInterfaceCompositeInterface2 (jm_getLayerAt_1 _layerManager _index))
            (jm_collide_3 this _layerManager _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_collide_3) (defgeneric jm_collide_3 (this p1 p2 p3)))
(defmethod jm_collide_3 ((this AllBinaryCollisionManager) _layerManager _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
  (declare (ignorable this _layerManager _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2))
  (let (_collidableBase2 _collidableBase)
  (declare (ignorable _collidableBase2 _collidableBase))
    (block jreturn
        (setf _collidableBase2 (jm_getCollidableInferface_0 _collidableInterfaceCompositeInterface2))
        (setf _collidableBase (jm_getCollidableInferface_0 _collidableInterfaceCompositeInterface))
        (if (jm_isCollidable_1 _collidableBase2 _collidableInterfaceCompositeInterface)
            (progn
            (if (jm_isCollisionInterface_2 _collidableBase _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
                (progn
                (jm_collideInterface_2 _collidableBase _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
                (jm_collideInterface_2 _collidableBase2 _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface))))))))



