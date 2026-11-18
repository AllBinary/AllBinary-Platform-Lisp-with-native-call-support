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
;;;; package org.allbinary.game.ag.layer.weapon.mine

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MineLayerFactory (JObject)
  ((f_viewPositionFactoryInterface :initform nil)))

    
(defun MineLayerFactory.jnew_1 (_viewPositionFactoryInterface)
  (declare (ignorable _viewPositionFactoryInterface))
  (let ((this (make-instance 'MineLayerFactory)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_viewPositionFactoryInterface) _viewPositionFactoryInterface)))
    this))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this MineLayerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (MineLayer.jnew_1 (jm_getInstance_0 (slot-value this 'f_viewPositionFactoryInterface)))))))



