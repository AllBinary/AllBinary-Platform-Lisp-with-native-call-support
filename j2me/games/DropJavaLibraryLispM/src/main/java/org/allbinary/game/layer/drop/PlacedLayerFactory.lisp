;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.layer.drop

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PlacedLayerFactory (JObject)
  ((f_list :initform nil)
   (f_basicArrayListUtil :initform nil)))

(defvar PlacedLayerFactory.jcell_instance :jnone)
(defun PlacedLayerFactory.jstatic_instance ()
  (when (eq PlacedLayerFactory.jcell_instance :jnone) (setf PlacedLayerFactory.jcell_instance (PlacedLayerFactory.jnew_0)))
  PlacedLayerFactory.jcell_instance)
(defun (setf PlacedLayerFactory.jstatic_instance) (value) (setf PlacedLayerFactory.jcell_instance value))

    
(defun PlacedLayerFactory.jnew_0 ()
  (let ((this (make-instance 'PlacedLayerFactory)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_basicArrayListUtil) (BasicArrayListUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this PlacedLayerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list)))))

    
(defun PlacedLayerFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PlacedLayerFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this PlacedLayerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_size_0 (slot-value this 'f_list))))))

    
(unless (fboundp 'jm_getRandomInstance_0) (defgeneric jm_getRandomInstance_0 (this)))
(defmethod jm_getRandomInstance_0 ((this PlacedLayerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRandom_1 (slot-value this 'f_basicArrayListUtil) (slot-value this 'f_list))))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this PlacedLayerFactory) _layerInterfaceFactoryInterface)
  (declare (ignorable this _layerInterfaceFactoryInterface))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _layerInterfaceFactoryInterface))))



